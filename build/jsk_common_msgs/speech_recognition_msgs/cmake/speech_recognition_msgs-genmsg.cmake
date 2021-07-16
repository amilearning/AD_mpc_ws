# generated from genmsg/cmake/pkg-genmsg.cmake.em

message(STATUS "speech_recognition_msgs: 4 messages, 1 services")

set(MSG_I_FLAGS "-Ispeech_recognition_msgs:/home/hmcl/shared_dir/mpc_ws/src/jsk_common_msgs/speech_recognition_msgs/msg;-Istd_msgs:/opt/ros/melodic/share/std_msgs/cmake/../msg")

# Find all generators
find_package(gencpp REQUIRED)
find_package(geneus REQUIRED)
find_package(genlisp REQUIRED)
find_package(gennodejs REQUIRED)
find_package(genpy REQUIRED)

add_custom_target(speech_recognition_msgs_generate_messages ALL)

# verify that message/service dependencies have not changed since configure



get_filename_component(_filename "/home/hmcl/shared_dir/mpc_ws/src/jsk_common_msgs/speech_recognition_msgs/srv/SpeechRecognition.srv" NAME_WE)
add_custom_target(_speech_recognition_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "speech_recognition_msgs" "/home/hmcl/shared_dir/mpc_ws/src/jsk_common_msgs/speech_recognition_msgs/srv/SpeechRecognition.srv" "speech_recognition_msgs/Grammar:speech_recognition_msgs/PhraseRule:speech_recognition_msgs/SpeechRecognitionCandidates:speech_recognition_msgs/Vocabulary"
)

get_filename_component(_filename "/home/hmcl/shared_dir/mpc_ws/src/jsk_common_msgs/speech_recognition_msgs/msg/PhraseRule.msg" NAME_WE)
add_custom_target(_speech_recognition_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "speech_recognition_msgs" "/home/hmcl/shared_dir/mpc_ws/src/jsk_common_msgs/speech_recognition_msgs/msg/PhraseRule.msg" ""
)

get_filename_component(_filename "/home/hmcl/shared_dir/mpc_ws/src/jsk_common_msgs/speech_recognition_msgs/msg/SpeechRecognitionCandidates.msg" NAME_WE)
add_custom_target(_speech_recognition_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "speech_recognition_msgs" "/home/hmcl/shared_dir/mpc_ws/src/jsk_common_msgs/speech_recognition_msgs/msg/SpeechRecognitionCandidates.msg" ""
)

get_filename_component(_filename "/home/hmcl/shared_dir/mpc_ws/src/jsk_common_msgs/speech_recognition_msgs/msg/Grammar.msg" NAME_WE)
add_custom_target(_speech_recognition_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "speech_recognition_msgs" "/home/hmcl/shared_dir/mpc_ws/src/jsk_common_msgs/speech_recognition_msgs/msg/Grammar.msg" "speech_recognition_msgs/PhraseRule:speech_recognition_msgs/Vocabulary"
)

get_filename_component(_filename "/home/hmcl/shared_dir/mpc_ws/src/jsk_common_msgs/speech_recognition_msgs/msg/Vocabulary.msg" NAME_WE)
add_custom_target(_speech_recognition_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "speech_recognition_msgs" "/home/hmcl/shared_dir/mpc_ws/src/jsk_common_msgs/speech_recognition_msgs/msg/Vocabulary.msg" ""
)

#
#  langs = gencpp;geneus;genlisp;gennodejs;genpy
#

### Section generating for lang: gencpp
### Generating Messages
_generate_msg_cpp(speech_recognition_msgs
  "/home/hmcl/shared_dir/mpc_ws/src/jsk_common_msgs/speech_recognition_msgs/msg/PhraseRule.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/speech_recognition_msgs
)
_generate_msg_cpp(speech_recognition_msgs
  "/home/hmcl/shared_dir/mpc_ws/src/jsk_common_msgs/speech_recognition_msgs/msg/Vocabulary.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/speech_recognition_msgs
)
_generate_msg_cpp(speech_recognition_msgs
  "/home/hmcl/shared_dir/mpc_ws/src/jsk_common_msgs/speech_recognition_msgs/msg/Grammar.msg"
  "${MSG_I_FLAGS}"
  "/home/hmcl/shared_dir/mpc_ws/src/jsk_common_msgs/speech_recognition_msgs/msg/PhraseRule.msg;/home/hmcl/shared_dir/mpc_ws/src/jsk_common_msgs/speech_recognition_msgs/msg/Vocabulary.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/speech_recognition_msgs
)
_generate_msg_cpp(speech_recognition_msgs
  "/home/hmcl/shared_dir/mpc_ws/src/jsk_common_msgs/speech_recognition_msgs/msg/SpeechRecognitionCandidates.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/speech_recognition_msgs
)

