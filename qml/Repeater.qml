import QtQuick
import QtQuick.Window
import QtQuick.Controls.Basic
import QtQuick.Controls

Window {
    width: 800
    height: 640
    visible: true
    title: qsTr("My QML")

    Repeater {
        // model: 3
        model: ["Button", "Rectangle", "MouseArea"]
        Button {
            y: index * 50
            width: 100; height: 40
            text: modelData
        }
    }
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
}
