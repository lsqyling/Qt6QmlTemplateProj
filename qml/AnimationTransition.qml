import QtQuick
import QtQuick.Window
import QtQuick.Controls

Window {
    width: 800
    height: 640
    visible: true
    title: qsTr("My QML")
    Rectangle {
        id: ball
        x: 600
        y: 50
        width: 75
        height: 75
        radius: width
        color: "salmon"
        MouseArea {
            anchors.fill: parent
            onPressed: {
                ball.x += 10;
                ball.y += 10;
            }
        }

        Behavior on x  {
            BounceAnimation {
            }
        }
        Behavior on y  {
            BounceAnimation {
            }
        }
        Behavior on color  {
            ColorAnimation {
                target: ball
                duration: 1000
            }
        }
    }

    component BounceAnimation: NumberAnimation {
        easing {
            type: Easing.OutElastic
            amplitude: 1.0
            period: 0.5
        }
    }

    Rectangle {
        id: button
        x: 400
        width: 75
        height: 75
        state: "RELEASED"

        MouseArea {
            anchors.fill: parent
            onPressed: button.state = "PRESSED"
            onReleased: button.state = "RELEASED"
        }

        states: [
            State {
                name: "PRESSED"
                PropertyChanges {
                    target: button
                    color: "black"
                }
            },
            State {
                name: "RELEASED"
                PropertyChanges {
                    target: button
                    color: "lightsteelblue"
                }
            }
        ]

        transitions: [
            Transition {
                from: "PRESSED"
                to: "RELEASED"
                ColorAnimation {
                    target: button
                    duration: 1000
                }
            },
            Transition {
                from: "RELEASED"
                to: "PRESSED"
                ColorAnimation {
                    target: button
                    duration: 1000
                }
            }
        ]
    }

    Rectangle {
        id: rect
        width: 100
        height: 100
        color: "red"

        SequentialAnimation on color  {
            ColorAnimation {
                to: "green"
                duration: 1000
            }
            ColorAnimation {
                to: "yellow"
                duration: 1000
            }
        }

        PropertyAnimation on x  {
            to: 200
            duration: 1000
        }
        PropertyAnimation on y  {
            to: 200
            duration: 1000
        }
        PropertyAnimation on width  {
            to: 300
            duration: 2000
        }
    }

    Rectangle {
        id: flashingblob
        width: 75
        height: 75
        color: "blue"
        opacity: 1.0

        MouseArea {
            anchors.fill: parent
            onClicked: {
                animateColor.start();
                animateOpacity.start();
                animateWidth.start();
            }
        }

        PropertyAnimation {
            id: animateColor
            target: flashingblob
            properties: "color"
            to: "green"
            duration: 1000
        }

        NumberAnimation {
            id: animateOpacity
            target: flashingblob
            properties: "opacity"
            from: 0.1
            to: 1.0
            duration: 2000
        }
        NumberAnimation {
            id: animateWidth
            target: flashingblob
            properties: "width"
            from: 75
            to: 300
            duration: 2000
        }
    }
}
