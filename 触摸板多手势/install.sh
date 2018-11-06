#!/bin/bash

#prepare
cd $HOME
echo "需要使用sudo权限安装，请输入密码:"

#add user into input group
sudo gpasswd -a $USER input

#libinput-tools
sudo apt-get install libinput-tools

#install
cd $HOME/Downloads
git clone https://github.com/bulletmark/libinput-gestures.git
cd libinput-gestures
sudo ./libinput-gestures-setup install

#config
cd $(cd `dirname $0`; pwd)
sudo cp my-libinput-gestures.conf /etc/libinput-gestures.conf
cp my-libinput-gestures.conf ~/.config/libinput-gestures.conf

#auto start
cp myGestures.sh $HOME
libinput-gestures-setup autostart
libinput-gestures-setup start

