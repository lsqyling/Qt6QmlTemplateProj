import QtQuick
import QtQuick.Window
import QtQuick.Controls

Window {
    width: 800
    height: 640
    visible: true
    title: qsTr("My QML")

    Component.onCompleted: {
        console.log("onPressed", width, height, color);
    }
    Component.onDestruction: {
        console.log("onDestruction");
    }
    Component {
        id: componentImage
        AnimatedImage {
            id: img
            source: "/demo/images/wolf.jpg"
            onStatusChanged: playing = (status == AnimatedImage.Ready)
        }
    }
    Loader {
        id: loaderImage
        sourceComponent: componentImage
        asynchronous: true
        
    }

    Component {
        id: redSquare

        Rectangle {
            color: "red"
            width: 100
            height: 100
        }
    }

    Loader {
        id: loader
        source: "qrc:/demo/beauty.jpg"
        sourceComponent: redSquare
        asynchronous: true
        onStatusChanged: {
            console.log("status: ", status)
        }
    }
    
    Button {
        width: 50
        height: 50
        x: 300
        onClicked: {
            loader.item.width = 50
            loader.item.height = 50
            loader.item.color = "blue"
            // loader.sourceComponent = null
            console.log("onClicked");
            loaderImage.item.paused = !loaderImage.item.paused
        }
    }
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
}
