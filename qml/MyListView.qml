import QtQuick
import QtQuick.Controls
import QtQuick.Controls.Basic

ListView {
    id: list
    width: 150; height: 200
    // model: 3
    // model: ["Button", "Rectangle", "MouseArea"]
    model: ListModel {
        id: fruitModel
        
        ListElement {
            name: "Apple"
            cost: 2.45
        }
        ListElement {
            name: "Orange"
            cost: 3.25
        }
        ListElement {
            name: "Banana"
            cost: 1.95
        }
    }
    
    spacing: 20
    highlight: Rectangle {
        color: "grey"
    }
    
    header: Rectangle {
        width: parent.width
        height: 10
        color: "green"
    }
    footer: Rectangle {
        width: parent.width
        height: 10
        color: "blue"
    }
    
    delegate: Rectangle {
        color: "transparent"
        width: list.width
        height: 50
        // text: name
        Text {
            id: txt
            text: name
        }
        MouseArea {
            anchors.fill: parent
            onClicked: {
                currentIndex = index
            }
        }
    }
}



























