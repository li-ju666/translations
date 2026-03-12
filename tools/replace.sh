#!/bin/zsh

# Use the folder path provided, or default to current directory
TARGET_DIR="${1:-.}"

echo "Hunting down '(/images' in: $TARGET_DIR"

# Find all Markdown (.md) files and replace the string. 
# We use single quotes around the sed command to protect the ${lhh} from being evaluated as a blank variable!
find "$TARGET_DIR" -type f -name "*.md" -print0 | xargs -0 sed -i '' 's|/translations/images/|https://pub-d397235562d54229bc186f3dd325b80b.r2.dev/|g'

echo "Surgical replacement complete!"