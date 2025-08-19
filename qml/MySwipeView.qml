import QtQuick
import QtQuick.Controls


Window {
    id: window
    width: 800
    height: 640
    visible: true
    title: qsTr("My QML")
    
    
    SwipeView {
        id: view
        
        currentIndex: 1
        anchors.fill: parent
        
        Item {
            id: firstPage
            Rectangle {
                anchors.fill: parent
                color: "red"
            }
        }
        Item {
            id: secondPage
            Rectangle {
                anchors.fill: parent
                color: "green"
            }
            
        }
        Item {
            id: thirdPage
            Rectangle {
                anchors.fill: parent
                color: "blue"
            }
        }
    }
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
}
