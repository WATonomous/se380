#!/usr/bin/env bash
set -e

# setup ros environment
source "/opt/ros/$ROS_DISTRO/setup.bash"
source "/root/carla-ros-bridge/install/setup.bash"

exec "$@"
