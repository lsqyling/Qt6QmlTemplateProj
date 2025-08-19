import QtQuick
import QtQuick.Controls


Rectangle {
    width: 350
    height: 100
    property Component com1
    property Component com2
    
    color: "lightsteelblue"
    
    Loader {
        id: loader1
        sourceComponent: com1
        anchors.bottom: parent.bottom
        anchors.bottomMargin: 10
        anchors.right: parent.right
        anchors.rightMargin: 20
        Connections {
            target: loader1.item
            ignoreUnknownSignals: true
            function onBtnSig(value) {
                console.log("right: ", value)
            }
        }
    }
    Loader {
        id: loader2
        sourceComponent: com2
        anchors.bottom: parent.bottom
        anchors.bottomMargin: 10
        anchors.left: parent.left
        anchors.leftMargin: 20
        Connections {
            target: loader2.item
            ignoreUnknownSignals: true
            function onBtnSig(value) {
                console.log("left: ", value)
            }
            function onLeftBtnPressed() {
                loader2.item.focus = true;
                loader2.item.forceActiveFocus();
                console.log("left btn: ", loader2.item.focus)
            }
        }
    }
}
