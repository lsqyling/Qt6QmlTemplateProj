import QtQuick
import QtQuick.Controls


Window {
    id: window
    width: 800
    height: 640
    visible: true
    title: qsTr("My QML")
    
    
    property int time: 0
    
    
    Timer {
        id: timer
        interval: 100
        repeat: true
        running: false
        
        onTriggered: {
            time += 1
        }
    }
    
    
    Text {
        id: txt
        text: time
        font.pixelSize: 68
        anchors.centerIn: parent
    }
    
    Button {
        id: startBtn
        text: "start"
        width: 100
        height: 50
        onClicked: {
            timer.start();
        }
    }
    Button {
        id: stopBtn
        text: "stop"
        width: 100
        height: 50
        anchors.left: startBtn.right
        anchors.leftMargin: 30
        onClicked: {
            timer.stop();
        }
    }
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
}
