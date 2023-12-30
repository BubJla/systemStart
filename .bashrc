#
# ~/.bashrc
#

alias update="sudo rm /var/lib/pacman/db.lck
sudo pacman -Syu && flatpak update && yay -Syu"
alias IP="curl ifconfig.me"

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias ls='ls --color=auto'
alias grep='grep --color=auto'
PS1='[\u@\h \W]\$ '
[ -r /home/julian/.byobu/prompt ] && . /home/julian/.byobu/prompt   #byobu-prompt#

##-----------------------------------------------------
## synth-shell-greeter.sh
if [ -f /home/julian/.config/synth-shell/synth-shell-greeter.sh ] && [ -n "$( echo $- | grep i )" ]; then
	source /home/julian/.config/synth-shell/synth-shell-greeter.sh
fi

##-----------------------------------------------------
## synth-shell-prompt.sh
if [ -f /home/julian/.config/synth-shell/synth-shell-prompt.sh ] && [ -n "$( echo $- | grep i )" ]; then
	source /home/julian/.config/synth-shell/synth-shell-prompt.sh
fi

##-----------------------------------------------------
## better-ls
if [ -f /home/julian/.config/synth-shell/better-ls.sh ] && [ -n "$( echo $- | grep i )" ]; then
	source /home/julian/.config/synth-shell/better-ls.sh
fi

##-----------------------------------------------------
## alias
if [ -f /home/julian/.config/synth-shell/alias.sh ] && [ -n "$( echo $- | grep i )" ]; then
	source /home/julian/.config/synth-shell/alias.sh
fi

##-----------------------------------------------------
## better-history
if [ -f /home/julian/.config/synth-shell/better-history.sh ] && [ -n "$( echo $- | grep i )" ]; then
	source /home/julian/.config/synth-shell/better-history.sh
fi
clear
neofetch

#!/bin/bash

# Dateipfad festlegen
file="/home/julian/.updates.txt"

# Gesamte Datei lesen
content=$(<"$file")
#echo "$content"
#echo ""


UPDATES=$(<"$file")


#UPDATES=$(~/.config/polybar/grayblocks/scripts/checkupdates 2>/dev/null | wc -l);
	#echo $UPDATES" new updates"

if (( UPDATES >= 50 )); then
	echo $UPDATES" new updates"
	read -p "Update System? (y/n): " answer

	if [ "$answer" == "y" ]; then
		echo "sudo pacman -Syu"
		sudo pacman -Syu
		echo "flatpak update"
		flatpak update
		echo "yay -Syu"
		yay -Syu
	elif [ "$antwort" == "n" ]; then
		echo "Cancel"
	else
		echo "Invalid answer."
	fi
fi

