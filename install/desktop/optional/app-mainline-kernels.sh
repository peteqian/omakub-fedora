#!/bin/bash

# Install kernel updates tool
# Note: Fedora handles kernel updates differently, mainline is Ubuntu-specific
# Use akmods for additional kernel modules and dnf for kernel updates
sudo dnf install -y akmods kernel-devel
echo "Note: Fedora handles kernel updates automatically. Use 'sudo dnf update kernel*' for manual kernel updates."
