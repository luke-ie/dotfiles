#!/bin/bash

function run {
 if ! pgrep $1 ;
  then
    $@&
  fi
}
run "volumeicon"
run "/usr/lib/xfce-polkit/xfce-polkit"
picom &
run slstatus &
feh --bg-fill ~/.config/Wallpapers/waves.jpg

