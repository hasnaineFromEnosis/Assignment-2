import QtQuick 2.15
import QtQuick.Window 2.15

Window {
    width: 600
    height: 600
    visible: true
    title: qsTr("Assignment-2")

    Rectangle {
        id: flashingblob
        width: 100; height: 100
        color: "blue"
        opacity: 1.0

        MouseArea {
            anchors.fill: parent
            onClicked: {
                animateColor.start()
                animateOpacity.start()
            }
        }

        PropertyAnimation {id: animateColor; target: flashingblob; properties: "color"; to: "green"; duration: 1000}

        NumberAnimation {
            id: animateOpacity
            target: flashingblob
            properties: "opacity"
            from: 0.99
            to: 1
            loops: Animation.Infinite
            easing {type: Easing.OutBack; overshoot: 500}
       }

        PropertyAnimation on x { to: 500; duration: 10000 }
        PropertyAnimation on y { to: 500; duration: 10000 }
    }

    Rectangle {
        y:500
        width: 100; height: 100
        color: "red"

        NumberAnimation on x { to: 500; duration: 10000 }
        NumberAnimation on y { to: 0; duration: 10000 }

        SequentialAnimation on color {
               ColorAnimation { to: "yellow"; duration: 2500 }
               ColorAnimation { to: "blue"; duration: 2500 }
               ColorAnimation { to: "green"; duration: 5000 }
           }
    }

    Rectangle {
        x: 100
        width: 100; height: 100
        id: button
        state: "RELEASED"

        MouseArea {
            anchors.fill: parent
            onPressed: button.state = "PRESSED"
            onReleased: button.state = "RELEASED"
        }

        states: [
            State {
                name: "PRESSED"
                PropertyChanges { target: button; color: "black"}
            },
            State {
                name: "RELEASED"
                PropertyChanges { target: button; color: "lightsteelblue"}
            }
        ]

        transitions: [
            Transition {
                from: "PRESSED"
                to: "RELEASED"
                ColorAnimation { target: button; duration: 1000}
            },
            Transition {
                from: "RELEASED"
                to: "PRESSED"
                ColorAnimation { target: button; duration: 1000}
            }
        ]
    }

    Rectangle {
        id: banner
        width: 150; height: 100; border.color: "black"
        x: 300
        color: "lightyellow"

        Column {
            anchors.centerIn: parent
            Text {
                id: code
                text: "Code less."
                opacity: 0.01
            }
            Text {
                id: create
                text: "Create more."
                opacity: 0.01
            }
            Text {
                id: deploy
                text: "Deploy everywhere."
                opacity: 0.01
            }
        }

        MouseArea {
            anchors.fill: parent
            onPressed: playbanner.start()
        }

        ParallelAnimation {
            id: playbanner
            running: false
            NumberAnimation { target: code; property: "opacity"; to: 1.0; duration: 200}
            NumberAnimation { target: create; property: "opacity"; to: 1.0; duration: 200}
            NumberAnimation { target: deploy; property: "opacity"; to: 1.0; duration: 200}
        }
    }

}
