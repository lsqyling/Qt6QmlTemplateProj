import QtQuick
import QtQuick.Window
import QtQuick.Controls

Window {
    width: 800
    height: 640
    visible: true
    title: qsTr("My QML")
    
    
    Rectangle {
        anchors.verticalCenter: parent.verticalCenter
        anchors.right: parent.right
        color: "yellow"
        width: 100; height: 100
        
        MouseArea {
            anchors.fill: parent
            onClicked: console.log("clicked yellow")
        }
        
        Rectangle {
            color: "blue"
            width: 50; height: 50
            
            MouseArea {
                anchors.fill: parent
                propagateComposedEvents: true
                onClicked: (mouse)=> {
                    console.log("clicked blue")
                    mouse.accepted = false
                }
            }
        }
    }
    
    
    Rectangle {
        anchors.horizontalCenter: parent.horizontalCenter
        anchors.bottom: parent.bottom
        width: 480
        height: 320
        Rectangle {
            x: 30; y: 30
            width: 300; height: 240
            color: "lightsteelblue"
            
            MouseArea {
                anchors.fill: parent
                drag.target: parent;
                drag.axis: "XAxis"
                drag.minimumX: 30
                drag.maximumX: 150
                drag.filterChildren: true
                
                Rectangle {
                    color: "yellow"
                    x: 50; y : 50
                    width: 100; height: 100
                    MouseArea {
                        anchors.fill: parent
                        onClicked: console.log("Clicked")
                    }
                }
            }
        }
    }
    
    
    Rectangle {
        x: 400
        id: container
        width: 600; height: 200
        
        Rectangle {
            id: rect
            width: 50; height: 50
            color: "red"
            opacity: (600.0 - rect.x) / 600
            
            MouseArea {
                anchors.fill: parent
                drag.target: rect
                drag.axis: Drag.XAxis
                drag.minimumX: 0
                drag.maximumX: container.width - rect.width
            }
        }
    }
    
    
    
    MouseArea {
        id: mouseArea
        width: 200
        height: 100
        acceptedButtons: Qt.LeftButton | Qt.RightButton
        hoverEnabled: true
        
        Rectangle {
            anchors.fill: parent
            color: "green"
        }
        onContainsMouseChanged: {
            console.log("mouse changed")
        }
        onContainsPressChanged: {
            console.log("pressed changed")
        }
        onClicked: {
            console.log("clicked")
        }
        onPressed: {
            var leftBtn = pressedButtons & Qt.LeftButton;
            var rightBtn = pressedButtons & Qt.RightButton;
            console.log(leftBtn ? "left button pressed" : (rightBtn ? "right button pressed" : "other"))
            console.log("pressed")
        }
        onReleased: {
            console.log("released")
        }
    }
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
}
