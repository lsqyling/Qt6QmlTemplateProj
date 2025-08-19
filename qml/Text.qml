import QtQuick
import QtQuick.Window
import QtQuick.Controls.Basic
import QtQuick.Controls

Window {
    width: 800
    height: 640
    visible: true
    title: qsTr("My QML")

    Text {
        id: txt
        text: qsTr("我是中国人")

        Component.onCompleted: {
            console.log(txt.text);
            console.log(contentWidth);
            console.log(contentHeight);
        }
    }

    Rectangle {
        width: 150
        height: 20
        anchors.centerIn: parent
        border.color: "blue"
        Text {
            id: rectTxt
            text: qsTr("科技创新推动社会进步，人工智能正深刻改变人类生活。从智能家居到自动驾驶，技术革新让未来更便捷高效。我们应积极拥抱变革，同时关注伦理与可持续发展。")
            anchors.fill: parent
            elide: Text.ElideRight
        }
    }
    
    Column {
        anchors.horizontalCenter: parent.horizontalCenter
        Text {
            font.pointSize: 24
            text: "<b>Hello</b> <i>World!</i>"
        }
        Text {
            font.pointSize: 24
            textFormat: Text.RichText
            text: "<b>Hello</b> <i>World!</i>"
        }
        Text {
            font.pointSize: 24
            textFormat: Text.PlainText
            text: "<b>Hello</b> <i>World!</i>"
        }
        Text {
            font.pointSize: 24
            textFormat: Text.MarkdownText
            text: "**Hello** *World!*"
        }
    }
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
}
