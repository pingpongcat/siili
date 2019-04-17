import QtQuick 2.9

Item{

  Canvas {
    id: canvas
    x: 0
    y: 0
    width: 588
    height: 588

    property real faceStart: 130
    property real faceEnd: 180 + tipCanvas.rotation

    onPaint: {
      var ctx = getContext("2d")
      var x = 588 / 2
      var y = 588 / 2
      var start = Math.PI * (faceStart / 180)
      var end = Math.PI * (faceEnd / 180)
      ctx.reset()

      ctx.beginPath();
      ctx.arc(x, y, (588 / 2) - 20 / 2, start, end, false)
      ctx.lineWidth = 20
      ctx.strokeStyle = "#00D8FF"
      ctx.stroke()
    }
  }

  Rectangle{
    id: mainCuster
    radius: 284
    color: "#ffffff"
    width: parent.width - 20
    height: parent.height - 20

    anchors.centerIn: parent
  }

  Rectangle {
    id: mainCusterFill
    width: parent.width - 60
    height: parent.height - 60
    anchors.centerIn: parent
    radius: width / 2
    color: "#ebebeb"

  }

  Rectangle{
    id: tipCanvas
    width: 588
    height: 588
    color: "#00000000"
    rotation: -49
    onRotationChanged: canvas.requestPaint()
    SequentialAnimation {
            running: true
            loops: Animation.Infinite
            NumberAnimation { target: tipCanvas; property: "rotation"; to: 21; duration: 6000; easing.type: Easing.InOutQuad; }
            NumberAnimation { target: tipCanvas; property: "rotation"; to: -49; duration: 24000; easing.type: Easing.InOutQuad; }
        }
    Image {
        id: tip
        anchors.verticalCenter: parent.verticalCenter
        anchors.left: parent.left
        width: 300
        height: 44
        source: "assets/Rectangle.png"
        fillMode: Image.PreserveAspectFit
    }
  }

  Rectangle {
    id: valuesBackground
    width: 145
    height: 145
    anchors.centerIn: parent
    radius: width / 2
    color: "#ebebeb"

  }

  Text {
    id: speed
    anchors.centerIn: parent
    anchors.verticalCenterOffset: -10
    //anchors.horizontalCenterOffset: -4
    color: "#202020"
    text: Math.round(tipCanvas.rotation + 50).toString()
    font.family: helveticaNeureBold.name
    font.letterSpacing: -2
    font.bold: true
    font.pixelSize: 100
  }
  Text {
    id: speedUnits
    anchors.centerIn: parent
    anchors.verticalCenterOffset: 48
    anchors.horizontalCenterOffset: -2
    color: "#202020"
    text: "km/h"
    anchors.topMargin: 50
    font.pixelSize: 23
    font.letterSpacing: -1
    font.family: helveticaNeurRoman.name
  }
}
