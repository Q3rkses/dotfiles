#!/usr/bin/env bash

CACHE="$HOME/.cache/wal/colors.sh"
IMG="$HOME/Pictures/wallpaper/default.jpg"

if [[ -r "$CACHE" ]]; then
  # If a cached palette exists, reload it
  wal -R
else
  # Otherwise generate from the image
  wal -i "$IMG"
fi