import QtQuick 2.15
import QtQuick.Window 2.15

Window {
    width: 640
    height: 480
    visible: true
    title: qsTr("Assignment-2")

    Rectangle {
        x: 200
        y: 200
        width: 100
        height: 100
        color: "red"

        transform: Matrix4x4 {
            property real a: Math.PI / 4
            matrix: Qt.matrix4x4(Math.cos(a), -Math.sin(a), 0, 0,
                                 Math.sin(a),  Math.cos(a), 0, 0,
                                 0,           0,            1, 0,
                                 0,           0,            0, 1)
        }
    }
}
