
ln -s "${HOME}/.vim/vimrc ${HOME}/.vimrc"
ln -s "${HOME}/.vim/.xvimrc ${HOME}/.xvimrc"
ln -s "${HOME}/.vim/.ideavimrc ${HOME}/.ideavimrc"

mkdir -p ${XDG_CONFIG_HOME:=$HOME/.config}
ln -s ~/.vim $XDG_CONFIG_HOME/nvim
ln -s ~/.vimrc $XDG_CONFIG_HOME/nvim/init.vim

cd ~/.vim/bundle/YouCompleteMe
./install.py --all
