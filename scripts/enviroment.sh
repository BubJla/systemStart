#!/usr/bin/env bash

## Author  : Aditya Shakya
## Mail    : adi1090x@gmail.com
## Github  : @adi1090x
## Twitter : @adi1090x

dir="~/Documents/scripts/rofi"
uptime=$(uptime -p | sed -e 's/up //g')

rofi_command="rofi -no-config -theme $dir/powermenu.rasi"

# Options
nothing="Nothing"
coding="Coding"
school="School"
linux="Linux"
web="Web"
gaiming="Gaiming"

# Variable passed to rofi
options="$nothing\n$coding\n$school\n$linux\n$web"

chosen="$(echo -e "$options" | $rofi_command -p "Enviroment" -dmenu -selected-row 0)"
case $chosen in
    $nothing)
        ;;
    $coding)
        com.visualstudio.code &
        firefox &
        io.github.shiftey.Desktop &
        ;;
    $school)
        firefox &
        org.libreoffice.LibreOffice
        ;;
    $linux)
        konsole &
        dolphin &
        firefox &
        systemsettings
        ;;
    $web)
        firefox
        ;;
    $gaming)
        #com.valvesoftware.Steam
        ;;
esac
