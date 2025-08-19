import QtQuick 2.12
import QtQuick.Window
import QtQuick.Controls

Window {
    property int my_value: 0

    height: 480
    maximumHeight: 480
    maximumWidth: 800
    minimumHeight: 240
    minimumWidth: 400
    title: qsTr("My QML")
    visible: true
    width: 800

    // opacity: 0.8

    onWidthChanged: {
        console.log("width", width);
    }

    Button {
        id: btn1
        objectName: "btn1"

        height: 50
        width: 50

        background: Rectangle {
            border.color: btn1.focus ? "blue" : "red"
        }

        onClicked: {
            console.log("btn1 is clicked!");
            
        }
        
        Keys.onRightPressed: {
            btn2.focus = true;
        }
    }
    Button {
        id: btn2
        objectName: "btn2"

        height: 50
        width: 50
        x: 100

        background: Rectangle {
            border.color: btn2.focus ? "blue" : "red"
        }
        onClicked: {
            console.log("btn2 is clicked!");
        }
        Keys.onLeftPressed: {
            btn1.focus = true;
        }
    }
    onActiveFocusItemChanged: {
        console.log("active focus item changed", activeFocusItem, "object name", activeFocusItem.objectName);
    }
}
