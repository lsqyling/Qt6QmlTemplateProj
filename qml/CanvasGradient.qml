import QtQuick
import QtQuick.Controls


Window {
    id: window
    width: 800
    height: 640
    visible: true
    title: qsTr("My QML")
    
    Canvas {
        width: 200
        height: 200
        onPaint:  {
            var ctx = getContext("2d");
            var gradient = ctx.createLinearGradient(0, 0, 100, 100);
            gradient.addColorStop(0.0, "red");
            gradient.addColorStop(1.0, "yellow");
        
            ctx.fillStyle = gradient;
            ctx.fillRect(0, 0, 100, 100);
        }
    }
    
    
    
    
    
    
    
    
    
    
    
    
    
}
