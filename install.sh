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

# install sublime 3
wget -qO - https://download.sublimetext.com/sublimehq-pub.gpg | sudo apt-key add -
echo "deb https://download.sublimetext.com/ apt/stable/" | sudo tee /etc/apt/sources.list.d/sublime-text.list
sudo apt-get update
sudo apt-get --assume-yes install sublime-text

# install git
apt-get install git-core

touch /etc/rc.local/codeforpalestine.startup
sudo echo "" > /etc/rc.local/codeforpalestine.startup
sudo echo "chromium-browser http://codeforpalestine.herokuapp.com" > /etc/rc.local/codeforpalestine.startup

# clean up
rm sublimehq-pub.gpg

# install sublime (old ubuntu)
# wget http://c758482.r82.cf2.rackcdn.com/Sublime\ Text\ 2.0.2\ x64.tar.bz2
# tar xvjf Sublime\ Text\ 2.0.2\ x64.tar.bz2
# sudo mv Sublime\ Text\ 2 /opt/
# sudo ln -s /opt/Sublime\ Text\ 2/sublime_text /usr/bin/sublime

# make an icon for unity launcher
#wget https://raw.githubusercontent.com/sadekj/wecodesetup/master/sublime.desktop
#sudo mv sublime.desktop /usr/share/applications/sublime.desktop

# clean up!
#rm Sublime\ Text\ 2.0.2\ x64.tar.bz2
