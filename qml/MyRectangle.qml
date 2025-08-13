import QtQuick



Rectangle {
    id: borderRect
    property int myTopBorder: 0
    property int myBottomBorder: 0
    property int myLeftBorder: 0
    property int myRightBorder: 0
    
    
    Rectangle {
        id: innerRect
        anchors.fill: parent
        anchors.topMargin: myTopBorder
        anchors.bottomMargin: myBottomBorder
        anchors.leftMargin: myLeftBorder
        anchors.rightMargin: myRightBorder
        color: "blue"
    }
}


























