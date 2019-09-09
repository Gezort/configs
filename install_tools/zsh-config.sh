red_col=`tput setaf 1`
green_col=`tput setaf 2`
reset_col=`tput sgr0`

if test $(uname) = "Linux";
then
    dpkg -s zsh &> /dev/null
    if [ $? -ne 0 ]; 
    then
        echo "${green_col}@@@ installing zsh @@@${reset_col}" && sudo apt-get update && sudo apt-get install -y zsh || exit 1;
    fi
fi

git clone git://github.com/wting/autojump.git ~/autojump
cd ~/autojump && ./install.py
cd && rm -rf ~/autojump

rm -rf ~/.oh-my-zsh
env CHSH='no' RUNZSH='no' sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"

git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions
chmod 755 ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions
echo "ZSH_AUTOSUGGEST_HIGHLIGHT_STYLE='fg=red'" > ~/.oh-my-zsh/custom/zsh-autosuggestions-config.zsh

curl -fsSL https://raw.githubusercontent.com/gezort/configs/master/conf_sources/.pythonrc > ~/.pythonrc
curl -fsSL https://raw.githubusercontent.com/gezort/configs/master/conf_sources/.zshrc > ~/.zshrc
