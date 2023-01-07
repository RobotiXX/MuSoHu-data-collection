# generated from genmsg/cmake/pkg-genmsg.cmake.em

message(STATUS "zed_interfaces: 12 messages, 15 services")

set(MSG_I_FLAGS "-Ized_interfaces:/home/robotixx_user/human-pov-navigation/src/zed-ros-wrapper/zed-ros-interfaces/msg;-Istd_msgs:/opt/ros/noetic/share/std_msgs/cmake/../msg;-Igeometry_msgs:/opt/ros/noetic/share/geometry_msgs/cmake/../msg;-Isensor_msgs:/opt/ros/noetic/share/sensor_msgs/cmake/../msg;-Ishape_msgs:/opt/ros/noetic/share/shape_msgs/cmake/../msg")

# Find all generators
find_package(gencpp REQUIRED)
find_package(geneus REQUIRED)
find_package(genlisp REQUIRED)
find_package(gennodejs REQUIRED)
find_package(genpy REQUIRED)

add_custom_target(zed_interfaces_generate_messages ALL)

# verify that message/service dependencies have not changed since configure



get_filename_component(_filename "/home/robotixx_user/human-pov-navigation/src/zed-ros-wrapper/zed-ros-interfaces/msg/BoundingBox2Df.msg" NAME_WE)
add_custom_target(_zed_interfaces_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "zed_interfaces" "/home/robotixx_user/human-pov-navigation/src/zed-ros-wrapper/zed-ros-interfaces/msg/BoundingBox2Df.msg" "zed_interfaces/Keypoint2Df"
)

get_filename_component(_filename "/home/robotixx_user/human-pov-navigation/src/zed-ros-wrapper/zed-ros-interfaces/msg/BoundingBox2Di.msg" NAME_WE)
add_custom_target(_zed_interfaces_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "zed_interfaces" "/home/robotixx_user/human-pov-navigation/src/zed-ros-wrapper/zed-ros-interfaces/msg/BoundingBox2Di.msg" "zed_interfaces/Keypoint2Di"
)

get_filename_component(_filename "/home/robotixx_user/human-pov-navigation/src/zed-ros-wrapper/zed-ros-interfaces/msg/BoundingBox3D.msg" NAME_WE)
add_custom_target(_zed_interfaces_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "zed_interfaces" "/home/robotixx_user/human-pov-navigation/src/zed-ros-wrapper/zed-ros-interfaces/msg/BoundingBox3D.msg" "zed_interfaces/Keypoint3D"
)

get_filename_component(_filename "/home/robotixx_user/human-pov-navigation/src/zed-ros-wrapper/zed-ros-interfaces/msg/Keypoint2Df.msg" NAME_WE)
add_custom_target(_zed_interfaces_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "zed_interfaces" "/home/robotixx_user/human-pov-navigation/src/zed-ros-wrapper/zed-ros-interfaces/msg/Keypoint2Df.msg" ""
)

get_filename_component(_filename "/home/robotixx_user/human-pov-navigation/src/zed-ros-wrapper/zed-ros-interfaces/msg/Keypoint2Di.msg" NAME_WE)
add_custom_target(_zed_interfaces_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "zed_interfaces" "/home/robotixx_user/human-pov-navigation/src/zed-ros-wrapper/zed-ros-interfaces/msg/Keypoint2Di.msg" ""
)

get_filename_component(_filename "/home/robotixx_user/human-pov-navigation/src/zed-ros-wrapper/zed-ros-interfaces/msg/Keypoint3D.msg" NAME_WE)
add_custom_target(_zed_interfaces_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "zed_interfaces" "/home/robotixx_user/human-pov-navigation/src/zed-ros-wrapper/zed-ros-interfaces/msg/Keypoint3D.msg" ""
)

get_filename_component(_filename "/home/robotixx_user/human-pov-navigation/src/zed-ros-wrapper/zed-ros-interfaces/msg/Object.msg" NAME_WE)
add_custom_target(_zed_interfaces_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "zed_interfaces" "/home/robotixx_user/human-pov-navigation/src/zed-ros-wrapper/zed-ros-interfaces/msg/Object.msg" "zed_interfaces/Skeleton2D:zed_interfaces/BoundingBox2Df:zed_interfaces/Keypoint2Df:zed_interfaces/BoundingBox3D:zed_interfaces/Keypoint3D:zed_interfaces/Skeleton3D:zed_interfaces/BoundingBox2Di:zed_interfaces/Keypoint2Di"
)

get_filename_component(_filename "/home/robotixx_user/human-pov-navigation/src/zed-ros-wrapper/zed-ros-interfaces/msg/ObjectsStamped.msg" NAME_WE)
add_custom_target(_zed_interfaces_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "zed_interfaces" "/home/robotixx_user/human-pov-navigation/src/zed-ros-wrapper/zed-ros-interfaces/msg/ObjectsStamped.msg" "zed_interfaces/Skeleton2D:zed_interfaces/BoundingBox2Df:zed_interfaces/Keypoint2Df:zed_interfaces/BoundingBox3D:zed_interfaces/Keypoint3D:zed_interfaces/Skeleton3D:std_msgs/Header:zed_interfaces/BoundingBox2Di:zed_interfaces/Keypoint2Di:zed_interfaces/Object"
)

get_filename_component(_filename "/home/robotixx_user/human-pov-navigation/src/zed-ros-wrapper/zed-ros-interfaces/msg/Skeleton2D.msg" NAME_WE)
add_custom_target(_zed_interfaces_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "zed_interfaces" "/home/robotixx_user/human-pov-navigation/src/zed-ros-wrapper/zed-ros-interfaces/msg/Skeleton2D.msg" "zed_interfaces/Keypoint2Df"
)

get_filename_component(_filename "/home/robotixx_user/human-pov-navigation/src/zed-ros-wrapper/zed-ros-interfaces/msg/Skeleton3D.msg" NAME_WE)
add_custom_target(_zed_interfaces_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "zed_interfaces" "/home/robotixx_user/human-pov-navigation/src/zed-ros-wrapper/zed-ros-interfaces/msg/Skeleton3D.msg" "zed_interfaces/Keypoint3D"
)

get_filename_component(_filename "/home/robotixx_user/human-pov-navigation/src/zed-ros-wrapper/zed-ros-interfaces/msg/RGBDSensors.msg" NAME_WE)
add_custom_target(_zed_interfaces_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "zed_interfaces" "/home/robotixx_user/human-pov-navigation/src/zed-ros-wrapper/zed-ros-interfaces/msg/RGBDSensors.msg" "sensor_msgs/RegionOfInterest:sensor_msgs/CameraInfo:sensor_msgs/Image:geometry_msgs/Quaternion:geometry_msgs/Vector3:sensor_msgs/MagneticField:std_msgs/Header:sensor_msgs/Imu"
)

get_filename_component(_filename "/home/robotixx_user/human-pov-navigation/src/zed-ros-wrapper/zed-ros-interfaces/msg/PlaneStamped.msg" NAME_WE)
add_custom_target(_zed_interfaces_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "zed_interfaces" "/home/robotixx_user/human-pov-navigation/src/zed-ros-wrapper/zed-ros-interfaces/msg/PlaneStamped.msg" "shape_msgs/MeshTriangle:shape_msgs/Mesh:geometry_msgs/Transform:geometry_msgs/Quaternion:geometry_msgs/Polygon:geometry_msgs/Vector3:geometry_msgs/Point:std_msgs/Header:shape_msgs/Plane:geometry_msgs/Point32"
)

get_filename_component(_filename "/home/robotixx_user/human-pov-navigation/src/zed-ros-wrapper/zed-ros-interfaces/srv/set_pose.srv" NAME_WE)
add_custom_target(_zed_interfaces_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "zed_interfaces" "/home/robotixx_user/human-pov-navigation/src/zed-ros-wrapper/zed-ros-interfaces/srv/set_pose.srv" ""
)

get_filename_component(_filename "/home/robotixx_user/human-pov-navigation/src/zed-ros-wrapper/zed-ros-interfaces/srv/reset_odometry.srv" NAME_WE)
add_custom_target(_zed_interfaces_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "zed_interfaces" "/home/robotixx_user/human-pov-navigation/src/zed-ros-wrapper/zed-ros-interfaces/srv/reset_odometry.srv" ""
)

get_filename_component(_filename "/home/robotixx_user/human-pov-navigation/src/zed-ros-wrapper/zed-ros-interfaces/srv/reset_tracking.srv" NAME_WE)
add_custom_target(_zed_interfaces_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "zed_interfaces" "/home/robotixx_user/human-pov-navigation/src/zed-ros-wrapper/zed-ros-interfaces/srv/reset_tracking.srv" ""
)

get_filename_component(_filename "/home/robotixx_user/human-pov-navigation/src/zed-ros-wrapper/zed-ros-interfaces/srv/start_svo_recording.srv" NAME_WE)
add_custom_target(_zed_interfaces_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "zed_interfaces" "/home/robotixx_user/human-pov-navigation/src/zed-ros-wrapper/zed-ros-interfaces/srv/start_svo_recording.srv" ""
)

get_filename_component(_filename "/home/robotixx_user/human-pov-navigation/src/zed-ros-wrapper/zed-ros-interfaces/srv/stop_svo_recording.srv" NAME_WE)
add_custom_target(_zed_interfaces_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "zed_interfaces" "/home/robotixx_user/human-pov-navigation/src/zed-ros-wrapper/zed-ros-interfaces/srv/stop_svo_recording.srv" ""
)

get_filename_component(_filename "/home/robotixx_user/human-pov-navigation/src/zed-ros-wrapper/zed-ros-interfaces/srv/start_remote_stream.srv" NAME_WE)
add_custom_target(_zed_interfaces_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "zed_interfaces" "/home/robotixx_user/human-pov-navigation/src/zed-ros-wrapper/zed-ros-interfaces/srv/start_remote_stream.srv" ""
)

get_filename_component(_filename "/home/robotixx_user/human-pov-navigation/src/zed-ros-wrapper/zed-ros-interfaces/srv/stop_remote_stream.srv" NAME_WE)
add_custom_target(_zed_interfaces_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "zed_interfaces" "/home/robotixx_user/human-pov-navigation/src/zed-ros-wrapper/zed-ros-interfaces/srv/stop_remote_stream.srv" ""
)

get_filename_component(_filename "/home/robotixx_user/human-pov-navigation/src/zed-ros-wrapper/zed-ros-interfaces/srv/set_led_status.srv" NAME_WE)
add_custom_target(_zed_interfaces_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "zed_interfaces" "/home/robotixx_user/human-pov-navigation/src/zed-ros-wrapper/zed-ros-interfaces/srv/set_led_status.srv" ""
)

get_filename_component(_filename "/home/robotixx_user/human-pov-navigation/src/zed-ros-wrapper/zed-ros-interfaces/srv/toggle_led.srv" NAME_WE)
add_custom_target(_zed_interfaces_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "zed_interfaces" "/home/robotixx_user/human-pov-navigation/src/zed-ros-wrapper/zed-ros-interfaces/srv/toggle_led.srv" ""
)

get_filename_component(_filename "/home/robotixx_user/human-pov-navigation/src/zed-ros-wrapper/zed-ros-interfaces/srv/start_3d_mapping.srv" NAME_WE)
add_custom_target(_zed_interfaces_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "zed_interfaces" "/home/robotixx_user/human-pov-navigation/src/zed-ros-wrapper/zed-ros-interfaces/srv/start_3d_mapping.srv" ""
)

get_filename_component(_filename "/home/robotixx_user/human-pov-navigation/src/zed-ros-wrapper/zed-ros-interfaces/srv/stop_3d_mapping.srv" NAME_WE)
add_custom_target(_zed_interfaces_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "zed_interfaces" "/home/robotixx_user/human-pov-navigation/src/zed-ros-wrapper/zed-ros-interfaces/srv/stop_3d_mapping.srv" ""
)

get_filename_component(_filename "/home/robotixx_user/human-pov-navigation/src/zed-ros-wrapper/zed-ros-interfaces/srv/save_3d_map.srv" NAME_WE)
add_custom_target(_zed_interfaces_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "zed_interfaces" "/home/robotixx_user/human-pov-navigation/src/zed-ros-wrapper/zed-ros-interfaces/srv/save_3d_map.srv" ""
)

get_filename_component(_filename "/home/robotixx_user/human-pov-navigation/src/zed-ros-wrapper/zed-ros-interfaces/srv/start_object_detection.srv" NAME_WE)
add_custom_target(_zed_interfaces_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "zed_interfaces" "/home/robotixx_user/human-pov-navigation/src/zed-ros-wrapper/zed-ros-interfaces/srv/start_object_detection.srv" ""
)

