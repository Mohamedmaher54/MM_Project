import Felgo 3.0
import QtQuick 2.0
import "../common"

SceneBase {
  id:menuScene
  Rectangle {
    anchors.fill: parent.gameWindowAnchorItem
    color: "#47688e"
  }
  Text {
    anchors.horizontalCenter: parent.horizontalCenter
    y: 30
    font.pixelSize: 30
    color: "#e9e9e9"
//    text: "MultiSceneMultiLevel"
     // signal indicating that the selectLevelScene should be displayed
     signal selectLevelPressed
     // signal indicating that the creditsScene should be displayed
     signal creditsPressed
       }
  // menu
  Column {
    anchors.centerIn: parent
    MenuButton {
      text: "Level 1"
      onClicked: level1Pressed()
    }
    MenuButton {
      text: "level 2"
      onClicked: level2Pressed()
    }
    MenuButton {
      text: "level 3"
      onClicked: level3Pressed()
     }
   }
}
