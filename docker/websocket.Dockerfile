FROM osrf/ros:humble-desktop-full
RUN apt update && apt install -y ros-humble-foxglove-bridge