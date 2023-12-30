#!/bin/bash
systemctl enable bluetooth
systemctl start bluetooth
sudo pacman -S pulseaudio-bluetooth
sudo pacman -S wireplumber pipewire-pulse
