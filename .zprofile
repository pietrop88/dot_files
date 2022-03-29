#start sync on Mega
mega-sync > /dev/null 2>&1  & 

# start tbsm
[[ -n "$XDG_VTNR" && $XDG_VTNR -le 2 ]] && tbsm
