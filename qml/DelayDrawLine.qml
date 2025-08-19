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
        
        property real line_x: 10
        property real line_y: 10
        
        onPaint:  {
            var ctx = getContext("2d");
            
            ctx.lineWidth = 3;
            if (line_x < width/2) {
                ctx.strokeStyle = "red";
                ctx.beginPath();
                ctx.moveTo(10, 10);
            }
            else {
                ctx.strokeStyle = "blue";
                ctx.beginPath();
                ctx.moveTo(width/2, 10);
            }
            ctx.lineTo(line_x, line_y);
            ctx.stroke();
        }
    }
    
    Timer {
        interval: 10
        running: true
        repeat: true
        onTriggered: {
            if (canvas.line_x < canvas.width/2) {
                canvas.line_x += 1;
                canvas.requestPaint();
            } else if (canvas.line_y < canvas.height/2) {
                canvas.line_y += 1;
                canvas.requestPaint();
            } else {
                stop();
            }
        }
    }
    
    
    
    
    
    
    
    
    
    
    
    
    
}
