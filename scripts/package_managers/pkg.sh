#!/bin/bash

. ~/.session_variables

# in = install package
# rm = remove package
# up = update all packages and remove uneeded ones/cache
# l = list all packages
# lg = grep fomr list of all packages
# q = query through database

if [ "$session" == "debian" ]; then
    if [ "$1" == "in" ]; then
        sudo apt install $2
    elif [ "$1" == "rm" ]; then
        sudo apt remove $2
    elif [ "$1" == "up" ]; then
        sudo apt update
        sudo apt upgrade
        sudo apt autoremove
    fi
elif [ "$session" == "arch" ]; then
    if [ "$1" == "in" ]; then
        yay -S $2
    elif [ "$1" == "rm" ]; then
        yay -Rns $2
    elif [ "$1" == "up" ]; then
        yay -Syu
        yay -Yc
        yay -Scc
    elif [ "$1" == "l" ]; then
        yay -Qe
    elif [ "$1" == "lg" ]; then
        yay -Qe | grep $2
    fi
    elif [ "$1" == "q" ]; then
        yay -Ss $2
    fi
fi

exit 0