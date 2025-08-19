import QtQuick
import QtQuick.Controls
import Qt5Compat.GraphicalEffects
import QtQuick.Particles

Window {
    id: window
    width: 800
    height: 640
    visible: true
    title: qsTr("My QML")
    color: "gray"
    
    MouseArea {
        id: mouse
        anchors.fill: parent
        hoverEnabled: true
    }
    
    ParticleSystem {
        id: particleSys
    }
    
    // 发射器
    Emitter {
        id: emitter
        anchors.fill: parent
        width: 300
        height: 300
        system: particleSys
        emitRate: 50
        lifeSpan: 800   //每个粒子的生命周期
        lifeSpanVariation: 400      //创建粒子的间隔
        size: 30
        velocity: PointDirection { //控制粒子移动的方向 如何移动
            x: -45
            // xVariation: 0
            // yVariation: 100/6
        }
    }
    
    ImageParticle {
        id: img
        width: 50
        height: 50
        source: "qrc:/demo/images/redball.jpg"
        system: particleSys
        color: Qt.rgba(153/255, 217/255, 234/255, 1.0)
        colorVariation: 1         //根据color随机修改
    }
    
    Attractor {
        anchors.fill: parent
        enabled: true
        system: particleSys
        pointX: mouse.mouseX
        pointY: mouse.mouseY
        
        strength: -100000000
        affectedParameter: Attractor.Acceleration
        proportionalToDistance: Attractor.InverseQuadratic
    }
    
    
    Text {
        id: txt
        text: "waiting"
        font.pixelSize: 70
        anchors.centerIn: parent
    }
    
    Glow {
        id: glow
        anchors.fill: txt
        radius: 10
        samples: 17
        color: "white"
        source: txt
        
        SequentialAnimation {
            running: true
            loops: Animation.Infinite
            NumberAnimation {
                target: glow
                property: "spread"
                to: 0
                duration: 1000
            }
            NumberAnimation {
                target: glow
                property: "spread"
                to: 0.5
                duration: 1000
            }
        }
    }
    
    
    BusyIndicator {
        id: control
        width: 100
        height: 100
        anchors.bottom: parent.bottom
        anchors.bottomMargin: 20
        anchors.horizontalCenter: parent.horizontalCenter
        
        contentItem: Item {
            implicitWidth: 64
            implicitHeight: 64
            
            Item {
                id: item
                x: parent.width / 2 - 32
                y: parent.height / 2 - 32
                width: 64
                height: 64
                opacity: control.running ? 1 : 0
                
                Behavior on opacity {
                    OpacityAnimator {
                        duration: 250
                    }
                }
                
                RotationAnimator {
                    target: item
                    running: control.visible && control.running
                    from: 0
                    to: 360
                    loops: Animation.Infinite
                    duration: 1250
                }
                
                Repeater {
                    id: repeater
                    model: 6
                    
                    Rectangle {
                        id: delegate
                        x: item.width / 2 - width / 2
                        y: item.height / 2 - height / 2
                        implicitWidth: 10
                        implicitHeight: 10
                        radius: 5
                        color: "#0b0c0b"
                        
                        required property int index
                        
                        transform: [
                            Translate {
                                y: -Math.min(item.width, item.height) * 0.5 + 5
                            },
                            Rotation {
                                angle: delegate.index / repeater.count * 360
                                origin.x: 5
                                origin.y: 5
                            }
                        ]
                    }
                }
            }
        }
    }
    
    
    
    
    
    
    
    
    
    
    
    
    
    
}
