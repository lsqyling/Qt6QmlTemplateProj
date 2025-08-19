import QtQuick
import QtQuick.Controls
import Qt5Compat.GraphicalEffects


Window {
    id: window
    width: 800
    height: 640
    visible: true
    title: qsTr("My QML")
    
    
    Grid {
        id: grid
        width: 15
        height: 200
        visible: false
        x: 300
        y: 100
        columns: 3
        Repeater {
            model: grid.width / 5 * grid.height / 5
            Rectangle {
                width: 5
                height: 5
                color: index % 2 ? "black" : "white"
            }
        }
    }
    
    Rectangle {
        id: maskRect
        x: 200
        y: 100
        visible: false
        width: grid.width
        height: grid.height
        radius: 10
        border.color: "black"
    }
    Row {
        spacing: 100
        Button {
            width: 50
            height: 50
            x: 100
            y: 100
            onClicked: {
                grid.height += 10
            }
            
        }
        Button {
            width: 50
            height: 50
            x: 100
            y: 100
            onClicked: {
                grid.height -= 10
            }
            
        }
        
    }
    Rectangle {
        width: grid.width + 4
        height: grid.height + 4
        anchors.horizontalCenter: parent.horizontalCenter
        anchors.bottom: parent.bottom
        border.color: "black"
        radius: 10
        border.width: 3
        OpacityMask {
            source: grid
            maskSource: maskRect
            anchors.fill: parent
            anchors.margins: 2
        }
        
    }
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
}
