# ROS_tips

### Fasten killing Gazebo (speed up the shutdown of Gazebo)
```
sudo sed -i 's/15.0/0.5/g; s/2.0/0.5/g' /opt/ros/$ROS_DISTRO/lib/python2.7/dist-packages/roslaunch/nodeprocess.py
```
### Key Expire Ros Kinetic
curl -s https://raw.githubusercontent.com/ros/rosdistro/master/ros.asc | sudo apt-key add -

