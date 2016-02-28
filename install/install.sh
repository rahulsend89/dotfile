#!/bin/sh

if test ! $(which brew); then
	    echo "Installing homebrew"
	        ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
	fi

	echo "Installing homebrew packages..."

	# cli tools
	brew install ack
	brew install tree
	brew install wget

	# development server setup
	brew install nginx
	brew install dnsmasq

	# development tools
	brew install git
	brew install macvim --override-system-vim
	brew install reattach-to-user-namespace
	brew install zsh
	brew install markdown
	brew install node
	brew install npm
	# install neovim
	brew install neovim/neovim/neovim

	exit 0
