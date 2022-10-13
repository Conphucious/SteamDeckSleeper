#!/bin/bash

# Setup
set -e
git_repo_url="https://raw.githubusercontent.com/Conphucious/SteamDeckSleeper/master"
path_name="JSDS"
install_path="~/Downloads/JSDS/"

# Prompt for installation
zenity --question --width=500 --text="Do you want to install JSDS (Jimmy's Steam Deck Sleeper)?"
if [ "$?" != 0 ]; then
    exit 1;
fi

# Download the scripts
cd ~/Downloads/
mkdir $path_name
curl -o ~/Downloads/"$path_name/run.sh" "$git_repo_url/run.sh"
curl -o ~/Downloads/"$path_name/core.sh" "$git_repo_url/core.sh"

# Permissions
chmod 555 ~/Downloads/"$path_name/run.sh"
chmod 555 ~/Downloads/"$path_name/core.sh"

# Finish
steamos-add-to-steam ~/Downloads/"$path_name/run.sh"
zenity --info --text="Installation complete for JSDS!"