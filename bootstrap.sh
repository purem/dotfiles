DOTFILES='gitconfig tmux.conf vimrc zlogin zlogout zprofile zshenv zshrc'

DOTFILESDIR=$(pwd)

# Link dotfiles
for DOTFILE in $DOTFILES
do
    source="${DOTFILESDIR}/${DOTFILE}"
    target="${HOME}/.${DOTFILE}"

    if [ -e "${target}" ]; then
        cp -RH $target $target.bak
    fi
    ln -nfs ${source} ${target}
done
