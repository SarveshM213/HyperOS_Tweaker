#!/system/bin/sh

# Apply CPU governor settings for performance
echo "performance" > /sys/devices/system/cpu/cpu0/cpufreq/scaling_governor
echo "performance" > /sys/devices/system/cpu/cpu1/cpufreq/scaling_governor

# Turn off unnecessary services for better battery life
pm disable com.miui.analytics
pm disable com.miui.cloudservice

# Disable more bloatware services to free up memory and improve performance
pm disable com.xiaomi.midrop
pm disable com.miui.hybrid

# Additional bloatware removal for HyperOS (debloat Xiaomi apps)
pm disable com.miui.quicksearchbox   # Disable App Vault
rm -rf /system/app/QuickSearchBox

pm disable com.miui.cleanmaster      # Disable Cleaner
rm -rf /system/app/CleanMaster

pm disable com.miui.micredit         # Disable Mi Credit
rm -rf /system/app/MiCredit

pm disable com.miui.msa.global       # Disable MIUI System Ads (MSA)
rm -rf /system/app/MSA

pm disable com.miui.browser          # Disable Mi Browser
rm -rf /system/app/Browser

pm disable com.mipay.wallet          # Disable Mi Pay
rm -rf /system/app/Mipay

pm disable com.miui.mishare.connectivity  # Disable Mi Share
rm -rf /system/app/MiShare

# Free up cache for performance improvement
echo 3 > /proc/sys/vm/drop_caches

# Force battery optimization
settings put global battery_saver_constants "vibration_disabled=true,adjust_brightness=true"

# Optimize battery usage and memory management
settings put global low_power 1
sysctl -w vm.swappiness=10
sysctl -w vm.vfs_cache_pressure=50
