import QtQuick 2.9

Item {
    id: navigationHints
    Image {
        id: navigationIcon
        width: 41
        height: 68
        fillMode: Image.PreserveAspectFit
        source: "assets/arrows/turn.png"
    }

    Text {
        id: distanceHint
        anchors.left: parent.left
        anchors.top: parent.top
        anchors.topMargin: 84
        color: "#ffffff"
        text: "100m"
        font.family: helveticaNeureBold.name
        font.wordSpacing: -8
        font.letterSpacing: -2
        font.bold: true
        font.pixelSize: 64
    }
    Text {
        id: directionHint
        anchors.left: parent.left
        anchors.top: parent.top
        anchors.topMargin: 169
        color: "#ffffff"
        text: qsTr("Turn left")
        font.family: helveticaNeurRoman.name
        font.wordSpacing: -1
        font.pixelSize: 36
    }
    Text {
        id: streetHint
        anchors.left: parent.left
        anchors.top: parent.top
        anchors.topMargin: 219
        color: "#ffffff"
        text: "ul. Kazimierza Wielkiego"
        font.family: helveticaNeurRoman.name
        font.wordSpacing: -2
        font.pixelSize: 36
    }
}
