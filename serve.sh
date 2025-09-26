#!/bin/bash

# Build and serve Hugo site with Python web server
# Usage: ./serve.sh

set -e

echo "🔨 Building Hugo site with local baseURL..."
hugo --gc --minify --baseURL "http://localhost:8000"

echo "📁 Changing to public directory..."
cd public

echo "Starting Python web server on port 8000..."
echo "Site available at: http://localhost:8000"
echo "Press Ctrl+C to stop the server"
echo ""

# Try Python 3 first, then Python 2
if command -v python3 &> /dev/null; then
    python3 -m http.server 8000
elif command -v python &> /dev/null; then
    python -m SimpleHTTPServer 8000
else
    echo "Error: Python not found. Please install Python to use this script."
    exit 1
fi