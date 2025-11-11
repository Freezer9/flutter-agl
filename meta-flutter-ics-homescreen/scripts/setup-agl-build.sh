#!/bin/bash
# Quick setup script for AGL build environment

set -e

echo "=== Flutter ICS Homescreen - AGL Build Setup ==="
echo ""

# Check if running in AGL build directory
if [ ! -f "conf/bblayers.conf" ]; then
    echo "ERROR: This script must be run from your AGL build directory"
    echo "Example: cd ~/agl/build && /path/to/this/script.sh"
    exit 1
fi

SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
LAYER_DIR="$(dirname "$SCRIPT_DIR")"

echo "Layer directory: $LAYER_DIR"
echo ""

# Add meta-flutter if not already added
if ! grep -q "meta-flutter" conf/bblayers.conf; then
    echo "Adding meta-flutter layer..."
    if [ -d "../meta-flutter" ]; then
        bitbake-layers add-layer ../meta-flutter
    else
        echo "WARNING: meta-flutter not found in ../meta-flutter"
        echo "Please clone it: git clone https://github.com/meta-flutter/meta-flutter.git"
    fi
else
    echo "✓ meta-flutter already added"
fi

# Add flutter-ics-homescreen layer
if ! grep -q "meta-flutter-ics-homescreen" conf/bblayers.conf; then
    echo "Adding meta-flutter-ics-homescreen layer..."
    bitbake-layers add-layer "$LAYER_DIR"
    echo "✓ Layer added successfully"
else
    echo "✓ meta-flutter-ics-homescreen already added"
fi

# Add to image install if not already there
if ! grep -q "flutter-ics-homescreen" conf/local.conf; then
    echo ""
    echo "Adding flutter-ics-homescreen to IMAGE_INSTALL..."
    echo "" >> conf/local.conf
    echo "# Flutter ICS Homescreen" >> conf/local.conf
    echo "IMAGE_INSTALL:append = \" flutter-ics-homescreen\"" >> conf/local.conf
    echo "✓ Added to IMAGE_INSTALL"
else
    echo "✓ flutter-ics-homescreen already in IMAGE_INSTALL"
fi

echo ""
echo "=== Setup Complete ==="
echo ""
echo "Next steps:"
echo "1. Review and update the recipe if needed:"
echo "   $LAYER_DIR/recipes-platform/flutter-ics-homescreen/flutter-ics-homescreen_git.bb"
echo ""
echo "2. Build the package:"
echo "   bitbake flutter-ics-homescreen"
echo ""
echo "3. Or build the full AGL image:"
echo "   bitbake agl-demo-platform"
echo ""
