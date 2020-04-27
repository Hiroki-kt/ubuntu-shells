# !bin/bash
# install git
sudo apt-get install git

# install mozc
sudo apt-get install ibus-mozc
killall ibus-daemon
ibus-daemon -d -x &
