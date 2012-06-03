DOTFILES='gitconfig tmux.conf vimrc zlogin zlogout zprofile zshenv zshrc'

DOTFILESDIR=$(pwd)

for DOTFILE in $DOTFILES
do
source="${DOTFILESDIR}/${DOTFILE}"
echo "source"
echo ${source}
target="${HOME}/.${DOTFILE}"
echo "targete"
echo ${target}

if [ -e "${target}" ]; then
    cp -RH $target $target.bak
fi
ln -nfs ${source} ${target}
done 
