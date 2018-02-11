#!/bin/bash

# install dependencies (as per the readme)
sudo apt update
sudo apt install pkg-config libxcb1-dev libxcb1 libgl2ps-dev libx11-dev libglc0 libglc-dev libcairo2-dev libcairo-gobject2 libcairo2-dev libxkbfile-dev libxkbfile1 libxkbcommon-dev libxkbcommon-x11-dev libxcb-xkb-dev libxcb-dpms0-dev libxcb-damage0-dev libpam0g-dev libev-dev libxcb-image0-dev libxcb-util0-dev libxcb-composite0-dev libxcb-xinerama0-dev
echo " install possible missing dependency: gtk+-3.0?"
sudo apt-get install gtk+-3.0

# clone the i3 lock blur repo
git clone https://github.com/karulont/i3lock-blur.git && cd i3lock-blur
# make it, i guess? thwere is no configure, no autogen, no install sh
sudo make
sudo make install
