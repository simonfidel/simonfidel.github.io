#!/bin/bash

cd /Users/sotapanna/Sync/Software/quartz

# Get the latest modified file in content/
FILE=$(ls -t content/*.md | head -n 1)

# Extract filename without extension
FILENAME=$(basename "$FILE" .md)

hugo

git add "public/$FILENAME/index.html"   # Add only the corresponding HTML file
git commit -m "Publishing $FILENAME"
git push origin main