# !bin/bash

# install mozc
sudo apt-get install ibus-mozc
killall ibus-daemon
ibus-daemon -d -x &
