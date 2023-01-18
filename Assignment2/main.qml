import QtQuick 2.15
import QtQuick.Window 2.15

Window {
    width: 640
    height: 480
    visible: true
    title: qsTr("Assignment-2")

    Row {
        Rectangle {
            width: 100; height: 100
            color: "blue"
            transform: Translate { y: 20 }
        }
        Rectangle {
            width: 100; height: 100
            color: "red"
            transform: Translate { y: -20 }
        }
    }
}
