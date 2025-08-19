import QtQuick
import QtQuick.Controls
import QtQuick.Controls.Basic

Popup {
    id: popup
    x: 100
    y: 100
    width: 400
    height: 300
    visible: true

    closePolicy: Popup.NoAutoClose
    // closePolicy: Popup.CloseOnEscape | Popup.CloseOnPressOutsideParent
    modal: true
    dim: true
    enter: Transition {
        NumberAnimation {
            property: "opacity"
            from: 0.0
            to: 1.0
            duration: 500
        }
    }
    exit: Transition {
        NumberAnimation {
            property: "opacity"
            from: 1.0
            to: 0.0
            duration: 1000
        }
    }

    contentItem: Rectangle {
        anchors.fill: parent
        color: "grey"
        Text {
            id: txt
            anchors.fill: parent
            text: qsTr("Message Box Area!!!!")
            font.pixelSize: 20
            wrapMode: Text.WordWrap
        }
        Button {
            anchors.bottom: parent.bottom
            anchors.bottomMargin: 30
            anchors.right: parent.right
            anchors.rightMargin: 30
            text: "取消"
        }
        Button {
            anchors.bottom: parent.bottom
            anchors.bottomMargin: 30
            anchors.left: parent.left
            anchors.leftMargin: 30
            text: "确认"
        }
    }
    Overlay.modal: Rectangle {
        anchors.fill: parent
        // color: "lightsteelblue"
        color: "#33ff0000"
        Popup {
            width: parent.width
            height: 80
            visible: true
            closePolicy: Popup.NoAutoClose
            background: Rectangle {
                color: "transparent"
            }
            Button {
                width: 50
                height: 50
                anchors.right: parent.right
                onClicked: {
                    console.log("clicked")
                }
            }
        }
    }
    Overlay.modeless: Rectangle {
        anchors.fill: parent
        color: "green"
    }
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
}
