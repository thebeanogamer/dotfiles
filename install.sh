#!/bin/bash

cd /
sudo apt update
sudo apt remove apt-listchanges -y
sudo apt dist-upgrade -y
sudo apt autoremove -y
sudo apt install neovim tmux thefuck fonts-powerline git curl -y
curl -sfL https://git.io/chezmoi | sudo sh
chezmoi init https://github.com/thebeanogamer/dotfiles
chezmoi apply
curl https://pyenv.run | sudo bash
exec $SHELL
pyenv install 3.8.1
pyenv global 3.8.1
pip install powerline-shell
curl -sL install-node.now.sh/lts | sudo bash
curl -fLo ~/.local/share/nvim/site/autoload/plug.vim --create-dirs \
    https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
nvim -c "PlugInstall | qa!"
git clone https://github.com/tmux-plugins/tpm ~/.tmux/plugins/tpm
TMUX_PLUGIN_MANAGER_PATH=~/.tmux/plugins/tpm ~/.tmux/plugins/tpm/bin/install_plugins
setxkbmap gb
cd ~