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
        BarCategoryAxis {
            id: axisX
            categories: ["2007", "2008", "2009", "2010", "2011", "2012"]
        }
        ValueAxis {
            id: axisY
            min: 0
            max: 2
        }
        Component.onCompleted: {
            var bar = chartView.createSeries(ChartView.SeriesTypeBar, "mybar", axisX, axisY);
            bar.append("bar1", [0.2, 0.7, 1.2, 0.8, 1.5, 0.4]);
        }
    }
    
    
    
    
    
    
    
    
    
    
    
    
}
