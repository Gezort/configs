sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"

git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions

echo "ZSH_AUTOSUGGEST_HIGHLIGHT_STYLE='fg=red'" > ~/.oh-my-zsh/custom/zsh-autosuggestions-config.zsh

curl -fsSL https://raw.githubusercontent.com/gezort/configs/master/conf_sources/.vimrc > ~/.vimrc
curl -fsSL https://raw.githubusercontent.com/gezort/configs/master/conf_sources/.zshrc > ~/.zshrc
curl -fsSL https://raw.githubusercontent.com/gezort/configs/master/conf_sources/.pythonrc > ~/.pythonrc
