#!/usr/bin/env bash

DAY=6500; NIGHT=3400; START=18; END=6
hour=$(date +%H)
(( hour >= START || hour < END )) && k=$NIGHT || k=$DAY

hyprctl hyprsunset temperature "$k" >/dev/null 2>&1