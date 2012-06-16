<<<<<<< HEAD
# Set the path to Oh My Zsh.
export OMZ="$HOME/.oh-my-zsh"
=======
#
# Sets Oh My Zsh options.
#
# Authors:
#   Sorin Ionescu <sorin.ionescu@gmail.com>
#
#ii
platform='unknown'
unamestr=`uname`
if [[ "$unamestr" == 'Linux' ]]; then
   platform='linux'
elif [[ "$unamestr" == 'FreeBSD' ]]; then
   platform='freebsd'
elif [[ "$unamestr" == 'Darwin' ]]; then
   platform='osx'
fi

#function check {
#command -v $1 >/dev/null 2>&1 || { echo >&2 "I require foo but it's not installed.  Aborting."; exit 1; }
#}

# Set the key mapping style to 'emacs' or 'vi'.
zstyle ':omz:module:editor' keymap 'vi'

# Auto convert .... to ../..
zstyle ':omz:module:editor' dot-expansion 'yes'

# Set case-sensitivity for completion, history lookup, etc.
zstyle ':omz:*:*' case-sensitive 'no'

# Color output (auto set to 'no' on dumb terminals).
zstyle ':omz:*:*' color 'yes'

# Auto set the tab and window titles.
zstyle ':omz:module:terminal' auto-title 'yes'

# Set the Zsh modules to load (man zshmodules).
# zstyle ':omz:load' zmodule 'attr' 'stat'

# Set the Zsh functions to load (man zshcontrib).
# zstyle ':omz:load' zfunction 'zargs' 'zmv'

# Set the Oh My Zsh modules to load (browse modules).
# The order matters.
zstyle ':omz:load' omodule \
  'environment' \
  'terminal' \
  'editor' \
  'history' \
  'directory' \
  'spectrum' \
  'completion' \
  'utility' \
  'prompt' \
  'tmux'

zstyle ':omz:module:tmux' auto-start 'yes'

  #'alias' \
# Set the prompt theme to load.
# Setting it to 'random' loads a random theme.
# Auto set to 'off' on dumb terminals.
zstyle ':omz:module:prompt' theme 'sorin'

# This will make you shout: OH MY ZSHELL!
source "$OMZ/init.zsh"

# Customize to your needs...
export PATH=~/bin:/usr/local/Cellar/ruby/1.9.3-p0/lib/ruby/gems/1.9.1/bin:/usr/local/bin:/usr/local/Cellar/ruby/1.9.3-p0/bin/:$PATH

#Cappuccino
export NARWHAL_ENGINE=jsc
export PATH="/usr/local/narwhal/bin:$PATH"
export CAPP_BUILD="/Users/jon/src/cappuccino/Build"

<<<<<<< HEAD
alias cwb='ssh cwb@localhost -p 2222'
=======
if [[ $platform == 'osx' ]]; then
    export CXX=g++-4.7
    export CC=g++-4.7
    export MAKEFLAGS='-j 16' # Logical cores * 2

    if [ -f `brew --prefix`/etc/autojump ]; then
      . `brew --prefix`/etc/autojump
    fi
fi

