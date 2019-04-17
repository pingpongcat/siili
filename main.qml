import QtQuick 2.9
import QtQuick.Window 2.2

Window {
  visible: true
  width: 1920
  height: 720
  color: "#202020"
  title: qsTr("Siili cluster v1.0")

  // Licence for helvetica needed https://www.linotype.com/1308886/helvetica-family.html?site=valuepacks
  FontLoader { id: helveticaNeureMedium; source:"assets/fonts/HelveticaNeueLTCom-Md.ttf" }
  FontLoader { id: helveticaNeureBold; source:"assets/fonts/HelveticaNeueLTCom-Bd.ttf" }
  FontLoader { id: helveticaNeurRoman; source:"assets/fonts/HelveticaNeueLTCom-Roman.ttf" }
  FontLoader { id: helveticaNeurLight; source:"assets/fonts/HelveticaNeueLTCom-Lt.ttf" }

  Navigation{
    id: navigationMap
    width: 840
    height: 730
    // +10 to hide mapbox stamp, commercial token needed
    z:0
  }

  Signals{
    id: turningSignals
    x: 736
    y: 42
    z: 2
    height: 28
  }

  Lights{
    id: onBoardLights
    x: 818
    y: 670
    width: 24
    z: 2
  }

  Gasoline{
    id: gasolineSensor
    x: 1372
    y: 668
    width: 250
    height: 28
    z: 2
  }

  Text {
      id: clock
      x: 930
      y: 669
      z: 2
      color: "#ffffff"
      //text: "12:34"
      text: Qt.formatDateTime(new Date(), "hh:mm")
      font.pixelSize: 24
      font.family: helveticaNeureMedium.name
  }
  Cluster{
    id: mainCluster
    anchors.centerIn: parent
    anchors.horizontalCenterOffset: -8
    width: 588
    height: 588
    z: 2
  }

  Status{
    id: gpsStatus
    x: 1356
    y: 31
    width: 250
    height: 48
    z: 2
  }

  Hints {
    id: navigationHints
    x: 1363
    y: 195
    width: 400
    height: 300
    z: 2
  }

  Image{
    id: innerShadow
    width: 1919
    height: 715
    z: 1
    anchors.centerIn: parent
    source: "assets/Inner shadow.png"
  }

  Image {
    id: clusterShape
    width: 1920
    height: 720
    z: 3
    fillMode: Image.PreserveAspectFit
    source: "assets/cluster shape.png"
  }
  //Testing
  /*
  Image{
    id: helper
    opacity: 0.2
    x: 0
    y: 0
    z: 4
    width: 1920
    height: 720
    source: "assets/Cluster.png"
  }
  */

}





