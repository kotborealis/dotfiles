#! /usr/bin/env bash

# Layout to switch keyboard to
SUGGESTED_LAYOUT=0

# Stores previous keyboard layout
PREVIOUS_LAYOUT=$(gsettings get org.gnome.desktop.input-sources current | cut -d' ' -f2)

gsettings set org.gnome.desktop.input-sources current $SUGGESTED_LAYOUT
rofi -show combi
gsettings set org.gnome.desktop.input-sources current $PREVIOUS_LAYOUT
