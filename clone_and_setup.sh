#!/bin/bash

# Setup script for cloning HuggingFace Space and importing to this repository
# This script automates the process of bringing the evb-br codebase from HuggingFace

set -e

HUGGINGFACE_REPO="https://huggingface.co/spaces/mmrech/evb-br"
TEMP_DIR="/tmp/evb-br-clone"
SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"

echo "========================================="
echo "EVB-BR Setup Script"
echo "========================================="
echo ""

# Check if git-xet is installed
if ! command -v git-xet &> /dev/null; then
    echo "❌ git-xet is not installed."
    echo ""
    echo "Please install git-xet first:"
    echo ""
    echo "For macOS (using Homebrew):"
    echo "  brew tap huggingface/tap"
    echo "  brew install git-xet"
    echo "  git xet install"
    echo ""
    echo "For Linux:"
    echo "  curl --proto '=https' --tlsv1.2 -sSf https://raw.githubusercontent.com/huggingface/xet-core/refs/heads/main/git_xet/install.sh | sh"
    echo "  git xet install"
    echo ""
    exit 1
fi

echo "✅ git-xet is installed (version: $(git-xet --version))"
echo ""

# Ensure git-xet is configured
echo "Configuring git-xet..."
git xet install 2>&1 || true
echo ""

# Clean up any existing temporary directory
if [ -d "$TEMP_DIR" ]; then
    echo "Cleaning up existing temporary directory..."
    rm -rf "$TEMP_DIR"
fi

# Clone the HuggingFace Space repository
echo "Cloning HuggingFace Space repository..."
echo "Repository: $HUGGINGFACE_REPO"
echo "Destination: $TEMP_DIR"
echo ""

if git clone "$HUGGINGFACE_REPO" "$TEMP_DIR"; then
    echo "✅ Successfully cloned the repository"
    echo ""
else
    echo "❌ Failed to clone the repository"
    echo "Please check your internet connection and try again."
    exit 1
fi

# Copy files from cloned repo to current directory
echo "Copying files to current repository..."
echo ""

# Count files to copy (excluding .git)
FILE_COUNT=$(find "$TEMP_DIR" -mindepth 1 -maxdepth 1 ! -name '.git' | wc -l)

if [ "$FILE_COUNT" -eq 0 ]; then
    echo "⚠️  No files found in the cloned repository"
    echo "The repository might be empty or have issues."
else
    echo "Found $FILE_COUNT items to copy"
    
    # Copy all files except .git directory
    for item in "$TEMP_DIR"/*; do
        if [ "$(basename "$item")" != ".git" ]; then
            cp -r "$item" "$SCRIPT_DIR/"
            echo "  ✓ Copied: $(basename "$item")"
        fi
    done
    
    # Also copy hidden files except .git
    for item in "$TEMP_DIR"/.[!.]*; do
        if [ -e "$item" ] && [ "$(basename "$item")" != ".git" ]; then
            cp -r "$item" "$SCRIPT_DIR/"
            echo "  ✓ Copied: $(basename "$item")"
        fi
    done
fi

echo ""
echo "✅ Files copied successfully"
echo ""

# Clean up temporary directory
echo "Cleaning up temporary directory..."
rm -rf "$TEMP_DIR"
echo ""

echo "========================================="
echo "Setup Complete!"
echo "========================================="
echo ""
echo "Next steps:"
echo "1. Review the imported files:"
echo "   ls -la"
echo ""
echo "2. Check git status:"
echo "   git status"
echo ""
echo "3. Add and commit the changes:"
echo "   git add ."
echo "   git commit -m 'Import codebase from HuggingFace Space'"
echo ""
echo "4. Push to GitHub:"
echo "   git push origin main"
echo ""
