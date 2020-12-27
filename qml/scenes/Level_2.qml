import Felgo 3.0
import QtMultimedia 5.9
 import QtQuick 2.0
 import "../common"
import "../scenes"
SceneBase {
  id:level2
    signal level2Pressed
  NavigationStack {
         Page {
             id: page
             title: "learn Arabic"
             Text{
                 anchors.centerIn:  parent
                 text:"In this level you will test your memorization<br>for the arabic letters"
                 font.pixelSize: 20
                 font.bold: true
             }
//             AppImage {
//                     source: "../assets/abc3.jpg"
//                   }
             AppButton {
                         anchors.bottom: parent.bottom
                         anchors.right: parent.right
                    text: "Start Learning"
                    textFont: Font.bold
                    onClicked :{
                      page.navigationStack.push(first)
                    }


         }
             MenuButton {
               text: "Back to Menu"
               anchors.left: level2.gameWindowAnchorItem.left
               anchors.leftMargin: 50
               anchors.top: level2.gameWindowAnchorItem.top
               anchors.topMargin: 0
               onClicked: backButtonPressed()
             }


         }
     }

     Component{
         id: first
         Page{
             id: firstpage
             title:"Press Listen and choose the correct letter you heard"

             AppImage {
                     anchors.fill: parent

                     fillMode: Image.PreserveAspectFit

                     source: "../assets/qs.jpg"
                   }


         Row{
                 id:rowbutton
                anchors.centerIn: parent


             AppButton{
                  id: rightx
                  flat: false
                  enabled: !animation.running
                  backgroundColor: "#727272";
                  onClicked:{ backgroundColor="#00ff00"; animation.start()}
                  text: "أ"
             }

             NumberAnimation {
                 id: animation
                         target: rightx
                         property: "rotation"
                         from: 0
                         to: 360
                         duration: 1000
                         easing.type: Easing.InOutBack

                       }
             AppButton{
                  id: wrong1
                  backgroundColor: "#727272";
                  onClicked: backgroundColor="#ff0000";
                  text: "ر";

             }
             AppButton{
                  id: wrong2
                  backgroundColor: "#727272";
                  onClicked: backgroundColor="#ff0000";
                  text: "س";


             }}
             AppButton {
             anchors.bottom:   parent.bottom
             anchors.right: parent.right
            text: "Next"
                     textFont: Font.bold

             onClicked :{
               firstpage.navigationStack.push(second)
             }}
             Column {
                     anchors.bottom: parent.bottom
                     anchors.left: parent.left
                     AppButton {
                       anchors.bottom : parent.bottom
                       anchors.left: parent.left
                      text: "Listen"
                     textFont: Font.bold
                       onClicked: {
                         audio1.play()
                       }
                       Audio {
                                           id: audio1
                                           source: "http://arabicreadingcourse.com/audio/isolated-letters/alif.mp3"
                                         }

                     }
                   }
                 }}

     Component {
         id: second
         Page{
             id : secondpage
             title: "Press Listen and choose the correct letter you heard"

             AppImage {
                     anchors.fill: parent

                     fillMode: Image.PreserveAspectFit

                     source: "../assets/qs.jpg"
                   }


         Row{
                 id:rowbutton
                anchors.centerIn: parent


             AppButton{
                  id: wrong1
                  backgroundColor: "#727272";
                  onClicked: backgroundColor="#ff0000";
                  text: "ر";

             }
             AppButton{
                  id: wrong2
                  backgroundColor: "#727272";
                  onClicked: backgroundColor="#ff0000";
                  text: "س";


             }       AppButton{
                 id: rightx
                 flat: false
                 enabled: !animation.running
                 backgroundColor: "#727272";
                 onClicked:{ backgroundColor="#00ff00"; animation.start()}

                text: "ب";

            }} NumberAnimation {
             id: animation
                     target: rightx
                     property: "rotation"
                     from: 0
                     to: 360
                     duration: 1000
                     easing.type: Easing.InOutBack

                   }
         AppButton {
                anchors.bottom:   parent.bottom
                anchors.right: parent.right
               text: "Next"
                     textFont: Font.bold

                onClicked :{
                  secondpage.navigationStack.push(third)
                }
         }
             Column {
                     anchors.bottom: parent.bottom
                     anchors.left: parent.left
                     AppButton {
                       anchors.bottom : parent.bottom
                       anchors.left: parent.left
                      text: "Listen"
                     textFont: Font.bold
                       onClicked: {
                         audio1.play() }


                       Audio {
                                           id: audio1
                                           source: "http://arabicreadingcourse.com/audio/isolated-letters/ba.mp3"
                                         }

                     }
                   }

//                       Audio {
//                         id: audio
//                         source: "../assets/بطة.m4a"
//                       }


     }}

     Component{
         id:third

         Page{
             id: thirdpage
             title: "Press Listen and choose the correct letter you heard"
        AppImage {
                anchors.fill: parent

                fillMode: Image.PreserveAspectFit

                source: "../assets/qs.jpg"
              }


    Row{
            id:rowbutton
                anchors.centerIn: parent

        AppButton{
            id: rightx
            flat: false
            enabled: !animation.running
            backgroundColor: "#727272";
            onClicked:{ backgroundColor="#00ff00"; animation.start()}

            text: "ت";

        } NumberAnimation {
            id: animation
                    target: rightx
                    property: "rotation"
                    from: 0
                    to: 360
                    duration: 1000
                    easing.type: Easing.InOutBack

                  }
        AppButton{
             id: wrong1
             backgroundColor: "#727272";
             onClicked: backgroundColor="#ff0000";
             text: "ط";

        }
        AppButton{
             id: wrong2
             backgroundColor: "#727272";
             onClicked: backgroundColor="#ff0000";
             text: "ك";


        }}

             AppButton {
                    anchors.bottom:   parent.bottom
                    anchors.right: parent.right
                   text: "Next"
                     textFont: Font.bold

                    onClicked :{
                      thirdpage.navigationStack.push(forth)
                    }
         }
             Column {
                     anchors.bottom: parent.bottom
                     anchors.left: parent.left
                     AppButton {
                       anchors.bottom : parent.bottom
                       anchors.left: parent.left
                      text: "Listen"
                     textFont: Font.bold
                       onClicked: {
                         audio1.play() } Audio {
                     id: audio1
                     source: "http://arabicreadingcourse.com/audio/isolated-letters/ta.mp3"
                   }

                       }
                     }
                   }





}

     Component{
         id:forth

         Page{
             id: forthpage
             title: "Press Listen and choose the correct letter you heard"


        AppImage {
                anchors.fill: parent

                fillMode: Image.PreserveAspectFit

                source: "../assets/qs.jpg"
              }


    Row{
            id:rowbutton
                anchors.centerIn: parent

        AppButton{
             id: wrong1
             backgroundColor: "#727272";
             onClicked: backgroundColor="#ff0000";
             text: "ض";

        }
        AppButton{
             id: wrong2
             backgroundColor: "#727272";
             onClicked: backgroundColor="#ff0000";
             text: "م";


        }
        AppButton{
            id: rightx
            flat: false
            enabled: !animation.running
            backgroundColor: "#727272";
            onClicked:{ backgroundColor="#00ff00"; animation.start()}
            text: "ث";

        }} NumberAnimation {
        id: animation
                target: rightx
                property: "rotation"
                from: 0
                to: 360
                duration: 1000
                easing.type: Easing.InOutBack

              }

             AppButton {
                    anchors.bottom:   parent.bottom
                    anchors.right: parent.right
                   text: "Next"
                     textFont: Font.bold

                    onClicked :{
                      forthpage.navigationStack.push(fifth)
                    }
         }
             Column {
                     anchors.bottom: parent.bottom
                     anchors.left: parent.left
                     AppButton {
                       anchors.bottom : parent.bottom
                       anchors.left: parent.left
                      text: "Listen"
                     textFont: Font.bold
                       onClicked: {
                         audio1.play() } Audio {
                     id: audio1
                     source: "http://arabicreadingcourse.com/audio/isolated-letters/tha.mp3"
                   }

                       }
                     }
                   }}

     Component{
         id:fifth

         Page{
             id: fifthpage
             title: "Press Listen and choose the correct letter you heard"


        AppImage {
                anchors.fill: parent

                fillMode: Image.PreserveAspectFit

                source: "../assets/qs.jpg"
              }


    Row{
            id:rowbutton
                anchors.centerIn: parent

        AppButton{
            id: rightx
            flat: false
            enabled: !animation.running
            backgroundColor: "#727272";
            onClicked:{ backgroundColor="#00ff00"; animation.start()}
            text: "ج";

        } NumberAnimation {
            id: animation
                    target: rightx
                    property: "rotation"
                    from: 0
                    to: 360
                    duration: 1000
                    easing.type: Easing.InOutBack

                  }
        AppButton{
             id: wrong1
             backgroundColor: "#727272";
             onClicked: backgroundColor="#ff0000";
             text: "ف";

        }
        AppButton{
             id: wrong2
             backgroundColor: "#727272";
             onClicked: backgroundColor="#ff0000";
             text: "ق";


        }}

             AppButton {
                    anchors.bottom:   parent.bottom
                    anchors.right: parent.right
                   text: "Next"
                     textFont: Font.bold

                    onClicked :{
                      fifthpage.navigationStack.push(sixth)
                    }
         }
             Column {
                     anchors.bottom: parent.bottom
                     anchors.left: parent.left
                     AppButton {
                       anchors.bottom : parent.bottom
                       anchors.left: parent.left
                      text: "Listen"
                     textFont: Font.bold
                       onClicked: {
                         audio1.play() } Audio {
                     id: audio1
                     source: "http://arabicreadingcourse.com/audio/isolated-letters/jiim.mp3"
                   }

                       }
                     }
                   }




}

     Component{
         id:sixth

         Page{
             id: sixthpage
             title: "Press Listen and choose the correct letter you heard"


        AppImage {
                anchors.fill: parent

                fillMode: Image.PreserveAspectFit

                source: "../assets/qs.jpg"
              }


    Row{
            id:rowbutton
                anchors.centerIn: parent


        AppButton{
             id: wrong1
             backgroundColor: "#727272";
             onClicked: backgroundColor="#ff0000";
             text: "ى";

        }       AppButton{
            id: rightx
            flat: false
            enabled: !animation.running
            backgroundColor: "#727272";
            onClicked:{ backgroundColor="#00ff00"; animation.start()}
           text: "ح";

       } NumberAnimation {
            id: animation
                    target: rightx
                    property: "rotation"
                    from: 0
                    to: 360
                    duration: 1000
                    easing.type: Easing.InOutBack

                  }
        AppButton{
             id: wrong2
             backgroundColor: "#727272";
             onClicked: backgroundColor="#ff0000";
             text: "ل";


        }}

             AppButton {
                    anchors.bottom:   parent.bottom
                    anchors.right: parent.right
                   text: "Next"
                     textFont: Font.bold

                    onClicked :{
                      sixthpage.navigationStack.push(seventh)
                    }
         }
             Column {
                     anchors.bottom: parent.bottom
                     anchors.left: parent.left
                     AppButton {
                       anchors.bottom : parent.bottom
                       anchors.left: parent.left
                      text: "Listen"
                     textFont: Font.bold
                       onClicked: {
                         audio1.play() } Audio {
                     id: audio1
                     source: "http://arabicreadingcourse.com/audio/isolated-letters/hha.mp3"
                   }

                       }
                     }
                   }





}


     Component{
         id:seventh

         Page{
             id: seventhpage
             title: "Press Listen and choose the correct letter you heard"


        AppImage {
                anchors.fill: parent

                fillMode: Image.PreserveAspectFit

                source: "../assets/qs.jpg"
              }


    Row{
            id:rowbutton
                anchors.centerIn: parent


        AppButton{
             id: wrong1
             backgroundColor: "#727272";
             onClicked: backgroundColor="#ff0000";
             text: "ف";

        }
        AppButton{
             id: wrong2
             backgroundColor: "#727272";
             onClicked: backgroundColor="#ff0000";
             text: "ظ";


        }    AppButton{
            id: rightx
            flat: false
            enabled: !animation.running
            backgroundColor: "#727272";
            onClicked:{ backgroundColor="#00ff00"; animation.start()}

           text: "خ";

       }} NumberAnimation {
        id: animation
                target: rightx
                property: "rotation"
                from: 0
                to: 360
                duration: 1000
                easing.type: Easing.InOutBack

              }

             AppButton {
                    anchors.bottom:   parent.bottom
                    anchors.right: parent.right
                   text: "Next"
                     textFont: Font.bold

                    onClicked :{
                      seventhpage.navigationStack.push(ninth)
                    }
         }
             Column {
                     anchors.bottom: parent.bottom
                     anchors.left: parent.left
                     AppButton {
                       anchors.bottom : parent.bottom
                       anchors.left: parent.left
                      text: "Listen"
                     textFont: Font.bold
                       onClicked: {
                         audio1.play() } Audio {
                     id: audio1
                     source: "http://arabicreadingcourse.com/audio/isolated-letters/kha.mp3"
                   }

                       }
                     }
                   }



}


     Component{
         id:ninth

         Page{
             id: ninthpage
             title: "Press Listen and choose the correct letter you heard"


        AppImage {
                anchors.fill: parent

                fillMode: Image.PreserveAspectFit

                source: "../assets/qs.jpg"
              }


    Row{
            id:rowbutton
                anchors.centerIn: parent

        AppButton{
            id: rightx
            flat: false
            enabled: !animation.running
            backgroundColor: "#727272";
            onClicked:{ backgroundColor="#00ff00"; animation.start()}
            text: "د";

        } NumberAnimation {
            id: animation
                    target: rightx
                    property: "rotation"
                    from: 0
                    to: 360
                    duration: 1000
                    easing.type: Easing.InOutBack

                  }
        AppButton{
             id: wrong1
             backgroundColor: "#727272";
             onClicked: backgroundColor="#ff0000";
             text: "ز";

        }
        AppButton{
             id: wrong2
             backgroundColor: "#727272";
             onClicked: backgroundColor="#ff0000";
             text: "س";


        }}

             AppButton {
                    anchors.bottom:   parent.bottom
                    anchors.right: parent.right
                   text: "Next"
                     textFont: Font.bold

                    onClicked :{
                      ninthpage.navigationStack.push(tenth)
                    }
         }
             Column {
                     anchors.bottom: parent.bottom
                     anchors.left: parent.left
                     AppButton {
                       anchors.bottom : parent.bottom
                       anchors.left: parent.left
                      text: "Listen"
                     textFont: Font.bold
                       onClicked: {
                         audio1.play() } Audio {
                     id: audio1
                     source: "http://arabicreadingcourse.com/audio/isolated-letters/daal.mp3"
                   }

                       }
                     }
                   }


}


     Component{
         id:tenth

         Page{
             id: tenthpage
             title: "Press Listen and choose the correct letter you heard"


        AppImage {
                anchors.fill: parent

                fillMode: Image.PreserveAspectFit

                source: "../assets/qs.jpg"
              }


    Row{
            id:rowbutton
                anchors.centerIn: parent


        AppButton{
             id: wrong1
             backgroundColor: "#727272";
             onClicked: backgroundColor="#ff0000";
             text: "ر";

        }
        AppButton{
             id: wrong2
             backgroundColor: "#727272";
             onClicked: backgroundColor="#ff0000";
             text: "س";


        }     AppButton{
            id: rightx
            flat: false
            enabled: !animation.running
            backgroundColor: "#727272";
            onClicked:{ backgroundColor="#00ff00"; animation.start()}

           text: "ذ";

       }} NumberAnimation {
        id: animation
                target: rightx
                property: "rotation"
                from: 0
                to: 360
                duration: 1000
                easing.type: Easing.InOutBack

              }

             AppButton {
                    anchors.bottom:   parent.bottom
                    anchors.right: parent.right
                   text: "Next"
                     textFont: Font.bold

                    onClicked :{
                      tenthpage.navigationStack.push(eleventh)
                    }
         }
             Column {
                     anchors.bottom: parent.bottom
                     anchors.left: parent.left
                     AppButton {
                       anchors.bottom : parent.bottom
                       anchors.left: parent.left
                      text: "Listen"
                     textFont: Font.bold
                       onClicked: {
                         audio1.play() } Audio {
                     id: audio1
                     source: "http://arabicreadingcourse.com/audio/isolated-letters/thaal.mp3"
                   }

                       }
                     }
                   }


}


     Component{
         id:eleventh
         Page{
             id: eleventhpage
             title: "Press Listen and choose the correct letter you heard"
        AppImage {
                anchors.fill: parent

                fillMode: Image.PreserveAspectFit

                source: "../assets/qs.jpg"
              }


    Row{
            id:rowbutton
                anchors.centerIn: parent


        AppButton{
             id: wrong1
             backgroundColor: "#727272";
             onClicked: backgroundColor="#ff0000";
             text: "ش";

        }   AppButton{
            id: rightx
            flat: false
            enabled: !animation.running
            backgroundColor: "#727272";
            onClicked:{ backgroundColor="#00ff00"; animation.start()}

           text: "ر";

       } NumberAnimation {
            id: animation
                    target: rightx
                    property: "rotation"
                    from: 0
                    to: 360
                    duration: 1000
                    easing.type: Easing.InOutBack

                  }
        AppButton{
             id: wrong2
             backgroundColor: "#727272";
             onClicked: backgroundColor="#ff0000";
             text: "ع";


        }}
             AppButton {
                    anchors.bottom:   parent.bottom
                    anchors.right: parent.right
                   text: "Next"
                     textFont: Font.bold

                    onClicked :{
                      eleventhpage.navigationStack.push(twelf)
                    }
         }
             Column {
                     anchors.bottom: parent.bottom
                     anchors.left: parent.left
                     AppButton {
                       anchors.bottom : parent.bottom
                       anchors.left: parent.left
                      text: "Listen"
                     textFont: Font.bold
                       onClicked: {
                         audio1.play() } Audio {
                     id: audio1
                     source: "http://arabicreadingcourse.com/audio/isolated-letters/raa.mp3"
                   }

                       }
                     }
                   }

}

     Component{
         id:twelf

         Page{
             id: twelfpage
             title: "Press Listen and choose the correct letter you heard"


        AppImage {
                anchors.fill: parent

                fillMode: Image.PreserveAspectFit

                source: "../assets/qs.jpg"
              }


    Row{
            id:rowbutton
                anchors.centerIn: parent

        AppButton{
            id: rightx
            flat: false
            enabled: !animation.running
            backgroundColor: "#727272";
            onClicked:{ backgroundColor="#00ff00"; animation.start()}
            text: "ز";

        } NumberAnimation {
            id: animation
                    target: rightx
                    property: "rotation"
                    from: 0
                    to: 360
                    duration: 1000
                    easing.type: Easing.InOutBack

                  }
        AppButton{
             id: wrong1
             backgroundColor: "#727272";
             onClicked: backgroundColor="#ff0000";
             text: "ظ";

        }
        AppButton{
             id: wrong2
             backgroundColor: "#727272";
             onClicked: backgroundColor="#ff0000";
             text: "ق";


        }}
             AppButton {
                    anchors.bottom:   parent.bottom
                    anchors.right: parent.right
                   text: "Next"
                     textFont: Font.bold

                    onClicked :{
                      twelfpage.navigationStack.push(thirteen)
                    }
         }
             Column {
                 anchors.bottom: parent.bottom
                 anchors.left: parent.left
                 AppButton {
                   anchors.bottom : parent.bottom
                   anchors.left: parent.left
                  text: "Listen"
                     textFont: Font.bold
                   onClicked: {
                     audio1.play() } Audio {
                     id: audio1
                     source: "http://arabicreadingcourse.com/audio/isolated-letters/zay.mp3"
                   }

                   }
                 }
               }




}


     Component{
         id:thirteen
         Page{
             id: thirteenpage
             title: "Press Listen and choose the correct letter you heard"
        AppImage {
                anchors.fill: parent

                fillMode: Image.PreserveAspectFit

                source: "../assets/qs.jpg"
              }


    Row{
            id:rowbutton
                anchors.centerIn: parent

        AppButton{
            id: rightx
            flat: false
            enabled: !animation.running
            backgroundColor: "#727272";
            onClicked:{ backgroundColor="#00ff00"; animation.start()}
            text: "س";

        } NumberAnimation {
            id: animation
                    target: rightx
                    property: "rotation"
                    from: 0
                    to: 360
                    duration: 1000
                    easing.type: Easing.InOutBack

                  }
        AppButton{
             id: wrong1
             backgroundColor: "#727272";
             onClicked: backgroundColor="#ff0000";
             text: "ض";

        }
        AppButton{
             id: wrong2
             backgroundColor: "#727272";
             onClicked: backgroundColor="#ff0000";
             text: "ل";


        }}
             AppButton {
                    anchors.bottom:   parent.bottom
                    anchors.right: parent.right
                   text: "Next"
                     textFont: Font.bold

                    onClicked :{
                      thirteenpage.navigationStack.push(fourteen)
                    }
         }
             Column {
                     anchors.bottom: parent.bottom
                     anchors.left: parent.left
                     AppButton {
                       anchors.bottom : parent.bottom
                       anchors.left: parent.left
                      text: "Listen"
                     textFont: Font.bold
                       onClicked: {
                         audio1.play() } Audio {
                     id: audio1
                     source: "http://arabicreadingcourse.com/audio/isolated-letters/siin.mp3"
                   }

                       }
                     }
                   }


}

     Component{
         id:fourteen
         Page{
             id: fourteenthpage
             title: "Press Listen and choose the correct letter you heard"
        AppImage {
                anchors.fill: parent

                fillMode: Image.PreserveAspectFit

                source: "../assets/qs.jpg"
              }


    Row{
            id:rowbutton
                anchors.centerIn: parent


        AppButton{
             id: wrong1
             backgroundColor: "#727272";
             onClicked: backgroundColor="#ff0000";
             text: "ث";

        }
        AppButton{
             id: wrong2
             backgroundColor: "#727272";
             onClicked: backgroundColor="#ff0000";
             text: "ت";


        }     AppButton{
            id: rightx
            flat: false
            enabled: !animation.running
            backgroundColor: "#727272";
            onClicked:{ backgroundColor="#00ff00"; animation.start()}

           text: "ش";

       }} NumberAnimation {
        id: animation
                target: rightx
                property: "rotation"
                from: 0
                to: 360
                duration: 1000
                easing.type: Easing.InOutBack

              }
             AppButton {
                    anchors.bottom:   parent.bottom
                    anchors.right: parent.right
                   text: "Next"
                     textFont: Font.bold

                    onClicked :{
                      fourteenthpage.navigationStack.push(fiveteen)
                    }
         }
             Column {
                     anchors.bottom: parent.bottom
                     anchors.left: parent.left
                     AppButton {
                       anchors.bottom : parent.bottom
                       anchors.left: parent.left
                      text: "Listen"
                     textFont: Font.bold
                       onClicked: {
                         audio1.play() } Audio {
                     id: audio1
                     source: "http://arabicreadingcourse.com/audio/isolated-letters/shiin.mp3"
                   }

                       }
                     }
                   }


}

     Component{
         id:fiveteen
         Page{
             id: fiveteenthpage
             title: "Press Listen and choose the correct letter you heard"
        AppImage {
                anchors.fill: parent

                fillMode: Image.PreserveAspectFit

                source: "../assets/qs.jpg"
              }


    Row{
            id:rowbutton
                anchors.centerIn: parent


        AppButton{
             id: wrong1
             backgroundColor: "#727272";
             onClicked: backgroundColor="#ff0000";
             text: "ث";

        }
        AppButton{
             id: wrong2
             backgroundColor: "#727272";
             onClicked: backgroundColor="#ff0000";
             text: "س";


        }    AppButton{
            id: rightx
            flat: false
            enabled: !animation.running
            backgroundColor: "#727272";
            onClicked:{ backgroundColor="#00ff00"; animation.start()}

           text: "ص";

       }} NumberAnimation {
        id: animation
                target: rightx
                property: "rotation"
                from: 0
                to: 360
                duration: 1000
                easing.type: Easing.InOutBack

              }
             AppButton {
                    anchors.bottom:   parent.bottom
                    anchors.right: parent.right
                   text: "Next"
                     textFont: Font.bold

                    onClicked :{
                      fiveteenthpage.navigationStack.push(sixteen)
                    }
         }
             Column {
                     anchors.bottom: parent.bottom
                     anchors.left: parent.left
                     AppButton {
                       anchors.bottom : parent.bottom
                       anchors.left: parent.left
                      text: "Listen"
                     textFont: Font.bold
                       onClicked: {
                         audio1.play() } Audio {
                     id: audio1
                     source: "http://arabicreadingcourse.com/audio/isolated-letters/saad.mp3"
                   }

                       }
                     }
                   }


}

     Component{
         id:sixteen
         Page{
             id: sixteenthpage
             title: "Press Listen and choose the correct letter you heard"
        AppImage {
                anchors.fill: parent

                fillMode: Image.PreserveAspectFit

                source: "../assets/qs.jpg"
              }


    Row{
            id:rowbutton
                anchors.centerIn: parent


        AppButton{
             id: wrong1
             backgroundColor: "#727272";
             onClicked: backgroundColor="#ff0000";
             text: "ط";

        } AppButton{
            id: rightx
            flat: false
            enabled: !animation.running
            backgroundColor: "#727272";
            onClicked:{ backgroundColor="#00ff00"; animation.start()}

           text: "ض";

       } NumberAnimation {
            id: animation
                    target: rightx
                    property: "rotation"
                    from: 0
                    to: 360
                    duration: 1000
                    easing.type: Easing.InOutBack

                  }
        AppButton{
             id: wrong2
             backgroundColor: "#727272";
             onClicked: backgroundColor="#ff0000";
             text: "خ";


        }}
             AppButton {
                    anchors.bottom:   parent.bottom
                    anchors.right: parent.right
                   text: "Next"
                     textFont: Font.bold

                    onClicked :{
                      sixteenthpage.navigationStack.push(seventeen)
                    }
         }
             Column {
                     anchors.bottom: parent.bottom
                     anchors.left: parent.left
                     AppButton {
                       anchors.bottom : parent.bottom
                       anchors.left: parent.left
                      text: "Listen"
                     textFont: Font.bold
                       onClicked: {
                         audio1.play() } Audio {
                     id: audio1
                     source: "http://arabicreadingcourse.com/audio/isolated-letters/daad.mp3"
                   }

                       }
                     }
                   }


}

     Component{
         id:seventeen
         Page{
             id: seventeenthpage
             title: "Press Listen and choose the correct letter you heard"
        AppImage {
                anchors.fill: parent

                fillMode: Image.PreserveAspectFit

                source: "../assets/qs.jpg"
              }


    Row{
            id:rowbutton
                anchors.centerIn: parent

        AppButton{
            id: rightx
            flat: false
            enabled: !animation.running
            backgroundColor: "#727272";
            onClicked:{ backgroundColor="#00ff00"; animation.start()}

            text: "ط";

        } NumberAnimation {
            id: animation
                    target: rightx
                    property: "rotation"
                    from: 0
                    to: 360
                    duration: 1000
                    easing.type: Easing.InOutBack

                  }
        AppButton{
             id: wrong1
             backgroundColor: "#727272";
             onClicked: backgroundColor="#ff0000";
             text: "ت";

        }
        AppButton{
             id: wrong2
             backgroundColor: "#727272";
             onClicked: backgroundColor="#ff0000";
             text: "ض";


        }}
             AppButton {
                    anchors.bottom:   parent.bottom
                    anchors.right: parent.right
                   text: "Next"
                     textFont: Font.bold

                    onClicked :{
                      seventeenthpage.navigationStack.push(eighteen)
                    }
         }
             Column {
                     anchors.bottom: parent.bottom
                     anchors.left: parent.left
                     AppButton {
                       anchors.bottom : parent.bottom
                       anchors.left: parent.left
                      text: "Listen"
                     textFont: Font.bold
                       onClicked: {
                         audio1.play() } Audio {
                     id: audio1
                     source: "http://arabicreadingcourse.com/audio/isolated-letters/taa.mp3"
                   }

                       }
                     }
                   }


}

     Component{
         id:eighteen
         Page{
             id: eighteenthpage
             title: "Press Listen and choose the correct letter you heard"
        AppImage {
                anchors.fill: parent

                fillMode: Image.PreserveAspectFit

                source: "../assets/qs.jpg"
              }


    Row{
            id:rowbutton
                anchors.centerIn: parent

        AppButton{
            id: rightx
            flat: false
            enabled: !animation.running
            backgroundColor: "#727272";
            onClicked:{ backgroundColor="#00ff00"; animation.start()}

            text: "ظ";

        } NumberAnimation {
            id: animation
                    target: rightx
                    property: "rotation"
                    from: 0
                    to: 360
                    duration: 1000
                    easing.type: Easing.InOutBack

                  }
        AppButton{
             id: wrong1
             backgroundColor: "#727272";
             onClicked: backgroundColor="#ff0000";
             text: "ز";

        }
        AppButton{
             id: wrong2
             backgroundColor: "#727272";
             onClicked: backgroundColor="#ff0000";
             text: "س";


        }}
             AppButton {
                    anchors.bottom:   parent.bottom
                    anchors.right: parent.right
                   text: "Next"
                     textFont: Font.bold

                    onClicked :{
                      eighteenthpage.navigationStack.push(nineteen)
                    }
         }
             Column {
                     anchors.bottom: parent.bottom
                     anchors.left: parent.left
                     AppButton {
                       anchors.bottom : parent.bottom
                       anchors.left: parent.left
                      text: "Listen"
                     textFont: Font.bold
                       onClicked: {
                         audio1.play() } Audio {
                     id: audio1
                     source: "http://arabicreadingcourse.com/audio/isolated-letters/thaa.mp3"
                   }

                       }
                     }
                   }

}

     Component{
         id:nineteen
         Page{
             id: nineteenthpage
             title: "Press Listen and choose the correct letter you heard"
        AppImage {
                anchors.fill: parent

                fillMode: Image.PreserveAspectFit

                source: "../assets/qs.jpg"
              }


    Row{
            id:rowbutton
                anchors.centerIn: parent


        AppButton{
             id: wrong1
             backgroundColor: "#727272";
             onClicked: backgroundColor="#ff0000";
             text: "ب";

        }
        AppButton{
             id: wrong2
             backgroundColor: "#727272";
             onClicked: backgroundColor="#ff0000";
             text: "ه";


        }  AppButton{
            id: rightx
            flat: false
            enabled: !animation.running
            backgroundColor: "#727272";
            onClicked:{ backgroundColor="#00ff00"; animation.start()}

           text: "ع";

       }} NumberAnimation {
        id: animation
                target: rightx
                property: "rotation"
                from: 0
                to: 360
                duration: 1000
                easing.type: Easing.InOutBack

              }
             AppButton {
                    anchors.bottom:   parent.bottom
                    anchors.right: parent.right
                   text: "Next"
                     textFont: Font.bold

                    onClicked :{
                      nineteenthpage.navigationStack.push(twenty)
                    }
         }
             Column {
                     anchors.bottom: parent.bottom
                     anchors.left: parent.left
                     AppButton {
                       anchors.bottom : parent.bottom
                       anchors.left: parent.left
                      text: "Listen"
                     textFont: Font.bold
                       onClicked: {
                         audio1.play() } Audio {
                     id: audio1
                     source: "http://arabicreadingcourse.com/audio/isolated-letters/ayn.mp3"
                   }

                       }
                     }
                   }


}

     Component{
         id:twenty
         Page{
             id: twentypage
             title: "Press Listen and choose the correct letter you heard"
        AppImage {
                anchors.fill: parent

                fillMode: Image.PreserveAspectFit

                source: "../assets/qs.jpg"
              }


    Row{
            id:rowbutton
                anchors.centerIn: parent


        AppButton{
             id: wrong1
             backgroundColor: "#727272";
             onClicked: backgroundColor="#ff0000";
             text: "ذ";

        }      AppButton{
            id: rightx
            flat: false
            enabled: !animation.running
            backgroundColor: "#727272";
            onClicked:{ backgroundColor="#00ff00"; animation.start()}
           text: "غ";

       } NumberAnimation {
            id: animation
                    target: rightx
                    property: "rotation"
                    from: 0
                    to: 360
                    duration: 1000
                    easing.type: Easing.InOutBack

                  }
        AppButton{
             id: wrong2
             backgroundColor: "#727272";
             onClicked: backgroundColor="#ff0000";
             text: "ج";


        }}
             AppButton {
                    anchors.bottom:   parent.bottom
                    anchors.right: parent.right
                   text: "Next"
                     textFont: Font.bold

                    onClicked :{
                      twentypage.navigationStack.push(twentyone)
                    }
         }
             Column {
                     anchors.bottom: parent.bottom
                     anchors.left: parent.left
                     AppButton {
                       anchors.bottom : parent.bottom
                       anchors.left: parent.left
                      text: "Listen"
                     textFont: Font.bold
                       onClicked: {
                         audio1.play() } Audio {
                     id: audio1
                     source: "http://arabicreadingcourse.com/audio/isolated-letters/ghayn.mp3"
                   }

                       }
                     }
                   }

}

     Component{
         id:twentyone
         Page{
             id: twentyonepage
             title: "Press Listen and choose the correct letter you heard"
        AppImage {
                anchors.fill: parent

                fillMode: Image.PreserveAspectFit

                source: "../assets/qs.jpg"
              }


    Row{
            id:rowbutton
                anchors.centerIn: parent


        AppButton{
             id: wrong1
             backgroundColor: "#727272";
             onClicked: backgroundColor="#ff0000";
             text: "ر";

        }
        AppButton{
             id: wrong2
             backgroundColor: "#727272";
             onClicked: backgroundColor="#ff0000";
             text: "ن";


        }  AppButton{
            id: rightx
            flat: false
            enabled: !animation.running
            backgroundColor: "#727272";
            onClicked:{ backgroundColor="#00ff00"; animation.start()}

           text: "ف";

       }} NumberAnimation {
        id: animation
                target: rightx
                property: "rotation"
                from: 0
                to: 360
                duration: 1000
                easing.type: Easing.InOutBack

              }
             AppButton {
                    anchors.bottom:   parent.bottom
                    anchors.right: parent.right
                   text: "Next"
                     textFont: Font.bold

                    onClicked :{
                      twentyonepage.navigationStack.push(twentytwo)
                    }
         }
             Column {
                     anchors.bottom: parent.bottom
                     anchors.left: parent.left
                     AppButton {
                       anchors.bottom : parent.bottom
                       anchors.left: parent.left
                      text: "Listen"
                     textFont: Font.bold
                       onClicked: {
                         audio1.play() } Audio {
                     id: audio1
                     source: "http://arabicreadingcourse.com/audio/isolated-letters/fa.mp3"
                   }

                       }
                     }
                   }
}

     Component{
         id:twentytwo
         Page{
             id: twentytwopage
             title: "Press Listen and choose the correct letter you heard"
        AppImage {
                anchors.fill: parent

                fillMode: Image.PreserveAspectFit

                source: "../assets/qs.jpg"
              }


    Row{
            id:rowbutton
                anchors.centerIn: parent


        AppButton{
             id: wrong1
             backgroundColor: "#727272";
             onClicked: backgroundColor="#ff0000";
             text: "ض";

        }
        AppButton{
             id: wrong2
             backgroundColor: "#727272";
             onClicked: backgroundColor="#ff0000";
             text: "ك";


        } AppButton{
            id: rightx
            flat: false
            enabled: !animation.running
            backgroundColor: "#727272";
            onClicked:{ backgroundColor="#00ff00"; animation.start()}
           text: "ق";

       }} NumberAnimation {
        id: animation
                target: rightx
                property: "rotation"
                from: 0
                to: 360
                duration: 1000
                easing.type: Easing.InOutBack

              }
             AppButton {
                    anchors.bottom:   parent.bottom
                    anchors.right: parent.right
                   text: "Next"
                     textFont: Font.bold

                    onClicked :{
                      twentytwopage.navigationStack.push(twentythree)
                    }
         }
             Column {
                     anchors.bottom: parent.bottom
                     anchors.left: parent.left
                     AppButton {
                       anchors.bottom : parent.bottom
                       anchors.left: parent.left
                      text: "Listen"
                     textFont: Font.bold
                       onClicked: {
                         audio1.play() } Audio {
                     id: audio1
                     source: "http://arabicreadingcourse.com/audio/isolated-letters/qaf.mp3"
                   }

                       }
                     }
                   }

}

     Component{
         id:twentythree
         Page{
             id: twentythreepage
             title: "Press Listen and choose the correct letter you heard"
        AppImage {
                anchors.fill: parent

                fillMode: Image.PreserveAspectFit

                source: "../assets/qs.jpg"
              }


    Row{
            id:rowbutton
                anchors.centerIn: parent

        AppButton{
            id: rightx
            flat: false
            enabled: !animation.running
            backgroundColor: "#727272";
            onClicked:{ backgroundColor="#00ff00"; animation.start()}

            text: "ك";

        } NumberAnimation {
            id: animation
                    target: rightx
                    property: "rotation"
                    from: 0
                    to: 360
                    duration: 1000
                    easing.type: Easing.InOutBack

                  }
        AppButton{
             id: wrong1
             backgroundColor: "#727272";
             onClicked: backgroundColor="#ff0000";
             text: "ط";

        }
        AppButton{
             id: wrong2
             backgroundColor: "#727272";
             onClicked: backgroundColor="#ff0000";
             text: "د";


        }}
             AppButton {
                    anchors.bottom:   parent.bottom
                    anchors.right: parent.right
                   text: "Next"
                     textFont: Font.bold

                    onClicked :{
                      twentythreepage.navigationStack.push(twentyfour)
                    }
         }
             Column {
                     anchors.bottom: parent.bottom
                     anchors.left: parent.left
                     AppButton {
                       anchors.bottom : parent.bottom
                       anchors.left: parent.left
                      text: "Listen"
                     textFont: Font.bold
                       onClicked: {
                         audio1.play() } Audio {
                     id: audio1
                     source: "http://arabicreadingcourse.com/audio/isolated-letters/kaf.mp3"
                   }

                       }
                     }
                   }



}

     Component{
         id:twentyfour
         Page{
             id: twentyfourpage
             title: "Press Listen and choose the correct letter you heard"
        AppImage {
                anchors.fill: parent

                fillMode: Image.PreserveAspectFit

                source: "../assets/qs.jpg"
              }


    Row{
            id:rowbutton
                anchors.centerIn: parent

        AppButton{
            id: rightx
            flat: false
            enabled: !animation.running
            backgroundColor: "#727272";
            onClicked:{ backgroundColor="#00ff00"; animation.start()}
            text: "ل";

        } NumberAnimation {
            id: animation
                    target: rightx
                    property: "rotation"
                    from: 0
                    to: 360
                    duration: 1000
                    easing.type: Easing.InOutBack

                  }
        AppButton{
             id: wrong1
             backgroundColor: "#727272";
             onClicked: backgroundColor="#ff0000";
             text: "و";

        }
        AppButton{
             id: wrong2
             backgroundColor: "#727272";
             onClicked: backgroundColor="#ff0000";
             text: "ا";


        }}
             AppButton {
                    anchors.bottom:   parent.bottom
                    anchors.right: parent.right
                   text: "Next"
                     textFont: Font.bold

                    onClicked :{
                      twentyfourpage.navigationStack.push(twentyfive)
                    }
         }
             Column {
                     anchors.bottom: parent.bottom
                     anchors.left: parent.left
                     AppButton {
                       anchors.bottom : parent.bottom
                       anchors.left: parent.left
                      text: "Listen"
                     textFont: Font.bold
                       onClicked: {
                         audio1.play() } Audio {
                     id: audio1
                     source: "http://arabicreadingcourse.com/audio/isolated-letters/lam.mp3"
                   }

                       }
                     }
                   }


}

     Component{
         id:twentyfive
         Page{
             id: twentyfivepage
             title: "Press Listen and choose the correct letter you heard"
        AppImage {
                anchors.fill: parent

                fillMode: Image.PreserveAspectFit

                source: "../assets/qs.jpg"
              }


    Row{
            id:rowbutton
                anchors.centerIn: parent


        AppButton{
             id: wrong1
             backgroundColor: "#727272";
             onClicked: backgroundColor="#ff0000";
             text: "ر";

        }
        AppButton{
            id: rightx
            flat: false
            enabled: !animation.running
            backgroundColor: "#727272";
            onClicked:{ backgroundColor="#00ff00"; animation.start()}

            text: "م";

        } NumberAnimation {
            id: animation
                    target: rightx
                    property: "rotation"
                    from: 0
                    to: 360
                    duration: 1000
                    easing.type: Easing.InOutBack

                  }
        AppButton{
             id: wrong2
             backgroundColor: "#727272";
             onClicked: backgroundColor="#ff0000";
             text: "غ";


        }}
             AppButton {
                    anchors.bottom:   parent.bottom
                    anchors.right: parent.right
                   text: "Next"
                     textFont: Font.bold

                    onClicked :{
                      twentyfivepage.navigationStack.push(twentysix)
                    }
         }
             Column {
                     anchors.bottom: parent.bottom
                     anchors.left: parent.left
                     AppButton {
                       anchors.bottom : parent.bottom
                       anchors.left: parent.left
                      text: "Listen"
                     textFont: Font.bold
                       onClicked: {
                         audio1.play() } Audio {
                     id: audio1
                     source: "http://arabicreadingcourse.com/audio/isolated-letters/miim.mp3"
                   }

                       }
                     }
                   }


}

     Component{
         id:twentysix
         Page{
             id: twentysixpage
             title: "Press Listen and choose the correct letter you heard"
        AppImage {
                anchors.fill: parent

                fillMode: Image.PreserveAspectFit

                source: "../assets/qs.jpg"
              }


    Row{
            id:rowbutton
                anchors.centerIn: parent


        AppButton{
             id: wrong1
             backgroundColor: "#727272";
             onClicked: backgroundColor="#ff0000";
             text: "ف";

        }
        AppButton{
             id: wrong2
             backgroundColor: "#727272";
             onClicked: backgroundColor="#ff0000";
             text: "ش";


        }  AppButton{
            id: rightx
            flat: false
            enabled: !animation.running
            backgroundColor: "#727272";
            onClicked:{ backgroundColor="#00ff00"; animation.start()}
           text: "ن";

       }} NumberAnimation {
        id: animation
                target: rightx
                property: "rotation"
                from: 0
                to: 360
                duration: 1000
                easing.type: Easing.InOutBack

              }
             AppButton {
                    anchors.bottom:   parent.bottom
                    anchors.right: parent.right
                   text: "Next"
                     textFont: Font.bold

                    onClicked :{
                      twentysixpage.navigationStack.push(twentyseven)
                    }
         }
             Column {
                     anchors.bottom: parent.bottom
                     anchors.left: parent.left
                     AppButton {
                       anchors.bottom : parent.bottom
                       anchors.left: parent.left
                      text: "Listen"
                     textFont: Font.bold
                       onClicked: {
                         audio1.play() } Audio {
                     id: audio1
                     source: "http://arabicreadingcourse.com/audio/isolated-letters/nuun.mp3"
                   }

                       }
                     }
                   }

}

     Component{
         id:twentyseven
         Page{
             id: twentysevenpage
             title: "Press Listen and choose the correct letter you heard"
        AppImage {
                anchors.fill: parent

                fillMode: Image.PreserveAspectFit

                source: "../assets/qs.jpg"
              }


    Row{
            id:rowbutton
                anchors.centerIn: parent


        AppButton{
             id: wrong1
             backgroundColor: "#727272";
             onClicked: backgroundColor="#ff0000";
             text: "ح";

        }
        AppButton{
             id: wrong2
             backgroundColor: "#727272";
             onClicked: backgroundColor="#ff0000";
             text: "ع";


        } AppButton{
            id: rightx
            flat: false
            enabled: !animation.running
            backgroundColor: "#727272";
            onClicked:{ backgroundColor="#00ff00"; animation.start()}

           text: "ه";

       }} NumberAnimation {
        id: animation
                target: rightx
                property: "rotation"
                from: 0
                to: 360
                duration: 1000
                easing.type: Easing.InOutBack

              }
             AppButton {
                    anchors.bottom:   parent.bottom
                    anchors.right: parent.right
                   text: "Next"
                     textFont: Font.bold

                    onClicked :{
                     twentysevenpage.navigationStack.push(twentyeight)
                    }
         }
             Column {
                     anchors.bottom: parent.bottom
                     anchors.left: parent.left
                     AppButton {
                       anchors.bottom : parent.bottom
                       anchors.left: parent.left
                      text: "Listen"
                     textFont: Font.bold
                       onClicked: {
                         audio1.play() } Audio {
                     id: audio1
                     source: "http://arabicreadingcourse.com/audio/isolated-letters/ha.mp3"
                   }

                       }
                     }
                   }


}

     Component{
         id:twentyeight
         Page{
             id: twentyeightpage
             title: "Press Listen and choose the correct letter you heard"
        AppImage {
                anchors.fill: parent

                fillMode: Image.PreserveAspectFit

                source: "../assets/qs.jpg"
              }


    Row{
            id:rowbutton
                anchors.centerIn: parent

        AppButton{
            id: rightx
            flat: false
            enabled: !animation.running
            backgroundColor: "#727272";
            onClicked:{ backgroundColor="#00ff00"; animation.start()}

            text: "و";

        } NumberAnimation {
            id: animation
                    target: rightx
                    property: "rotation"
                    from: 0
                    to: 360
                    duration: 1000
                    easing.type: Easing.InOutBack

                  }
        AppButton{
             id: wrong1
             backgroundColor: "#727272";
             onClicked: backgroundColor="#ff0000";
             text: "ك";

        }
        AppButton{
             id: wrong2
             backgroundColor: "#727272";
             onClicked: backgroundColor="#ff0000";
             text: "ط";


        }}
             AppButton {
                    anchors.bottom:   parent.bottom
                    anchors.right: parent.right
                   text: "Next"
                     textFont: Font.bold

                    onClicked :{
                      twentyeightpage.navigationStack.push(twentynine)
                    }
         }
             Column {
                     anchors.bottom: parent.bottom
                     anchors.left: parent.left
                     AppButton {
                       anchors.bottom : parent.bottom
                       anchors.left: parent.left
                      text: "Listen"
                     textFont: Font.bold
                       onClicked: {
                         audio1.play() } Audio {
                     id: audio1
                     source: "http://arabicreadingcourse.com/audio/isolated-letters/waw.mp3"
                   }

                       }
                     }
                   }


}

     Component{
         id:twentynine
         Page{
             id: twentyninepage
             title: "Press Listen and choose the correct letter you heard"
        AppImage {
                anchors.fill: parent

                fillMode: Image.PreserveAspectFit

                source: "../assets/qs.jpg"
              }


    Row{
            id:rowbutton
                anchors.centerIn: parent

        AppButton{
             id: wrong1
             backgroundColor: "#727272";
             onClicked: backgroundColor="#ff0000";
             text: "ش";

        }

        AppButton{
            id: rightx
            flat: false
            enabled: !animation.running
            backgroundColor: "#727272";
            onClicked:{ backgroundColor="#00ff00"; animation.start()}

            text: "ي";

        }
        NumberAnimation {
            id: animation
                    target: rightx
                    property: "rotation"
                    from: 0
                    to: 360
                    duration: 1000
                    easing.type: Easing.InOutBack

                  }
        AppButton{
             id: wrong2
             backgroundColor: "#727272";
             onClicked: backgroundColor="#ff0000";
             text: "ن";


        }}
             AppButton {
                    anchors.bottom:   parent.bottom
                    anchors.right: parent.right
                    text: "back to Menu"

                    onClicked : backButtonPressed()
         }
             Column {
                     anchors.bottom: parent.bottom
                     anchors.left: parent.left
                     AppButton {
                       anchors.bottom : parent.bottom
                       anchors.left: parent.left
                      text: "Listen"
                     textFont: Font.bold
                       onClicked: {
                         audio1.play() } Audio {
                     id: audio1
                     source: "http://arabicreadingcourse.com/audio/isolated-letters/ya.mp3"
                   }

                       }
                     }
                   }


}
}





