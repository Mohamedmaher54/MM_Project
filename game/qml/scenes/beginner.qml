import QtQuick 2.0
import Felgo 3.0
import QtMultimedia 5.9
import "../common"
import "../scenes"

SceneBase {
  id:beginnerScene

     signal beginner1Pressed
  // background

  Rectangle {
    anchors.fill: parent.gameWindowAnchorItem
    color: "#ece468"
    Grid {
             anchors.centerIn: parent
             rows: 3
                      columns: 3
                      spacing: 20
MenuButton {
    text: "أ
    alif "
    onClicked:audio.play()

  }
MenuButton {
    text: "ب
    ba"
    onClicked:audio_ba.play()

  }

MenuButton {
    text: "ت
    ta"
    onClicked:audio_ta.play()

  }
MenuButton {
    text: "ث
    tha"
    onClicked:audio_tha.play()

  }
MenuButton {
    text: "ج
    jiim"
onClicked:audio_jiim.play()


  }

MenuButton {
    text: "ح
    hha"
onClicked:audio_hha.play()


}

MenuButton {
    text: "خ
    kha"
onClicked:audio_kha.play()


}

MenuButton {
    text: "د
    daal"
onClicked:audio_daal.play()


}
MenuButton {
    text: "ذ
    thaal"
onClicked:audio_thaal.play()


}




                 Audio{
                   id: audio
                   source: "http://arabicreadingcourse.com/audio/isolated-letters/alif.mp3"
                 }
                 Audio{
                   id: audio_ba
                   source: "http://arabicreadingcourse.com/audio/isolated-letters/ba.mp3"
                 }
                 Audio{
                   id: audio_ta
                   source: "http://arabicreadingcourse.com/audio/isolated-letters/ta.mp3"
                 }
                 Audio{
                   id: audio_tha
                   source: "http://arabicreadingcourse.com/audio/isolated-letters/tha.mp3"
                 }
                 Audio{
                   id: audio_jiim
                   source: "http://arabicreadingcourse.com/audio/isolated-letters/jiim.mp3"
                 }
                 Audio{
                   id: audio_hha
                   source: "http://arabicreadingcourse.com/audio/isolated-letters/hha.mp3"
                 }

                 Audio{
                   id: audio_kha
                   source: "http://arabicreadingcourse.com/audio/isolated-letters/kha.mp3"
                 }
                 Audio{
                   id: audio_daal
                   source: "http://arabicreadingcourse.com/audio/isolated-letters/daal.mp3"
                 }
                 Audio{
                   id: audio_thaal
                   source: "http://arabicreadingcourse.com/audio/isolated-letters/thaal.mp3"
                 }
                 Audio{
                   id: audio_ra
                   source: "http://arabicreadingcourse.com/audio/isolated-letters/ra.mp3"
                 }
}}

                 //BackButtom
                 MenuButton {
                   text: "Back"
                   anchors.left: beginnerScene.gameWindowAnchorItem.left
                   anchors.leftMargin: 10
                   anchors.top: beginnerScene.gameWindowAnchorItem.top
                   anchors.topMargin: 10
                   onClicked: backButtonPressed()
                 }


                 MenuButton {
                   text: "next"
                   anchors.right: beginnerScene.gameWindowAnchorItem.right
                   anchors.rightMargin: 10
                   anchors.bottom: beginnerScene.gameWindowAnchorItem.bottom
                   anchors.bottomMargin: 10
                   onClicked:  beginner1Pressed()

                   }


             }
