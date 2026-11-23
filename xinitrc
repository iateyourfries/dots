#keyboard
setxkbmap br

#touchpad

#scroll
xinput set-prop "VEN_04F3:00 04F3:3259 Touchpad" "libinput Natural Scrolling Enabled" 1
#tap to click
xinput set-prop "VEN_04F3:00 04F3:3259 Touchpad" "libinput Tapping Enabled" 1

#gtk portal
systemctl --user import-environment DISPLAY XAUTHORITY
dbus-update-activation-environment --systemd DISPLAY XAUTHORITY

#compositor
picom &

#night light
gammastep -O 4000 &

#wallpaper
xwallpaper --focus walls/cloud.jpg &

#status bar
slstatus &


exec dwm
