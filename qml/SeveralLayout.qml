import QtQuick
import QtQuick.Controls


Window {
    id: window
    width: 800
    height: 640
    visible: true
    title: qsTr("My QML")
    
    Column {
        id: col
        spacing: 10
        // Button {
        //     width: 100
        //     height: 50
        // }
        // Button {
        //     width: 100
        //     height: 50
        // }
        // Button {
        //     width: 100
        //     height: 50
        // }
        
        Repeater {
            id: rep
            model: ListModel {
            
            }
            Button {
                width: 100
                height: 50
                text: name
            }
        }
        add: Transition {
            NumberAnimation {
                properties: "x,y"
                easing.type: Easing.OutBounce
            }
        }
        move: Transition {
            NumberAnimation {
                properties: "x,y"
                easing.type: Easing.OutBounce
            }
        }
        populate: Transition {
            NumberAnimation {
                properties: "x,y"
                from: 200
                duration: 100
                easing.type: Easing.OutBounce
            }
        }
        
    }
    Button {
        width: 100
        height: 50
        anchors.top: parent.top
        anchors.topMargin: 20
        anchors.right: parent.right
        onClicked: {
            rep.model.insert(0, {"name": rep.model.count})
        }
    }
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
}
