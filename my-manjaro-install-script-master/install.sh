#!/bin/bash

## update
sudo pacman -Syu --noconfirm

## zsh install and config
cd
sudo pacman -S zsh zsh-syntax-highlighting autojump zsh-autosuggestions --noconfirm
wget https://github.com/ChrisTitusTech/zsh/raw/master/.zshrc -O ~/.zshrc
mkdir -p "$HOME/.zsh"
wget https://github.com/ChrisTitusTech/zsh/raw/master/.zsh/aliasrc -O ~/.zsh/aliasrc
git clone https://github.com/sindresorhus/pure.git "$HOME/.zsh/pure"
touch ~/.cache/zshhistory
git clone --depth=1 https://github.com/romkatv/powerlevel10k.git ~/powerlevel10k
echo 'source ~/powerlevel10k/powerlevel10k.zsh-theme' >>! ~/.zshrc

## awesome
sudo pacman -Sy awesome rofi  i3lock-fancy xclip ttf-roboto mate-polkit materia-gtk-theme lxappearance flameshot pnmixer  xfce4-power-manager -y
wget -qO- https://git.io/papirus-icon-theme-install | sh
git clone https://github.com/batvin123/material-awesome.git ~/.config/awesome

## apps
sudo pacman -S terminator python htop newsboat cmatrix audacious nemo gedit flatpak --noconfirm


