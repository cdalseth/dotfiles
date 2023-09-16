#!/bin/sh

run(){
	if ! pgrep -f "$1"; then
		"$@" &
	fi
}

run "xrandr" --output DisplayPort-0 --mode 1920x1080 --pos 0x0 --rotate normal --output DisplayPort-1 --mode 1920x1080 --pos 3840x0 --rotate normal --output DisplayPort-2 --off --output HDMI-A-0 --primary --mode 1920x1080 --pos 1920x0 --rate 144 --rotate normal &
run "redshift" -l 45.33:-93.75 & 
