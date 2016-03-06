#!/bin/sh

if test ! $(which brew); then
    echo "Installing homebrew"
    ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
fi
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
brew install ctags

exit 0
