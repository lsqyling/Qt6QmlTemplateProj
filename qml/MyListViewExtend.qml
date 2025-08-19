import QtQuick
import QtQuick.Controls
import QtQml.Models


Window {
    id: window
    width: 800
    height: 640
    visible: true
    title: qsTr("My QML")
    
    Button {
        id: btn
        width: 200
        height: 640
    }
    ObjectModel {
        id: limodel
        Rectangle {
            width: 600
            height: 640
            color: "red"
        }
        Rectangle {
            width: 600
            height: 640
            color: "green"
        }
        Rectangle {
            width: 600
            height: 640
            color: "blue"
        }
    }
    
    ListView {
        anchors.left: btn.right
        anchors.right: parent.right
        height: 640
        model: limodel
        orientation: ListView.Horizontal
        snapMode: ListView.SnapOneItem
        clip: true
        
    }
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
}
