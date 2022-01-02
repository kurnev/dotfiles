starship init fish | source

set fish_greeting
set -gx EDITOR lvim
setxkbmap -layout us,ru -option grp:alt_shift_toggle setxkbmap -option ctrl:nocaps

alias vpn_kb="nmcli conn up kb passwd-file vpn_passwd"
