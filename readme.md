# Jimmy's Steam Deck Sleeper (JSDS)
This project was created to imitate a sleep function on the steam deck. There is no way to download and sleep your device at the same time. What this utility does is:

1. Turns down the device's brightness to 0
2. Idles the device until ALL downloads completed
3. Shuts down the device (based on your conditional selection)

# Installation

1. Run the installer on Konsole:

`curl -sSL https://raw.githubusercontent.com/Conphucious/SteamDeckSleeper/master/installer.sh | bash`

2. Enable your steam settings to allow gameplay during downloads

`Steam > Downloads > Allow downloads during gameplay`

3. Run the `sleep-downloader.sh` util when you're downloading something and want to be idle.


# Usage

You can run this script manually via `bash ~/Desktop/jsds.sh` or double clicking the `jsds.sh` file and then select `execute`.

You can also run this script as a non-steam game as long as you enable your `Steam > Settings > Downloads > Allow gameplay during downloads`. This however will not activate the screen off function.

>Keep in mind, there is no way to reset the brightness and use the device again once this utility is activated. The only option is to restart the device to manually exit the utility. This utility is great for situations where you're about to go out but want some downloads finished without leaving your Steam Deck unattended all day on the charger. 

# Kudos
- Inspiration from Scawp https://github.com/scawp/Steam-Deck.Shader-Cache-Killer