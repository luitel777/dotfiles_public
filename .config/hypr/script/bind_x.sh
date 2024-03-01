#!/usr/bin/env sh

query=$(printf "%s\n" "logout" "reboot" "shutdown" | bemenu --list 10 -b --prompt "system" --ignorecase --fn "Iosevka Term ss11 50" --prompt "Bye! (ʘ‿ʘ)╯" --tf "#7e37fa" --hf "#000000" --hb "#ffffff")

if [ "$query" = "logout" ];
then 
	swaymsg exit ; killall Hyprland
elif [ "$query" = "shutdown" ]
then
	poweroff
elif [ "$query" = "reboot" ]
then
	reboot
else
	echo "Not specified"
	exit 1
fi
