#!/bin/bash

echo -------------------------------------------------------------------------
echo make bash default
echo -------------------------------------------------------------------------

echo do you want to change terminal to bash? [y/n]
read ans
if [ $ans  = "y" ]; then
    chsh -s /bin/bash
fi

echo -------------------------------------------------------------------------
echo create link for directories on sda in home
echo -------------------------------------------------------------------------

echo do you want to create link to directories on sda in home? [y/n]
read ans
if [ $ans  = "y" ]; then
    sudo ln -sf /mnt/sda1 /sda1
    ln -sf /mnt/sda1 ~/sda1
    ln -sf /mnt/sda1/documents ~/Documents/documents
    ln -sf /mnt/sda1/music ~/Music/music
    ln -sf /mnt/sda1/pictures ~/Pictures/pictures
    ln -sf /mnt/sda1/videos ~/Videos/videos
fi

echo -------------------------------------------------------------------------
echo setup bash
echo -------------------------------------------------------------------------

echo do you want to setup bash? [y/n]
read ans
if [ $ans  = "y" ]; then
    ln -sf ~/git/cfg/.bashrc ~/.bashrc
    ln -sf ~/git/cfg/.bash_aliases ~/.bash_aliases
    ln -sf ~/git/cfg/.bash_variables ~/.bash_variables
fi

echo -------------------------------------------------------------------------
echo setup vim
echo -------------------------------------------------------------------------

echo do you want to setup vim? [y/n]
read ans
if [ $ans  = "y" ]; then
    ln -sf ~/git/cfg/.vimrc ~/.vimrc
    mkdir ~/.vim
    mkdir ~/.vim/autoload
    mkdir ~/.vim/plugged
    mkdir ~/.vim/.backup
    mkdir ~/.vim/.undo
    mkdir ~/.vim/.swap
    git clone https://github.com/junegunn/vim-plug.git
    mv vim-plug/plug.vim ~/.vim/autoload/
    rm -rf vim-plug
fi

echo -------------------------------------------------------------------------
echo calling vim PlugInstall
echo -------------------------------------------------------------------------

echo do you want to call PlugInstall on vim? [y/n]
read ans
if [ $ans  = "y" ]; then
    vim -c PlugInstall -c q -c q!
fi

echo -------------------------------------------------------------------------
echo setup git
echo -------------------------------------------------------------------------

echo do you want to setup git? [y/n]
read ans
if [ $ans  = "y" ]; then
    . ~/.bash_variables
    git config --global user.email $git_user_email
    git config --global user.name $git_user_name
fi

echo -------------------------------------------------------------------------
echo setup icons and themes directories
echo -------------------------------------------------------------------------

echo do you want to setup icons and themes directories? [y/n]
read ans
if [ $ans  = "y" ]; then
    sudo ln -sf /usr/share/icons ~/.icons
    sudo ln -sf /usr/share/themes ~/.themes
fi

echo -------------------------------------------------------------------------
echo reboot
echo -------------------------------------------------------------------------

echo do you want to reboot? [y/n]
read ans
if [ $ans  = "y" ]; then
     reboot
fi

cd

exit 0
