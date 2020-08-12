#!/bin/sh

sudo dnf update

# RPM Fusion
sudo dnf install https://download1.rpmfusion.org/free/fedora/rpmfusion-free-release-$(rpm -E %fedora).noarch.rpm 
sudo dnf install https://download1.rpmfusion.org/nonfree/fedora/rpmfusion-nonfree-release-$(rpm -E %fedora).noarch.rpm

# Git
git config --global user.name "Kurnev Egor"
git config --global user.email kurnev.e@gmail.com

# Software from official\RPM repos
sudo dnf install sway neovim nodejs starship wl-clipboard wofi waybar fish fzf ripgrep golang

# Discord

sudo dnf copr enable tcg/discord
sudo dnf install Discord-installer -y
sudo systemctl enable --now discord-installer

# Alacritty

dnf copr enable pschyska/alacritty
dnf install alacritty

# Yarn

curl --silent --location https://dl.yarnpkg.com/rpm/yarn.repo | sudo tee /etc/yum.repos.d/yarn.repo
sudo dnf install yarn

# Enpass
cd /etc/yum.repos.d/
sudo wget https://yum.enpass.io/enpass-yum.repo
sudo dnf install enpass

# Vim

nvim -es -u ~/.config/nvim/init.vim -i NONE -c "PlugInstall" -c "qa"
nvim -es -u ~/.config/nvim/init.vim -i NONE -c "CocInstall -sync coc-json coc-tsserver coc-prettier coc-html coc-css coc-vetur coc-yaml coc-highlight coc-snippets coc-markdownlint coc-eslint coc-go coc-rls|q"

# kubectl

sudo touch /etc/yum.repos.d/kubernetes.repo
sudo bash -c 'cat <<EOF > /etc/yum.repos.d/kubernetes.repo
[kubernetes]
name=Kubernetes
baseurl=https://packages.cloud.google.com/yum/repos/kubernetes-el7-x86_64
enabled=1
gpgcheck=1
repo_gpgcheck=1
gpgkey=https://packages.cloud.google.com/yum/doc/yum-key.gpg https://packages.cloud.google.com/yum/doc/rpm-package-key.gpg
EOF'
sudo dnf install -y kubectl

# Fonts

cp -r ~/JetBrainsMono ~/.local/share/fonts
fc-cache -f -v

# Rust
curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh

# Color theme  ?

