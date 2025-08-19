import QtQuick
import QtQuick.Controls
import QtCharts



Window {
    id: window
    width: 800
    height: 640
    visible: true
    title: qsTr("My QML")
    
    
    ChartView {
        id: chartView
        title: "NHL All-Star Team Players"
        width: parent.width * 0.8
        height: parent.height * 0.8
        anchors.horizontalCenter: parent.horizontalCenter
        anchors.bottom: parent.bottom
        anchors.bottomMargin: 80
        antialiasing: true
        
        // Define x-axis to be used with the series instead of default one
        
        LineSeries {
            id: l1
            name: "Line1"
            color: "blue"
            
            XYPoint { x: 0; y: 0 }
            XYPoint { x: 1.1; y: 2.1 }
            XYPoint { x: 1.9; y: 3.3 }
            XYPoint { x: 2.1; y: 2.1 }
            XYPoint { x: 2.9; y: 4.9 }
            XYPoint { x: 3.4; y: 3.0 }
            XYPoint { x: 4.1; y: 3.3 }
        }
        LineSeries {
            name: "Line2"
            id: l2
            color: "red"
            
            XYPoint { x: 0; y: 0 }
            XYPoint { x: 1.1; y: 1.1 }
            XYPoint { x: 1.9; y: 2.3 }
            XYPoint { x: 2.1; y: 1.1 }
            XYPoint { x: 2.9; y: 3.9 }
            XYPoint { x: 3.4; y: 2.0 }
            XYPoint { x: 4.1; y: 2.3 }
        }
        
        
        
    }
    
    Component.onCompleted: {
        var area = chartView.createSeries(ChartView.SeriesTypeArea, "myarea");
        area.upperSeries = l1;
        area.lowerSeries = l2;
        area.color = "green"
        area.opacity = 0.3
    }
    
    
}
