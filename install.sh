#!/usr/bin/env bash

SCRIPT_HOME="$( cd -P "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"

is_osx() {
    [[ $OSTYPE =~ darwin ]]
}

if [ ! -f $HOME/.vimrc ]; then
    ln -s $SCRIPT_HOME/vimrc $HOME/.vimrc
else
    echo ".vimrc already exists"
fi

if [ ! -f $HOME/.vimrc ]; then
    ln -s $SCRIPT_HOME/vim $HOME/.vim
else
    echo ".vim directory already exists"
fi

# Prepare for special SSH handling
mkdir -p ~/.ssh/control
if [ ! -f ~/.ssh/key_list ]; then
    # Used by SSH config to automatically include all keys for use
    # Isn't necessary to add all keys, but forces them to exist on some systems
    # See bin/ssh-add.sh for adding keys with 'ssh-add' to remember passwords on KDE
    touch ~/.ssh/key_list
    echo "Add 'IdentifyFile ~/.ssh/id_rsa_KEYNAME' to '~/.ssh/key_list'"
fi

if [ ! -f ~/.ssh/config ]; then
    if is_osx; then
        echo "Include $SCRIPT_HOME/ssh/osx_only" >> $SCRIPT_HOME/ssh/config
    fi
    ln -s $SCRIPT_HOME/ssh/config $HOME/.ssh/config
else
    echo ".ssh/config already exists"
fi

