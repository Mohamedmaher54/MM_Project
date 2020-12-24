import QtQuick 2.0
import Felgo 3.0
import "../common"



SceneBase {
  id:intermediateScene
    signal intermediate1Pressed
  NavigationStack {


          Page {
              id: page
              title: "Learn Arabic"
              Text {
                  anchors.centerIn: parent
                  id: name
                  text: qsTr("<p>You will learn some words<br> that begin with some arabic's alphabet</p>")
                  font.pixelSize: 20

              }


              AppButton {
                          anchors.bottom: parent.bottom
                          anchors.right: parent.right
                     text: "Start"

                     onClicked :{
                       page.navigationStack.push(first)
                     }

          }
              MenuButton {
                text: "Back to Menu"
                anchors.left: intermediateScene.gameWindowAnchorItem.left
               anchors.leftMargin: 50
                anchors.top: intermediateScene.gameWindowAnchorItem.top
                anchors.topMargin: 0
                onClicked: backButtonPressed()
              }


          }
      }

      Component{
          id: first
          Page{
              id: firstpage
              title:"أ"
              AppImage {
                      anchors.fill: parent

                      fillMode: Image.PreserveAspectFit

                      source: "../common/a.jpg"
                    }

              AppButton {
                     anchors.bottom:   parent.bottom
                     anchors.right: parent.right
                     text: "Next"

                     onClicked :{
                       firstpage.navigationStack.push(second)
                     }
          }
              AppButton {
                     anchors.bottom:  parent.bottom
                     anchors.left: parent.left
                     text: "اختبر نفسك"

                     onClicked: {
                         firstpage.navigationStack.push(test1)
                     }
  }



  }
      }
          Component{
              id: second
              Page{
                  id : secondpage
                  title: "ب"

                  AppImage {
                          anchors.fill: parent

                          fillMode: Image.PreserveAspectFit

                          source: "../common/b.jpg"
                        }
                  AppButton {
                         anchors.bottom:   parent.bottom
                         anchors.right: parent.right
                         text: "Next"

                         onClicked :{
                           secondpage.navigationStack.push(third)
                         }
              }

                  AppButton {
                         anchors.bottom:   parent.bottom
                         anchors.left: parent.left
                         text: "اختبر نفسك"
      }
          }
  }

          Component{
              id:third

              Page{
                  id: thirdpage
                  title: "ت"
                  AppImage {
                          anchors.fill: parent

                          fillMode: Image.PreserveAspectFit

                          source: "../common/ت.jpg"
                        }
                  AppButton {
                         anchors.bottom:   parent.bottom
                         anchors.right: parent.right
                         text: "Next"

                         onClicked :{
                           secondpage.navigationStack.push(third)
                         }
              }

                  AppButton {
                         anchors.bottom:   parent.bottom
                         anchors.left: parent.left
                         text: "اختبر نفسك"
      }


              }
          }

          Component{
              id:test1
              Page{
                  id:t1
                  title: "اختبار"

                  AppText{
                      anchors.top: parent.top
                             anchors.right: parent.right
                             text: ":اختر الإجابة الصحيحة"
                  }
              }
          }

}
