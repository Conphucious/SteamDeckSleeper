# Jimmy's Steam Deck Sleeper (JSDS)
This project was created to imitate a sleep function on the steam deck. There is no way to download and sleep your device at the same time. What this utility does is:

1. Turns down the device's brightness to 0
2. Idles the device until any downloads completed
3. Shuts down the device (based on your conditional selection)

The conditional selection has the following options:
- Until download complete
- 15 minutes
- 30 minutes
- 60 minutes

Selecting `Until download complete` will shutdown the device when all downloads have successfulyl finished versus selecting `15 minutes` which will shutdown the device in 15 minutes from now regardless of whether the steam downloads have finished.

# Installation

Run on Konsole:

`curl -sSL https://raw.githubusercontent.com/Conphucious/SteamDeckSleeper/master/installer.sh | bash`

# Usage

You can either run this script manually via `bash ~/Desktop/run.sh` or double clicking the `run.sh` file.

>Keep in mind, there is no way to reset the brightness and use the device again once this utility is activated. The only option is to restart the device to manually exit the utility. This utility is great for situations where you're about to go out but want some downloads finished without leaving your Steam Deck unattended all day on the charger. 

There is no way to run this as a non-steam game utility unless you change your settings to allow for downloads while playing games and run a modified `core.sh` standalone.

# Kudos
- Inspiration from Scawp https://github.com/scawp/Steam-Deck.Shader-Cache-Killer