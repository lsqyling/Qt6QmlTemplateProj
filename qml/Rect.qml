import QtQuick
import QtQuick.Window
import QtQuick.Controls

Window {
    width: 800
    height: 640
    visible: true
    title: qsTr("My QML")
    Rectangle {
        anchors.right: parent.right
        anchors.rightMargin: 20
        y: 0; width: 80; height: 80
        color: "lightsteelblue"
    }

    Rectangle {
        anchors.right: parent.right
        anchors.rightMargin: 20
        y: 100; width: 80; height: 80
        gradient: Gradient {
            GradientStop { position: 0.0; color: "lightsteelblue" }
            GradientStop { position: 1.0; color: "blue" }
        }
    }

    Rectangle {
        anchors.right: parent.right
        anchors.rightMargin: 20
        y: 200; width: 80; height: 80
        rotation: 90
        gradient: Gradient {
            GradientStop { position: 0.0; color: "lightsteelblue" }
            GradientStop { position: 1.0; color: "blue" }
        }
    }


    Rectangle {
        id: rect
        width: 100
        height: 50
        color: "black"
        anchors.verticalCenter: parent.verticalCenter
        anchors.horizontalCenter: parent.horizontalCenter

        border.width: 2
        border.color: "red"
    }

    Rectangle {
        id: rect1
        width: 100
        height: 50
        color: "black"

    }
    Rectangle {
        id: rect2
        width: 100
        height: 50
        anchors.left: rect1.right
        anchors.leftMargin: 20
        color: "red"
    }

    Rectangle {
        id: rect3
        width: 100
        height: 50
        color: "green"

        anchors.top: rect1.bottom
        anchors.topMargin: 20
    }
    MyRectangle {
        x: 200
        y: 100
        width: 200
        height: 100
        color: "black"
        myTopBorder: 10
        myBottomBorder: 10
        myLeftBorder: 5
        myRightBorder: 5
    }

}
