cmake_minimum_required(VERSION 3.16)

project(Qt6QmlTemplateProj VERSION 1.0 LANGUAGES CXX)

set(CMAKE_CXX_STANDARD 17)
set(CMAKE_CXX_STANDARD_REQUIRED ON)

set(CMAKE_PREFIX_PATH  D:/dev/tools/Qt/6.5.2/msvc2019_64)

find_package(Qt6 6.5 REQUIRED COMPONENTS Quick)

qt_standard_project_setup(REQUIRES 6.5)

set(target_name appQmlDemo)
qt_add_executable(${target_name}
    main.cpp
)
target_compile_definitions(${target_name} PRIVATE QT_QML_DEBUG)

qt_add_qml_module(${target_name}
    URI QmlDemo
    VERSION 1.0
    QML_FILES Main.qml
)

# Qt for iOS sets MACOSX_BUNDLE_GUI_IDENTIFIER automatically since Qt 6.1.
# If you are developing for iOS or macOS you should consider setting an
# explicit, fixed bundle identifier manually though.
set_target_properties(${target_name} PROPERTIES
    MACOSX_BUNDLE_BUNDLE_VERSION ${PROJECT_VERSION}
    MACOSX_BUNDLE_SHORT_VERSION_STRING ${PROJECT_VERSION_MAJOR}.${PROJECT_VERSION_MINOR}
    MACOSX_BUNDLE TRUE
    WIN32_EXECUTABLE TRUE
)

target_link_libraries(${target_name}
    PRIVATE Qt6::Quick
)

include(cmake/qt6_runtime_dependency.cmake)
include(cmake/install.cmake)


