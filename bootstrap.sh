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

cd ~
git clone https://github.com/sorin-ionescu/oh-my-zsh.git ~/.oh-my-zsh 
cd .oh-my-zsh
git submodule update --init --recursive

