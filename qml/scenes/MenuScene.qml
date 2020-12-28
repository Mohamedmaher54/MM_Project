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

    anchors.leftMargin: 80
    anchors.rightMargin: 80
    Image {
        id: menuimage

        anchors.fill: parent

        source: "../assets/menu2.jpg"
    }
  }
  Text {
    anchors.horizontalCenter: parent.horizontalCenter
    y: 7
    font.pixelSize: 30

    text: "Select Your Arabic Level";
    font.bold: true

  }
  Column{
      spacing: 20
      anchors.horizontalCenter: parent.horizontalCenter
      y:60
      MenuButton{
          text:"Level 1"
          color:"#00ff00"

          onClicked:{color:"#90EE90"; level1Pressed()}
      }

      MenuButton{
          text:"Level 2"
          color:"#00ff00"
          onClicked:{color:"#90EE90"; level2Pressed()}
      }

      MenuButton{
          text:"Level 3"
          color:"#00ff00"

          onClicked:{color:"#90EE90"; level3Pressed()}
      }


}
}


