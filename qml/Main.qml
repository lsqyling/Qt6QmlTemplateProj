import QtQuick
import QtQuick.Controls
import MyDebugMsg

Window {
    id: window
    width: 800
    height: 640
    visible: true
    title: qsTr("My QML")
    
    
    
    Text {
        text: MyDebugMsg.data
    }
    
    

    
}
