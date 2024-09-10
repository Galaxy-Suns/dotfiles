function back_if_exist(){
    if [ -f $1 ];
    then
        mv $1 $1.back
    fi
}

back_if_exist ~/.aliases
back_if_exist ~/.tmux.conf
back_if_exist ~/.vimrc
back_if_exist ~/.zshrc

cp dotfiles/aliases ~/.aliases
cp dotfiles/tmux.conf ~/.tmux.conf
cp dotfiles/vimrc ~/.vimrc
cp dotfiles/zshrc ~/.zshrc
