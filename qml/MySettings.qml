import QtQuick
import QtQuick.Controls
import QtCore



Window {
    id: window
    width: 800
    height: 640
    visible: true
    title: qsTr("My QML")
    
    
    Settings {
        id: settings
        property int iData: 0
        property double dDouble: 1.23
        property string sString: "my test string"
        property var vVar: [1,2,3,4.5,"text"]
    }
    
    
    Component.onCompleted: {
        console.log(settings.location);
    }
    
    Text {
        id: txt
        text: settings.iData
        font.pixelSize: 70
    }
    
    Button {
        x: 200
        width: 100
        height: 50
        
        onClicked: {
            settings.iData += 1
        }
        
    }
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
}
