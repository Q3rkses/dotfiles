#!/bin/bash

selection=$(cliphist list | tofi -c ~/.config/tofi/configV)

if [[ -n "$selection" ]]; then
    decoded=$(cliphist decode <<< "$selection" 2>/dev/null)
    if [[ -n "$decoded" ]]; then
        printf "%s" "$decoded" | wl-copy
    fi
fi