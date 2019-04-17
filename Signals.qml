import QtQuick 2.9

Item{

  Image {
    id: leftSignal
    width: 36
    height: 28
    fillMode: Image.PreserveAspectFit
    source: "assets/icons/turn-light.png"

    SequentialAnimation {
      running: true
      loops: Animation.Infinite
      OpacityAnimator {
        target: leftSignal
        from: 0;
        to: 1;
        duration: 500
      }
      OpacityAnimator {
        target: leftSignal
        from: 1;
        to: 0;
        duration: 500
      }
    }
  }
  Image {
    id: rightSignal
    x: 374
    width: 36
    height: 28
    rotation: 180
    fillMode: Image.PreserveAspectFit
    source: "assets/icons/turn-light.png"
    visible: false

    OpacityAnimator {
      target: rightSignal
      from: 0;
      to: 1;
      duration: 1000
      running: false
      loops: Animation.Infinite
    }
  }
}



