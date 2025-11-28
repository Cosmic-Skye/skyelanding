#!/bin/bash

# Setup script for skyelanding repo
# Installs git hooks and any other local configuration

echo "Setting up skyelanding..."

# Install git hooks
if [ -d "hooks" ]; then
  cp hooks/* .git/hooks/
  chmod +x .git/hooks/*
  echo "✓ Git hooks installed"
else
  echo "✗ No hooks directory found"
fi

echo "Setup complete!"
