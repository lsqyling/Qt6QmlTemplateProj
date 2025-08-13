import QtQuick
import QtQuick.Window
import QtQuick.Controls

Window {
    width: 800
    height: 640
    visible: true
    title: qsTr("My QML")
    
    Rectangle {
        id: root
        width: 100; height: 100
        // color: "black"
        state: "normal"
        states: [
            State {
                name: "normal"
                PropertyChanges { root.color: "black" }
            },
            State {
                name: "red_color"
                PropertyChanges { root.color: "red"; root.width: 200 }
            },
            State {
                name: "blue_color"
                PropertyChanges { root.color: "blue"; root.height: 200}
            }
        ]
        MouseArea {
            anchors.fill: parent
            onPressed: {
                root.state = "red_color"
            }
            onReleased: {
                root.state = "blue_color"
            }
        }
    }
    
    
}
