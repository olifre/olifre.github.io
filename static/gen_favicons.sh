#!/bin/bash

INPUT="favicon.svg"

if [ ! -f "$INPUT" ]; then
  echo "Error: $INPUT not found!"
  exit 1
fi

echo "Generating favicons from $INPUT..."

# Array of target filenames and dimensions
declare -A ICONS=(
  ["apple-touch-icon.png"]="180"
  ["favicon-32x32.png"]="32"
  ["favicon-16x16.png"]="16"
  ["mstile-150x150.png"]="150"
  ["android-chrome-192x192.png"]="192"
  ["android-chrome-512x512.png"]="512"
)

# Loop through each target and convert
for filename in "${!ICONS[@]}"; do
  size="${ICONS[$filename]}"
  echo "Generating $filename (${size}x${size})..."
  inkscape "$INPUT" --export-filename="$filename" -w "$size" -h "$size"
  optipng -o4 "$filename" 2> /dev/null
  advpng -z4 "$filename" > /dev/null
done

echo "Creating multi-resolution favicon.ico using ImageMagick..."
magick favicon-16x16.png favicon-32x32.png favicon.ico

echo "Done! All icons created successfully."
