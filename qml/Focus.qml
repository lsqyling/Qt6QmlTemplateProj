import QtQuick
import QtQuick.Controls



Window {
    width: 800
    height: 640
    visible: true
    title: qsTr("My QML")
    
    // focus 使用
    Button {
        id: btn
        width: 100
        height: 50
        focus: false
        background: Rectangle {
            anchors.fill: parent
            border.color: btn.focus ? "blue" : "black"
        }
        onFocusChanged: {
            console.log("focus: ", focus)
            focus = false
        }
        Component.onCompleted: {
            console.log("FocusPolicy: ", focusPolicy)
            console.log("Qt.StrongFocus: ", Qt.StrongFocus)
        }
    }
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
}
