import QtQuick
import QtQuick.Window
import QtQuick.Controls.Basic
import QtQuick.Controls

Window {
    width: 800
    height: 640
    visible: true
    title: qsTr("My QML")

    Popup {
        id: popup1
        width: 200
        height: 200
        anchors.centerIn: parent
        
        Component.onCompleted: {
            console.log(visible)
        }
    }
    
    MyPopup {
        id: popup
    }
    
    Button {
        width: 50
        height: 50
        onClicked: {
            popup.close()
        }
    }
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
}
