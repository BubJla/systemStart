#!/bin/bash
sudo pacman -Syu
sudo pacman -S --needed base-devel git
git clone https://aur.archlinux.org/yay.git
cd yay
makepkg -si
cd
yay -Syu
sudo pacman -S polybar rofi calc networkmanager
yay -S mpc mpd
yay -S pywal
cp -r /home/user99/Documents/systemStart/polybar /home/user99/.config
sudo pacman -S powerline-fonts
git clone --recursive https://github.com/andresgongora/synth-shell.git
cp -r /home/user99/Documents/systemStart/synth-shell /home/user99/.config
cp /home/user99/Documents/systemStart/.bashrc /home/user99
chmod +x synth-shell/setup.sh
cd synth-shell
./setup.sh
cd
sudo pacman -S cmake extra-cmake-modules base-devel neofetch
yay -S qt5-tools
sudo pacman -S nodejs yarn gettext
git clone https://github.com/yilozt/rounded-window-corners
cd rounded-window-corners
yarn install && yarn ext:install
sudo pacman -S packagekit-qt5 latte-dock
sudo cp -r /home/user99/Documents/systemStart/.config/neofetch /home/user99/Documents/.config
sudo cp -r /home/user99/Documents/systemStart/.config/polybar /home/user99/Documents/.config
cp /home/user99/Documents/systemStart/.updates.txt /home/user99
yay -S pywal
sudo pacman -S networkmanager
cp -r /home/user99/Documents/systemStart/scripts  /home/user99/Documents/scripts
cp -r /home/user99/Documents/systemStart/neofetch /home/user99/.config
cp -r /home/user99/Documents/systemStart/scripts /home/user99/Documents
cp -r /home/user99/Documents/systemStart/latte /home/user99/.config
