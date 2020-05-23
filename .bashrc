### Prompt
export EDITOR="nvim"
function is_in_git_repo_p() {
  git ls-files &>/dev/null
}

function git_current_branch() {
  local ref=$(git symbolic-ref --quiet HEAD 2> /dev/null)
  local ret=$?
  if [[ $ret != 0 ]]; then
    [[ $ret == 128 ]] && return  # no git repo.
    ref=$(git rev-parse --short HEAD 2> /dev/null) || return
  fi
  echo ${ref#refs/heads/}
}

function rgb__() {
  local r=$1
  local g=$2
  local b=$3
  echo -n $((16 + $r * 36 + $g * 6 + $b))
}

function set_prompt() {

  case $TERM in
  *256color)
    local attr_reset='\[\e[0m\]'
    local attr_bold='\[\e[1m\]'
    local attr_underline='\[\e[4m\]'
    local attr_blink='\]\e[5m\]'

    local fg_color_red='\[\e[31m\]'
    local fg_color_r3g3b0='\[\e[38;5;'$(rgb__ 3 3 0)'m\]'
    local fg_color_r0g3b0='\[\e[38;5;'$(rgb__ 0 3 0)'m\]'
    local fg_color_gray241='\[\e[38;5;241m\]'
    ;;
  esac

  PS1=""

  # timestamp
  local cols=$(tput cols)
  local separator=$(eval "printf -- -%.0s {1..$(($cols - 22))}")
  PS1+="\n${attr_reset}${fg_color_gray241}[\$(date +'%Y-%m-%d %H:%M:%S')] ${separator}${attr_reset}"

  # git repository information
  is_in_git_repo_p && \
    PS1+="[${fg_color_r3g3b0}$(git_current_branch)]"

  PS1+="\\n${attr_bold}${fg_color_r0g3b0}\$${attr_reset} "
}

PROMPT_COMMAND='set_prompt'


[ -f ~/.fzf.bash ] && source ~/.fzf.bash

export NVM_DIR="/Users/rahulm3/.nvm"
[ -s "/usr/local/opt/nvm/nvm.sh" ] && . "/usr/local/opt/nvm/nvm.sh"  # This loads nvm
[ -s "/usr/local/opt/nvm/etc/bash_completion.d/nvm" ] && . "/usr/local/opt/nvm/etc/bash_completion.d/nvm"  # This loads nvm bash_completion

export PATH="$HOME/.npm-packages/bin:$PATH"
export RANGER_LOAD_DEFAULT_RC=false
set -o vi
set preview_images true
set preview_images_method kitty
alias shut="sudo shutdown -h now"
alias bashconfig="nvim ~/.bashrc"
alias ga="git add ."
alias gc="git commit -m"
alias gs="git status"
alias gp="git push"
alias p="ping google.com"
alias pserver="python -m SimpleHTTPServer"
alias ip="ipconfig getifaddr en0"
alias ntfs="sudo ./ntfs.sh"
alias tmn="tmux -S tmuxSession/main new -s shared"
alias tmat="tmux -S tmuxSession/main attact -t shared"
alias tl="tmux ls"
alias ll='ls -alGh'
alias ls='ls -Gh'
alias :q='exit'
alias ve='nvim ~/.vimrc'
alias ndev='npm run dev'
alias ncov='npm run cov'
alias cls='clear'
alias ..='cd ..'
alias yabr='brew services restart yabai'
alias skhdr='brew services restart koekeishiya/formulae/skhd'
alias popen='open $TMPDIR/Popcorn-Time'
# Finder
alias showFiles='defaults write com.apple.finder AppleShowAllFiles YES; killall Finder /System/Library/CoreServices/Finder.app'
alias hideFiles='defaults write com.apple.finder AppleShowAllFiles NO; killall Finder /System/Library/CoreServices/Finder.app'
# Homebrew
alias brewu='brew update  && brew upgrade --all && brew cleanup && brew prune && brew doctor'
alias enw='emacs -nw'
alias emd='emacs --daemon'
alias emn='emacsClient -c -n'
alias emc='emacsClient'
alias work='cd ~/Documents/Arthrexact/'
alias ops='cd ~/Documents/openSource/'
alias emr='~/.emacs.d/bin/doom refresh'
alias teams='sudo /Applications/Microsoft\ Teams.app/Contents/MacOS/Teams'
alias cute='/Applications/qutebrowser.app/Contents/MacOS/qutebrowser'
