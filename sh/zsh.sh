# zsh-autosuggestions
if [ ! -d ~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions ];
then
    git clone https://gitee.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions
fi

# zsh-syntax-highlighting 
if [ ! -d ~/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting ];
then
    git clone https://gitee.com/zsh-users/zsh-syntax-highlighting.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting
fi

zsh -c 'source ~/.zshrc'
