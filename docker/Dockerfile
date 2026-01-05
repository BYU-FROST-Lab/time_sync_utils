ARG ROS_DISTRO=humble 
FROM ros:${ROS_DISTRO}

# GPSD and clients  
RUN apt-get update && apt-get install -y \
    gpsd \
    gpsd-clients \
    && rm -rf /var/lib/apt/lists/*

RUN mkdir -p /root/ros2_ws/src

# --- Source ROS2 ---
RUN echo "source /opt/ros/${ROS_DISTRO}/setup.bash" >> ~/.bashrc \
    && echo "source /root/ros2_ws/install/setup.bash" >> ~/.bashrc
    
WORKDIR /root/ros2_ws