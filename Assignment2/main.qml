import QtQuick 2.15
import QtQuick.Window 2.15

Window {
    width: 700
    height: 500
    visible: true
    title: qsTr("Assignment-2")
    color:"black"

    Image {
        id: root
        source: "assets/background.png"

        property int padding: 40
        property int duration: 400
        property bool running: false

        Image {
            id: box
            x: root.padding;
            y: (root.height-height)/2
            source: "assets/rec.png"

            NumberAnimation on x {
                to: root.width - box.width - root.padding
                duration: root.duration
                running: root.running
            }
            RotationAnimation on rotation {
                to: 360
                duration: root.duration
                running: root.running
            }
        }

        MouseArea {
            anchors.fill: parent
            onClicked: root.running = !root.running
        }

    }
}
