import Felgo 3.0
import QtMultimedia 5.9
import QtQuick 2.0
import "../common"
import "../scenes"
SceneBase {
  id:level1
  signal level1Pressed
NavigationStack {
       Page {
           id: page
           title: "learn Arabic"
           Text{
               anchors.centerIn:  parent

               text:"In this level you will learn arabic letters"

               font.pixelSize: 20
               //font.weight: font.bold
               font.bold: true
           }
           AppImage {
                //   source: "../assets/abc3.jpg"
                 }
           AppButton {
                       anchors.bottom: parent.bottom
                       anchors.right: parent.right
                  text: "Start"
                  textFont: Font.bold
                  onClicked :{
                    page.navigationStack.push(first)
                  }
       }
           MenuButton {
             text: "Back to Menu"
             anchors.left: level1.gameWindowAnchorItem.left
             anchors.leftMargin: 10
             anchors.top: level1.gameWindowAnchorItem.top
             anchors.topMargin: 10
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

                   source: "../assets/ا.jpg"
                 }

           AppButton {
                  anchors.bottom:   parent.bottom
                  anchors.right: parent.right
                 text: "Next"
                  textFont: Font.bold


                  onClicked :{
                    firstpage.navigationStack.push(second)
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
                       audio1.play()
                     }
                   }
                 }

                   Audio {
                     id: audio1
                     source: "http://arabicreadingcourse.com/audio/isolated-letters/alif.mp3"
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

                       source: "../assets/ب.png"
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
                           audio.play()
                         }
                       }
                     }

                       Audio {
                         id: audio
                         source: "http://arabicreadingcourse.com/audio/isolated-letters/ba.mp3"
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

                       source: "../assets/ت.png"
                     }

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
                           audio.play()
                         }
                       }
                     }

                       Audio {
                         id: audio
                         source: "http://arabicreadingcourse.com/audio/isolated-letters/ta.mp3"
                       }




}

}

       Component{
           id:forth

           Page{
               id: forthpage
               title: "ث"


               AppImage {
                       anchors.fill: parent

                       fillMode: Image.PreserveAspectFit

                       source: "../assets/ث.png"
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
                           audio.play()
                         }
                       }
                     }

                       Audio {
                         id: audio
                         source: "http://arabicreadingcourse.com/audio/isolated-letters/tha.mp3"
                       }




}

}
       Component{
           id:fifth

           Page{
               id: fifthpage
               title: "ج"


               AppImage {
                       anchors.fill: parent

                       fillMode: Image.PreserveAspectFit

                       source: "../assets/ج.png"
                     }

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
                           audio.play()
                         }
                       }
                     }

                       Audio {
                         id: audio
                         source: "http://arabicreadingcourse.com/audio/isolated-letters/jiim.mp3"
                       }




}

}
       Component{
           id:sixth

           Page{
               id: sixthpage
               title: "ح"


               AppImage {
                       anchors.fill: parent

                       fillMode: Image.PreserveAspectFit

                       source: "../assets/ح.png"
                     }

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
                           audio.play()
                         }
                       }
                     }

                       Audio {
                         id: audio
                         source: "http://arabicreadingcourse.com/audio/isolated-letters/hha.mp3"
                       }




}

}
       Component{
           id:seventh

           Page{
               id: seventhpage
               title: "خ"


               AppImage {
                       anchors.fill: parent

                       fillMode: Image.PreserveAspectFit

                       source: "../assets/خ.png"
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
                           audio.play()
                         }
                       }
                     }

                       Audio {
                         id: audio
                         source: "http://arabicreadingcourse.com/audio/isolated-letters/kha.mp3"
                       }
}

}
       Component{
           id:ninth
           Page{
               id: ninthpage
               title: "د"
               AppImage {
                       anchors.fill: parent

                       fillMode: Image.PreserveAspectFit

                       source: "../assets/د.png"
                     }

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
                           audio.play()
                         }
                       }
                     }

                       Audio {
                         id: audio
                         source: "http://arabicreadingcourse.com/audio/isolated-letters/daal.mp3"
                       }
}
}
       Component{
           id:tenth

           Page{
               id: tenthpage
               title: "ذ"


               AppImage {
                       anchors.fill: parent

                       fillMode: Image.PreserveAspectFit

                       source: "../assets/ذ.png"
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
                           audio.play()
                         }
                       }
                     }

                       Audio {
                         id: audio
                         source: "http://arabicreadingcourse.com/audio/isolated-letters/thaal.mp3"
                       }
}

}
       Component{
           id:eleventh
           Page{
               id: eleventhpage
               title: "ر"
               AppImage {
                       anchors.fill: parent
                       fillMode: Image.PreserveAspectFit
                       source: "../assets/ر.jpg"
                     }
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
                           audio.play()
                         }
                       }
                     }

                       Audio {
                         id: audio
                         source: "http://arabicreadingcourse.com/audio/isolated-letters/ra.mp3"
                       }
}
}
       Component{
           id:twelf

           Page{
               id: twelfpage
               title: "ز"


               AppImage {
                       anchors.fill: parent

                       fillMode: Image.PreserveAspectFit

                       source: "../assets/ز.jpg"
                     }

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
                       audio.play()
                     }
                   }
                 }

                       Audio {
                         id: audio
                         source: "http://arabicreadingcourse.com/audio/isolated-letters/zay.mp3"
                       }
}

}
       Component{
           id:thirteen
           Page{
               id: thirteenpage
               title: "س"
               AppImage {
                       anchors.fill: parent
                       fillMode: Image.PreserveAspectFit
                       source: "../assets/س.png"
                     }
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
                           audio.play()
                         }
                       }
                     }

                       Audio {
                         id: audio
                         source: "http://arabicreadingcourse.com/audio/isolated-letters/siin.mp3"
                       }
}
}
       Component{
           id:fourteen
           Page{
               id: fourteenthpage
               title: "ش"
               AppImage {
                       anchors.fill: parent
                       fillMode: Image.PreserveAspectFit
                       source: "../assets/ش.png"
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
                           audio.play()
                         }
                       }
                     }

                       Audio {
                         id: audio
                         source: "http://arabicreadingcourse.com/audio/isolated-letters/shiin.mp3"
                       }
}
}
       Component{
           id:fiveteen
           Page{
               id: fiveteenthpage
               title: "ص"
               AppImage {
                       anchors.fill: parent
                       fillMode: Image.PreserveAspectFit
                       source: "../assets/ص.png"
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
                           audio.play()
                         }
                       }
                     }

                       Audio {
                         id: audio
                         source: "http://arabicreadingcourse.com/audio/isolated-letters/saad.mp3"
                       }
}
}
       Component{
           id:sixteen
           Page{
               id: sixteenthpage
               title: "ض"
               AppImage {
                       anchors.fill: parent
                       fillMode: Image.PreserveAspectFit
                       source: "../assets/ض.png"
                     }
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
                           audio.play()
                         }
                       }
                     }

                       Audio {
                         id: audio
                         source: "http://arabicreadingcourse.com/audio/isolated-letters/daad.mp3"
                       }
}
}
       Component{
           id:seventeen
           Page{
               id: seventeenthpage
               title: "ط"
               AppImage {
                       anchors.fill: parent
                       fillMode: Image.PreserveAspectFit
                       source: "../assets/ط.png"
                     }
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
                           audio.play()
                         }
                       }
                     }

                       Audio {
                         id: audio
                         source: "http://arabicreadingcourse.com/audio/isolated-letters/taa.mp3"
                       }
}
}
       Component{
           id:eighteen
           Page{
               id: eighteenthpage
               title: "ظ"
               AppImage {
                       anchors.fill: parent
                       fillMode: Image.PreserveAspectFit
                       source: "../assets/ظ.png"
                     }
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
                           audio.play()
                         }
                       }
                     }

                       Audio {
                         id: audio
                         source: "http://arabicreadingcourse.com/audio/isolated-letters/thaa.mp3"
                       }
}
}
       Component{
           id:nineteen
           Page{
               id: nineteenthpage
               title: "ع"
               AppImage {
                       anchors.fill: parent
                       fillMode: Image.PreserveAspectFit
                       source: "../assets/ع.png"
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
                           audio.play()
                         }
                       }
                     }

                       Audio {
                         id: audio
                         source: "http://arabicreadingcourse.com/audio/isolated-letters/ayn.mp3"
                       }
}
}
       Component{
           id:twenty
           Page{
               id: twentypage
               title: "غ"
               AppImage {
                       anchors.fill: parent
                       fillMode: Image.PreserveAspectFit
                       source: "../assets/غ.png"
                     }
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
                           audio.play()
                         }
                       }
                     }

                       Audio {
                         id: audio
                         source: "http://arabicreadingcourse.com/audio/isolated-letters/ghayn.mp3"
                       }
}
}
       Component{
           id:twentyone
           Page{
               id: twentyonepage
               title: "ف"
               AppImage {
                       anchors.fill: parent
                       fillMode: Image.PreserveAspectFit
                       source: "../assets/ف.png"
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
                           audio.play()
                         }
                       }
                     }

                       Audio {
                         id: audio
                         source: "http://arabicreadingcourse.com/audio/isolated-letters/fa.mp3"
                       }
}
}
       Component{
           id:twentytwo
           Page{
               id: twentytwopage
               title: "ق"
               AppImage {
                       anchors.fill: parent
                       fillMode: Image.PreserveAspectFit
                       source: "../assets/ق.png"
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
                           audio.play()
                         }
                       }
                     }

                       Audio {
                         id: audio
                         source: "http://arabicreadingcourse.com/audio/isolated-letters/qaf.mp3"
                       }
}
}
       Component{
           id:twentythree
           Page{
               id: twentythreepage
               title: "ك"
               AppImage {
                       anchors.fill: parent
                       fillMode: Image.PreserveAspectFit
                       source: "../assets/ك.png"
                     }
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
                           audio.play()
                         }
                       }
                     }

                       Audio {
                         id: audio
                         source: "http://arabicreadingcourse.com/audio/isolated-letters/kaf.mp3"
                       }
}
}
       Component{
           id:twentyfour
           Page{
               id: twentyfourpage
               title: "ل"
               AppImage {
                       anchors.fill: parent
                       fillMode: Image.PreserveAspectFit
                       source: "../assets/ل.png"
                     }
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
                           audio.play()
                         }
                       }
                     }

                       Audio {
                         id: audio
                         source: "http://arabicreadingcourse.com/audio/isolated-letters/lam.mp3"
                       }
}
}
       Component{
           id:twentyfive
           Page{
               id: twentyfivepage
               title: "م"
               AppImage {
                       anchors.fill: parent
                       fillMode: Image.PreserveAspectFit
                       source: "../assets/م.png"
                     }
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
                           audio.play()
                         }
                       }
                     }

                       Audio {
                         id: audio
                         source: "http://arabicreadingcourse.com/audio/isolated-letters/miim.mp3"
                       }
}
}
       Component{
           id:twentysix
           Page{
               id: twentysixpage
               title: "ن"
               AppImage {
                       anchors.fill: parent
                       fillMode: Image.PreserveAspectFit
                       source: "../assets/ن.png"
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
                           audio.play()
                         }
                       }
                     }

                       Audio {
                         id: audio
                         source: "http://arabicreadingcourse.com/audio/isolated-letters/nuun.mp3"
                       }
}
}
       Component{
           id:twentyseven
           Page{
               id: twentysevenpage
               title: "ه"
               AppImage {
                       anchors.fill: parent
                       fillMode: Image.PreserveAspectFit
                       source: "../assets/ه.png"
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
                           audio.play()
                         }
                       }
                     }

                       Audio {
                         id: audio
                         source: "http://arabicreadingcourse.com/audio/isolated-letters/ha.mp3"
                       }
}
}
       Component{
           id:twentyeight
           Page{
               id: twentyeightpage
               title: "و"
               AppImage {
                       anchors.fill: parent
                       fillMode: Image.PreserveAspectFit
                       source: "../assets/و.jpg"
                     }
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
                           audio.play()
                         }
                       }
                     }

                       Audio {
                         id: audio
                         source: "http://arabicreadingcourse.com/audio/isolated-letters/waw.mp3"
                       }
}
}
       Component{
           id:twentynine
           Page{
               id: twentyninepage
               title: "ي"
               AppImage {
                       anchors.fill: parent
                       fillMode: Image.PreserveAspectFit
                       source: "../assets/ي.png"
                     }
               AppButton {
                      anchors.bottom:   parent.bottom
                      anchors.right: parent.right
                      text: "Back To Menu"
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
                           audio.play()
                         }
                       }
                     }

                       Audio {
                         id: audio
                         source: "http://arabicreadingcourse.com/audio/isolated-letters/ya.mp3"
                       }
}
}
}
