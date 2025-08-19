import QtQuick
import QtQuick.Window
import QtQuick.Controls.Basic
import QtQuick.Controls

Window {
    width: 800
    height: 640
    visible: true
    title: qsTr("My QML")
    Button {
        id: control
        text: qsTr("Button")
        x: 600
        background: Rectangle {
            implicitWidth: 100
            implicitHeight: 40
            opacity: enabled ? 1 : 0.3
            color: control.down ? "#d0d0d0" : "#e0e0e0"
        }
    }
    
    Button {
        id: btn
        width: 100
        height: 100
        anchors.bottom: parent.bottom
        checkable: true
        onCheckableChanged: {
            console.log("checkable", checkable);
        }
        
        onClicked: {
            btn.checked = !btn.checked;
        }
    }
    Button {
        id: btn1
        width: 100
        height: 100
        checkable: true
        autoExclusive: true
        autoRepeat: true
        background: Rectangle {
            anchors.fill: btn1
            color: {
                if (btn1.pressed) {
                    return "green"
                }
                return "gray"
            }
            border.width: 5
            border.color: {
                if (btn1.pressed) {
                    return "red"
                }
                return "black"
            }
        }
        onClicked: {
            console.log("clicked")
        }
        onPressed: {
            console.log("pressed")
        }
        onReleased: {
            console.log("released")
        }
    }
    Button {
        id: btn2
        x: 120
        width: 100
        height: 100
        checkable: true
        autoExclusive: true

    }

    Button {
        id: btn3
        x: 240
        width: 100
        height: 100
        checkable: true
        autoExclusive: true

    }
}
