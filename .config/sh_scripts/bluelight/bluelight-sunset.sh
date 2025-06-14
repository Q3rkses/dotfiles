#!/usr/bin/env bash

temp=$(hyprctl hyprsunset temperature 2>/dev/null) || exit 1

case $temp in
  '' ) exit 1 ;;
  [0-9]* )
      if   (( temp >= 5500 ));   then icon="󰖨"   # Day
      elif (( temp >= 4000 ));   then icon=""   # Evening
      elif (( temp <  4000 ));   then icon=""   # Night
      else                            icon="🌡"   # Fallback
      fi
      ;;
  * ) icon="🌡" ;;
esac

printf "%s %sK" "$icon" "$temp"