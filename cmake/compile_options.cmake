if (NOT CMAKE_BUILD_TYPE)
    set(CMAKE_BUILD_TYPE Debug)
endif ()
message(STATUS "Build type: ${CMAKE_BUILD_TYPE}")
if (CMAKE_BUILD_TYPE MATCHES Debug)
    # 启用调试打印
    set(QT_WIN_DEBUG_CONSOLE new)
    # 启用 QML 导入加载机制的调试输出
#    add_compile_definitions(QT_QML_DEBUG)
endif ()

if (MSVC)
    add_compile_options(/utf-8)
endif ()