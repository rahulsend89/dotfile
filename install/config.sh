#!/bin/sh

if test ! $(which brew); then
    echo "Installing homebrew"
    ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
fi

ln -s "${HOME}/.vim/vimrc ${HOMT}/.vimrc"
ln -s "${HOME}/.vim/.xvimrc ${HOMT}/.xvimrc"
ln -s "${HOME}/.vim/.ideavimrc ${HOMT}/.ideavimrc"

mkdir -p ${XDG_CONFIG_HOME:=$HOME/.config}
ln -s ~/.vim $XDG_CONFIG_HOME/nvim
ln -s ~/.vimrc $XDG_CONFIG_HOME/nvim/init.vim

echo "Installing homebrew packages..."

brew tap thoughtbot/formulae
brew install rcm
brew install markdown
brew install zsh
brew install macvim --override-system-vim
brew install reattach-to-user-namespace
brew install git
brew install tmux
brew install markdown
brew install neovim/neovim/neovim
brew install tree
brew install wget
brew install tmux
brew tap Goles/battery
brew install battery

exit 0
