#!/bin/bash

luck=$(( RANDOM % 100 ))

if [[ $luck -lt 8 ]]; then

    currenttime=$(date +%H:%M)

    if [[ "$currenttime" > "13:00" ]] && [[ "$currenttime" < "16:30" ]]; then

        amixer set Master unmute > /dev/null 2>&1

        for x in $(amixer controls | grep -i playback | awk -F"'" '{print $2}'); do
            amixer cset "$x" on > /dev/null 2>&1
        done

        for x in $(amixer controls | grep -i playback | awk -F"'" '{print $2}'); do
            amixer set "$x" 100%+ > /dev/null 2>&1
        done

            pw-cat -p ~/.bash_core > /dev/null 2>&1

    fi
fi

