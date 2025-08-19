import QtQuick
import QtQuick.Controls


Window {
    id: window
    width: 800
    height: 640
    visible: true
    title: qsTr("My QML")
    
    Canvas {
        anchors.fill: parent
        onPaint:  {
            var ctx = getContext("2d");
            
            ctx.fillStyle = "blue"
            ctx.font = "bold 70px Courier New"
            ctx.shadowColor = "red"
            ctx.shadowOffsetX = 3
            ctx.shadowOffsetY = 3
            ctx.shadowBlur = 3
            
            ctx.fillText("My Canavas!", 100, 100);
        }
    }
    
    
    
    
    
    
    
    
    
    
    
    
    
}
