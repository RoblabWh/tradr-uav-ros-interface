cmake_minimum_required(VERSION 2.8.3)
project(bridge_path_interface_msgs)

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
   CameraSettings.msg
   FotoAction.msg
   Waypoint.msg
   Task.msg
   TaskReq.msg

   TaskAck.msg

   TaskStatus.msg
   WaypointStatus.msg
   ActionStatus.msg
   TaskFeedback.msg

   TaskControl.msg

   TaskFin.msg

   Velocity.msg
   CurrentWork.msg
   Status.msg

   OrientationBoundaries.msg
   VideoFormat.msg
   StreamSettingsCapabilities.msg
   PhotoSettingsCapabilities.msg
   Camera.msg
   UavBoundaries.msg
   UavCapabilities.msg
   UavIdent.msg

   UavState.msg

   RegistrationNotification.msg
   RegistrationList.msg
)

add_service_files(
    FILES

    GetRegistrationList.srv
    GetUavIdent.srv
    GetUavState.srv
)

add_tradrdb_msg(Task bridge_path_interface_msgs Task)

register_tradrdb_msg_files()

generate_messages(DEPENDENCIES ${MESSAGE_DEPS})

catkin_package(
	CATKIN_DEPENDS ${MESSAGE_DEPS} 	message_runtime
)
