import QtQuick
import QtQuick.Controls

ApplicationWindow {
    id: window
    width: 800
    height: 640
    visible: true
    title: qsTr("My QML")

    menuBar: MenuBar {
        id: menuBar
        Menu {
            title: "文件"
        }
        Menu {
            title: "编辑"
        }
        Menu {
            title: "视图"
        }
        delegate: MenuBarItem {
            id: item
            contentItem: Text {
                text: item.text
                font.bold: true
                font.pixelSize: 16
            }
            background: Rectangle {
                width: item.width
                height: item.height
                color: item.highlighted ? "skyblue" : "transparent"
            }
        }

        background: Rectangle {
            width: parent.width
            height: parent.height
            color: "lightsteelblue"
        }
    }

    Button {
        width: 50
        height: 50
        onClicked: {
            // 方法1： 动态加载的方式（推荐）
            var component = Qt.createComponent("mymenu.qml");
            if (component.status == Component.Ready) {
                var menu = component.createObject(parent);
                menu.title = "菜单"
                menuBar.addMenu(menu);
            }
            // 方法2：直接使用文本的方式
            // const newObject = Qt.createQmlObject(`
            //         import QtQuick
            //         import QtQuick.Controls
            //
            //         Menu {
            //             title: "菜单"
            //         }
            //     `,
            //     parent,
            // );
            // menuBar.addMenu(newObject)
            
        }
    }
}
