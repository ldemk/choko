# Choko
The Turtlebot3 project.

# Docker Installation
Install Desktop OS Ubuntu 16.04 LTS

Install Docker-CE using the following [instructions](https://docs.docker.com/engine/installation/linux/docker-ce/ubuntu/)

# Docker run

The first time You start the docker, You have to execute the following command

```
docker run -it --name choko_dev -p 8080:8080 -p 8090:8090 -p 9090:9090 -e DISPLAY -e LOCAL_USER_ID=$(id -u) -v /tmp/.X11-unix:/tmp/.X11-unix:rw lyubomyrd/choko:latest
```

# Docker run

Next times, please execute
```
sudo docker start choko_dev
```

# Designation:

The following designation will be used through the rest of the repository

Remote PC: R

Turtlebot(Raspberry): Tx, (x=A,B,C,...)

# Turtlebot start

Turtlebot is controller using ROS which is installed both on PC and Raspberry.

To execute the bringup sequence You have to perform the following steps:



## Steps that has to be performed inside the docker container's terminator window


1R) roscore

Connect to RPI (note that IP address might be different - this depends on network settings)

2R) ssh pi@192.168.43.84

(Password: turtlebot)

Now You have a separeate window inside the terminator that controlles Raspberry, therefore Tx notation corresponds to input into this window.

3TA)  roslaunch turtlebot3_bringup turtlebot3_robot.launch

4R) roslaunch turtlebot3_bringup turtlebot3_remote.launch

# Teleoperation

1R) roslaunch turtlebot3_teleop turtlebot3_teleop_key.launch

# Mapping

Create a map:

1R) roslaunch turtlebot3_slam turtlebot3_slam.launch slam_methods:=gmapping

Save a map (do NOT close the previous window vefore the next step):

2R) rosrun map_server map_saver -f ~/map

After this step You can close 1R and 2R from mapping.

# Navigation

1R) roslaunch turtlebot3_navigation turtlebot3_navigation.launch map_file:=$HOME/map.yaml

# Development
Type pycharm to run PyCharm-community


# Troubleshooting
See wiki for Troubleshooting
