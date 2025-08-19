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
        
        property real c_x: 10
        property real c_y: 10
        
        onPaint: {
            var ctx = getContext("2d");
            ctx.lineWidth = 10
            
            function update() {
                ctx.beginPath();
                c_x += 1
                ctx.strokeStyle = Qt.rgba(2 * c_x/width, 1, 0, 1);
                ctx.moveTo(c_x - 1, 10)
                ctx.lineTo(c_x, 10)
                ctx.stroke()
                if (c_x < width/2) {
                    canvas.requestAnimationFrame(update)
                }
            }
            canvas.requestAnimationFrame(update)
        }
    }
    
    
    
    
    
    
    
    
    
    
    
}
