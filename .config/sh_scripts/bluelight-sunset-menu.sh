#!/usr/bin/env bash
#
# bluelight-sunset-menu.sh — choose a preset or custom temp, then restart hyprsunset

choices=(
  "🔆 Day — 6500K"
  "🌆 Evening — 4500K"
  "🌙 Night — 3400K"
  "Custom…"
)

selection=$(printf "%s\n" "${choices[@]}" \
  | wofi --dmenu --prompt="Set screen temperature:" )

case "$selection" in
  *6500K) temperature=6500 ;;
  *4500K) temperature=4500 ;;
  *3400K) temperature=3400 ;;
  "Custom…")
    temperature=$(printf "" | wofi --dmenu --prompt="Temperature in K:")
    ;;
  *) exit 0 ;;
esac

hyprsunset -t "$temperature" >/dev/null 2>&1 &
