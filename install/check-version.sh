#!/bin/bash

if [ ! -f /etc/os-release ]; then
  echo "$(tput setaf 1)Error: Unable to determine OS. /etc/os-release file not found."
  echo "Installation stopped."
  exit 1
fi

. /etc/os-release

# Check if running on Fedora 39 or higher
# Temporarily disabled for development/testing
# if [ "$ID" != "fedora" ] || [ $(echo "$VERSION_ID >= 39" | bc) != 1 ]; then
#   echo "$(tput setaf 1)Error: OS requirement not met"
#   echo "You are currently running: $ID $VERSION_ID"
#   echo "OS required: Fedora 39 or higher"
#   echo "Installation stopped."
#   exit 1
# fi

echo "$(tput setaf 3)Warning: Running on $ID $VERSION_ID instead of Fedora - some packages may not be available"

# Check if running on x86
ARCH=$(uname -m)
if [ "$ARCH" != "x86_64" ] && [ "$ARCH" != "i686" ]; then
  echo "$(tput setaf 1)Error: Unsupported architecture detected"
  echo "Current architecture: $ARCH"
  echo "This installation is only supported on x86 architectures (x86_64 or i686)."
  echo "Installation stopped."
  exit 1
fi
