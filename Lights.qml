import QtQuick 2.9
Item{
  id: lightCluster

  Image {
      id: headLamp
      width: 32
      fillMode: Image.PreserveAspectFit
      source: "assets/light-3.png"
  }
  Image {
      id: lamps
      x: 55
      width: 35
      fillMode: Image.PreserveAspectFit
      source: "assets/light-1.png"
  }
  Image {
      id: fogLamps
      x: 197
      width: 35
      fillMode: Image.PreserveAspectFit
      source: "assets/light-5.png"
  }
  Image {
      id: drivingLamps
      x: 250
      width: 35
      fillMode: Image.PreserveAspectFit
      source: "assets/light-6.png"
  }
}















































/*##^## Designer {
    D{i:0;autoSize:true;height:480;width:640}
}
 ##^##*/
