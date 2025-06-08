#!/usr/bin/env bash

# bluelight-sunset.sh — Change the hue of the screen

# ─── CONFIG ───────────────────────────────────────────
DAY_TEMP=6500
NIGHT_TEMP=3400
START_NIGHT=20
END_NIGHT=8
# ─────────────────────────────────────────────────────

hour=$(date +%H)

if (( hour >= START_NIGHT || hour < END_NIGHT )); then
  icon="🌙"; temperature="$NIGHT_TEMP"
else
  icon="🔆"; temperature="$DAY_TEMP"
fi

# launch the new daemon in the background
hyprsunset -t "$temperature" >/dev/null 2>&1 &

# immediately exit after printing status for Waybar
printf "%s %sK\n" "$icon" "$temperature"
