#!/bin/bash

sleep_timer=5
steam_dir="/Users/nguyen/Library/Application Support/Steam/steamapps/downloading"
# steam_dir="/home/deck/.local/share/Steam/steamapps"

is_steam_downloading() {
    result=$(ls -l "$steam_dir") 
    if [[ "$result" == "total 0" ]]; then
        return 0
    else
        return 1
    fi
}

process_downloading() {
    is_steam_downloading
    while [ $? == 1 ]; do
        echo 'waiting for downloading to finish...'
        sleep $sleep_timer
        is_steam_downloading
    done
}


# make_folder
# zenity --list --title="Choose your OS" --column="OS" --column="Interface" \ Ubuntu Unity \  "OS X" Marble \  FreeBSD "Command line" \  Fedora GNOME \  Minix Command_line \  Pidora XFCE \  Lubuntu LXDE \  "MS-Windows" Metro
process_downloading
clear_folder

make_folder() {
    cd "$steam_dir"
    mkdir "asd"
}

clear_folder() {
    cd "$steam_dir"
    rm -R "asd/"
}
