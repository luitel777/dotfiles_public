#!/bin/sh

if [ $(hyprctl getoption decoration:screen_shader | grep -oP '\"(.*?)\"' | tr -d '"') = "[[EMPTY]]" ]; then
        hyprctl keyword decoration:screen_shader "$HOME/.config/hypr/shader.frag"
 else

        hyprctl keyword decoration:screen_shader "[[EMPTY]]"

fi
