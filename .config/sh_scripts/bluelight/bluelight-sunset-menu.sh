#!/usr/bin/env bash

choices=("󰖨 6500K" " 4500K" " 3400K" " Custom…")
sel=$(printf '%s\n' "${choices[@]}" |
      wofi --dmenu --prompt="Temp:" 2>/dev/null) || exit 0

case $sel in
  *6500K) k=6500 ;;
  *4500K) k=4500 ;;
  *3400K) k=3400 ;;
  "Custom…") k=$(printf '' | wofi --dmenu --prompt="Temp K:" 2>/dev/null) ;;
  *) exit 0 ;;
esac

hyprctl -i "$HYPRLAND_INSTANCE_SIGNATURE" hyprsunset temperature "$k"