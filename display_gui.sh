display_gui() {
    time=$(zenity --list --title="SDS :: Configuration" --column="Time to terminate Steam Deck" \ "Until download complete" \ "15 minutes" \ "30 minutes" \ "60 minutes")
    xrandr --output eDP --brightness 0
    if [[ "$time" == " 15 minutes" ]]; then
        timeout 5s bash "$driver"
    elif [[ "$time" == " 30 minutes" ]]; then
        timeout 30m bash "$driver"
    elif [[ "$time" == " 60 minutes" ]]; then
        timeout 60m bash "$driver"
    else
        bash "$driver"
    fi
    shutdown
}

driver="core.sh"
display_gui