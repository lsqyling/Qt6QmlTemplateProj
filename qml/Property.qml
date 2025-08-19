import QtQuick
import QtQuick.Window
import QtQuick.Controls.Basic
import QtQuick.Controls

Window {
    width: 800
    height: 640
    visible: true
    title: qsTr("My QML")
    
    Component {
        id: com
        Button {
            width: 50
            height: 50
        }
    }
    
    
    
    MyRectangle {
        myTopBorder: 10
        myComponent: com
        
        Component.onCompleted: {
            newInnerRect.color = "red"
            console.log(rectWidth)
        }
    
    }
    Image {
        id: img
        width: 50
        height: 50
        anchors.verticalCenter: parent.verticalCenter
        anchors.horizontalCenter: parent.horizontalCenter
        source: "qrc:/demo/images/wolf.jpg"
    }
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
}
