#!/usr/bin/env bash


choices=("󰖨 Day 6500 [K]" " Evening 4500 [K]" " Night 3400 [K]" " Custom temp [K]")
sel=$(printf '%s\n' "${choices[@]}" | wofi --dmenu --prompt="Temp:" 2>/dev/null) || exit 0

case $sel in
  *6500K) k=6500 ;;
  *4500K) k=4500 ;;
  *3400K) k=3400 ;;
  "Custom…")
    temp=$(printf "" | wofi --dmenu --prompt="Temp in K:" 2>/dev/null)
    ;;
  *) exit 0 ;;
esac

hyprctl hyprsunset temperature "$k"