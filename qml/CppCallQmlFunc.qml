import QtQuick
import QtQuick.Controls
import MyObj


Window {
    id: window
    width: 800
    height: 640
    visible: true
    title: qsTr("My QML")
    
    
    function qmlSlot(i, s) {
        console.log("qml slot: ", i, s)
    }
    
    function qmlFunc(i, s) {
        return "success";
    }
    
    Button {
        id: btn
        width: 100
        height: 50
        onClicked: {
            MyObject.test_qml_call();
        }
    }
    
    // qml 端进行连接
    // Connections {
    //     target: MyObject
    //     function onCppSig(i, s) {
    //         qmlSlot(i, s);
    //     }
    // }
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
}
