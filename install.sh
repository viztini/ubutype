#!/bin/bash
SUDO=''
if [ "$EUID" -ne 0 ]; then
  SUDO='sudo'
fi
SCRIPT_DIR=$( cd -- "$( dirname -- "${BASH_SOURCE[0]}" )" &> /dev/null && pwd )

# Make the scripts executable
$SUDO chmod +x "$SCRIPT_DIR/ubutype.py"

# Create symlinks
$SUDO ln -sf "$SCRIPT_DIR/ubutype.py" /usr/local/bin/ubutype

echo "ubutype installed successfully!"
echo "You can now run the game by typing: ubutype"