if (CMAKE_BUILD_TYPE MATCHES Debug)
    # 启用调试打印
    set(QT_WIN_DEBUG_CONSOLE new)
endif ()

if (MSVC)
    add_compile_options(/utf-8)
endif ()