get_filename_component(_filename "/home/robotixx_user/human-pov-navigation/src/zed-ros-wrapper/zed-ros-interfaces/srv/stop_object_detection.srv" NAME_WE)
add_custom_target(_zed_interfaces_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "zed_interfaces" "/home/robotixx_user/human-pov-navigation/src/zed-ros-wrapper/zed-ros-interfaces/srv/stop_object_detection.srv" ""
)

get_filename_component(_filename "/home/robotixx_user/human-pov-navigation/src/zed-ros-wrapper/zed-ros-interfaces/srv/save_area_memory.srv" NAME_WE)
add_custom_target(_zed_interfaces_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "zed_interfaces" "/home/robotixx_user/human-pov-navigation/src/zed-ros-wrapper/zed-ros-interfaces/srv/save_area_memory.srv" ""
)

#
#  langs = gencpp;geneus;genlisp;gennodejs;genpy
#

### Section generating for lang: gencpp
### Generating Messages
_generate_msg_cpp(zed_interfaces
  "/home/robotixx_user/human-pov-navigation/src/zed-ros-wrapper/zed-ros-interfaces/msg/BoundingBox2Df.msg"
  "${MSG_I_FLAGS}"
  "/home/robotixx_user/human-pov-navigation/src/zed-ros-wrapper/zed-ros-interfaces/msg/Keypoint2Df.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/zed_interfaces
)
_generate_msg_cpp(zed_interfaces
  "/home/robotixx_user/human-pov-navigation/src/zed-ros-wrapper/zed-ros-interfaces/msg/BoundingBox2Di.msg"
  "${MSG_I_FLAGS}"
  "/home/robotixx_user/human-pov-navigation/src/zed-ros-wrapper/zed-ros-interfaces/msg/Keypoint2Di.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/zed_interfaces
)
_generate_msg_cpp(zed_interfaces
  "/home/robotixx_user/human-pov-navigation/src/zed-ros-wrapper/zed-ros-interfaces/msg/BoundingBox3D.msg"
  "${MSG_I_FLAGS}"
  "/home/robotixx_user/human-pov-navigation/src/zed-ros-wrapper/zed-ros-interfaces/msg/Keypoint3D.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/zed_interfaces
)
_generate_msg_cpp(zed_interfaces
  "/home/robotixx_user/human-pov-navigation/src/zed-ros-wrapper/zed-ros-interfaces/msg/Keypoint2Df.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/zed_interfaces
)
_generate_msg_cpp(zed_interfaces
  "/home/robotixx_user/human-pov-navigation/src/zed-ros-wrapper/zed-ros-interfaces/msg/Keypoint2Di.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/zed_interfaces
)
_generate_msg_cpp(zed_interfaces
  "/home/robotixx_user/human-pov-navigation/src/zed-ros-wrapper/zed-ros-interfaces/msg/Keypoint3D.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/zed_interfaces
)
_generate_msg_cpp(zed_interfaces
  "/home/robotixx_user/human-pov-navigation/src/zed-ros-wrapper/zed-ros-interfaces/msg/Object.msg"
  "${MSG_I_FLAGS}"
  "/home/robotixx_user/human-pov-navigation/src/zed-ros-wrapper/zed-ros-interfaces/msg/Skeleton2D.msg;/home/robotixx_user/human-pov-navigation/src/zed-ros-wrapper/zed-ros-interfaces/msg/BoundingBox2Df.msg;/home/robotixx_user/human-pov-navigation/src/zed-ros-wrapper/zed-ros-interfaces/msg/Keypoint2Df.msg;/home/robotixx_user/human-pov-navigation/src/zed-ros-wrapper/zed-ros-interfaces/msg/BoundingBox3D.msg;/home/robotixx_user/human-pov-navigation/src/zed-ros-wrapper/zed-ros-interfaces/msg/Keypoint3D.msg;/home/robotixx_user/human-pov-navigation/src/zed-ros-wrapper/zed-ros-interfaces/msg/Skeleton3D.msg;/home/robotixx_user/human-pov-navigation/src/zed-ros-wrapper/zed-ros-interfaces/msg/BoundingBox2Di.msg;/home/robotixx_user/human-pov-navigation/src/zed-ros-wrapper/zed-ros-interfaces/msg/Keypoint2Di.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/zed_interfaces
)
_generate_msg_cpp(zed_interfaces
  "/home/robotixx_user/human-pov-navigation/src/zed-ros-wrapper/zed-ros-interfaces/msg/ObjectsStamped.msg"
  "${MSG_I_FLAGS}"
  "/home/robotixx_user/human-pov-navigation/src/zed-ros-wrapper/zed-ros-interfaces/msg/Skeleton2D.msg;/home/robotixx_user/human-pov-navigation/src/zed-ros-wrapper/zed-ros-interfaces/msg/BoundingBox2Df.msg;/home/robotixx_user/human-pov-navigation/src/zed-ros-wrapper/zed-ros-interfaces/msg/Keypoint2Df.msg;/home/robotixx_user/human-pov-navigation/src/zed-ros-wrapper/zed-ros-interfaces/msg/BoundingBox3D.msg;/home/robotixx_user/human-pov-navigation/src/zed-ros-wrapper/zed-ros-interfaces/msg/Keypoint3D.msg;/home/robotixx_user/human-pov-navigation/src/zed-ros-wrapper/zed-ros-interfaces/msg/Skeleton3D.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/home/robotixx_user/human-pov-navigation/src/zed-ros-wrapper/zed-ros-interfaces/msg/BoundingBox2Di.msg;/home/robotixx_user/human-pov-navigation/src/zed-ros-wrapper/zed-ros-interfaces/msg/Keypoint2Di.msg;/home/robotixx_user/human-pov-navigation/src/zed-ros-wrapper/zed-ros-interfaces/msg/Object.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/zed_interfaces
)
_generate_msg_cpp(zed_interfaces
  "/home/robotixx_user/human-pov-navigation/src/zed-ros-wrapper/zed-ros-interfaces/msg/Skeleton2D.msg"
  "${MSG_I_FLAGS}"
  "/home/robotixx_user/human-pov-navigation/src/zed-ros-wrapper/zed-ros-interfaces/msg/Keypoint2Df.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/zed_interfaces
)
_generate_msg_cpp(zed_interfaces
  "/home/robotixx_user/human-pov-navigation/src/zed-ros-wrapper/zed-ros-interfaces/msg/Skeleton3D.msg"
  "${MSG_I_FLAGS}"
  "/home/robotixx_user/human-pov-navigation/src/zed-ros-wrapper/zed-ros-interfaces/msg/Keypoint3D.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/zed_interfaces
)
_generate_msg_cpp(zed_interfaces
  "/home/robotixx_user/human-pov-navigation/src/zed-ros-wrapper/zed-ros-interfaces/msg/RGBDSensors.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/sensor_msgs/cmake/../msg/RegionOfInterest.msg;/opt/ros/noetic/share/sensor_msgs/cmake/../msg/CameraInfo.msg;/opt/ros/noetic/share/sensor_msgs/cmake/../msg/Image.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Vector3.msg;/opt/ros/noetic/share/sensor_msgs/cmake/../msg/MagneticField.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/noetic/share/sensor_msgs/cmake/../msg/Imu.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/zed_interfaces
)
_generate_msg_cpp(zed_interfaces
  "/home/robotixx_user/human-pov-navigation/src/zed-ros-wrapper/zed-ros-interfaces/msg/PlaneStamped.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/shape_msgs/cmake/../msg/MeshTriangle.msg;/opt/ros/noetic/share/shape_msgs/cmake/../msg/Mesh.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Transform.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Polygon.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Vector3.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/noetic/share/shape_msgs/cmake/../msg/Plane.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point32.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/zed_interfaces
)

### Generating Services
_generate_srv_cpp(zed_interfaces
  "/home/robotixx_user/human-pov-navigation/src/zed-ros-wrapper/zed-ros-interfaces/srv/set_pose.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/zed_interfaces
)
_generate_srv_cpp(zed_interfaces
  "/home/robotixx_user/human-pov-navigation/src/zed-ros-wrapper/zed-ros-interfaces/srv/reset_odometry.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/zed_interfaces
)
_generate_srv_cpp(zed_interfaces
  "/home/robotixx_user/human-pov-navigation/src/zed-ros-wrapper/zed-ros-interfaces/srv/reset_tracking.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/zed_interfaces
)
_generate_srv_cpp(zed_interfaces
  "/home/robotixx_user/human-pov-navigation/src/zed-ros-wrapper/zed-ros-interfaces/srv/start_svo_recording.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/zed_interfaces
)
_generate_srv_cpp(zed_interfaces
  "/home/robotixx_user/human-pov-navigation/src/zed-ros-wrapper/zed-ros-interfaces/srv/stop_svo_recording.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/zed_interfaces
)
_generate_srv_cpp(zed_interfaces
  "/home/robotixx_user/human-pov-navigation/src/zed-ros-wrapper/zed-ros-interfaces/srv/start_remote_stream.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/zed_interfaces
)
_generate_srv_cpp(zed_interfaces
  "/home/robotixx_user/human-pov-navigation/src/zed-ros-wrapper/zed-ros-interfaces/srv/stop_remote_stream.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/zed_interfaces
)
_generate_srv_cpp(zed_interfaces
  "/home/robotixx_user/human-pov-navigation/src/zed-ros-wrapper/zed-ros-interfaces/srv/set_led_status.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/zed_interfaces
)
_generate_srv_cpp(zed_interfaces
  "/home/robotixx_user/human-pov-navigation/src/zed-ros-wrapper/zed-ros-interfaces/srv/toggle_led.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/zed_interfaces
)
_generate_srv_cpp(zed_interfaces
  "/home/robotixx_user/human-pov-navigation/src/zed-ros-wrapper/zed-ros-interfaces/srv/start_3d_mapping.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/zed_interfaces
)
_generate_srv_cpp(zed_interfaces
  "/home/robotixx_user/human-pov-navigation/src/zed-ros-wrapper/zed-ros-interfaces/srv/stop_3d_mapping.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/zed_interfaces
)
_generate_srv_cpp(zed_interfaces
  "/home/robotixx_user/human-pov-navigation/src/zed-ros-wrapper/zed-ros-interfaces/srv/save_3d_map.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/zed_interfaces
)
_generate_srv_cpp(zed_interfaces
  "/home/robotixx_user/human-pov-navigation/src/zed-ros-wrapper/zed-ros-interfaces/srv/start_object_detection.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/zed_interfaces
)
_generate_srv_cpp(zed_interfaces
  "/home/robotixx_user/human-pov-navigation/src/zed-ros-wrapper/zed-ros-interfaces/srv/stop_object_detection.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/zed_interfaces
)
_generate_srv_cpp(zed_interfaces
  "/home/robotixx_user/human-pov-navigation/src/zed-ros-wrapper/zed-ros-interfaces/srv/save_area_memory.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/zed_interfaces
)

### Generating Module File
_generate_module_cpp(zed_interfaces
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/zed_interfaces
  "${ALL_GEN_OUTPUT_FILES_cpp}"
)