### Generating Services
_generate_srv_cpp(speech_recognition_msgs
  "/home/hmcl/shared_dir/mpc_ws/src/jsk_common_msgs/speech_recognition_msgs/srv/SpeechRecognition.srv"
  "${MSG_I_FLAGS}"
  "/home/hmcl/shared_dir/mpc_ws/src/jsk_common_msgs/speech_recognition_msgs/msg/Grammar.msg;/home/hmcl/shared_dir/mpc_ws/src/jsk_common_msgs/speech_recognition_msgs/msg/PhraseRule.msg;/home/hmcl/shared_dir/mpc_ws/src/jsk_common_msgs/speech_recognition_msgs/msg/SpeechRecognitionCandidates.msg;/home/hmcl/shared_dir/mpc_ws/src/jsk_common_msgs/speech_recognition_msgs/msg/Vocabulary.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/speech_recognition_msgs
)

### Generating Module File
_generate_module_cpp(speech_recognition_msgs
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/speech_recognition_msgs
  "${ALL_GEN_OUTPUT_FILES_cpp}"
)

add_custom_target(speech_recognition_msgs_generate_messages_cpp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_cpp}
)
add_dependencies(speech_recognition_msgs_generate_messages speech_recognition_msgs_generate_messages_cpp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/hmcl/shared_dir/mpc_ws/src/jsk_common_msgs/speech_recognition_msgs/srv/SpeechRecognition.srv" NAME_WE)
add_dependencies(speech_recognition_msgs_generate_messages_cpp _speech_recognition_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/hmcl/shared_dir/mpc_ws/src/jsk_common_msgs/speech_recognition_msgs/msg/PhraseRule.msg" NAME_WE)
add_dependencies(speech_recognition_msgs_generate_messages_cpp _speech_recognition_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/hmcl/shared_dir/mpc_ws/src/jsk_common_msgs/speech_recognition_msgs/msg/SpeechRecognitionCandidates.msg" NAME_WE)
add_dependencies(speech_recognition_msgs_generate_messages_cpp _speech_recognition_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/hmcl/shared_dir/mpc_ws/src/jsk_common_msgs/speech_recognition_msgs/msg/Grammar.msg" NAME_WE)
add_dependencies(speech_recognition_msgs_generate_messages_cpp _speech_recognition_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/hmcl/shared_dir/mpc_ws/src/jsk_common_msgs/speech_recognition_msgs/msg/Vocabulary.msg" NAME_WE)
add_dependencies(speech_recognition_msgs_generate_messages_cpp _speech_recognition_msgs_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(speech_recognition_msgs_gencpp)
add_dependencies(speech_recognition_msgs_gencpp speech_recognition_msgs_generate_messages_cpp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS speech_recognition_msgs_generate_messages_cpp)

### Section generating for lang: geneus
### Generating Messages
_generate_msg_eus(speech_recognition_msgs
  "/home/hmcl/shared_dir/mpc_ws/src/jsk_common_msgs/speech_recognition_msgs/msg/PhraseRule.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/speech_recognition_msgs
)
_generate_msg_eus(speech_recognition_msgs
  "/home/hmcl/shared_dir/mpc_ws/src/jsk_common_msgs/speech_recognition_msgs/msg/Vocabulary.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/speech_recognition_msgs
)
_generate_msg_eus(speech_recognition_msgs
  "/home/hmcl/shared_dir/mpc_ws/src/jsk_common_msgs/speech_recognition_msgs/msg/Grammar.msg"
  "${MSG_I_FLAGS}"
  "/home/hmcl/shared_dir/mpc_ws/src/jsk_common_msgs/speech_recognition_msgs/msg/PhraseRule.msg;/home/hmcl/shared_dir/mpc_ws/src/jsk_common_msgs/speech_recognition_msgs/msg/Vocabulary.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/speech_recognition_msgs
)
_generate_msg_eus(speech_recognition_msgs
  "/home/hmcl/shared_dir/mpc_ws/src/jsk_common_msgs/speech_recognition_msgs/msg/SpeechRecognitionCandidates.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/speech_recognition_msgs
)

### Generating Services
_generate_srv_eus(speech_recognition_msgs
  "/home/hmcl/shared_dir/mpc_ws/src/jsk_common_msgs/speech_recognition_msgs/srv/SpeechRecognition.srv"
  "${MSG_I_FLAGS}"
  "/home/hmcl/shared_dir/mpc_ws/src/jsk_common_msgs/speech_recognition_msgs/msg/Grammar.msg;/home/hmcl/shared_dir/mpc_ws/src/jsk_common_msgs/speech_recognition_msgs/msg/PhraseRule.msg;/home/hmcl/shared_dir/mpc_ws/src/jsk_common_msgs/speech_recognition_msgs/msg/SpeechRecognitionCandidates.msg;/home/hmcl/shared_dir/mpc_ws/src/jsk_common_msgs/speech_recognition_msgs/msg/Vocabulary.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/speech_recognition_msgs
)

### Generating Module File
_generate_module_eus(speech_recognition_msgs
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/speech_recognition_msgs
  "${ALL_GEN_OUTPUT_FILES_eus}"
)

add_custom_target(speech_recognition_msgs_generate_messages_eus
  DEPENDS ${ALL_GEN_OUTPUT_FILES_eus}
)
add_dependencies(speech_recognition_msgs_generate_messages speech_recognition_msgs_generate_messages_eus)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/hmcl/shared_dir/mpc_ws/src/jsk_common_msgs/speech_recognition_msgs/srv/SpeechRecognition.srv" NAME_WE)
add_dependencies(speech_recognition_msgs_generate_messages_eus _speech_recognition_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/hmcl/shared_dir/mpc_ws/src/jsk_common_msgs/speech_recognition_msgs/msg/PhraseRule.msg" NAME_WE)
add_dependencies(speech_recognition_msgs_generate_messages_eus _speech_recognition_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/hmcl/shared_dir/mpc_ws/src/jsk_common_msgs/speech_recognition_msgs/msg/SpeechRecognitionCandidates.msg" NAME_WE)
add_dependencies(speech_recognition_msgs_generate_messages_eus _speech_recognition_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/hmcl/shared_dir/mpc_ws/src/jsk_common_msgs/speech_recognition_msgs/msg/Grammar.msg" NAME_WE)
add_dependencies(speech_recognition_msgs_generate_messages_eus _speech_recognition_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/hmcl/shared_dir/mpc_ws/src/jsk_common_msgs/speech_recognition_msgs/msg/Vocabulary.msg" NAME_WE)
add_dependencies(speech_recognition_msgs_generate_messages_eus _speech_recognition_msgs_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(speech_recognition_msgs_geneus)
add_dependencies(speech_recognition_msgs_geneus speech_recognition_msgs_generate_messages_eus)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS speech_recognition_msgs_generate_messages_eus)

### Section generating for lang: genlisp
### Generating Messages
_generate_msg_lisp(speech_recognition_msgs
  "/home/hmcl/shared_dir/mpc_ws/src/jsk_common_msgs/speech_recognition_msgs/msg/PhraseRule.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/speech_recognition_msgs
)
_generate_msg_lisp(speech_recognition_msgs
  "/home/hmcl/shared_dir/mpc_ws/src/jsk_common_msgs/speech_recognition_msgs/msg/Vocabulary.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/speech_recognition_msgs
)
_generate_msg_lisp(speech_recognition_msgs
  "/home/hmcl/shared_dir/mpc_ws/src/jsk_common_msgs/speech_recognition_msgs/msg/Grammar.msg"
  "${MSG_I_FLAGS}"
  "/home/hmcl/shared_dir/mpc_ws/src/jsk_common_msgs/speech_recognition_msgs/msg/PhraseRule.msg;/home/hmcl/shared_dir/mpc_ws/src/jsk_common_msgs/speech_recognition_msgs/msg/Vocabulary.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/speech_recognition_msgs
)
_generate_msg_lisp(speech_recognition_msgs
  "/home/hmcl/shared_dir/mpc_ws/src/jsk_common_msgs/speech_recognition_msgs/msg/SpeechRecognitionCandidates.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/speech_recognition_msgs
)

### Generating Services
_generate_srv_lisp(speech_recognition_msgs
  "/home/hmcl/shared_dir/mpc_ws/src/jsk_common_msgs/speech_recognition_msgs/srv/SpeechRecognition.srv"
  "${MSG_I_FLAGS}"
  "/home/hmcl/shared_dir/mpc_ws/src/jsk_common_msgs/speech_recognition_msgs/msg/Grammar.msg;/home/hmcl/shared_dir/mpc_ws/src/jsk_common_msgs/speech_recognition_msgs/msg/PhraseRule.msg;/home/hmcl/shared_dir/mpc_ws/src/jsk_common_msgs/speech_recognition_msgs/msg/SpeechRecognitionCandidates.msg;/home/hmcl/shared_dir/mpc_ws/src/jsk_common_msgs/speech_recognition_msgs/msg/Vocabulary.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/speech_recognition_msgs
)

### Generating Module File
_generate_module_lisp(speech_recognition_msgs
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/speech_recognition_msgs
  "${ALL_GEN_OUTPUT_FILES_lisp}"
)

add_custom_target(speech_recognition_msgs_generate_messages_lisp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_lisp}
)
add_dependencies(speech_recognition_msgs_generate_messages speech_recognition_msgs_generate_messages_lisp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/hmcl/shared_dir/mpc_ws/src/jsk_common_msgs/speech_recognition_msgs/srv/SpeechRecognition.srv" NAME_WE)
add_dependencies(speech_recognition_msgs_generate_messages_lisp _speech_recognition_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/hmcl/shared_dir/mpc_ws/src/jsk_common_msgs/speech_recognition_msgs/msg/PhraseRule.msg" NAME_WE)
add_dependencies(speech_recognition_msgs_generate_messages_lisp _speech_recognition_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/hmcl/shared_dir/mpc_ws/src/jsk_common_msgs/speech_recognition_msgs/msg/SpeechRecognitionCandidates.msg" NAME_WE)
add_dependencies(speech_recognition_msgs_generate_messages_lisp _speech_recognition_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/hmcl/shared_dir/mpc_ws/src/jsk_common_msgs/speech_recognition_msgs/msg/Grammar.msg" NAME_WE)
add_dependencies(speech_recognition_msgs_generate_messages_lisp _speech_recognition_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/hmcl/shared_dir/mpc_ws/src/jsk_common_msgs/speech_recognition_msgs/msg/Vocabulary.msg" NAME_WE)
add_dependencies(speech_recognition_msgs_generate_messages_lisp _speech_recognition_msgs_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(speech_recognition_msgs_genlisp)
add_dependencies(speech_recognition_msgs_genlisp speech_recognition_msgs_generate_messages_lisp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS speech_recognition_msgs_generate_messages_lisp)

### Section generating for lang: gennodejs
### Generating Messages
_generate_msg_nodejs(speech_recognition_msgs
  "/home/hmcl/shared_dir/mpc_ws/src/jsk_common_msgs/speech_recognition_msgs/msg/PhraseRule.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/speech_recognition_msgs
)
_generate_msg_nodejs(speech_recognition_msgs
  "/home/hmcl/shared_dir/mpc_ws/src/jsk_common_msgs/speech_recognition_msgs/msg/Vocabulary.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/speech_recognition_msgs
)
_generate_msg_nodejs(speech_recognition_msgs
  "/home/hmcl/shared_dir/mpc_ws/src/jsk_common_msgs/speech_recognition_msgs/msg/Grammar.msg"
  "${MSG_I_FLAGS}"
  "/home/hmcl/shared_dir/mpc_ws/src/jsk_common_msgs/speech_recognition_msgs/msg/PhraseRule.msg;/home/hmcl/shared_dir/mpc_ws/src/jsk_common_msgs/speech_recognition_msgs/msg/Vocabulary.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/speech_recognition_msgs
)
_generate_msg_nodejs(speech_recognition_msgs
  "/home/hmcl/shared_dir/mpc_ws/src/jsk_common_msgs/speech_recognition_msgs/msg/SpeechRecognitionCandidates.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/speech_recognition_msgs
)

### Generating Services
_generate_srv_nodejs(speech_recognition_msgs
  "/home/hmcl/shared_dir/mpc_ws/src/jsk_common_msgs/speech_recognition_msgs/srv/SpeechRecognition.srv"
  "${MSG_I_FLAGS}"
  "/home/hmcl/shared_dir/mpc_ws/src/jsk_common_msgs/speech_recognition_msgs/msg/Grammar.msg;/home/hmcl/shared_dir/mpc_ws/src/jsk_common_msgs/speech_recognition_msgs/msg/PhraseRule.msg;/home/hmcl/shared_dir/mpc_ws/src/jsk_common_msgs/speech_recognition_msgs/msg/SpeechRecognitionCandidates.msg;/home/hmcl/shared_dir/mpc_ws/src/jsk_common_msgs/speech_recognition_msgs/msg/Vocabulary.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/speech_recognition_msgs
)

### Generating Module File
_generate_module_nodejs(speech_recognition_msgs
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/speech_recognition_msgs
  "${ALL_GEN_OUTPUT_FILES_nodejs}"
)

add_custom_target(speech_recognition_msgs_generate_messages_nodejs
  DEPENDS ${ALL_GEN_OUTPUT_FILES_nodejs}
)
add_dependencies(speech_recognition_msgs_generate_messages speech_recognition_msgs_generate_messages_nodejs)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/hmcl/shared_dir/mpc_ws/src/jsk_common_msgs/speech_recognition_msgs/srv/SpeechRecognition.srv" NAME_WE)
add_dependencies(speech_recognition_msgs_generate_messages_nodejs _speech_recognition_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/hmcl/shared_dir/mpc_ws/src/jsk_common_msgs/speech_recognition_msgs/msg/PhraseRule.msg" NAME_WE)
add_dependencies(speech_recognition_msgs_generate_messages_nodejs _speech_recognition_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/hmcl/shared_dir/mpc_ws/src/jsk_common_msgs/speech_recognition_msgs/msg/SpeechRecognitionCandidates.msg" NAME_WE)
add_dependencies(speech_recognition_msgs_generate_messages_nodejs _speech_recognition_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/hmcl/shared_dir/mpc_ws/src/jsk_common_msgs/speech_recognition_msgs/msg/Grammar.msg" NAME_WE)
add_dependencies(speech_recognition_msgs_generate_messages_nodejs _speech_recognition_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/hmcl/shared_dir/mpc_ws/src/jsk_common_msgs/speech_recognition_msgs/msg/Vocabulary.msg" NAME_WE)
add_dependencies(speech_recognition_msgs_generate_messages_nodejs _speech_recognition_msgs_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(speech_recognition_msgs_gennodejs)
add_dependencies(speech_recognition_msgs_gennodejs speech_recognition_msgs_generate_messages_nodejs)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS speech_recognition_msgs_generate_messages_nodejs)

### Section generating for lang: genpy
### Generating Messages
_generate_msg_py(speech_recognition_msgs
  "/home/hmcl/shared_dir/mpc_ws/src/jsk_common_msgs/speech_recognition_msgs/msg/PhraseRule.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/speech_recognition_msgs
)
_generate_msg_py(speech_recognition_msgs
  "/home/hmcl/shared_dir/mpc_ws/src/jsk_common_msgs/speech_recognition_msgs/msg/Vocabulary.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/speech_recognition_msgs
)
_generate_msg_py(speech_recognition_msgs
  "/home/hmcl/shared_dir/mpc_ws/src/jsk_common_msgs/speech_recognition_msgs/msg/Grammar.msg"
  "${MSG_I_FLAGS}"
  "/home/hmcl/shared_dir/mpc_ws/src/jsk_common_msgs/speech_recognition_msgs/msg/PhraseRule.msg;/home/hmcl/shared_dir/mpc_ws/src/jsk_common_msgs/speech_recognition_msgs/msg/Vocabulary.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/speech_recognition_msgs
)
_generate_msg_py(speech_recognition_msgs
  "/home/hmcl/shared_dir/mpc_ws/src/jsk_common_msgs/speech_recognition_msgs/msg/SpeechRecognitionCandidates.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/speech_recognition_msgs
)

### Generating Services
_generate_srv_py(speech_recognition_msgs
  "/home/hmcl/shared_dir/mpc_ws/src/jsk_common_msgs/speech_recognition_msgs/srv/SpeechRecognition.srv"
  "${MSG_I_FLAGS}"
  "/home/hmcl/shared_dir/mpc_ws/src/jsk_common_msgs/speech_recognition_msgs/msg/Grammar.msg;/home/hmcl/shared_dir/mpc_ws/src/jsk_common_msgs/speech_recognition_msgs/msg/PhraseRule.msg;/home/hmcl/shared_dir/mpc_ws/src/jsk_common_msgs/speech_recognition_msgs/msg/SpeechRecognitionCandidates.msg;/home/hmcl/shared_dir/mpc_ws/src/jsk_common_msgs/speech_recognition_msgs/msg/Vocabulary.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/speech_recognition_msgs
)

### Generating Module File
_generate_module_py(speech_recognition_msgs
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/speech_recognition_msgs
  "${ALL_GEN_OUTPUT_FILES_py}"
)

add_custom_target(speech_recognition_msgs_generate_messages_py
  DEPENDS ${ALL_GEN_OUTPUT_FILES_py}
)
add_dependencies(speech_recognition_msgs_generate_messages speech_recognition_msgs_generate_messages_py)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/hmcl/shared_dir/mpc_ws/src/jsk_common_msgs/speech_recognition_msgs/srv/SpeechRecognition.srv" NAME_WE)
add_dependencies(speech_recognition_msgs_generate_messages_py _speech_recognition_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/hmcl/shared_dir/mpc_ws/src/jsk_common_msgs/speech_recognition_msgs/msg/PhraseRule.msg" NAME_WE)
add_dependencies(speech_recognition_msgs_generate_messages_py _speech_recognition_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/hmcl/shared_dir/mpc_ws/src/jsk_common_msgs/speech_recognition_msgs/msg/SpeechRecognitionCandidates.msg" NAME_WE)
add_dependencies(speech_recognition_msgs_generate_messages_py _speech_recognition_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/hmcl/shared_dir/mpc_ws/src/jsk_common_msgs/speech_recognition_msgs/msg/Grammar.msg" NAME_WE)
add_dependencies(speech_recognition_msgs_generate_messages_py _speech_recognition_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/hmcl/shared_dir/mpc_ws/src/jsk_common_msgs/speech_recognition_msgs/msg/Vocabulary.msg" NAME_WE)
add_dependencies(speech_recognition_msgs_generate_messages_py _speech_recognition_msgs_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(speech_recognition_msgs_genpy)
add_dependencies(speech_recognition_msgs_genpy speech_recognition_msgs_generate_messages_py)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS speech_recognition_msgs_generate_messages_py)



if(gencpp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/speech_recognition_msgs)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/speech_recognition_msgs
    DESTINATION ${gencpp_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_cpp)
  add_dependencies(speech_recognition_msgs_generate_messages_cpp std_msgs_generate_messages_cpp)
endif()

if(geneus_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/speech_recognition_msgs)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/speech_recognition_msgs
    DESTINATION ${geneus_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_eus)
  add_dependencies(speech_recognition_msgs_generate_messages_eus std_msgs_generate_messages_eus)
endif()

if(genlisp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/speech_recognition_msgs)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/speech_recognition_msgs
    DESTINATION ${genlisp_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_lisp)
  add_dependencies(speech_recognition_msgs_generate_messages_lisp std_msgs_generate_messages_lisp)
endif()

if(gennodejs_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/speech_recognition_msgs)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/speech_recognition_msgs
    DESTINATION ${gennodejs_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_nodejs)
  add_dependencies(speech_recognition_msgs_generate_messages_nodejs std_msgs_generate_messages_nodejs)
endif()

if(genpy_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/speech_recognition_msgs)
  install(CODE "execute_process(COMMAND \"/usr/bin/python2\" -m compileall \"${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/speech_recognition_msgs\")")
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/speech_recognition_msgs
    DESTINATION ${genpy_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_py)
  add_dependencies(speech_recognition_msgs_generate_messages_py std_msgs_generate_messages_py)
endif()
