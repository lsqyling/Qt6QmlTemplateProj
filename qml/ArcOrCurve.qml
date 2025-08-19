import QtQuick
import QtQuick.Controls


Window {
    id: window
    width: 800
    height: 640
    visible: true
    title: qsTr("My QML")
    
    
    Canvas {
        id: canvas
        anchors.fill: parent
        
        
        onPaint: {
            var ctx = getContext("2d");
            ctx.strokeStyle = "red";
            ctx.lineWidth = 5;
            
            ctx.arc(255, 255, 250, 0, 2 * Math.PI, true);
            ctx.stroke();
        }
    }
    
    
    
    
    
    
    
    
    
    
    
}
