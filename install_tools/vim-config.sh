git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim
sh -c "(curl -fsSL https://raw.githubusercontent.com/gezort/configs/master/conf_sources/.vimrc > ~/.vimrc)"
vim +PluginInstall +qall
