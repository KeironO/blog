#!/bin/bash

# Configuration
REPO_URL="https://github.com/KeironO/blog.git"
SITE_DIR="/var/www/hugo-site"
BUILD_DIR="/tmp/hugo-build"
WEB_ROOT="/var/www/html" 
LOG_FILE="/var/log/hugo-deploy.log"


# Function to log messages
log_message() {
    echo "$(date '+%Y-%m-%d %H:%M:%S') - $1" >> "$LOG_FILE"
}

log_message "Starting Hugo deployment process"

# Clean up previous build directory
rm -rf "$BUILD_DIR"

# Clone or pull the repository WITH submodules
if [ ! -d "$SITE_DIR" ]; then
    log_message "Cloning repository with submodules..."
    git clone --recursive "$REPO_URL" "$SITE_DIR"
    if [ $? -ne 0 ]; then
        log_message "ERROR: Failed to clone repository"
        exit 1
    fi
else
    log_message "Pulling latest changes and updating submodules..."
    cd "$SITE_DIR"
    
    # Pull main repository
    git pull origin main
    if [ $? -ne 0 ]; then
        log_message "ERROR: Failed to pull changes"
        exit 1
    fi
    
    # Update submodules
    git submodule update --init --recursive
    if [ $? -ne 0 ]; then
        log_message "ERROR: Failed to update submodules"
        exit 1
    fi
    
    # Pull latest changes for submodules
    git submodule foreach git pull origin main 2>/dev/null || git submodule foreach git pull origin master 2>/dev/null
fi

# Check if there are actually new changes (including submodules)
cd "$SITE_DIR"
CURRENT_COMMIT=$(git rev-parse HEAD)
CURRENT_SUBMODULES=$(git submodule status | md5sum | cut -d' ' -f1)
LAST_DEPLOYED="/tmp/last-hugo-deploy"
LAST_SUBMODULES="/tmp/last-hugo-submodules"

if [ -f "$LAST_DEPLOYED" ] && [ -f "$LAST_SUBMODULES" ]; then
    LAST_COMMIT=$(cat "$LAST_DEPLOYED")
    LAST_SUB_STATE=$(cat "$LAST_SUBMODULES")
    if [ "$CURRENT_COMMIT" = "$LAST_COMMIT" ] && [ "$CURRENT_SUBMODULES" = "$LAST_SUB_STATE" ]; then
        log_message "No new changes in main repo or submodules, skipping build"
        exit 0
    fi
fi

# Verify themes are present
log_message "Checking themes..."
if [ ! -d "$SITE_DIR/themes" ] || [ -z "$(ls -A $SITE_DIR/themes 2>/dev/null)" ]; then
    log_message "WARNING: No themes found, checking submodules..."
    cd "$SITE_DIR"
    git submodule status
fi

# Build the site
log_message "Building Hugo site..."
cd "$SITE_DIR"
hugo --destination "$BUILD_DIR" -b https://keiron.xyz
if [ $? -ne 0 ]; then
    log_message "ERROR: Hugo build failed"
    # Log more details about the build failure
    hugo --destination "$BUILD_DIR" -b https://keiron.xyz --verbose >> "$LOG_FILE" 2>&1
    exit 1
fi

# Deploy to web root
log_message "Deploying to web server..."
rsync -av --delete "$BUILD_DIR/" "$WEB_ROOT/"
if [ $? -ne 0 ]; then
    log_message "ERROR: Deployment failed"
    exit 1
fi

# Update tracking files
echo "$CURRENT_COMMIT" > "$LAST_DEPLOYED"
echo "$CURRENT_SUBMODULES" > "$LAST_SUBMODULES"

# Set proper permissions
chown -R www-data:www-data "$WEB_ROOT"
find "$WEB_ROOT" -type d -exec chmod 755 {} \;
find "$WEB_ROOT" -type f -exec chmod 644 {} \;

log_message "Hugo deployment completed successfully"
