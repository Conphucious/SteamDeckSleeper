#!/bin/bash

# Setup
set -e
git_repo_url="https://raw.githubusercontent.com/Conphucious/SteamDeckSleeper/master"
file_name="jsds.sh"
path_name="JSDS"

# Prompt for installation
zenity --question --width=500 --text="Do you want to install JSDS (Jimmy's Steam Deck Sleeper)?"
if [ "$?" != 0 ]; then
    exit 1;
fi

# Download the scripts
cd ~/Desktop/
if [ -d "$path_name" ]; then
    rm -R "$path_name"
fi
mkdir $path_name
curl -o ~/Desktop/"$path_name/$file_name" "$git_repo_url/$file_name"

# Permissions
chmod 555 ~/Desktop/"$path_name/$file_name"

# Finish
zenity --question --width=500 --text="Do you want to add JSDS to your steam library?"
if [ "$?" != 0 ]; then
    exit 1;
fi
steamos-add-to-steam ~/Desktop/$path/$file_name
zenity --info --width=500 --text="Installation complete!"