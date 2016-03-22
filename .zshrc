# Example aliases


# zgitinit and prompt_wunjo_setup must be somewhere in your $fpath, see README for more.

setopt promptsubst
set -o vi
export EDITOR=vim
export VISUAL=vim
# Use zmv, which is amazing
autoload -U zmv
alias zmv="noglob zmv -W"

autoload -U promptinit
promptinit
prompt_wunjo_setup

alias shut="sudo shutdown -h now"
alias zshconfig="vim ~/.zshrc"
alias ohmyzsh="vim ~/.oh-my-zsh"
alias ga="git add --all"
alias gc="git commit -m"
alias gs="git status"
alias gi='vim .gitignore'
alias gp="git push origin master"
alias gpr="git push bit Main"
alias p="ping google.com"
alias pserver="python -m SimpleHTTPServer"
alias ip="ifconfig en0 | grep "inet "|cut -d ' ' -f 2"
alias ntfs="sudo ./ntfs.sh"
alias pp="pod trunk push"
alias pa="pod spec lint"
alias tm="tmux  new -s $1"
alias tl="tmux ls"
alias ll='ls -alGh'
alias ls='ls -Gh'
alias :q='exit'
alias ve='vim ~/.vimrc'
# Finder
alias showFiles='defaults write com.apple.finder AppleShowAllFiles YES; killall Finder /System/Library/CoreServices/Finder.app'
alias hideFiles='defaults write com.apple.finder AppleShowAllFiles NO; killall Finder /System/Library/CoreServices/Finder.app'
alias xudid="defaults read /Applications/Xcode.app/Contents/Info DVTPlugInCompatibilityUUID"
# Homebrew
alias brewu='brew update  && brew upgrade --all && brew cleanup && brew prune && brew doctor'
export PATH=$PATH:/usr/bin:/bin:/usr/sbin:/sbin:/usr/local/bin:/${HOME}/bin

# added by travis gem
[ -f /Users/rahulmalik/.travis/travis.sh ] && source /Users/rahulmalik/.travis/travis.sh
