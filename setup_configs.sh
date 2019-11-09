#!/bin/bash

SCRIPTS_DIR="${HOME}/Scripts"

echo "Adding symlink for i3 config..."
rm -rf ${HOME}/.config/i3/
mkdir -p ${HOME}/.config/i3/
ln -sv ${SCRIPTS_DIR}/dotfiles/i3_config ${HOME}/.config/i3/config

echo "Adding symlink for i3status..."
rm -rf ${HOME}/.config/i3status/
mkdir -p ${HOME}/.config/i3status/
ln -sv ${SCRIPTS_DIR}/dotfiles/i3status_config ${HOME}/.config/i3status/config 

echo "Adding symlink for alacritty..."
rm -rf ${HOME}/.config/alacritty
mkdir -p ${HOME}/.config/alacritty
ln -sv ${SCRIPTS_DIR}/dotfiles/alacritty.yml ${HOME}/.config/alacritty/alacritty.yml

echo "Adding symlink for zsh..."
rm -f ${HOME}/.zshrc
ln -sv ${SCRIPTS_DIR}/dotfiles/.zshrc ${HOME}/.zshrc

echo "Done! Reload your shell/desktop environment."
