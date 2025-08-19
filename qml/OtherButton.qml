import QtQuick
import QtQuick.Window
import QtQuick.Controls.Basic
import QtQuick.Controls

Window {
    width: 800
    height: 640
    visible: true
    title: qsTr("My QML")
    
    RoundButton {
        anchors.verticalCenter: parent.verticalCenter
        anchors.horizontalCenter: parent.horizontalCenter
        text: "test" // Unicode Character 'CHECK MARK'
    }
    
    
    TabBar {
        anchors.verticalCenter: parent.verticalCenter
        TabButton {
            text: qsTr("Home")
        }
        TabButton {
            text: qsTr("Discover")
        }
        TabButton {
            text: qsTr("Activity")
        }
    }
    
    
    ButtonGroup {
        id: btnGroup
        exclusive: true
        buttons: col.children
    }
    
    Column {
        id: col
        anchors.right: parent.right
        Switch {
            LayoutMirroring.enabled: true
            text: qsTr("Wi-Fi")
            onPositionChanged: {
                console.log("pos: ", position)
            }
            onVisualPositionChanged: {
                console.log("visual pos: ", visualPosition)
            }
        }
        Switch {
            text: qsTr("Bluetooth")
        }
    }
    
    
    Column {
        RadioButton {
            checked: true
            text: qsTr("First")
        }
        RadioButton {
            text: qsTr("Second")
        }
        RadioButton {
            text: qsTr("Third")
        }
    }
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
}
