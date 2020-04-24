#
# ~/.bash_profile
#

[[ -f ~/.bashrc ]] && . ~/.bashrc

mega-sync > /dev/null 2>&1  & 

[[ $XDG_VTNR -le 2 ]] && tbsm
