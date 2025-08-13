import QtQuick
import QtQuick.Window
import QtQuick.Controls

Window {
    width: 800
    height: 640
    visible: true
    title: qsTr("My QML")
    Rectangle {
        id: rect
        width: 100
        height: 100
        color: "red"

        SequentialAnimation on color {
            ColorAnimation {
                to: "green"
                duration: 1000
            }
            ColorAnimation {
                to: "yellow"
                duration: 1000
            }
        }

        PropertyAnimation on x  {
            to: 200
            duration: 1000
        }
        PropertyAnimation on y  {
            to: 200
            duration: 1000
        }
        PropertyAnimation on width  {
            to: 300
            duration: 2000
        }
    }

    Rectangle {
        id: flashingblob
        width: 75
        height: 75
        color: "blue"
        opacity: 1.0

        MouseArea {
            anchors.fill: parent
            onClicked: {
                animateColor.start();
                animateOpacity.start();
                animateWidth.start();
            }
        }

        PropertyAnimation {
            id: animateColor
            target: flashingblob
            properties: "color"
            to: "green"
            duration: 1000
        }

        NumberAnimation {
            id: animateOpacity
            target: flashingblob
            properties: "opacity"
            from: 0.1
            to: 1.0
            duration: 2000
        }
        NumberAnimation {
            id: animateWidth
            target: flashingblob
            properties: "width"
            from: 75
            to: 300
            duration: 2000
        }
    }
}
