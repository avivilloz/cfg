#!/bin/bash

#general

alias vi="vim"
alias c="clear"
alias e="exit"
alias hgrep="history | grep"
alias psgrep="ps -e | grep"
alias findstr="sudo grep -iRn"
alias findfile="sudo find . -iname"
alias osrelease="cat /etc/os-release"
alias ctrlc='xclip -selection c'
alias ctrlv='xclip -selection c -o'
alias addscript="bash $cfgscriptsdir/addscript.sh"
alias setrr="xset r rate 250 50"

alias diskspace="du -sh *"
alias hdiskspace="du -hs .[^.]*"
alias filess="du -sch .[!.]* * |sort -h"

alias grubup="sudo grub-mkconfig -o /boot/grub/grub.cfg"
alias nvidiaup="sudo nvidia-xconfig"

#exec

alias mappen="bash $cfgscriptsdir/mappen.sh"
alias chrome="/opt/google/chrome/google-chrome"

#config

alias edpolybar="vim ~/.config/bspwm/polybar/* -p"
alias edsxhkd="vim ~/.config/sxhkd/sxhkdrc"
alias edbspwm="vim ~/.config/bspwm/bspwmrc"
alias edgrub="sudo vim /etc/default/grub"
alias edgdm="sudo vim /etc/gdm/custom.conf"
alias edpacman="sudo vim /etc/pacman.conf"
alias eddnf="sudo vim /etc/dnf/dnf.conf"
alias edlogind="sudo -H vim /etc/systemd/logind.conf"
alias edbash="$edit $bashrc"
alias edalias="$edit $bashalias"
alias edvar="$edit $bashvar"
alias edvim="$edit $vimrc"
alias edsetup="$edit $cfgscriptsdir/setup.sh"

#graphic cards

alias currgc="glxinfo | egrep 'OpenGL vendor|OpenGL renderer'"

#boot options

alias bootopl="efibootmgr"
alias bootoprm="sudo efibootmgr -Bb" 

#apt

alias aptin="sudo apt install"
alias aptrm="sudo apt remove"
alias aptarm="sudo apt autoremove"
alias aptup="sudo apt update && sudo apt upgrade"

#snap

alias snapin="sudo snap install"
alias snaprm="sudo snap remove"
alias snapup="sudo snap refresh"
alias snapl="snap list"

#flatpak

alias fpin="flatpak install"
alias fprm="flatpak uninstall"
alias fparm="flatpak uninstall --unused"
alias fpsearch="flatpak search"
alias fpr="flatpak run"
alias fpup="flatpak update"
alias fpl="flatpak list"
alias fpla="flatpak list --app"
alias fpfix="flatpak repair"
alias fpremoteadd="flatpak remote-add --if-not-exists"
alias fpremoterm="flatpak remote-delete"
alias fpremotes="flatpak remotes"

#pacman

alias pmin="sudo pacman -S"
alias pmrm="sudo pacman -Rns"
alias pmup="sudo pacman -Syu"
alias pmarm="sudo pacman -Qdtq | sudo pacman -Rs -"
alias pml="pacman -Qe"

#yay

alias yayin="yay -S"
alias yayup="yay -Syu"
alias yayrm="yay -Rns"
alias yayarm="yay -Yc"
alias yayl="yay -Qe"

#dnf

alias dnfin="sudo dnf install"
alias dnfrm="sudo dnf remove"
alias dnfup="sudo dnf upgrade --refresh"
alias dnfarm="sudo dnf autoremove"
alias dnfcc="sudo dnf clean packages"
alias dnfl="sudo dnf list installed"

#all packet managers

alias fedup="bash $cfgscriptsdir/fedup.sh"
alias archup="bash $cfgscriptsdir/archup.sh"
alias debup="bash $cfgscriptsdir/debup.sh"

#gcc compilation aliases: debug mode, release mode

alias gd='gcc -ansi -pedantic-errors -Wall -Wextra -g'
alias gr='gcc -ansi -pedantic-errors -Wall -Wextra -DNDEBUG -O3'
alias gd99='gcc -std=c99 -pedantic-errors -Wall -Wextra -g'
alias gr99='gcc -std=c99 -pedantic-errors -Wall -Wextra -DNDEBUG -O3'

alias gdpp='g++ -std=gnu++98 -Weffc++ -pedantic-errors -Wall -Wextra -g'
alias grpp='g++ -std=gnu++98 -Weffc++ -pedantic-errors -Wall -Wextra -DNDEBUG -O3'
alias gdpp11='g++ -std=gnu++11 -Weffc++ -pedantic-errors -Wall -Wextra -g'
alias grpp11='g++ -std=gnu++11 -Weffc++ -pedantic-errors -Wall -Wextra -DNDEBUG -O3'

#valgrind

alias vlg='valgrind --leak-check=yes --track-origins=yes'
alias hlg='valgrind --tool=helgrind'

#git

alias gadd="git add ."
alias gcomm="git commit -m"
alias gpush="bash $cfgscriptsdir/gitpush.sh"
alias gstat="git status"
alias glog="git log"
alias gconfig="bash $cfgscriptsdir/gitconfig.sh"
alias gclone="git clone"
alias gdiff="git diff"
alias gpull="git pull"

#learning/projects scripts

alias lab="bash $cfgscriptsdir/lab.sh"
alias mkproject="bash $cfgscriptsdir/project.sh"

#currp (current project)

alias currplink="readlink ~/.currp"
alias currpupdatelink="ln -sf $currpdir ~/.currp"

#mpd

alias msp="mpc searchplay"
alias mpl="mpc playlist"
alias mup="mpc update && mpc ls | mpc add"
alias mcl="mpc clear"