add_custom_target(zed_interfaces_generate_messages_cpp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_cpp}
)
add_dependencies(zed_interfaces_generate_messages zed_interfaces_generate_messages_cpp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/robotixx_user/human-pov-navigation/src/zed-ros-wrapper/zed-ros-interfaces/msg/BoundingBox2Df.msg" NAME_WE)
add_dependencies(zed_interfaces_generate_messages_cpp _zed_interfaces_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/robotixx_user/human-pov-navigation/src/zed-ros-wrapper/zed-ros-interfaces/msg/BoundingBox2Di.msg" NAME_WE)
add_dependencies(zed_interfaces_generate_messages_cpp _zed_interfaces_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/robotixx_user/human-pov-navigation/src/zed-ros-wrapper/zed-ros-interfaces/msg/BoundingBox3D.msg" NAME_WE)
add_dependencies(zed_interfaces_generate_messages_cpp _zed_interfaces_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/robotixx_user/human-pov-navigation/src/zed-ros-wrapper/zed-ros-interfaces/msg/Keypoint2Df.msg" NAME_WE)
add_dependencies(zed_interfaces_generate_messages_cpp _zed_interfaces_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/robotixx_user/human-pov-navigation/src/zed-ros-wrapper/zed-ros-interfaces/msg/Keypoint2Di.msg" NAME_WE)
add_dependencies(zed_interfaces_generate_messages_cpp _zed_interfaces_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/robotixx_user/human-pov-navigation/src/zed-ros-wrapper/zed-ros-interfaces/msg/Keypoint3D.msg" NAME_WE)
add_dependencies(zed_interfaces_generate_messages_cpp _zed_interfaces_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/robotixx_user/human-pov-navigation/src/zed-ros-wrapper/zed-ros-interfaces/msg/Object.msg" NAME_WE)
add_dependencies(zed_interfaces_generate_messages_cpp _zed_interfaces_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/robotixx_user/human-pov-navigation/src/zed-ros-wrapper/zed-ros-interfaces/msg/ObjectsStamped.msg" NAME_WE)
add_dependencies(zed_interfaces_generate_messages_cpp _zed_interfaces_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/robotixx_user/human-pov-navigation/src/zed-ros-wrapper/zed-ros-interfaces/msg/Skeleton2D.msg" NAME_WE)
add_dependencies(zed_interfaces_generate_messages_cpp _zed_interfaces_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/robotixx_user/human-pov-navigation/src/zed-ros-wrapper/zed-ros-interfaces/msg/Skeleton3D.msg" NAME_WE)
add_dependencies(zed_interfaces_generate_messages_cpp _zed_interfaces_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/robotixx_user/human-pov-navigation/src/zed-ros-wrapper/zed-ros-interfaces/msg/RGBDSensors.msg" NAME_WE)
add_dependencies(zed_interfaces_generate_messages_cpp _zed_interfaces_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/robotixx_user/human-pov-navigation/src/zed-ros-wrapper/zed-ros-interfaces/msg/PlaneStamped.msg" NAME_WE)
add_dependencies(zed_interfaces_generate_messages_cpp _zed_interfaces_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/robotixx_user/human-pov-navigation/src/zed-ros-wrapper/zed-ros-interfaces/srv/set_pose.srv" NAME_WE)
add_dependencies(zed_interfaces_generate_messages_cpp _zed_interfaces_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/robotixx_user/human-pov-navigation/src/zed-ros-wrapper/zed-ros-interfaces/srv/reset_odometry.srv" NAME_WE)
add_dependencies(zed_interfaces_generate_messages_cpp _zed_interfaces_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/robotixx_user/human-pov-navigation/src/zed-ros-wrapper/zed-ros-interfaces/srv/reset_tracking.srv" NAME_WE)
add_dependencies(zed_interfaces_generate_messages_cpp _zed_interfaces_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/robotixx_user/human-pov-navigation/src/zed-ros-wrapper/zed-ros-interfaces/srv/start_svo_recording.srv" NAME_WE)
add_dependencies(zed_interfaces_generate_messages_cpp _zed_interfaces_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/robotixx_user/human-pov-navigation/src/zed-ros-wrapper/zed-ros-interfaces/srv/stop_svo_recording.srv" NAME_WE)
add_dependencies(zed_interfaces_generate_messages_cpp _zed_interfaces_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/robotixx_user/human-pov-navigation/src/zed-ros-wrapper/zed-ros-interfaces/srv/start_remote_stream.srv" NAME_WE)
add_dependencies(zed_interfaces_generate_messages_cpp _zed_interfaces_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/robotixx_user/human-pov-navigation/src/zed-ros-wrapper/zed-ros-interfaces/srv/stop_remote_stream.srv" NAME_WE)
add_dependencies(zed_interfaces_generate_messages_cpp _zed_interfaces_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/robotixx_user/human-pov-navigation/src/zed-ros-wrapper/zed-ros-interfaces/srv/set_led_status.srv" NAME_WE)
add_dependencies(zed_interfaces_generate_messages_cpp _zed_interfaces_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/robotixx_user/human-pov-navigation/src/zed-ros-wrapper/zed-ros-interfaces/srv/toggle_led.srv" NAME_WE)
add_dependencies(zed_interfaces_generate_messages_cpp _zed_interfaces_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/robotixx_user/human-pov-navigation/src/zed-ros-wrapper/zed-ros-interfaces/srv/start_3d_mapping.srv" NAME_WE)
add_dependencies(zed_interfaces_generate_messages_cpp _zed_interfaces_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/robotixx_user/human-pov-navigation/src/zed-ros-wrapper/zed-ros-interfaces/srv/stop_3d_mapping.srv" NAME_WE)
add_dependencies(zed_interfaces_generate_messages_cpp _zed_interfaces_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/robotixx_user/human-pov-navigation/src/zed-ros-wrapper/zed-ros-interfaces/srv/save_3d_map.srv" NAME_WE)
add_dependencies(zed_interfaces_generate_messages_cpp _zed_interfaces_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/robotixx_user/human-pov-navigation/src/zed-ros-wrapper/zed-ros-interfaces/srv/start_object_detection.srv" NAME_WE)
add_dependencies(zed_interfaces_generate_messages_cpp _zed_interfaces_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/robotixx_user/human-pov-navigation/src/zed-ros-wrapper/zed-ros-interfaces/srv/stop_object_detection.srv" NAME_WE)
add_dependencies(zed_interfaces_generate_messages_cpp _zed_interfaces_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/robotixx_user/human-pov-navigation/src/zed-ros-wrapper/zed-ros-interfaces/srv/save_area_memory.srv" NAME_WE)
add_dependencies(zed_interfaces_generate_messages_cpp _zed_interfaces_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(zed_interfaces_gencpp)
add_dependencies(zed_interfaces_gencpp zed_interfaces_generate_messages_cpp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS zed_interfaces_generate_messages_cpp)

### Section generating for lang: geneus
### Generating Messages
_generate_msg_eus(zed_interfaces
  "/home/robotixx_user/human-pov-navigation/src/zed-ros-wrapper/zed-ros-interfaces/msg/BoundingBox2Df.msg"
  "${MSG_I_FLAGS}"
  "/home/robotixx_user/human-pov-navigation/src/zed-ros-wrapper/zed-ros-interfaces/msg/Keypoint2Df.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/zed_interfaces
)
_generate_msg_eus(zed_interfaces
  "/home/robotixx_user/human-pov-navigation/src/zed-ros-wrapper/zed-ros-interfaces/msg/BoundingBox2Di.msg"
  "${MSG_I_FLAGS}"
  "/home/robotixx_user/human-pov-navigation/src/zed-ros-wrapper/zed-ros-interfaces/msg/Keypoint2Di.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/zed_interfaces
)
_generate_msg_eus(zed_interfaces
  "/home/robotixx_user/human-pov-navigation/src/zed-ros-wrapper/zed-ros-interfaces/msg/BoundingBox3D.msg"
  "${MSG_I_FLAGS}"
  "/home/robotixx_user/human-pov-navigation/src/zed-ros-wrapper/zed-ros-interfaces/msg/Keypoint3D.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/zed_interfaces
)
_generate_msg_eus(zed_interfaces
  "/home/robotixx_user/human-pov-navigation/src/zed-ros-wrapper/zed-ros-interfaces/msg/Keypoint2Df.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/zed_interfaces
)
_generate_msg_eus(zed_interfaces
  "/home/robotixx_user/human-pov-navigation/src/zed-ros-wrapper/zed-ros-interfaces/msg/Keypoint2Di.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/zed_interfaces
)
_generate_msg_eus(zed_interfaces
  "/home/robotixx_user/human-pov-navigation/src/zed-ros-wrapper/zed-ros-interfaces/msg/Keypoint3D.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/zed_interfaces
)
_generate_msg_eus(zed_interfaces
  "/home/robotixx_user/human-pov-navigation/src/zed-ros-wrapper/zed-ros-interfaces/msg/Object.msg"
  "${MSG_I_FLAGS}"
  "/home/robotixx_user/human-pov-navigation/src/zed-ros-wrapper/zed-ros-interfaces/msg/Skeleton2D.msg;/home/robotixx_user/human-pov-navigation/src/zed-ros-wrapper/zed-ros-interfaces/msg/BoundingBox2Df.msg;/home/robotixx_user/human-pov-navigation/src/zed-ros-wrapper/zed-ros-interfaces/msg/Keypoint2Df.msg;/home/robotixx_user/human-pov-navigation/src/zed-ros-wrapper/zed-ros-interfaces/msg/BoundingBox3D.msg;/home/robotixx_user/human-pov-navigation/src/zed-ros-wrapper/zed-ros-interfaces/msg/Keypoint3D.msg;/home/robotixx_user/human-pov-navigation/src/zed-ros-wrapper/zed-ros-interfaces/msg/Skeleton3D.msg;/home/robotixx_user/human-pov-navigation/src/zed-ros-wrapper/zed-ros-interfaces/msg/BoundingBox2Di.msg;/home/robotixx_user/human-pov-navigation/src/zed-ros-wrapper/zed-ros-interfaces/msg/Keypoint2Di.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/zed_interfaces
)
_generate_msg_eus(zed_interfaces
  "/home/robotixx_user/human-pov-navigation/src/zed-ros-wrapper/zed-ros-interfaces/msg/ObjectsStamped.msg"
  "${MSG_I_FLAGS}"
  "/home/robotixx_user/human-pov-navigation/src/zed-ros-wrapper/zed-ros-interfaces/msg/Skeleton2D.msg;/home/robotixx_user/human-pov-navigation/src/zed-ros-wrapper/zed-ros-interfaces/msg/BoundingBox2Df.msg;/home/robotixx_user/human-pov-navigation/src/zed-ros-wrapper/zed-ros-interfaces/msg/Keypoint2Df.msg;/home/robotixx_user/human-pov-navigation/src/zed-ros-wrapper/zed-ros-interfaces/msg/BoundingBox3D.msg;/home/robotixx_user/human-pov-navigation/src/zed-ros-wrapper/zed-ros-interfaces/msg/Keypoint3D.msg;/home/robotixx_user/human-pov-navigation/src/zed-ros-wrapper/zed-ros-interfaces/msg/Skeleton3D.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/home/robotixx_user/human-pov-navigation/src/zed-ros-wrapper/zed-ros-interfaces/msg/BoundingBox2Di.msg;/home/robotixx_user/human-pov-navigation/src/zed-ros-wrapper/zed-ros-interfaces/msg/Keypoint2Di.msg;/home/robotixx_user/human-pov-navigation/src/zed-ros-wrapper/zed-ros-interfaces/msg/Object.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/zed_interfaces
)
_generate_msg_eus(zed_interfaces
  "/home/robotixx_user/human-pov-navigation/src/zed-ros-wrapper/zed-ros-interfaces/msg/Skeleton2D.msg"
  "${MSG_I_FLAGS}"
  "/home/robotixx_user/human-pov-navigation/src/zed-ros-wrapper/zed-ros-interfaces/msg/Keypoint2Df.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/zed_interfaces
)
_generate_msg_eus(zed_interfaces
  "/home/robotixx_user/human-pov-navigation/src/zed-ros-wrapper/zed-ros-interfaces/msg/Skeleton3D.msg"
  "${MSG_I_FLAGS}"
  "/home/robotixx_user/human-pov-navigation/src/zed-ros-wrapper/zed-ros-interfaces/msg/Keypoint3D.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/zed_interfaces
)
_generate_msg_eus(zed_interfaces
  "/home/robotixx_user/human-pov-navigation/src/zed-ros-wrapper/zed-ros-interfaces/msg/RGBDSensors.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/sensor_msgs/cmake/../msg/RegionOfInterest.msg;/opt/ros/noetic/share/sensor_msgs/cmake/../msg/CameraInfo.msg;/opt/ros/noetic/share/sensor_msgs/cmake/../msg/Image.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Vector3.msg;/opt/ros/noetic/share/sensor_msgs/cmake/../msg/MagneticField.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/noetic/share/sensor_msgs/cmake/../msg/Imu.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/zed_interfaces
)
_generate_msg_eus(zed_interfaces
  "/home/robotixx_user/human-pov-navigation/src/zed-ros-wrapper/zed-ros-interfaces/msg/PlaneStamped.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/shape_msgs/cmake/../msg/MeshTriangle.msg;/opt/ros/noetic/share/shape_msgs/cmake/../msg/Mesh.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Transform.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Polygon.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Vector3.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/noetic/share/shape_msgs/cmake/../msg/Plane.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point32.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/zed_interfaces
)

### Generating Services
_generate_srv_eus(zed_interfaces
  "/home/robotixx_user/human-pov-navigation/src/zed-ros-wrapper/zed-ros-interfaces/srv/set_pose.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/zed_interfaces
)
_generate_srv_eus(zed_interfaces
  "/home/robotixx_user/human-pov-navigation/src/zed-ros-wrapper/zed-ros-interfaces/srv/reset_odometry.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/zed_interfaces
)
_generate_srv_eus(zed_interfaces
  "/home/robotixx_user/human-pov-navigation/src/zed-ros-wrapper/zed-ros-interfaces/srv/reset_tracking.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/zed_interfaces
)
_generate_srv_eus(zed_interfaces
  "/home/robotixx_user/human-pov-navigation/src/zed-ros-wrapper/zed-ros-interfaces/srv/start_svo_recording.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/zed_interfaces
)
_generate_srv_eus(zed_interfaces
  "/home/robotixx_user/human-pov-navigation/src/zed-ros-wrapper/zed-ros-interfaces/srv/stop_svo_recording.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/zed_interfaces
)
_generate_srv_eus(zed_interfaces
  "/home/robotixx_user/human-pov-navigation/src/zed-ros-wrapper/zed-ros-interfaces/srv/start_remote_stream.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/zed_interfaces
)
_generate_srv_eus(zed_interfaces
  "/home/robotixx_user/human-pov-navigation/src/zed-ros-wrapper/zed-ros-interfaces/srv/stop_remote_stream.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/zed_interfaces
)
_generate_srv_eus(zed_interfaces
  "/home/robotixx_user/human-pov-navigation/src/zed-ros-wrapper/zed-ros-interfaces/srv/set_led_status.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/zed_interfaces
)
_generate_srv_eus(zed_interfaces
  "/home/robotixx_user/human-pov-navigation/src/zed-ros-wrapper/zed-ros-interfaces/srv/toggle_led.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/zed_interfaces
)
_generate_srv_eus(zed_interfaces
  "/home/robotixx_user/human-pov-navigation/src/zed-ros-wrapper/zed-ros-interfaces/srv/start_3d_mapping.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/zed_interfaces
)
_generate_srv_eus(zed_interfaces
  "/home/robotixx_user/human-pov-navigation/src/zed-ros-wrapper/zed-ros-interfaces/srv/stop_3d_mapping.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/zed_interfaces
)
_generate_srv_eus(zed_interfaces
  "/home/robotixx_user/human-pov-navigation/src/zed-ros-wrapper/zed-ros-interfaces/srv/save_3d_map.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/zed_interfaces
)
_generate_srv_eus(zed_interfaces
  "/home/robotixx_user/human-pov-navigation/src/zed-ros-wrapper/zed-ros-interfaces/srv/start_object_detection.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/zed_interfaces
)
_generate_srv_eus(zed_interfaces
  "/home/robotixx_user/human-pov-navigation/src/zed-ros-wrapper/zed-ros-interfaces/srv/stop_object_detection.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/zed_interfaces
)
_generate_srv_eus(zed_interfaces
  "/home/robotixx_user/human-pov-navigation/src/zed-ros-wrapper/zed-ros-interfaces/srv/save_area_memory.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/zed_interfaces
)

### Generating Module File
_generate_module_eus(zed_interfaces
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/zed_interfaces
  "${ALL_GEN_OUTPUT_FILES_eus}"
)

add_custom_target(zed_interfaces_generate_messages_eus
  DEPENDS ${ALL_GEN_OUTPUT_FILES_eus}
)
add_dependencies(zed_interfaces_generate_messages zed_interfaces_generate_messages_eus)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/robotixx_user/human-pov-navigation/src/zed-ros-wrapper/zed-ros-interfaces/msg/BoundingBox2Df.msg" NAME_WE)
add_dependencies(zed_interfaces_generate_messages_eus _zed_interfaces_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/robotixx_user/human-pov-navigation/src/zed-ros-wrapper/zed-ros-interfaces/msg/BoundingBox2Di.msg" NAME_WE)
add_dependencies(zed_interfaces_generate_messages_eus _zed_interfaces_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/robotixx_user/human-pov-navigation/src/zed-ros-wrapper/zed-ros-interfaces/msg/BoundingBox3D.msg" NAME_WE)
add_dependencies(zed_interfaces_generate_messages_eus _zed_interfaces_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/robotixx_user/human-pov-navigation/src/zed-ros-wrapper/zed-ros-interfaces/msg/Keypoint2Df.msg" NAME_WE)
add_dependencies(zed_interfaces_generate_messages_eus _zed_interfaces_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/robotixx_user/human-pov-navigation/src/zed-ros-wrapper/zed-ros-interfaces/msg/Keypoint2Di.msg" NAME_WE)
add_dependencies(zed_interfaces_generate_messages_eus _zed_interfaces_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/robotixx_user/human-pov-navigation/src/zed-ros-wrapper/zed-ros-interfaces/msg/Keypoint3D.msg" NAME_WE)
add_dependencies(zed_interfaces_generate_messages_eus _zed_interfaces_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/robotixx_user/human-pov-navigation/src/zed-ros-wrapper/zed-ros-interfaces/msg/Object.msg" NAME_WE)
add_dependencies(zed_interfaces_generate_messages_eus _zed_interfaces_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/robotixx_user/human-pov-navigation/src/zed-ros-wrapper/zed-ros-interfaces/msg/ObjectsStamped.msg" NAME_WE)
add_dependencies(zed_interfaces_generate_messages_eus _zed_interfaces_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/robotixx_user/human-pov-navigation/src/zed-ros-wrapper/zed-ros-interfaces/msg/Skeleton2D.msg" NAME_WE)
add_dependencies(zed_interfaces_generate_messages_eus _zed_interfaces_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/robotixx_user/human-pov-navigation/src/zed-ros-wrapper/zed-ros-interfaces/msg/Skeleton3D.msg" NAME_WE)
add_dependencies(zed_interfaces_generate_messages_eus _zed_interfaces_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/robotixx_user/human-pov-navigation/src/zed-ros-wrapper/zed-ros-interfaces/msg/RGBDSensors.msg" NAME_WE)
add_dependencies(zed_interfaces_generate_messages_eus _zed_interfaces_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/robotixx_user/human-pov-navigation/src/zed-ros-wrapper/zed-ros-interfaces/msg/PlaneStamped.msg" NAME_WE)
add_dependencies(zed_interfaces_generate_messages_eus _zed_interfaces_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/robotixx_user/human-pov-navigation/src/zed-ros-wrapper/zed-ros-interfaces/srv/set_pose.srv" NAME_WE)
add_dependencies(zed_interfaces_generate_messages_eus _zed_interfaces_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/robotixx_user/human-pov-navigation/src/zed-ros-wrapper/zed-ros-interfaces/srv/reset_odometry.srv" NAME_WE)
add_dependencies(zed_interfaces_generate_messages_eus _zed_interfaces_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/robotixx_user/human-pov-navigation/src/zed-ros-wrapper/zed-ros-interfaces/srv/reset_tracking.srv" NAME_WE)
add_dependencies(zed_interfaces_generate_messages_eus _zed_interfaces_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/robotixx_user/human-pov-navigation/src/zed-ros-wrapper/zed-ros-interfaces/srv/start_svo_recording.srv" NAME_WE)
add_dependencies(zed_interfaces_generate_messages_eus _zed_interfaces_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/robotixx_user/human-pov-navigation/src/zed-ros-wrapper/zed-ros-interfaces/srv/stop_svo_recording.srv" NAME_WE)
add_dependencies(zed_interfaces_generate_messages_eus _zed_interfaces_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/robotixx_user/human-pov-navigation/src/zed-ros-wrapper/zed-ros-interfaces/srv/start_remote_stream.srv" NAME_WE)
add_dependencies(zed_interfaces_generate_messages_eus _zed_interfaces_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/robotixx_user/human-pov-navigation/src/zed-ros-wrapper/zed-ros-interfaces/srv/stop_remote_stream.srv" NAME_WE)
add_dependencies(zed_interfaces_generate_messages_eus _zed_interfaces_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/robotixx_user/human-pov-navigation/src/zed-ros-wrapper/zed-ros-interfaces/srv/set_led_status.srv" NAME_WE)
add_dependencies(zed_interfaces_generate_messages_eus _zed_interfaces_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/robotixx_user/human-pov-navigation/src/zed-ros-wrapper/zed-ros-interfaces/srv/toggle_led.srv" NAME_WE)
add_dependencies(zed_interfaces_generate_messages_eus _zed_interfaces_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/robotixx_user/human-pov-navigation/src/zed-ros-wrapper/zed-ros-interfaces/srv/start_3d_mapping.srv" NAME_WE)
add_dependencies(zed_interfaces_generate_messages_eus _zed_interfaces_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/robotixx_user/human-pov-navigation/src/zed-ros-wrapper/zed-ros-interfaces/srv/stop_3d_mapping.srv" NAME_WE)
add_dependencies(zed_interfaces_generate_messages_eus _zed_interfaces_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/robotixx_user/human-pov-navigation/src/zed-ros-wrapper/zed-ros-interfaces/srv/save_3d_map.srv" NAME_WE)
add_dependencies(zed_interfaces_generate_messages_eus _zed_interfaces_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/robotixx_user/human-pov-navigation/src/zed-ros-wrapper/zed-ros-interfaces/srv/start_object_detection.srv" NAME_WE)
add_dependencies(zed_interfaces_generate_messages_eus _zed_interfaces_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/robotixx_user/human-pov-navigation/src/zed-ros-wrapper/zed-ros-interfaces/srv/stop_object_detection.srv" NAME_WE)
add_dependencies(zed_interfaces_generate_messages_eus _zed_interfaces_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/robotixx_user/human-pov-navigation/src/zed-ros-wrapper/zed-ros-interfaces/srv/save_area_memory.srv" NAME_WE)
add_dependencies(zed_interfaces_generate_messages_eus _zed_interfaces_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(zed_interfaces_geneus)
add_dependencies(zed_interfaces_geneus zed_interfaces_generate_messages_eus)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS zed_interfaces_generate_messages_eus)

### Section generating for lang: genlisp
### Generating Messages
_generate_msg_lisp(zed_interfaces
  "/home/robotixx_user/human-pov-navigation/src/zed-ros-wrapper/zed-ros-interfaces/msg/BoundingBox2Df.msg"
  "${MSG_I_FLAGS}"
  "/home/robotixx_user/human-pov-navigation/src/zed-ros-wrapper/zed-ros-interfaces/msg/Keypoint2Df.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/zed_interfaces
)
_generate_msg_lisp(zed_interfaces
  "/home/robotixx_user/human-pov-navigation/src/zed-ros-wrapper/zed-ros-interfaces/msg/BoundingBox2Di.msg"
  "${MSG_I_FLAGS}"
  "/home/robotixx_user/human-pov-navigation/src/zed-ros-wrapper/zed-ros-interfaces/msg/Keypoint2Di.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/zed_interfaces
)
_generate_msg_lisp(zed_interfaces
  "/home/robotixx_user/human-pov-navigation/src/zed-ros-wrapper/zed-ros-interfaces/msg/BoundingBox3D.msg"
  "${MSG_I_FLAGS}"
  "/home/robotixx_user/human-pov-navigation/src/zed-ros-wrapper/zed-ros-interfaces/msg/Keypoint3D.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/zed_interfaces
)
_generate_msg_lisp(zed_interfaces
  "/home/robotixx_user/human-pov-navigation/src/zed-ros-wrapper/zed-ros-interfaces/msg/Keypoint2Df.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/zed_interfaces
)
_generate_msg_lisp(zed_interfaces
  "/home/robotixx_user/human-pov-navigation/src/zed-ros-wrapper/zed-ros-interfaces/msg/Keypoint2Di.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/zed_interfaces
)
_generate_msg_lisp(zed_interfaces
  "/home/robotixx_user/human-pov-navigation/src/zed-ros-wrapper/zed-ros-interfaces/msg/Keypoint3D.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/zed_interfaces
)
_generate_msg_lisp(zed_interfaces
  "/home/robotixx_user/human-pov-navigation/src/zed-ros-wrapper/zed-ros-interfaces/msg/Object.msg"
  "${MSG_I_FLAGS}"
  "/home/robotixx_user/human-pov-navigation/src/zed-ros-wrapper/zed-ros-interfaces/msg/Skeleton2D.msg;/home/robotixx_user/human-pov-navigation/src/zed-ros-wrapper/zed-ros-interfaces/msg/BoundingBox2Df.msg;/home/robotixx_user/human-pov-navigation/src/zed-ros-wrapper/zed-ros-interfaces/msg/Keypoint2Df.msg;/home/robotixx_user/human-pov-navigation/src/zed-ros-wrapper/zed-ros-interfaces/msg/BoundingBox3D.msg;/home/robotixx_user/human-pov-navigation/src/zed-ros-wrapper/zed-ros-interfaces/msg/Keypoint3D.msg;/home/robotixx_user/human-pov-navigation/src/zed-ros-wrapper/zed-ros-interfaces/msg/Skeleton3D.msg;/home/robotixx_user/human-pov-navigation/src/zed-ros-wrapper/zed-ros-interfaces/msg/BoundingBox2Di.msg;/home/robotixx_user/human-pov-navigation/src/zed-ros-wrapper/zed-ros-interfaces/msg/Keypoint2Di.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/zed_interfaces
)
_generate_msg_lisp(zed_interfaces
  "/home/robotixx_user/human-pov-navigation/src/zed-ros-wrapper/zed-ros-interfaces/msg/ObjectsStamped.msg"
  "${MSG_I_FLAGS}"
  "/home/robotixx_user/human-pov-navigation/src/zed-ros-wrapper/zed-ros-interfaces/msg/Skeleton2D.msg;/home/robotixx_user/human-pov-navigation/src/zed-ros-wrapper/zed-ros-interfaces/msg/BoundingBox2Df.msg;/home/robotixx_user/human-pov-navigation/src/zed-ros-wrapper/zed-ros-interfaces/msg/Keypoint2Df.msg;/home/robotixx_user/human-pov-navigation/src/zed-ros-wrapper/zed-ros-interfaces/msg/BoundingBox3D.msg;/home/robotixx_user/human-pov-navigation/src/zed-ros-wrapper/zed-ros-interfaces/msg/Keypoint3D.msg;/home/robotixx_user/human-pov-navigation/src/zed-ros-wrapper/zed-ros-interfaces/msg/Skeleton3D.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/home/robotixx_user/human-pov-navigation/src/zed-ros-wrapper/zed-ros-interfaces/msg/BoundingBox2Di.msg;/home/robotixx_user/human-pov-navigation/src/zed-ros-wrapper/zed-ros-interfaces/msg/Keypoint2Di.msg;/home/robotixx_user/human-pov-navigation/src/zed-ros-wrapper/zed-ros-interfaces/msg/Object.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/zed_interfaces
)
_generate_msg_lisp(zed_interfaces
  "/home/robotixx_user/human-pov-navigation/src/zed-ros-wrapper/zed-ros-interfaces/msg/Skeleton2D.msg"
  "${MSG_I_FLAGS}"
  "/home/robotixx_user/human-pov-navigation/src/zed-ros-wrapper/zed-ros-interfaces/msg/Keypoint2Df.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/zed_interfaces
)
_generate_msg_lisp(zed_interfaces
  "/home/robotixx_user/human-pov-navigation/src/zed-ros-wrapper/zed-ros-interfaces/msg/Skeleton3D.msg"
  "${MSG_I_FLAGS}"
  "/home/robotixx_user/human-pov-navigation/src/zed-ros-wrapper/zed-ros-interfaces/msg/Keypoint3D.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/zed_interfaces
)
_generate_msg_lisp(zed_interfaces
  "/home/robotixx_user/human-pov-navigation/src/zed-ros-wrapper/zed-ros-interfaces/msg/RGBDSensors.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/sensor_msgs/cmake/../msg/RegionOfInterest.msg;/opt/ros/noetic/share/sensor_msgs/cmake/../msg/CameraInfo.msg;/opt/ros/noetic/share/sensor_msgs/cmake/../msg/Image.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Vector3.msg;/opt/ros/noetic/share/sensor_msgs/cmake/../msg/MagneticField.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/noetic/share/sensor_msgs/cmake/../msg/Imu.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/zed_interfaces
)
_generate_msg_lisp(zed_interfaces
  "/home/robotixx_user/human-pov-navigation/src/zed-ros-wrapper/zed-ros-interfaces/msg/PlaneStamped.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/shape_msgs/cmake/../msg/MeshTriangle.msg;/opt/ros/noetic/share/shape_msgs/cmake/../msg/Mesh.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Transform.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Polygon.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Vector3.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/noetic/share/shape_msgs/cmake/../msg/Plane.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point32.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/zed_interfaces
)

### Generating Services
_generate_srv_lisp(zed_interfaces
  "/home/robotixx_user/human-pov-navigation/src/zed-ros-wrapper/zed-ros-interfaces/srv/set_pose.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/zed_interfaces
)
_generate_srv_lisp(zed_interfaces
  "/home/robotixx_user/human-pov-navigation/src/zed-ros-wrapper/zed-ros-interfaces/srv/reset_odometry.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/zed_interfaces
)
_generate_srv_lisp(zed_interfaces
  "/home/robotixx_user/human-pov-navigation/src/zed-ros-wrapper/zed-ros-interfaces/srv/reset_tracking.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/zed_interfaces
)
_generate_srv_lisp(zed_interfaces
  "/home/robotixx_user/human-pov-navigation/src/zed-ros-wrapper/zed-ros-interfaces/srv/start_svo_recording.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/zed_interfaces
)
_generate_srv_lisp(zed_interfaces
  "/home/robotixx_user/human-pov-navigation/src/zed-ros-wrapper/zed-ros-interfaces/srv/stop_svo_recording.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/zed_interfaces
)
_generate_srv_lisp(zed_interfaces
  "/home/robotixx_user/human-pov-navigation/src/zed-ros-wrapper/zed-ros-interfaces/srv/start_remote_stream.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/zed_interfaces
)
_generate_srv_lisp(zed_interfaces
  "/home/robotixx_user/human-pov-navigation/src/zed-ros-wrapper/zed-ros-interfaces/srv/stop_remote_stream.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/zed_interfaces
)
_generate_srv_lisp(zed_interfaces
  "/home/robotixx_user/human-pov-navigation/src/zed-ros-wrapper/zed-ros-interfaces/srv/set_led_status.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/zed_interfaces
)
_generate_srv_lisp(zed_interfaces
  "/home/robotixx_user/human-pov-navigation/src/zed-ros-wrapper/zed-ros-interfaces/srv/toggle_led.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/zed_interfaces
)
_generate_srv_lisp(zed_interfaces
  "/home/robotixx_user/human-pov-navigation/src/zed-ros-wrapper/zed-ros-interfaces/srv/start_3d_mapping.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/zed_interfaces
)
_generate_srv_lisp(zed_interfaces
  "/home/robotixx_user/human-pov-navigation/src/zed-ros-wrapper/zed-ros-interfaces/srv/stop_3d_mapping.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/zed_interfaces
)
_generate_srv_lisp(zed_interfaces
  "/home/robotixx_user/human-pov-navigation/src/zed-ros-wrapper/zed-ros-interfaces/srv/save_3d_map.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/zed_interfaces
)
_generate_srv_lisp(zed_interfaces
  "/home/robotixx_user/human-pov-navigation/src/zed-ros-wrapper/zed-ros-interfaces/srv/start_object_detection.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/zed_interfaces
)
_generate_srv_lisp(zed_interfaces
  "/home/robotixx_user/human-pov-navigation/src/zed-ros-wrapper/zed-ros-interfaces/srv/stop_object_detection.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/zed_interfaces
)
_generate_srv_lisp(zed_interfaces
  "/home/robotixx_user/human-pov-navigation/src/zed-ros-wrapper/zed-ros-interfaces/srv/save_area_memory.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/zed_interfaces
)

### Generating Module File
_generate_module_lisp(zed_interfaces
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/zed_interfaces
  "${ALL_GEN_OUTPUT_FILES_lisp}"
)

add_custom_target(zed_interfaces_generate_messages_lisp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_lisp}
)
add_dependencies(zed_interfaces_generate_messages zed_interfaces_generate_messages_lisp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/robotixx_user/human-pov-navigation/src/zed-ros-wrapper/zed-ros-interfaces/msg/BoundingBox2Df.msg" NAME_WE)
add_dependencies(zed_interfaces_generate_messages_lisp _zed_interfaces_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/robotixx_user/human-pov-navigation/src/zed-ros-wrapper/zed-ros-interfaces/msg/BoundingBox2Di.msg" NAME_WE)
add_dependencies(zed_interfaces_generate_messages_lisp _zed_interfaces_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/robotixx_user/human-pov-navigation/src/zed-ros-wrapper/zed-ros-interfaces/msg/BoundingBox3D.msg" NAME_WE)
add_dependencies(zed_interfaces_generate_messages_lisp _zed_interfaces_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/robotixx_user/human-pov-navigation/src/zed-ros-wrapper/zed-ros-interfaces/msg/Keypoint2Df.msg" NAME_WE)
add_dependencies(zed_interfaces_generate_messages_lisp _zed_interfaces_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/robotixx_user/human-pov-navigation/src/zed-ros-wrapper/zed-ros-interfaces/msg/Keypoint2Di.msg" NAME_WE)
add_dependencies(zed_interfaces_generate_messages_lisp _zed_interfaces_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/robotixx_user/human-pov-navigation/src/zed-ros-wrapper/zed-ros-interfaces/msg/Keypoint3D.msg" NAME_WE)
add_dependencies(zed_interfaces_generate_messages_lisp _zed_interfaces_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/robotixx_user/human-pov-navigation/src/zed-ros-wrapper/zed-ros-interfaces/msg/Object.msg" NAME_WE)
add_dependencies(zed_interfaces_generate_messages_lisp _zed_interfaces_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/robotixx_user/human-pov-navigation/src/zed-ros-wrapper/zed-ros-interfaces/msg/ObjectsStamped.msg" NAME_WE)
add_dependencies(zed_interfaces_generate_messages_lisp _zed_interfaces_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/robotixx_user/human-pov-navigation/src/zed-ros-wrapper/zed-ros-interfaces/msg/Skeleton2D.msg" NAME_WE)
add_dependencies(zed_interfaces_generate_messages_lisp _zed_interfaces_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/robotixx_user/human-pov-navigation/src/zed-ros-wrapper/zed-ros-interfaces/msg/Skeleton3D.msg" NAME_WE)
add_dependencies(zed_interfaces_generate_messages_lisp _zed_interfaces_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/robotixx_user/human-pov-navigation/src/zed-ros-wrapper/zed-ros-interfaces/msg/RGBDSensors.msg" NAME_WE)
add_dependencies(zed_interfaces_generate_messages_lisp _zed_interfaces_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/robotixx_user/human-pov-navigation/src/zed-ros-wrapper/zed-ros-interfaces/msg/PlaneStamped.msg" NAME_WE)
add_dependencies(zed_interfaces_generate_messages_lisp _zed_interfaces_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/robotixx_user/human-pov-navigation/src/zed-ros-wrapper/zed-ros-interfaces/srv/set_pose.srv" NAME_WE)
add_dependencies(zed_interfaces_generate_messages_lisp _zed_interfaces_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/robotixx_user/human-pov-navigation/src/zed-ros-wrapper/zed-ros-interfaces/srv/reset_odometry.srv" NAME_WE)
add_dependencies(zed_interfaces_generate_messages_lisp _zed_interfaces_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/robotixx_user/human-pov-navigation/src/zed-ros-wrapper/zed-ros-interfaces/srv/reset_tracking.srv" NAME_WE)
add_dependencies(zed_interfaces_generate_messages_lisp _zed_interfaces_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/robotixx_user/human-pov-navigation/src/zed-ros-wrapper/zed-ros-interfaces/srv/start_svo_recording.srv" NAME_WE)
add_dependencies(zed_interfaces_generate_messages_lisp _zed_interfaces_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/robotixx_user/human-pov-navigation/src/zed-ros-wrapper/zed-ros-interfaces/srv/stop_svo_recording.srv" NAME_WE)
add_dependencies(zed_interfaces_generate_messages_lisp _zed_interfaces_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/robotixx_user/human-pov-navigation/src/zed-ros-wrapper/zed-ros-interfaces/srv/start_remote_stream.srv" NAME_WE)
add_dependencies(zed_interfaces_generate_messages_lisp _zed_interfaces_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/robotixx_user/human-pov-navigation/src/zed-ros-wrapper/zed-ros-interfaces/srv/stop_remote_stream.srv" NAME_WE)
add_dependencies(zed_interfaces_generate_messages_lisp _zed_interfaces_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/robotixx_user/human-pov-navigation/src/zed-ros-wrapper/zed-ros-interfaces/srv/set_led_status.srv" NAME_WE)
add_dependencies(zed_interfaces_generate_messages_lisp _zed_interfaces_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/robotixx_user/human-pov-navigation/src/zed-ros-wrapper/zed-ros-interfaces/srv/toggle_led.srv" NAME_WE)
add_dependencies(zed_interfaces_generate_messages_lisp _zed_interfaces_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/robotixx_user/human-pov-navigation/src/zed-ros-wrapper/zed-ros-interfaces/srv/start_3d_mapping.srv" NAME_WE)
add_dependencies(zed_interfaces_generate_messages_lisp _zed_interfaces_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/robotixx_user/human-pov-navigation/src/zed-ros-wrapper/zed-ros-interfaces/srv/stop_3d_mapping.srv" NAME_WE)
add_dependencies(zed_interfaces_generate_messages_lisp _zed_interfaces_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/robotixx_user/human-pov-navigation/src/zed-ros-wrapper/zed-ros-interfaces/srv/save_3d_map.srv" NAME_WE)
add_dependencies(zed_interfaces_generate_messages_lisp _zed_interfaces_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/robotixx_user/human-pov-navigation/src/zed-ros-wrapper/zed-ros-interfaces/srv/start_object_detection.srv" NAME_WE)
add_dependencies(zed_interfaces_generate_messages_lisp _zed_interfaces_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/robotixx_user/human-pov-navigation/src/zed-ros-wrapper/zed-ros-interfaces/srv/stop_object_detection.srv" NAME_WE)
add_dependencies(zed_interfaces_generate_messages_lisp _zed_interfaces_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/robotixx_user/human-pov-navigation/src/zed-ros-wrapper/zed-ros-interfaces/srv/save_area_memory.srv" NAME_WE)
add_dependencies(zed_interfaces_generate_messages_lisp _zed_interfaces_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(zed_interfaces_genlisp)
add_dependencies(zed_interfaces_genlisp zed_interfaces_generate_messages_lisp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS zed_interfaces_generate_messages_lisp)

### Section generating for lang: gennodejs
### Generating Messages
_generate_msg_nodejs(zed_interfaces
  "/home/robotixx_user/human-pov-navigation/src/zed-ros-wrapper/zed-ros-interfaces/msg/BoundingBox2Df.msg"
  "${MSG_I_FLAGS}"
  "/home/robotixx_user/human-pov-navigation/src/zed-ros-wrapper/zed-ros-interfaces/msg/Keypoint2Df.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/zed_interfaces
)
_generate_msg_nodejs(zed_interfaces
  "/home/robotixx_user/human-pov-navigation/src/zed-ros-wrapper/zed-ros-interfaces/msg/BoundingBox2Di.msg"
  "${MSG_I_FLAGS}"
  "/home/robotixx_user/human-pov-navigation/src/zed-ros-wrapper/zed-ros-interfaces/msg/Keypoint2Di.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/zed_interfaces
)
_generate_msg_nodejs(zed_interfaces
  "/home/robotixx_user/human-pov-navigation/src/zed-ros-wrapper/zed-ros-interfaces/msg/BoundingBox3D.msg"
  "${MSG_I_FLAGS}"
  "/home/robotixx_user/human-pov-navigation/src/zed-ros-wrapper/zed-ros-interfaces/msg/Keypoint3D.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/zed_interfaces
)
_generate_msg_nodejs(zed_interfaces
  "/home/robotixx_user/human-pov-navigation/src/zed-ros-wrapper/zed-ros-interfaces/msg/Keypoint2Df.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/zed_interfaces
)
_generate_msg_nodejs(zed_interfaces
  "/home/robotixx_user/human-pov-navigation/src/zed-ros-wrapper/zed-ros-interfaces/msg/Keypoint2Di.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/zed_interfaces
)
_generate_msg_nodejs(zed_interfaces
  "/home/robotixx_user/human-pov-navigation/src/zed-ros-wrapper/zed-ros-interfaces/msg/Keypoint3D.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/zed_interfaces
)
_generate_msg_nodejs(zed_interfaces
  "/home/robotixx_user/human-pov-navigation/src/zed-ros-wrapper/zed-ros-interfaces/msg/Object.msg"
  "${MSG_I_FLAGS}"
  "/home/robotixx_user/human-pov-navigation/src/zed-ros-wrapper/zed-ros-interfaces/msg/Skeleton2D.msg;/home/robotixx_user/human-pov-navigation/src/zed-ros-wrapper/zed-ros-interfaces/msg/BoundingBox2Df.msg;/home/robotixx_user/human-pov-navigation/src/zed-ros-wrapper/zed-ros-interfaces/msg/Keypoint2Df.msg;/home/robotixx_user/human-pov-navigation/src/zed-ros-wrapper/zed-ros-interfaces/msg/BoundingBox3D.msg;/home/robotixx_user/human-pov-navigation/src/zed-ros-wrapper/zed-ros-interfaces/msg/Keypoint3D.msg;/home/robotixx_user/human-pov-navigation/src/zed-ros-wrapper/zed-ros-interfaces/msg/Skeleton3D.msg;/home/robotixx_user/human-pov-navigation/src/zed-ros-wrapper/zed-ros-interfaces/msg/BoundingBox2Di.msg;/home/robotixx_user/human-pov-navigation/src/zed-ros-wrapper/zed-ros-interfaces/msg/Keypoint2Di.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/zed_interfaces
)
_generate_msg_nodejs(zed_interfaces
  "/home/robotixx_user/human-pov-navigation/src/zed-ros-wrapper/zed-ros-interfaces/msg/ObjectsStamped.msg"
  "${MSG_I_FLAGS}"
  "/home/robotixx_user/human-pov-navigation/src/zed-ros-wrapper/zed-ros-interfaces/msg/Skeleton2D.msg;/home/robotixx_user/human-pov-navigation/src/zed-ros-wrapper/zed-ros-interfaces/msg/BoundingBox2Df.msg;/home/robotixx_user/human-pov-navigation/src/zed-ros-wrapper/zed-ros-interfaces/msg/Keypoint2Df.msg;/home/robotixx_user/human-pov-navigation/src/zed-ros-wrapper/zed-ros-interfaces/msg/BoundingBox3D.msg;/home/robotixx_user/human-pov-navigation/src/zed-ros-wrapper/zed-ros-interfaces/msg/Keypoint3D.msg;/home/robotixx_user/human-pov-navigation/src/zed-ros-wrapper/zed-ros-interfaces/msg/Skeleton3D.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/home/robotixx_user/human-pov-navigation/src/zed-ros-wrapper/zed-ros-interfaces/msg/BoundingBox2Di.msg;/home/robotixx_user/human-pov-navigation/src/zed-ros-wrapper/zed-ros-interfaces/msg/Keypoint2Di.msg;/home/robotixx_user/human-pov-navigation/src/zed-ros-wrapper/zed-ros-interfaces/msg/Object.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/zed_interfaces
)
_generate_msg_nodejs(zed_interfaces
  "/home/robotixx_user/human-pov-navigation/src/zed-ros-wrapper/zed-ros-interfaces/msg/Skeleton2D.msg"
  "${MSG_I_FLAGS}"
  "/home/robotixx_user/human-pov-navigation/src/zed-ros-wrapper/zed-ros-interfaces/msg/Keypoint2Df.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/zed_interfaces
)
_generate_msg_nodejs(zed_interfaces
  "/home/robotixx_user/human-pov-navigation/src/zed-ros-wrapper/zed-ros-interfaces/msg/Skeleton3D.msg"
  "${MSG_I_FLAGS}"
  "/home/robotixx_user/human-pov-navigation/src/zed-ros-wrapper/zed-ros-interfaces/msg/Keypoint3D.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/zed_interfaces
)
_generate_msg_nodejs(zed_interfaces
  "/home/robotixx_user/human-pov-navigation/src/zed-ros-wrapper/zed-ros-interfaces/msg/RGBDSensors.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/sensor_msgs/cmake/../msg/RegionOfInterest.msg;/opt/ros/noetic/share/sensor_msgs/cmake/../msg/CameraInfo.msg;/opt/ros/noetic/share/sensor_msgs/cmake/../msg/Image.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Vector3.msg;/opt/ros/noetic/share/sensor_msgs/cmake/../msg/MagneticField.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/noetic/share/sensor_msgs/cmake/../msg/Imu.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/zed_interfaces
)
_generate_msg_nodejs(zed_interfaces
  "/home/robotixx_user/human-pov-navigation/src/zed-ros-wrapper/zed-ros-interfaces/msg/PlaneStamped.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/shape_msgs/cmake/../msg/MeshTriangle.msg;/opt/ros/noetic/share/shape_msgs/cmake/../msg/Mesh.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Transform.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Polygon.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Vector3.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/noetic/share/shape_msgs/cmake/../msg/Plane.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point32.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/zed_interfaces
)

### Generating Services
_generate_srv_nodejs(zed_interfaces
  "/home/robotixx_user/human-pov-navigation/src/zed-ros-wrapper/zed-ros-interfaces/srv/set_pose.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/zed_interfaces
)
_generate_srv_nodejs(zed_interfaces
  "/home/robotixx_user/human-pov-navigation/src/zed-ros-wrapper/zed-ros-interfaces/srv/reset_odometry.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/zed_interfaces
)
_generate_srv_nodejs(zed_interfaces
  "/home/robotixx_user/human-pov-navigation/src/zed-ros-wrapper/zed-ros-interfaces/srv/reset_tracking.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/zed_interfaces
)
_generate_srv_nodejs(zed_interfaces
  "/home/robotixx_user/human-pov-navigation/src/zed-ros-wrapper/zed-ros-interfaces/srv/start_svo_recording.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/zed_interfaces
)
_generate_srv_nodejs(zed_interfaces
  "/home/robotixx_user/human-pov-navigation/src/zed-ros-wrapper/zed-ros-interfaces/srv/stop_svo_recording.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/zed_interfaces
)
_generate_srv_nodejs(zed_interfaces
  "/home/robotixx_user/human-pov-navigation/src/zed-ros-wrapper/zed-ros-interfaces/srv/start_remote_stream.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/zed_interfaces
)
_generate_srv_nodejs(zed_interfaces
  "/home/robotixx_user/human-pov-navigation/src/zed-ros-wrapper/zed-ros-interfaces/srv/stop_remote_stream.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/zed_interfaces
)
_generate_srv_nodejs(zed_interfaces
  "/home/robotixx_user/human-pov-navigation/src/zed-ros-wrapper/zed-ros-interfaces/srv/set_led_status.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/zed_interfaces
)
_generate_srv_nodejs(zed_interfaces
  "/home/robotixx_user/human-pov-navigation/src/zed-ros-wrapper/zed-ros-interfaces/srv/toggle_led.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/zed_interfaces
)
_generate_srv_nodejs(zed_interfaces
  "/home/robotixx_user/human-pov-navigation/src/zed-ros-wrapper/zed-ros-interfaces/srv/start_3d_mapping.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/zed_interfaces
)
_generate_srv_nodejs(zed_interfaces
  "/home/robotixx_user/human-pov-navigation/src/zed-ros-wrapper/zed-ros-interfaces/srv/stop_3d_mapping.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/zed_interfaces
)
_generate_srv_nodejs(zed_interfaces
  "/home/robotixx_user/human-pov-navigation/src/zed-ros-wrapper/zed-ros-interfaces/srv/save_3d_map.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/zed_interfaces
)
_generate_srv_nodejs(zed_interfaces
  "/home/robotixx_user/human-pov-navigation/src/zed-ros-wrapper/zed-ros-interfaces/srv/start_object_detection.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/zed_interfaces
)
_generate_srv_nodejs(zed_interfaces
  "/home/robotixx_user/human-pov-navigation/src/zed-ros-wrapper/zed-ros-interfaces/srv/stop_object_detection.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/zed_interfaces
)
_generate_srv_nodejs(zed_interfaces
  "/home/robotixx_user/human-pov-navigation/src/zed-ros-wrapper/zed-ros-interfaces/srv/save_area_memory.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/zed_interfaces
)

### Generating Module File
_generate_module_nodejs(zed_interfaces
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/zed_interfaces
  "${ALL_GEN_OUTPUT_FILES_nodejs}"
)

add_custom_target(zed_interfaces_generate_messages_nodejs
  DEPENDS ${ALL_GEN_OUTPUT_FILES_nodejs}
)
add_dependencies(zed_interfaces_generate_messages zed_interfaces_generate_messages_nodejs)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/robotixx_user/human-pov-navigation/src/zed-ros-wrapper/zed-ros-interfaces/msg/BoundingBox2Df.msg" NAME_WE)
add_dependencies(zed_interfaces_generate_messages_nodejs _zed_interfaces_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/robotixx_user/human-pov-navigation/src/zed-ros-wrapper/zed-ros-interfaces/msg/BoundingBox2Di.msg" NAME_WE)
add_dependencies(zed_interfaces_generate_messages_nodejs _zed_interfaces_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/robotixx_user/human-pov-navigation/src/zed-ros-wrapper/zed-ros-interfaces/msg/BoundingBox3D.msg" NAME_WE)
add_dependencies(zed_interfaces_generate_messages_nodejs _zed_interfaces_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/robotixx_user/human-pov-navigation/src/zed-ros-wrapper/zed-ros-interfaces/msg/Keypoint2Df.msg" NAME_WE)
add_dependencies(zed_interfaces_generate_messages_nodejs _zed_interfaces_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/robotixx_user/human-pov-navigation/src/zed-ros-wrapper/zed-ros-interfaces/msg/Keypoint2Di.msg" NAME_WE)
add_dependencies(zed_interfaces_generate_messages_nodejs _zed_interfaces_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/robotixx_user/human-pov-navigation/src/zed-ros-wrapper/zed-ros-interfaces/msg/Keypoint3D.msg" NAME_WE)
add_dependencies(zed_interfaces_generate_messages_nodejs _zed_interfaces_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/robotixx_user/human-pov-navigation/src/zed-ros-wrapper/zed-ros-interfaces/msg/Object.msg" NAME_WE)
add_dependencies(zed_interfaces_generate_messages_nodejs _zed_interfaces_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/robotixx_user/human-pov-navigation/src/zed-ros-wrapper/zed-ros-interfaces/msg/ObjectsStamped.msg" NAME_WE)
add_dependencies(zed_interfaces_generate_messages_nodejs _zed_interfaces_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/robotixx_user/human-pov-navigation/src/zed-ros-wrapper/zed-ros-interfaces/msg/Skeleton2D.msg" NAME_WE)
add_dependencies(zed_interfaces_generate_messages_nodejs _zed_interfaces_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/robotixx_user/human-pov-navigation/src/zed-ros-wrapper/zed-ros-interfaces/msg/Skeleton3D.msg" NAME_WE)
add_dependencies(zed_interfaces_generate_messages_nodejs _zed_interfaces_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/robotixx_user/human-pov-navigation/src/zed-ros-wrapper/zed-ros-interfaces/msg/RGBDSensors.msg" NAME_WE)
add_dependencies(zed_interfaces_generate_messages_nodejs _zed_interfaces_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/robotixx_user/human-pov-navigation/src/zed-ros-wrapper/zed-ros-interfaces/msg/PlaneStamped.msg" NAME_WE)
add_dependencies(zed_interfaces_generate_messages_nodejs _zed_interfaces_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/robotixx_user/human-pov-navigation/src/zed-ros-wrapper/zed-ros-interfaces/srv/set_pose.srv" NAME_WE)
add_dependencies(zed_interfaces_generate_messages_nodejs _zed_interfaces_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/robotixx_user/human-pov-navigation/src/zed-ros-wrapper/zed-ros-interfaces/srv/reset_odometry.srv" NAME_WE)
add_dependencies(zed_interfaces_generate_messages_nodejs _zed_interfaces_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/robotixx_user/human-pov-navigation/src/zed-ros-wrapper/zed-ros-interfaces/srv/reset_tracking.srv" NAME_WE)
add_dependencies(zed_interfaces_generate_messages_nodejs _zed_interfaces_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/robotixx_user/human-pov-navigation/src/zed-ros-wrapper/zed-ros-interfaces/srv/start_svo_recording.srv" NAME_WE)
add_dependencies(zed_interfaces_generate_messages_nodejs _zed_interfaces_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/robotixx_user/human-pov-navigation/src/zed-ros-wrapper/zed-ros-interfaces/srv/stop_svo_recording.srv" NAME_WE)
add_dependencies(zed_interfaces_generate_messages_nodejs _zed_interfaces_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/robotixx_user/human-pov-navigation/src/zed-ros-wrapper/zed-ros-interfaces/srv/start_remote_stream.srv" NAME_WE)
add_dependencies(zed_interfaces_generate_messages_nodejs _zed_interfaces_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/robotixx_user/human-pov-navigation/src/zed-ros-wrapper/zed-ros-interfaces/srv/stop_remote_stream.srv" NAME_WE)
add_dependencies(zed_interfaces_generate_messages_nodejs _zed_interfaces_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/robotixx_user/human-pov-navigation/src/zed-ros-wrapper/zed-ros-interfaces/srv/set_led_status.srv" NAME_WE)
add_dependencies(zed_interfaces_generate_messages_nodejs _zed_interfaces_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/robotixx_user/human-pov-navigation/src/zed-ros-wrapper/zed-ros-interfaces/srv/toggle_led.srv" NAME_WE)
add_dependencies(zed_interfaces_generate_messages_nodejs _zed_interfaces_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/robotixx_user/human-pov-navigation/src/zed-ros-wrapper/zed-ros-interfaces/srv/start_3d_mapping.srv" NAME_WE)
add_dependencies(zed_interfaces_generate_messages_nodejs _zed_interfaces_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/robotixx_user/human-pov-navigation/src/zed-ros-wrapper/zed-ros-interfaces/srv/stop_3d_mapping.srv" NAME_WE)
add_dependencies(zed_interfaces_generate_messages_nodejs _zed_interfaces_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/robotixx_user/human-pov-navigation/src/zed-ros-wrapper/zed-ros-interfaces/srv/save_3d_map.srv" NAME_WE)
add_dependencies(zed_interfaces_generate_messages_nodejs _zed_interfaces_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/robotixx_user/human-pov-navigation/src/zed-ros-wrapper/zed-ros-interfaces/srv/start_object_detection.srv" NAME_WE)
add_dependencies(zed_interfaces_generate_messages_nodejs _zed_interfaces_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/robotixx_user/human-pov-navigation/src/zed-ros-wrapper/zed-ros-interfaces/srv/stop_object_detection.srv" NAME_WE)
add_dependencies(zed_interfaces_generate_messages_nodejs _zed_interfaces_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/robotixx_user/human-pov-navigation/src/zed-ros-wrapper/zed-ros-interfaces/srv/save_area_memory.srv" NAME_WE)
add_dependencies(zed_interfaces_generate_messages_nodejs _zed_interfaces_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(zed_interfaces_gennodejs)
add_dependencies(zed_interfaces_gennodejs zed_interfaces_generate_messages_nodejs)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS zed_interfaces_generate_messages_nodejs)

### Section generating for lang: genpy
### Generating Messages
_generate_msg_py(zed_interfaces
  "/home/robotixx_user/human-pov-navigation/src/zed-ros-wrapper/zed-ros-interfaces/msg/BoundingBox2Df.msg"
  "${MSG_I_FLAGS}"
  "/home/robotixx_user/human-pov-navigation/src/zed-ros-wrapper/zed-ros-interfaces/msg/Keypoint2Df.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/zed_interfaces
)
_generate_msg_py(zed_interfaces
  "/home/robotixx_user/human-pov-navigation/src/zed-ros-wrapper/zed-ros-interfaces/msg/BoundingBox2Di.msg"
  "${MSG_I_FLAGS}"
  "/home/robotixx_user/human-pov-navigation/src/zed-ros-wrapper/zed-ros-interfaces/msg/Keypoint2Di.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/zed_interfaces
)
_generate_msg_py(zed_interfaces
  "/home/robotixx_user/human-pov-navigation/src/zed-ros-wrapper/zed-ros-interfaces/msg/BoundingBox3D.msg"
  "${MSG_I_FLAGS}"
  "/home/robotixx_user/human-pov-navigation/src/zed-ros-wrapper/zed-ros-interfaces/msg/Keypoint3D.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/zed_interfaces
)
_generate_msg_py(zed_interfaces
  "/home/robotixx_user/human-pov-navigation/src/zed-ros-wrapper/zed-ros-interfaces/msg/Keypoint2Df.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/zed_interfaces
)
_generate_msg_py(zed_interfaces
  "/home/robotixx_user/human-pov-navigation/src/zed-ros-wrapper/zed-ros-interfaces/msg/Keypoint2Di.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/zed_interfaces
)
_generate_msg_py(zed_interfaces
  "/home/robotixx_user/human-pov-navigation/src/zed-ros-wrapper/zed-ros-interfaces/msg/Keypoint3D.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/zed_interfaces
)
_generate_msg_py(zed_interfaces
  "/home/robotixx_user/human-pov-navigation/src/zed-ros-wrapper/zed-ros-interfaces/msg/Object.msg"
  "${MSG_I_FLAGS}"
  "/home/robotixx_user/human-pov-navigation/src/zed-ros-wrapper/zed-ros-interfaces/msg/Skeleton2D.msg;/home/robotixx_user/human-pov-navigation/src/zed-ros-wrapper/zed-ros-interfaces/msg/BoundingBox2Df.msg;/home/robotixx_user/human-pov-navigation/src/zed-ros-wrapper/zed-ros-interfaces/msg/Keypoint2Df.msg;/home/robotixx_user/human-pov-navigation/src/zed-ros-wrapper/zed-ros-interfaces/msg/BoundingBox3D.msg;/home/robotixx_user/human-pov-navigation/src/zed-ros-wrapper/zed-ros-interfaces/msg/Keypoint3D.msg;/home/robotixx_user/human-pov-navigation/src/zed-ros-wrapper/zed-ros-interfaces/msg/Skeleton3D.msg;/home/robotixx_user/human-pov-navigation/src/zed-ros-wrapper/zed-ros-interfaces/msg/BoundingBox2Di.msg;/home/robotixx_user/human-pov-navigation/src/zed-ros-wrapper/zed-ros-interfaces/msg/Keypoint2Di.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/zed_interfaces
)
_generate_msg_py(zed_interfaces
  "/home/robotixx_user/human-pov-navigation/src/zed-ros-wrapper/zed-ros-interfaces/msg/ObjectsStamped.msg"
  "${MSG_I_FLAGS}"
  "/home/robotixx_user/human-pov-navigation/src/zed-ros-wrapper/zed-ros-interfaces/msg/Skeleton2D.msg;/home/robotixx_user/human-pov-navigation/src/zed-ros-wrapper/zed-ros-interfaces/msg/BoundingBox2Df.msg;/home/robotixx_user/human-pov-navigation/src/zed-ros-wrapper/zed-ros-interfaces/msg/Keypoint2Df.msg;/home/robotixx_user/human-pov-navigation/src/zed-ros-wrapper/zed-ros-interfaces/msg/BoundingBox3D.msg;/home/robotixx_user/human-pov-navigation/src/zed-ros-wrapper/zed-ros-interfaces/msg/Keypoint3D.msg;/home/robotixx_user/human-pov-navigation/src/zed-ros-wrapper/zed-ros-interfaces/msg/Skeleton3D.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/home/robotixx_user/human-pov-navigation/src/zed-ros-wrapper/zed-ros-interfaces/msg/BoundingBox2Di.msg;/home/robotixx_user/human-pov-navigation/src/zed-ros-wrapper/zed-ros-interfaces/msg/Keypoint2Di.msg;/home/robotixx_user/human-pov-navigation/src/zed-ros-wrapper/zed-ros-interfaces/msg/Object.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/zed_interfaces
)
_generate_msg_py(zed_interfaces
  "/home/robotixx_user/human-pov-navigation/src/zed-ros-wrapper/zed-ros-interfaces/msg/Skeleton2D.msg"
  "${MSG_I_FLAGS}"
  "/home/robotixx_user/human-pov-navigation/src/zed-ros-wrapper/zed-ros-interfaces/msg/Keypoint2Df.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/zed_interfaces
)
_generate_msg_py(zed_interfaces
  "/home/robotixx_user/human-pov-navigation/src/zed-ros-wrapper/zed-ros-interfaces/msg/Skeleton3D.msg"
  "${MSG_I_FLAGS}"
  "/home/robotixx_user/human-pov-navigation/src/zed-ros-wrapper/zed-ros-interfaces/msg/Keypoint3D.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/zed_interfaces
)
_generate_msg_py(zed_interfaces
  "/home/robotixx_user/human-pov-navigation/src/zed-ros-wrapper/zed-ros-interfaces/msg/RGBDSensors.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/sensor_msgs/cmake/../msg/RegionOfInterest.msg;/opt/ros/noetic/share/sensor_msgs/cmake/../msg/CameraInfo.msg;/opt/ros/noetic/share/sensor_msgs/cmake/../msg/Image.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Vector3.msg;/opt/ros/noetic/share/sensor_msgs/cmake/../msg/MagneticField.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/noetic/share/sensor_msgs/cmake/../msg/Imu.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/zed_interfaces
)
_generate_msg_py(zed_interfaces
  "/home/robotixx_user/human-pov-navigation/src/zed-ros-wrapper/zed-ros-interfaces/msg/PlaneStamped.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/shape_msgs/cmake/../msg/MeshTriangle.msg;/opt/ros/noetic/share/shape_msgs/cmake/../msg/Mesh.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Transform.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Polygon.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Vector3.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/noetic/share/shape_msgs/cmake/../msg/Plane.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point32.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/zed_interfaces
)

### Generating Services
_generate_srv_py(zed_interfaces
  "/home/robotixx_user/human-pov-navigation/src/zed-ros-wrapper/zed-ros-interfaces/srv/set_pose.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/zed_interfaces
)
_generate_srv_py(zed_interfaces
  "/home/robotixx_user/human-pov-navigation/src/zed-ros-wrapper/zed-ros-interfaces/srv/reset_odometry.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/zed_interfaces
)
_generate_srv_py(zed_interfaces
  "/home/robotixx_user/human-pov-navigation/src/zed-ros-wrapper/zed-ros-interfaces/srv/reset_tracking.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/zed_interfaces
)
_generate_srv_py(zed_interfaces
  "/home/robotixx_user/human-pov-navigation/src/zed-ros-wrapper/zed-ros-interfaces/srv/start_svo_recording.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/zed_interfaces
)
_generate_srv_py(zed_interfaces
  "/home/robotixx_user/human-pov-navigation/src/zed-ros-wrapper/zed-ros-interfaces/srv/stop_svo_recording.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/zed_interfaces
)
_generate_srv_py(zed_interfaces
  "/home/robotixx_user/human-pov-navigation/src/zed-ros-wrapper/zed-ros-interfaces/srv/start_remote_stream.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/zed_interfaces
)
_generate_srv_py(zed_interfaces
  "/home/robotixx_user/human-pov-navigation/src/zed-ros-wrapper/zed-ros-interfaces/srv/stop_remote_stream.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/zed_interfaces
)
_generate_srv_py(zed_interfaces
  "/home/robotixx_user/human-pov-navigation/src/zed-ros-wrapper/zed-ros-interfaces/srv/set_led_status.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/zed_interfaces
)
_generate_srv_py(zed_interfaces
  "/home/robotixx_user/human-pov-navigation/src/zed-ros-wrapper/zed-ros-interfaces/srv/toggle_led.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/zed_interfaces
)
_generate_srv_py(zed_interfaces
  "/home/robotixx_user/human-pov-navigation/src/zed-ros-wrapper/zed-ros-interfaces/srv/start_3d_mapping.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/zed_interfaces
)
_generate_srv_py(zed_interfaces
  "/home/robotixx_user/human-pov-navigation/src/zed-ros-wrapper/zed-ros-interfaces/srv/stop_3d_mapping.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/zed_interfaces
)
_generate_srv_py(zed_interfaces
  "/home/robotixx_user/human-pov-navigation/src/zed-ros-wrapper/zed-ros-interfaces/srv/save_3d_map.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/zed_interfaces
)
_generate_srv_py(zed_interfaces
  "/home/robotixx_user/human-pov-navigation/src/zed-ros-wrapper/zed-ros-interfaces/srv/start_object_detection.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/zed_interfaces
)
_generate_srv_py(zed_interfaces
  "/home/robotixx_user/human-pov-navigation/src/zed-ros-wrapper/zed-ros-interfaces/srv/stop_object_detection.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/zed_interfaces
)
_generate_srv_py(zed_interfaces
  "/home/robotixx_user/human-pov-navigation/src/zed-ros-wrapper/zed-ros-interfaces/srv/save_area_memory.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/zed_interfaces
)

### Generating Module File
_generate_module_py(zed_interfaces
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/zed_interfaces
  "${ALL_GEN_OUTPUT_FILES_py}"
)

add_custom_target(zed_interfaces_generate_messages_py
  DEPENDS ${ALL_GEN_OUTPUT_FILES_py}
)
add_dependencies(zed_interfaces_generate_messages zed_interfaces_generate_messages_py)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/robotixx_user/human-pov-navigation/src/zed-ros-wrapper/zed-ros-interfaces/msg/BoundingBox2Df.msg" NAME_WE)
add_dependencies(zed_interfaces_generate_messages_py _zed_interfaces_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/robotixx_user/human-pov-navigation/src/zed-ros-wrapper/zed-ros-interfaces/msg/BoundingBox2Di.msg" NAME_WE)
add_dependencies(zed_interfaces_generate_messages_py _zed_interfaces_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/robotixx_user/human-pov-navigation/src/zed-ros-wrapper/zed-ros-interfaces/msg/BoundingBox3D.msg" NAME_WE)
add_dependencies(zed_interfaces_generate_messages_py _zed_interfaces_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/robotixx_user/human-pov-navigation/src/zed-ros-wrapper/zed-ros-interfaces/msg/Keypoint2Df.msg" NAME_WE)
add_dependencies(zed_interfaces_generate_messages_py _zed_interfaces_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/robotixx_user/human-pov-navigation/src/zed-ros-wrapper/zed-ros-interfaces/msg/Keypoint2Di.msg" NAME_WE)
add_dependencies(zed_interfaces_generate_messages_py _zed_interfaces_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/robotixx_user/human-pov-navigation/src/zed-ros-wrapper/zed-ros-interfaces/msg/Keypoint3D.msg" NAME_WE)
add_dependencies(zed_interfaces_generate_messages_py _zed_interfaces_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/robotixx_user/human-pov-navigation/src/zed-ros-wrapper/zed-ros-interfaces/msg/Object.msg" NAME_WE)
add_dependencies(zed_interfaces_generate_messages_py _zed_interfaces_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/robotixx_user/human-pov-navigation/src/zed-ros-wrapper/zed-ros-interfaces/msg/ObjectsStamped.msg" NAME_WE)
add_dependencies(zed_interfaces_generate_messages_py _zed_interfaces_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/robotixx_user/human-pov-navigation/src/zed-ros-wrapper/zed-ros-interfaces/msg/Skeleton2D.msg" NAME_WE)
add_dependencies(zed_interfaces_generate_messages_py _zed_interfaces_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/robotixx_user/human-pov-navigation/src/zed-ros-wrapper/zed-ros-interfaces/msg/Skeleton3D.msg" NAME_WE)
add_dependencies(zed_interfaces_generate_messages_py _zed_interfaces_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/robotixx_user/human-pov-navigation/src/zed-ros-wrapper/zed-ros-interfaces/msg/RGBDSensors.msg" NAME_WE)
add_dependencies(zed_interfaces_generate_messages_py _zed_interfaces_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/robotixx_user/human-pov-navigation/src/zed-ros-wrapper/zed-ros-interfaces/msg/PlaneStamped.msg" NAME_WE)
add_dependencies(zed_interfaces_generate_messages_py _zed_interfaces_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/robotixx_user/human-pov-navigation/src/zed-ros-wrapper/zed-ros-interfaces/srv/set_pose.srv" NAME_WE)
add_dependencies(zed_interfaces_generate_messages_py _zed_interfaces_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/robotixx_user/human-pov-navigation/src/zed-ros-wrapper/zed-ros-interfaces/srv/reset_odometry.srv" NAME_WE)
add_dependencies(zed_interfaces_generate_messages_py _zed_interfaces_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/robotixx_user/human-pov-navigation/src/zed-ros-wrapper/zed-ros-interfaces/srv/reset_tracking.srv" NAME_WE)
add_dependencies(zed_interfaces_generate_messages_py _zed_interfaces_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/robotixx_user/human-pov-navigation/src/zed-ros-wrapper/zed-ros-interfaces/srv/start_svo_recording.srv" NAME_WE)
add_dependencies(zed_interfaces_generate_messages_py _zed_interfaces_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/robotixx_user/human-pov-navigation/src/zed-ros-wrapper/zed-ros-interfaces/srv/stop_svo_recording.srv" NAME_WE)
add_dependencies(zed_interfaces_generate_messages_py _zed_interfaces_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/robotixx_user/human-pov-navigation/src/zed-ros-wrapper/zed-ros-interfaces/srv/start_remote_stream.srv" NAME_WE)
add_dependencies(zed_interfaces_generate_messages_py _zed_interfaces_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/robotixx_user/human-pov-navigation/src/zed-ros-wrapper/zed-ros-interfaces/srv/stop_remote_stream.srv" NAME_WE)
add_dependencies(zed_interfaces_generate_messages_py _zed_interfaces_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/robotixx_user/human-pov-navigation/src/zed-ros-wrapper/zed-ros-interfaces/srv/set_led_status.srv" NAME_WE)
add_dependencies(zed_interfaces_generate_messages_py _zed_interfaces_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/robotixx_user/human-pov-navigation/src/zed-ros-wrapper/zed-ros-interfaces/srv/toggle_led.srv" NAME_WE)
add_dependencies(zed_interfaces_generate_messages_py _zed_interfaces_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/robotixx_user/human-pov-navigation/src/zed-ros-wrapper/zed-ros-interfaces/srv/start_3d_mapping.srv" NAME_WE)
add_dependencies(zed_interfaces_generate_messages_py _zed_interfaces_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/robotixx_user/human-pov-navigation/src/zed-ros-wrapper/zed-ros-interfaces/srv/stop_3d_mapping.srv" NAME_WE)
add_dependencies(zed_interfaces_generate_messages_py _zed_interfaces_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/robotixx_user/human-pov-navigation/src/zed-ros-wrapper/zed-ros-interfaces/srv/save_3d_map.srv" NAME_WE)
add_dependencies(zed_interfaces_generate_messages_py _zed_interfaces_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/robotixx_user/human-pov-navigation/src/zed-ros-wrapper/zed-ros-interfaces/srv/start_object_detection.srv" NAME_WE)
add_dependencies(zed_interfaces_generate_messages_py _zed_interfaces_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/robotixx_user/human-pov-navigation/src/zed-ros-wrapper/zed-ros-interfaces/srv/stop_object_detection.srv" NAME_WE)
add_dependencies(zed_interfaces_generate_messages_py _zed_interfaces_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/robotixx_user/human-pov-navigation/src/zed-ros-wrapper/zed-ros-interfaces/srv/save_area_memory.srv" NAME_WE)
add_dependencies(zed_interfaces_generate_messages_py _zed_interfaces_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(zed_interfaces_genpy)
add_dependencies(zed_interfaces_genpy zed_interfaces_generate_messages_py)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS zed_interfaces_generate_messages_py)



if(gencpp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/zed_interfaces)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/zed_interfaces
    DESTINATION ${gencpp_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_cpp)
  add_dependencies(zed_interfaces_generate_messages_cpp std_msgs_generate_messages_cpp)
endif()
if(TARGET geometry_msgs_generate_messages_cpp)
  add_dependencies(zed_interfaces_generate_messages_cpp geometry_msgs_generate_messages_cpp)
endif()
if(TARGET sensor_msgs_generate_messages_cpp)
  add_dependencies(zed_interfaces_generate_messages_cpp sensor_msgs_generate_messages_cpp)
endif()
if(TARGET shape_msgs_generate_messages_cpp)
  add_dependencies(zed_interfaces_generate_messages_cpp shape_msgs_generate_messages_cpp)
endif()

if(geneus_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/zed_interfaces)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/zed_interfaces
    DESTINATION ${geneus_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_eus)
  add_dependencies(zed_interfaces_generate_messages_eus std_msgs_generate_messages_eus)
endif()
if(TARGET geometry_msgs_generate_messages_eus)
  add_dependencies(zed_interfaces_generate_messages_eus geometry_msgs_generate_messages_eus)
endif()
if(TARGET sensor_msgs_generate_messages_eus)
  add_dependencies(zed_interfaces_generate_messages_eus sensor_msgs_generate_messages_eus)
endif()
if(TARGET shape_msgs_generate_messages_eus)
  add_dependencies(zed_interfaces_generate_messages_eus shape_msgs_generate_messages_eus)
endif()

if(genlisp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/zed_interfaces)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/zed_interfaces
    DESTINATION ${genlisp_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_lisp)
  add_dependencies(zed_interfaces_generate_messages_lisp std_msgs_generate_messages_lisp)
endif()
if(TARGET geometry_msgs_generate_messages_lisp)
  add_dependencies(zed_interfaces_generate_messages_lisp geometry_msgs_generate_messages_lisp)
endif()
if(TARGET sensor_msgs_generate_messages_lisp)
  add_dependencies(zed_interfaces_generate_messages_lisp sensor_msgs_generate_messages_lisp)
endif()
if(TARGET shape_msgs_generate_messages_lisp)
  add_dependencies(zed_interfaces_generate_messages_lisp shape_msgs_generate_messages_lisp)
endif()

if(gennodejs_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/zed_interfaces)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/zed_interfaces
    DESTINATION ${gennodejs_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_nodejs)
  add_dependencies(zed_interfaces_generate_messages_nodejs std_msgs_generate_messages_nodejs)
endif()
if(TARGET geometry_msgs_generate_messages_nodejs)
  add_dependencies(zed_interfaces_generate_messages_nodejs geometry_msgs_generate_messages_nodejs)
endif()
if(TARGET sensor_msgs_generate_messages_nodejs)
  add_dependencies(zed_interfaces_generate_messages_nodejs sensor_msgs_generate_messages_nodejs)
endif()
if(TARGET shape_msgs_generate_messages_nodejs)
  add_dependencies(zed_interfaces_generate_messages_nodejs shape_msgs_generate_messages_nodejs)
endif()

if(genpy_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/zed_interfaces)
  install(CODE "execute_process(COMMAND \"/usr/bin/python3\" -m compileall \"${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/zed_interfaces\")")
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/zed_interfaces
    DESTINATION ${genpy_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_py)
  add_dependencies(zed_interfaces_generate_messages_py std_msgs_generate_messages_py)
endif()
if(TARGET geometry_msgs_generate_messages_py)
  add_dependencies(zed_interfaces_generate_messages_py geometry_msgs_generate_messages_py)
endif()
if(TARGET sensor_msgs_generate_messages_py)
  add_dependencies(zed_interfaces_generate_messages_py sensor_msgs_generate_messages_py)
endif()
if(TARGET shape_msgs_generate_messages_py)
  add_dependencies(zed_interfaces_generate_messages_py shape_msgs_generate_messages_py)
endif()
