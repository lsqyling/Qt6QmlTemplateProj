
set(qt6_runtime_command "${CMAKE_PREFIX_PATH}/bin/windeployqt${CMAKE_EXECUTABLE_SUFFIX}")
set(qt6_qml_imports_dir "${CMAKE_PREFIX_PATH}/qml")

add_custom_command(TARGET ${target_name} POST_BUILD
        COMMAND ${qt6_runtime_command} --qmldir ${qt6_qml_imports_dir} "${target_name}${CMAKE_EXECUTABLE_SUFFIX}"
        WORKING_DIRECTORY "$<TARGET_FILE_DIR:${target_name}>")

