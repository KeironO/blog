#!/bin/bash

# Image compression script for blog
# Compresses images in static/images/blog/ to reasonable sizes for web

set -e

# Check if ImageMagick is installed
if ! command -v convert &> /dev/null; then
    echo "Error: ImageMagick is not installed."
    echo "Install it with: sudo dnf install ImageMagick"
    exit 1
fi

# Configuration
MAX_WIDTH=1200
QUALITY=85
TARGET_DIR="static/images/blog"

# Colors for output
GREEN='\033[0;32m'
YELLOW='\033[1;33m'
NC='\033[0m' # No Color

echo "Starting image compression..."
echo "Target directory: $TARGET_DIR"
echo "Max width: ${MAX_WIDTH}px"
echo "Quality: ${QUALITY}%"
echo ""

# Find all images and compress them
find "$TARGET_DIR" -type f \( -iname "*.jpg" -o -iname "*.jpeg" -o -iname "*.png" \) | while read -r img; do
    # Get original file size
    original_size=$(stat -f%z "$img" 2>/dev/null || stat -c%s "$img" 2>/dev/null)

    # Get image dimensions
    dimensions=$(identify -format "%w %h" "$img")
    width=$(echo $dimensions | cut -d' ' -f1)
    height=$(echo $dimensions | cut -d' ' -f2)

    # Skip if image is already small enough
    if [ "$width" -le "$MAX_WIDTH" ] && [ "$original_size" -lt 500000 ]; then
        echo -e "${GREEN}✓${NC} Skipping $img (already optimized: ${width}x${height}, $(numfmt --to=iec-i --suffix=B $original_size))"
        continue
    fi

    # Create backup
    backup="${img}.backup"
    cp "$img" "$backup"

    # Compress and resize if needed
    if [ "$width" -gt "$MAX_WIDTH" ]; then
        echo -e "${YELLOW}↻${NC} Compressing and resizing $img..."
        convert "$img" -resize "${MAX_WIDTH}>" -quality "$QUALITY" -strip "$img"
    else
        echo -e "${YELLOW}↻${NC} Compressing $img..."
        convert "$img" -quality "$QUALITY" -strip "$img"
    fi

    # Get new file size
    new_size=$(stat -f%z "$img" 2>/dev/null || stat -c%s "$img" 2>/dev/null)
    new_dimensions=$(identify -format "%w %h" "$img")

    # Calculate savings
    savings=$((original_size - new_size))
    percent_saved=$((savings * 100 / original_size))

    if [ "$new_size" -lt "$original_size" ]; then
        echo -e "${GREEN}✓${NC} Compressed: $(basename $img)"
        echo "  Original: $(numfmt --to=iec-i --suffix=B $original_size) → New: $(numfmt --to=iec-i --suffix=B $new_size)"
        echo "  Saved: $(numfmt --to=iec-i --suffix=B $savings) (${percent_saved}%)"
        echo "  Dimensions: $dimensions → $new_dimensions"
        rm "$backup"
    else
        echo -e "${YELLOW}!${NC} No improvement for $img, reverting..."
        mv "$backup" "$img"
    fi
    echo ""
done

echo -e "${GREEN}Image compression complete!${NC}"
