import QtQuick



Rectangle {
    id: borderRect
    width: 350
    height:200
    
    property int myTopBorder: 0
    property int myBottomBorder: 0
    property int myLeftBorder: 0
    property int myRightBorder: 0
    property real myReal: 0.0
    property string myStr: "black"
    property color myColor: "green"
    property url myUrl: "qrc:/demo/images/wolf.jpg"
    
    required property Component myComponent
    property Rectangle myRect
    property list<Rectangle> myList
    
    // required property Component myComponent
    readonly property int rectWidth: width
    property alias newInnerRect: innerRect
    
    
    
    Loader {
        id: loader
        sourceComponent: myComponent
    }
    
    
    Rectangle {
        id: innerRect
        anchors.fill: parent
        anchors.topMargin: myTopBorder
        anchors.bottomMargin: myBottomBorder
        anchors.leftMargin: myLeftBorder
        anchors.rightMargin: myRightBorder
        color: myColor
    }
}


























