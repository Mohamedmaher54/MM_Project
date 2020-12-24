import QtQuick 2.0
import QtQuick 2.2
import Felgo 3.0
import "../common"
import "../scenes"
SceneBase {
  id:menuScene
  signal level1Pressed
  signal level2Pressed
  signal level3Pressed
  Rectangle {
    anchors.fill: parent.gameWindowAnchorItem
    color: "#47688e"
  }
  Text {
    anchors.horizontalCenter: parent.horizontalCenter
    y: 30
    font.pixelSize: 20
    color: "#e9e9e9"
    text: "Select Your Arabic Level"
  }
  Column{
      spacing: 15
      anchors.centerIn: parent
      MenuButton{
          text:"level1"
          onClicked: level1Pressed()
      }

      MenuButton{
          text:"level2"
          onClicked: level2Pressed()
      }

      MenuButton{
          text:"level3"
          onClicked: level3Pressed()
      }

}
}


