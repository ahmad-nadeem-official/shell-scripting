#!/bin/bash
#name : Muhammad Ahmad Nadeem
#date : 2025-02-01
#version: v1
#purpose: This script helps to clean up memory by clearing cache, logs, and unused files.
###########################################################################################



# Confirm if the user wants to continue
echo "This script will clean up memory by clearing cache and unused files. Proceed with caution."
read -p "Do you want to continue? (y/n): " answer

if [ "$answer" != "y" ]; then
    echo "Aborting cleanup process."
    exit 0
fi

# Step 1: Clear APT cache
echo "Clearing APT cache..."
sudo apt-get clean
sudo apt-get autoremove --purge
sudo apt-get autoclean
echo "APT cache cleared."

# Step 2: Clean systemd journal logs older than 2 weeks
echo "Cleaning systemd journal logs..."
sudo journalctl --vacuum-time=2weeks
echo "System logs cleaned."

# Step 3: Clear thumbnail cache
echo "Clearing thumbnail cache..."
rm -rf ~/.cache/thumbnails/*
echo "Thumbnail cache cleared."

# Step 4: Clear user cache
echo "Clearing user cache..."
rm -rf ~/.cache/*
echo "User cache cleared."

# Step 5: Free up RAM by clearing page cache, dentries, and inodes
echo "Freeing up RAM by clearing page cache..."
sudo sync && sudo sysctl -w vm.drop_caches=3
echo "RAM freed."

# Step 6: Remove old kernels
echo "Removing old kernels..."
sudo apt-get remove --purge $(dpkg --list | grep linux-image | awk '{print $2}' | grep -v $(uname -r))
echo "Old kernels removed."

# Step 7: Inform the user that cleanup is complete
echo "Memory cleanup process complete!"
