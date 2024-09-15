echo "Initializing terminal..."

# Source ROS Noetic
source /opt/ros/noetic/setup.bash
# Source Gazebo files
source /usr/share/gazebo/setup.bash

export GAZEBO_MODEL_PATH=/usr/share/gazebo-11/models:$GAZEBO_MODEL_PATH
export GAZEBO_RESOURCE_PATH=/usr/share/gazebo-11${GAZEBO_RESOURCE_PATH:+:${GAZEBO_RESOURCE_PATH}}

if [ -f /opt/ros/noetic/setup.bash ]; then source /opt/ros/noetic/setup.bash; fi

SOURCE_FILE_PATH="${PWD}/devel/setup.bash"

if [ -f $SOURCE_FILE_PATH ]; then
    echo "Sourcing workspace $SOURCE_FILE_PATH"
    source $SOURCE_FILE_PATH
fi

export GAZEBO_MODEL_PATH=${GAZEBO_MODEL_PATH}:${PWD}/src/simulator/models

echo 'ROS environment initialized.'
exec bash -i
