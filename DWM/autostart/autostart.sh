#!/bin/bash

function run {
 if ! pgrep $1 ;
  then
    $@&
  fi
}
#run "pasystray"
run "/usr/lib/polkit-gnome/polkit-gnome-authentication-agent-1"
sxhkd &
picom &
run slstatus &
feh --bg-fill ~/.config/wallpapers/space.png

