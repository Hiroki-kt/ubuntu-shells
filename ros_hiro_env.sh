# !bin/bash

# install ROS optional packages
sudo apt-get update
sudo apt-get install\
  ros-kinetic-position-controllers \
  ros-kinetic-effort-controllers \
  ros-kinetic-velocity-controllers \
  ros-kinetic-diff-drive-controller \
  ros-kinetic-forward-command-controller \
  ros-kinetic-joint-state-controller \
  ros-kinetic-joint-trajectory-controller \
  ros-kinetic-moveit \
  ros-kinetic-octomap \
  ros-kinetic-octomap-rviz-plugins \
  ros-kinetic-octomap-server \
  ros-kinetic-ros-control \
  ros-kinetic-rosbridge-server \
  ros-kinetic-rtabmap \
  ros-kinetic-rtabmap-ros \
  ros-kinetic-gmapping \
  ros-kinetic-amcl \
  ros-kinetic-map-server \
  ros-kinetic-vision-visp \

sudo rosdep init

# install Gasebo (version 7 recommends)
echo "deb http://packages.osrfoundation.org/gazebo/ubuntu-stable `lsb_release -cs` main" > /etc/apt/sources.list.d/gazebo-stable.list
wget http://packages.osrfoundation.org/gazebo.key -O - | apt-key add -
sudo apt-get update
sudo apt-get install ros-kinetic-gazebo-*

# install HIRO-NX environment
sudo apt-get update
sudo apt-get install ros-kinetic-rtmros-nextage ros-kinetic-rtmros-hironx
