import QtQuick 2.0
import QtMultimedia 5.9
import Felgo 3.0
import "../common"
import "../scenes"

SceneBase {
  id:level3
    signal level3Pressed
  NavigationStack {

         Page {
             id: page

             title: "learn Arabic"
             Text{
                 anchors.centerIn:  parent
                 text:"In this level you will learn some word<br>that begins with arabic letters"
                 font.pixelSize: 20
                 font.bold: true
             }
             AppImage {
                     source: "../assets/abc3.jpg"
                   }
             AppButton {
                         anchors.bottom: parent.bottom
                         anchors.right: parent.right
                    text: "Start "
                    textFont: Font.bold
                    onClicked :{
                      page.navigationStack.push(first)
                    }
         }
             MenuButton {
               text: "Menu"
               anchors.left: level3.gameWindowAnchorItem.left
               anchors.leftMargin: 50
               anchors.top: level3.gameWindowAnchorItem.top
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

                     source: "../assets/lion.png"
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
                     source: "../assets/lion.mp3"
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

                         source: "../assets/bta.png"
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
                         source: "../assets/بطه.mp3"
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

                         source: "../assets/croco.png"
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
                         source: "../assets/تمساح.mp3"
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

                         source: "../assets/foxa.jpg"
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
                         source: "../assets/ثعلب.mp3"
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

                         source: "../assets/camel.png"
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
                         source: "../assets/جمل.mp3"
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

                         source: "../assets/hourse.png"
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
                         source: "../assets/حصان.mp3"
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

                         source: "../assets/rof.png"
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
                         source: "../assets/خروف.mp3"
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

                         source: "../assets/chick.png"
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
                         source: "../assets/دجاجه.mp3"
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

                         source: "../assets/fox.png"
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
                         source: "../assets/ذئب.mp3"
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
                         source: "../assets/man.png"
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
                         source: "../assets/رجل.mp3"
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

                         source: "../assets/zrafa.png"
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
                         source: "../assets/زرافه.mp3"
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
                         source: "../assets/fish.png"
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
                         source: "../assets/سمك.mp3"
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
                         source: "../assets/sun.png"
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
                         source: "../assets/شمس.mp3"
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
                         source: "../assets/skr.png"
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
                         source: "../assets/صقر.mp3"
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
                         source: "../assets/frag.png"
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
                         source: "../assets/ضفدع.mp3"
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
                         source: "../assets/plane.png"
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
                         source: "../assets/طائره.mp3"
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
                         source: "../assets/zrf.jpg"
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
                         source: "../assets/ظرف.mp3"
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
                         source: "../assets/asfora.png"
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
                         source: "../assets/عصفور.mp3"
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
                         source: "../assets/submarin.png"
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
                         source: "../assets/غواصه.mp3"
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
                         source: "../assets/butter.png"
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
                         source: "../assets/فراشه.mp3"
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
                         source: "../assets/caty.jpg"
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
                         source: "../assets/قطه.mp3"
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
                         source: "../assets/dogo.png"
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
                         source: "../assets/كلب.mp3"
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
                         source: "../assets/lemo.png"
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
                         source: "../assets/ليمون.mp3"
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
                         source: "../assets/bannana.png"
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
                         source: "../assets/موز.mp3"
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
                         source: "../assets/be.png"
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
                         source: "../assets/ن نحل.mp3"
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
                         source: "../assets/kmr.png"
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
                         source: "../assets/ه هلال.mp3"
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
                         source: "../assets/wgh.png"
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
                         source: "../assets/وجه.mp3"
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
                         source: "../assets/ud.png"
                       }
                 AppButton {
                        anchors.bottom:   parent.bottom
                        anchors.right: parent.right
                        text: "Back To Menu"
                        fontBold: true
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
                         source: "../assets/ي يد.mp3"
                       }
 }
 }
 }
