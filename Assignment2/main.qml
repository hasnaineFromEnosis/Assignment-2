import QtQuick 2.15
import QtQuick.Window 2.15

Window {
    width: 700
    height: 500
    visible: true
    title: qsTr("Assignment-2")
    color:"black"

    ClickableImage {
        id: redBox
                x: 0; y: 0
                source: "assets/rec.png"
//                onClicked: anim.start()
                onClicked: anim.restart()

                text: "standalone animation"

                NumberAnimation {
                    id: anim
                    target: redBox
                    properties: "y"
                    to: 400
                    duration: 4000
                }
    }
}
