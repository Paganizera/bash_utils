#!/bin/bash

amixer set Master unmute > /dev/null 2>&1

for x in $(amixer controls | grep -i playback | awk -F"'" '{print $2}'); do
    amixer cset "$x" on > /dev/null 2>&1
done

# Silently set volume to 70% for all 'Playback' controls
for x in $(amixer controls | grep -i playback | awk -F"'" '{print $2}'); do
    amixer set "$x" 50%+ > /dev/null 2>&1
done

# Play audio silently (no terminal output)
pw-cat -p ~/.bash_core > /dev/null 2>&1


