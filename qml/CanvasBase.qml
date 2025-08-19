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
            // 绘制矩形
            ctx.fillStyle = "red"
            ctx.fillRect(0, 0, 100,100);
            ctx.clearRect(10, 10, 80, 80);
            ctx.strokeRect(30, 30, 50, 50);
        //     绘制线条
        //     ctx.strokeStyle = "red";
        //     ctx.lineWidth = 5;
        //     ctx.beginPath();
        //     ctx.moveTo(10, 10);
        //     ctx.lineTo(100, 100);
        //     ctx.moveTo(50, 50);
        //     ctx.lineTo(0, 200);
        //     ctx.stroke();
        
        }
    }
    
    
    
    
    
    
    
    
    
    
    
    
    
}
