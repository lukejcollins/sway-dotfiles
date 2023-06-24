#!/bin/sh

dbus-monitor --system "type='signal',interface='org.freedesktop.login1.Manager',member='PrepareForSleep'" |
while read -r line; do
    if echo $line | grep "true" &> /dev/null; then
        swaymsg exec swaylock
    fi
done
