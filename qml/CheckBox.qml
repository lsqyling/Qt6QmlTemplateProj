import QtQuick
import QtQuick.Window
import QtQuick.Controls.Basic
import QtQuick.Controls

Window {
    width: 800
    height: 640
    visible: true
    title: qsTr("My QML")
    
    ButtonGroup {
        id: childGroup
        exclusive: true
        buttons: col.children
    }
    
    Column {
        id: col2
        anchors.right: parent.right
        CheckBox {
            tristate: true
            text: qsTr("First")
            nextCheckState: function () {
                if (checkState == Qt.Unchecked) {
                    return Qt.Checked;
                }
                else if (checkState == Qt.Checked) {
                    return Qt.PartiallyChecked;
                }
                else {
                    return Qt.Unchecked;
                }
            }
            onCheckStateChanged: {
                console.log(checkState)
            }
            ButtonGroup.group: childGroup
        }
        CheckBox {
            text: qsTr("Second")
            tristate: true
            ButtonGroup.group: childGroup
        }
        CheckBox {
            text: qsTr("Third")
            tristate: true
            ButtonGroup.group: childGroup
        }
    }
    Column {
        id: col
        CheckBox {
            tristate: true
            text: qsTr("First")
            onCheckStateChanged: {
                console.log(checkState)
            }
        }
        CheckBox {
            text: qsTr("Second")
        }
        CheckBox {
            text: qsTr("Third")
        }
    }
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
}
