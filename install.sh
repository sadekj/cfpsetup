#!/bin/bash
cd ~
sudo apt-get update
sudo apt-get --assume-yes install python-tk python-pygame chromium-browser

# test python
python -c "import turtle, pygame"
if [ $? -eq 0 ]; then
   echo "OK"
else
   echo "Could not install python packages. Exiting..."
   exit 1
fi

# install sublime
wget http://c758482.r82.cf2.rackcdn.com/Sublime\ Text\ 2.0.2\ x64.tar.bz2
tar xvjf Sublime\ Text\ 2.0.2\ x64.tar.bz2
sudo mv Sublime\ Text\ 2 /opt/
sudo ln -s /opt/Sublime\ Text\ 2/sublime_text /usr/bin/sublime

# make an icon for unity launcher
wget https://raw.githubusercontent.com/sadekj/wecodesetup/master/sublime.desktop
sudo mv sublime.desktop /usr/share/applications/sublime.desktop

# clean up!
rm Sublime\ Text\ 2.0.2\ x64.tar.bz2
