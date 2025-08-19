import QtQuick
import QtQuick.Controls
import MyObj


Window {
    id: window
    objectName: mainWindow
    width: screen_width
    height: 640
    visible: true
    title: qsTr("My QML")
    
    property int value: myobj.iValue
    signal qmlSig(int i, string s)
    signal qmlSig2(int i, string s)
    
    
    MyObject {
        id: myobj
        iValue: 10
        sString: "zhangsan"
        
        Component.onCompleted: {
            console.log(sString, iValue)
        }
        
        
    }
    
    
    Button {
        id: btn2
        objectName: mybtn2
        text: "QmlSigCppConnectSlot"
        width: 100
        height: 50
        anchors.right: parent.right
        anchors.verticalCenter: parent.verticalCenter
        onClicked: {
            qmlSig2(myobj.iValue, "唐三");
        }
    }
    Button {
        text: "QmlSigConnectCppSlot"
        width: 100
        height: 50
        anchors.right: parent.right
        onClicked: {
            qmlSig(myobj.iValue, "孙悟空");
        }
    }

    // qml端发送cpp端的信号，qml端slot响应
    // Connections.onCompleted: {
    //     target: myobj
    //     function onCppSig(i, s) {
    //         qmlSlot(i, s)
    //     }
    // }
    
    // 方法1: qml发送信号，cpp端slot响应
    // Connections {
    //     target: window
    //     function onQmlSig(i, s) {
    //         myobj.test_cpp_slot_func(i, s);
    //     }
    // }
    
    
    
    onValueChanged: {
        console.log(value)
    }
    
    Button {
        width: 100
        height: 50
        text: "Button"
        onClicked: {
            myobj.iValue += 5
            myobj.test_qml_call();
        }
    }
    
    // 方法2: qml发送信号，cpp端slot响应
    Component.onCompleted: {
        qmlSig.connect(myobj.test_cpp_slot_func)
    }
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
}
