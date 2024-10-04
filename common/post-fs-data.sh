#!/system/bin/sh
# Disable unnecessary services at boot for better memory management
pm disable com.miui.securitycenter
pm disable com.miui.systemAdSolution

# Apply kernel-level tweaks
sysctl -w vm.swappiness=10
sysctl -w vm.vfs_cache_pressure=50
