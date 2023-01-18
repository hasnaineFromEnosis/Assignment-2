import QtQuick 2.15
import QtQuick.Window 2.15

Window {
    width: 640
    height: 480
    visible: true
    title: qsTr("Assignment-2")


    Rectangle {
        width: 100; height: 100
        color: "blue"
        transform: Scale { origin.x: 25; origin.y: 25; xScale: 3; yScale: 4}
    }


    Rectangle {
        width: 100; height: 100
        color: "red"
    }
}
