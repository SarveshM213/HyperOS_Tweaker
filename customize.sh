#!/system/bin/sh
# Tweak system properties to improve performance
resetprop ro.config.hw_quickpoweron true
resetprop ro.config.vc_call_vol_steps 12

# Battery saving tweaks
resetprop persist.power.useautobright false
resetprop power.saving.mode 1

# Optimize RAM management
resetprop dalvik.vm.heapstartsize 8m
resetprop dalvik.vm.heapgrowthlimit 192m
resetprop dalvik.vm.heapsize 512m
resetprop dalvik.vm.heaptargetutilization 0.75
resetprop dalvik.vm.heapminfree 2m
resetprop dalvik.vm.heapmaxfree 8m

# Enable ZRAM for better RAM management
resetprop ro.config.zram.enabled true
resetprop ro.config.swap.enable true
resetprop ro.config.zram.size 512m

# Performance tweaks
resetprop sys.config.low_ram false
resetprop ro.config.nocheckin true
