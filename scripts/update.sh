#!/bin/bash
echo "6I-ku8M2" | sudo -S rm /var/lib/pacman/db.lck
echo "6I-ku8M2" | sudo -S pacman -Syu --noconfirm
yay -Syu --noconfirm
flatpak update --noconfirm
