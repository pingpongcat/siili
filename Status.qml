import QtQuick 2.9

Item{

  AnimatedImage {
      id: animatedImage
      anchors.left: parent.left
      anchors.top: parent.top
      width: 48
      height: 48
      source: "assets/gps-signal.gif"
  }

  Text {
      id: gsmIndicator
      anchors.left: parent.left
      anchors.leftMargin: 57
      anchors.verticalCenter: parent.verticalCenter
      anchors.verticalCenterOffset: 0
      text: qsTr("connecting")
      font.capitalization: Font.AllUppercase
      color: "#ffffff"
      font.pixelSize: 25
      font.family: helveticaNeurLight.name
      font.letterSpacing: -1
  }

}
