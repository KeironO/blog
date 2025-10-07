#!/bin/bash

# Pre-commit hook to fetch book covers from Open Library
# This runs before each commit and downloads any missing cover images

CONTENT_DIR="content"
COVERS_DIR="static/img/book-covers"

# Create covers directory if it doesn't exist
mkdir -p "$COVERS_DIR"

# Find all markdown files (or use specified files)
if [ $# -gt 0 ]; then
  MARKDOWN_FILES="$@"
else
  MARKDOWN_FILES=$(find "$CONTENT_DIR" -name "*.md")
fi

if [ -z "$MARKDOWN_FILES" ]; then
  echo "No markdown files found"
  exit 0
fi

# Function to extract ISBNs from markdown files
extract_isbns() {
  local file="$1"
  # Look for isbn="..." in shortcode syntax
  grep -oP 'isbn="\K[0-9-]+(?=")' "$file" 2>/dev/null || true
}

# Function to download book cover
download_cover() {
  local isbn="$1"
  local output_file="$COVERS_DIR/${isbn}.jpg"

  # Skip if already exists
  if [ -f "$output_file" ]; then
    echo "  ✓ Cover already exists for ISBN $isbn"
    return 0
  fi

  echo "Fetching cover for ISBN: $isbn"

  # Try both ISBN-10 and ISBN-13 formats
  for isbn_variant in "$isbn" "978${isbn}" "${isbn:3}"; do
    if [ -z "$isbn_variant" ]; then
      continue
    fi

    # Try Open Library with -L (large) size
    curl -s -f "https://covers.openlibrary.org/b/isbn/${isbn_variant}-L.jpg" -o "$output_file" 2>/dev/null

    if [ $? -eq 0 ] && [ -s "$output_file" ]; then
      # Check if it's actually an image (not a 1x1 placeholder)
      local filesize=$(stat -f%z "$output_file" 2>/dev/null || stat -c%s "$output_file" 2>/dev/null)
      if [ "$filesize" -gt 1000 ]; then
        echo "  ✓ Downloaded cover for ISBN $isbn (using variant $isbn_variant)"
        git add "$output_file"
        return 0
      fi
      rm -f "$output_file"
    fi
  done

  echo "  ⚠ Cover not found in Open Library for ISBN $isbn"
  return 1
}

# Process markdown files
for file in $MARKDOWN_FILES; do
  if [ -f "$file" ]; then
    isbns=$(extract_isbns "$file")
    for isbn in $isbns; do
      # Remove hyphens from ISBN for API call
      clean_isbn=$(echo "$isbn" | tr -d '-')
      download_cover "$clean_isbn"
    done
  fi
done

exit 0
