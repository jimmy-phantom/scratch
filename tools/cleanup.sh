#!/usr/bin/env bash

# Get the directory where this script lives
SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"

# work/ is a sibling of tools/
WORK_DIR="$(dirname "$SCRIPT_DIR")/work"

# Removes everything inside the work folder except .keep
find "$WORK_DIR" -mindepth 1 ! -name ".keep" -exec rm -rf {} +

echo "Scratch workspace cleaned."
