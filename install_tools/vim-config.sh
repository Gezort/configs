rm -rf ~/.vim/bundle/Vundle.vim ~/.vimrc
git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim && \
curl -fsSL https://raw.githubusercontent.com/gezort/configs/master/conf_sources/.vimrc > ~/.vimrc && \
vim -E -s -u ~/.vimrc +PluginInstall +qall
