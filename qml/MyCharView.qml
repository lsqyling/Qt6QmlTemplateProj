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
        width: 400
        height: 300
        theme: ChartView.ChartThemeBrownSand
        antialiasing: true
        
        PieSeries {
            id: pieSeries
            PieSlice { label: "eaten"; value: 94.9 }
            PieSlice { label: "not yet eaten"; value: 5.1 }
        }
    }
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
}
