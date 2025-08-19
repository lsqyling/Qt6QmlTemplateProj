import QtQuick
import QtQuick.Controls
import QtCharts



Window {
    id: window
    width: 800
    height: 640
    visible: true
    title: qsTr("My QML")
    
    property var linepoints: [[0, 0, 10, 10, 20, 20, 30, 30, 40, 40, 80, 80], [0, 0,10, 20, 20, 40, 30, 60, 50, 100]]
    
    // 圆饼图
    // Button {
    //     anchors.right: parent.right
    //     width: 100
    //     height: 50
    //     onClicked: {
    //         var pie = chartView.createSeries(ChartView.SeriesTypePie, "MyPie");
    //         pie.append("pie1", 100);
    //         pie.append("pie2", 50);
    //     }
    // }
    
    
    // 折线图
    // Button {
    //     anchors.right: parent.right
    //     width: 50
    //     height: 50
    //     onClicked: {
    //         for (var i = 0; i < linepoints.length; i++) {
    //             var line = chartView.createSeries(ChartView.SeriesTypeLine, `MyLine-${i}`, xAxis, yAxis);
    //             line.style = Qt.DotLine
    //             var points = linepoints[i];
    //             for (var j = 0; j < points.length; j += 2) {
    //                 line.append(points[j], points[j+1]);
    //             }
    //         }
    //     }
    // }
    
    // 曲线图
    Button {
        anchors.right: parent.right
        width: 50
        height: 50
        onClicked: {
                var line = chartView.createSeries(ChartView.SeriesTypeSpline, `MyLine`, xAxis, yAxis);
                for (var j = 0; j < 100; j += 0.5) {
                    line.append(j, j ** 2);
                }
        }
    }
    ChartView {
        id: chartView
        title: "Chart"
        anchors.bottom: parent.bottom
        anchors.bottomMargin: 100
        anchors.horizontalCenter: parent.horizontalCenter
        width: parent.width * 0.8
        height: parent.height * 0.8
        antialiasing: true
        
        ValueAxis {
            id: xAxis
            max: 100
            min: 0
            minorTickCount: 5
            tickCount: 5
        }
        ValueAxis {
            id: yAxis
            max: 100
            min: 0
            minorTickCount: 5
            tickCount: 5
        }
        
        
    }
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
}
