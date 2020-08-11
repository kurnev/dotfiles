#!/bin/sh

sudo dnf update

# RPM Fusion
sudo dnf install https://download1.rpmfusion.org/free/fedora/rpmfusion-free-release-$(rpm -E %fedora).noarch.rpm 
sudo dnf install https://download1.rpmfusion.org/nonfree/fedora/rpmfusion-nonfree-release-$(rpm -E %fedora).noarch.rpm

# Git
git config --global user.name "Kurnev Egor"
git config --global user.email kurnev.e@gmail.com

# Enpass
cd /etc/yum.repos.d/
sudo wget https://yum.enpass.io/enpass-yum.repo
sudo dnf install enpass

# Discord

sudo dnf copr enable tcg/discord
sudo dnf install Discord-installer -y
sudo systemctl enable --now discord-installer

# Alacritty

dnf copr enable pschyska/alacritty
dnf install alacritty

sudo dnf install sway neovim nodejs starship wl-clipboard

# Yarn

curl --silent --location https://dl.yarnpkg.com/rpm/yarn.repo | sudo tee /etc/yum.repos.d/yarn.repo
sudo dnf install yarn

# Starship ? kubectl ? Fonts ? Init vim plug 
