function install_if_not_exist(){
    which $1 > /dev/null
    if [ $? != 0 ];
    then
        apt install $1
    fi
}

install_if_not_exist python
install_if_not_exist sed
install_if_not_exist zsh
install_if_not_exist tree
install_if_not_exist less
install_if_not_exist grep
install_if_not_exist tmux
install_if_not_exist git
install_if_not_exist fasd
install_if_not_exist r-base
install_if_not_exist man
install_if_not_exist wget
install_if_not_exist curl
