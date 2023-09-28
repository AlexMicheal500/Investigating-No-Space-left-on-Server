#!/bin/bash 

# To check the RAM available use:
free
# Note to that 1,000,000KB makes 1GB

# To check usage of each file system we use:
df -h

# To identify Large Files or Directories
du -h --max-depth=1 / | sort -rh

# To list all large files on an Ubuntu server,
sudo find / -type f -exec du -h --threshold=50M {} + 2>/dev/null | sort -rh | head -n 20
# This checks for files that are at least 50MB
