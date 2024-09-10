# setup dotfiles and other configs for ubuntu server(root)

# setup
termux-setup-storage

# update
pkg update && pkg upgrade

# which
command -v which > /dev/null
if [ $? != 0 ];
then
    pkg install which
fi

# tools
bash sh/install_tools.sh

# ohmyzsh
if [ ! -d $HOME/.oh-my-zsh ];
then
    sh -c "$(curl -fsSL https://install.ohmyz.sh/)"
fi

# use zsh as default shell
chsh -s `which zsh` root

# ln dotfiles
bash sh/ln.sh

# zsh config and plugins
bash sh/zsh.sh

# vim config and plugins
bash sh/vim.sh

# tmux config and plugins
bash sh/tmux.sh
