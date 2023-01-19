import QtQuick 2.15
import QtQuick.Window 2.15

Window {
    width: 700
    height: 500
    visible: true
    title: qsTr("Assignment-2")
    color:"black"

    ClickableImageV2 {
        source: "assets/rec.png"
        text: "Hi from Has9"
        id: root

        property bool animationToRun: false
        NumberAnimation on x {
            to: 500
            duration: 3000
            running: root.animationToRun
        }
        onClicked: {
            animationToRun = !animationToRun
        }
    }

    ClickableImage {
            id: blueBox
            x: 800; y: 300
            source: "assets/rec.png"
            text: "behavior on property"
            Behavior on y {
                NumberAnimation { duration: 4000 }
            }

            onClicked: y = 40+(Math.random()*(205-40))
            // random y on each click
    //        onClicked: y = 40+Math.random()*(205-40)
    }

    ClickableImage {
            id: greenbox
            x: 0; y: 400
            source: "assets/rec.png"
            text: "animation on property"
            NumberAnimation on y {
                to: 40; duration: 4000
            }
    }

    ClickableImage {
            id: redbox
            x: 400; y: 400
            source: "assets/rec.png"
            onClicked: anim.start()
            //        onClicked: anim.restart()

                    text: "standalone animation"

                    NumberAnimation {
                        id: anim
                        target: redBox
                        properties: "y"
                        to: 40
                        duration: 4000
                    }
    }
}
