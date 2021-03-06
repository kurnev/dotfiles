#!/bin/bash

# TODO: Add detect of correct keyboard name
swaymsg -t get_inputs | jq -r \
    "first(.[]|select(.identifier == \"$1\" and .type == \"keyboard\")) \
    | .xkb_active_layout_name | .[0:2] | ascii_downcase"

swaymsg -mrt subscribe '["input"]' | jq -r --unbuffered \
    "select(.change == \"xkb_layout\")
    | .input
    | select(.identifier == \"$1\" and .type == \"keyboard\") \
    | .xkb_active_layout_name | .[0:2] | ascii_downcase"

