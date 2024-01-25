#!/bin/sh
query=$(printf "%s\n" "rustdoc" "devdocs" | bemenu --list 10 -c --prompt "system" --ignorecase -M 600 --fn "Iosevka Term 30" --prompt "docs" --tf "#00ff00" --hf "#000000" --hb "#ffffff")
if [ "$query" = "rustdoc" ];
then 
	query=$(echo "" | bemenu -c --prompt "search ⌕   " --fn "Iosevka Term 30" -M 40 --tf "#00ff00")
	$BROWSER file:///home/owl/.rustup/toolchains/stable-x86_64-unknown-linux-gnu/share/doc/rust/html/std/all.html?search=${query}
	# rustup doc --std
elif [ "$query" = "devdocs" ]
then
	query=$(echo "" | bemenu -c --prompt "search ⌕   " --fn "Iosevka Term 30" -M 40 --tf "#00ff00")
	lang=$(echo $query | cut -d ' ' -f 1)
	topic=$(echo $query | cut -d ' ' -f 2)
	$BROWSER https://devdocs.io/#q=${lang}%20${topic}
else
	exit 1
fi
