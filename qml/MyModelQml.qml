import QtQuick
import QtQuick.Controls
import MyModel



Window {
    id: window
    width: 800
    height: 640
    visible: true
    title: qsTr("My QML")
    
    
    ListView {
        width: 200
        height: 300
        model: MyListModel
        delegate: Text {
            id: txt
            text: name + " " + value
        }
    }
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
}
