rm -rf ~/.vim/bundle/Vundle.vim ~/.vimrc || exit 1
git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim || echo "Error" && exit 1
curl -fsSL https://raw.githubusercontent.com/gezort/configs/master/conf_sources/.vimrc > ~/.vimrc || echo "Error" && exit 1
vim -E -s -u ~/.vimrc +PluginInstall +qall
