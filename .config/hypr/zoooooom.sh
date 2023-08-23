#!/bin/sh
if hyprctl getoption misc:cursor_zoom_factor | grep "float: 3.0"; then
        hyprctl keyword misc:cursor_zoom_factor 0
else
        hyprctl keyword misc:cursor_zoom_factor 3
fi
