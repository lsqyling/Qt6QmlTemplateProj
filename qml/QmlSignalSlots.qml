import QtQuick
import QtQuick.Controls

Window {
    id: window
    width: screen_width
    height: 640
    visible: true
    title: qsTr("My QML")
    
    signal sayHello(string who, int age)
    
    Component {
        id: com
        Button {
            width: 100
            height: 50
            signal btnSig(int value)
            signal leftBtnPressed()
            onClicked: {
                btnSig(width)
                leftBtnPressed()
            }
        }
    }
    
    MyComponent {
        anchors.centerIn: parent
        com1: com
        com2: com
        
    }
    
    
    Button {
        id: btn
        width: 100
        height: 50
        onClicked: {
            sayHello("zhangsan", 99);
        }
    }
    
    Connections {
        target: window
        ignoreUnknownSignals: true
        function onSayHello(str, age) {
            console.log(str, age);
        }
    }
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
}
