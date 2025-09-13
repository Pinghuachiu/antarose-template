#!/bin/bash

# Check if URL is provided
if [ $# -eq 0 ]; then
    echo "Usage: $0 <repository-url>"
    exit 1
fi

REPO_URL=$1
REPO_NAME=$(basename "$REPO_URL" .git)

# Download the repository
echo "Downloading repository..."
wget -O temp_repo.zip "$REPO_URL/archive/master.zip" || {
    echo "Failed to download repository"
    exit 1
}

# Extract the repository
echo "Extracting repository..."
unzip -q temp_repo.zip || {
    echo "Failed to extract repository"
    rm temp_repo.zip
    exit 1
}

# Rename the extracted directory if needed
if [ -d "${REPO_NAME}-master" ]; then
    mv "${REPO_NAME}-master" "$REPO_NAME"
fi

# Remove the .git directory if it exists
if [ -d "$REPO_NAME/.git" ]; then
    rm -rf "$REPO_NAME/.git"
    echo "Removed .git directory"
fi

# Clean up
rm temp_repo.zip

echo "Repository downloaded and .git directory removed successfully!"
