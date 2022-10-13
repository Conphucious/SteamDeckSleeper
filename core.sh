#!/bin/bash

sleep_timer=10
steam_dir="/home/deck/.local/share/Steam/steamapps/downloading"

function is_steam_downloading() {
    result=$(ls -l "$steam_dir") 
    if [[ "$result" == "total 0" ]]; then
        return 0
    else
        return 1
    fi
}

is_steam_downloading
while [ $? == 1 ]; do
    echo 'waiting for downloading to finish...'
    sleep $sleep_timer
    is_steam_downloading
done