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
alias ga="git add ."
alias gc="git commit -m"
alias gs="git status"
alias gp="git push origin master"
alias gpr="git push bit Main"
alias p="ping google.com"
alias pserver="python -m SimpleHTTPServer"
alias ip="ipconfig getifaddr en0"
alias ntfs="sudo ./ntfs.sh"
alias pp="pod trunk push"
alias pa="pod spec lint"
alias proxy="./Downloads/goagent/local/proxy.py"
alias canary="./Google\ Chrome\ Canary --disable-web-security --user-data-dir=~/Documents/openSource/swagger-ui"
alias GRAPHVIZ_DOT=dot
alias vic="vim ~/.vim/vimrc"
alias tm="tmux  new -s $1"
alias tl="tmux ls"
alias ll='ls -alGh'
alias ls='ls -Gh'
alias :q='exit'
alias ve='vim ~/.vimrc'
# Finder
alias showFiles='defaults write com.apple.finder AppleShowAllFiles YES; killall Finder /System/Library/CoreServices/Finder.app'
alias hideFiles='defaults write com.apple.finder AppleShowAllFiles NO; killall Finder /System/Library/CoreServices/Finder.app'
# Homebrew
alias brewu='brew update  && brew upgrade --all && brew cleanup && brew prune && brew doctor'

function dump() {sudo dtrace -q -n 'objc1869:::entry { printf("%s %s\n", probemod, probefunc); }'}
export PATH=$PATH:/usr/bin:/bin:/usr/sbin:/sbin:/usr/local/bin:/${HOME}/bin
export PYTHONPATH=/private/var/root/Library/Python/3.5/lib/python/site-packages/
function gi() { curl -L -s https://www.gitignore.io/api/$@ ;}

# Add paths
#export PATH=/usr/local/sbin:/usr/local/bin:${PATH}
#export PATH="$HOME/bin:$PATH"

[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh
