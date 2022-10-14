#!/bin/bash

# Setup
set -e
git_repo_url="https://raw.githubusercontent.com/Conphucious/SteamDeckSleeper/master"
path_name="JSDS"

# Prompt for installation
zenity --question --width=500 --text="Do you want to install JSDS (Jimmy's Steam Deck Sleeper)?"
if [ "$?" != 0 ]; then
    exit 1;
fi

# Download the scripts
cd ~/Desktop/
if [ -d "$path_name" ]; then
    rm -R $path_name
fi
mkdir $path_name
curl -o ~/Desktop/JSDS/run.sh "$git_repo_url/run.sh"
curl -o ~/Desktop/JSDS/core.sh "$git_repo_url/core.sh"

# Permissions
chmod 555 ~/Desktop/JSDS/run.sh
chmod 555 ~/Desktop/JSDS/core.sh

# Finish
zenity --info --width=500 --text="Installation complete for JSDS!"