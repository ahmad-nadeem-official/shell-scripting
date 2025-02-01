🚀 Memory Cleanup Script for Linux
==================================

⚡️ Optimize Your Linux System Performance with One Click!
---------------------------------------------------------

This **Memory Cleanup Script** helps you reclaim disk space and free up memory by clearing out unnecessary caches, logs, and old system files. Whether you're running a heavy-duty server or a personal system, this script helps keep your system lean, fast, and responsive.

### Features:

*   🧹 Clears APT package manager cache.
*   🗑️ Removes unused packages and old kernels.
*   🧼 Cleans system logs older than 2 weeks.
*   🖼️ Clears thumbnail and user cache to save space.
*   💨 Frees up RAM by clearing page cache, dentries, and inodes.
*   🚀 Removes unnecessary files and optimizes system performance.

* * *

🛠 Installation:
----------------

### Step 1: Download the Script

Clone or download the script from your preferred source, and save it as `cleanup.sh`.

### Step 2: Make the Script Executable

Once you've downloaded the script, navigate to its directory and run:

bash

CopyEdit

`chmod +x cleanup.sh` 

This will make the script executable.

### Step 3: (Optional) Convert Windows Line Endings

If you edited the script on Windows, it might have Windows line endings that could cause issues. To ensure compatibility, convert the line endings to Unix format with:

nginx

CopyEdit

`dos2unix cleanup.sh` 

If `dos2unix` is not installed, you can install it by running:

arduino

CopyEdit

`sudo apt-get install dos2unix` 

* * *

🏃‍♂️ Usage:
------------

1.  **Run the Script**:
    
    After you've made it executable, run the script from the terminal:
    
    bash
    
    CopyEdit
    
    `./cleanup.sh` 
    
2.  **Follow the Prompts**:
    
    The script will ask for confirmation before proceeding. Type `y` to confirm and start the cleanup, or `n` to cancel.
    
3.  **Script Actions**:
    
    The script performs the following cleanup tasks:
    
    *   **APT Cache Cleanup**: Clears the package manager cache to free up space.
    *   **Remove Old Kernels**: Automatically removes old and unused kernels.
    *   **System Logs Cleanup**: Cleans up system logs older than 2 weeks.
    *   **Cache Clearing**: Removes unnecessary user and thumbnail caches.
    *   **Memory Cleanup**: Frees up RAM by clearing page cache, dentries, and inodes.

* * *

🔥 Why Should You Use This Script?
----------------------------------

Over time, your system can accumulate a lot of unnecessary data, such as old package caches, unused kernels, system logs, and user cache files. These can consume valuable disk space and slow down your system. This script automates the cleanup process, ensuring that your system remains fast and efficient.

Running this script regularly will help:

*   Free up significant disk space.
*   Boost your system’s overall performance.
*   Keep your system clean and optimized.

* * *

⚠️ Important Notes:
-------------------

*   This script requires `sudo` privileges for certain actions (e.g., removing old kernels, clearing package cache).
*   Be cautious when using this script, as it will delete system logs, cache files, and old kernel versions. Always ensure you have backups of important data before proceeding.