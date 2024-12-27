#!/system/bin/sh

chmod 777 /sys/class/leds/lcd-backlight/brightness
echo 1022 > /sys/class/leds/lcd-backlight/brightness
