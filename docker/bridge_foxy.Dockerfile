FROM osrf/ros:foxy-desktop-focal
RUN apt update && apt install -y python3-pip
RUN mkdir -p ~/carla-ros-bridge
WORKDIR /root/carla-ros-bridge
# TODO: Change source to something stable
RUN git clone --recurse-submodules -b sid1057/update_0_9_14 https://github.com/Sid1057/ros-bridge.git src/ros-bridge
# SHELL ["/bin/bash", "-c"]
# RUN source /opt/ros/foxy/setup.bash
RUN rosdep update && rosdep install --from-paths src --ignore-src -r
SHELL ["/bin/bash", "-c"]
# RUN source /opt/ros/foxy/setup.bash && colcon build
RUN source /opt/ros/foxy/setup.bash && colcon build

COPY docker/ros_entrypoint.sh /root/ros_entrypoint.sh
RUN sudo chmod +x /root/ros_entrypoint.sh
ENTRYPOINT ["/root/ros_entrypoint.sh"]
RUN python3 -m pip install --upgrade pip && python3 -m pip install carla
