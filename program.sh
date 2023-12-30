#!/bin/bash
sudo pacman -S firefox flatpak timeshift gnome-disk-utility ntfs-3g gimp thunderbird flameshot kdeconnect
flatpak install flathub org.keepassxc.KeePassXC
flatpak install flathub com.discordapp.Discord
flatpak install flathub com.spotify.Client
flatpak install flathub com.vscodium.codium
flatpak install flathub org.libreoffice.LibreOffice
flatpak install flathub io.github.shiftey.Desktop
yay -S pamac-aur
sudo pacman -S --needed base-devel git
git clone https://aur.archlinux.org/archlinux-appstream-data-pamac.git
cd archlinux-appstream-data-pamac
makepkg -si
