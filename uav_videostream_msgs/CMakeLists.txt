cmake_minimum_required(VERSION 2.8.3)
project(uav_videostream_msgs)

set(MESSAGE_DEPS std_msgs)

find_package(catkin REQUIRED COMPONENTS
  ${MESSAGE_DEPS}
  common_db_msgs
  tradrdb_msgs
  message_generation
)

add_message_files(
   FILES
   Pose.msg
   VideoFormat.msg
   VideostreamData.msg
   VideostreamStartReq.msg
   VideostreamStartRsp.msg
   VideostreamStopReq.msg
)


generate_messages(DEPENDENCIES ${MESSAGE_DEPS})

catkin_package(CATKIN_DEPENDS ${MESSAGE_DEPS} message_runtime)
