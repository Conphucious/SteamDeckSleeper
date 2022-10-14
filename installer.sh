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
cd ~/Downloads/
if [ -d "$path_name" ]; then
    rm -R $path_name
fi
mkdir $path_name
curl -o ~/Downloads/JSDS/run.sh "$git_repo_url/run.sh"
curl -o ~/Downloads/JSDS/core.sh "$git_repo_url/core.sh"

# Permissions
chmod 555 ~/Downloads/JSDS/run.sh
chmod 555 ~/Downloads/JSDS/core.sh

# Finish
steamos-add-to-steam ~/Downloads/JSDS/run.sh
zenity --info --width=500 --text="Installation complete for JSDS!"