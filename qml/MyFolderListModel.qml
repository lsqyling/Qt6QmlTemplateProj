import QtQuick
import QtQuick.Controls
import Qt.labs.folderlistmodel



Window {
    id: window
    width: 800
    height: 640
    visible: true
    title: qsTr("My QML")
    
    
    ListView {
        width: 200; height: 400
        
        FolderListModel {
            id: folderModel
            showDirs: false
            folder: "./"
            nameFilters: ["*.dll"]
        }
        
        
        model: folderModel
        delegate: Text {
            text: `filePath: ${filePath}\nfileName: ${fileName}\tsize: ${fileSize}`
        }
        Component.onCompleted: {
            console.log("folder: " + folderModel.folder)
        }
    }
    
    
    
    
    
    
    
    
    
    
    
    
    
    
}
