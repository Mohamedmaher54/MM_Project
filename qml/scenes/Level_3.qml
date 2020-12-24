import QtQuick 2.0
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
             }
             AppImage {
                     source: "../assets/abc3.jpg"
                   }
             AppButton {
                         anchors.bottom: parent.bottom
                         anchors.right: parent.right
                    text: "Start Learning"

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

                     source: "../assets/lion.png"
                   }

             AppButton {
                    anchors.bottom:   parent.bottom
                    anchors.right: parent.right
                    text: "Next"

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
                       onClicked: {
                         audio1.play()
                       }
                     }
                   }

//                   Audio {
//                     id: audio1
//                     source: "../assets/ارنب.mp3"
//                   }


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
                           onClicked: {
                             audio.play()
                           }
                         }
                       }

//                       Audio {
//                         id: audio
//                         source: "../assets/بطة.m4a"
//                       }


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
                           onClicked: {
                             audio.play()
                           }
                         }
                       }

//                       Audio {
//                         id: audio
//                         source: "../assets/تفاحة.m4a"
//                       }




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
                           onClicked: {
                             audio.play()
                           }
                         }
                       }

//                       Audio {
//                         id: audio
//                         source: "../assets/ثعلب.m4a"
//                       }




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
                           onClicked: {
                             audio.play()
                           }
                         }
                       }

//                       Audio {
//                         id: audio
//                         source: "../assets/جمل.m4a"
//                       }




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
                           onClicked: {
                             audio.play()
                           }
                         }
                       }

//                       Audio {
//                         id: audio
//                         source: "../assets/حصان.m4a"
//                       }




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
                           onClicked: {
                             audio.play()
                           }
                         }
                       }

//                       Audio {
//                         id: audio
//                         source: "../assets/خروف.m4a"
//                       }




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
                           onClicked: {
                             audio.play()
                           }
                         }
                       }

//                       Audio {
//                         id: audio
//                         source: "../assets/دب.m4a"
//                       }



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
                           onClicked: {
                             audio.play()
                           }
                         }
                       }

//                       Audio {
//                         id: audio
//                         source: "../assets/ذئب.m4a"
//                       }
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
                           onClicked: {
                             audio.play()
                           }
                         }
                       }

//                       Audio {
//                         id: audio
//                         source: "../assets/رأس.m4a"
//                       }
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
                       onClicked: {
                         audio.play()
                       }
                     }
                   }

//                       Audio {
//                         id: audio
//                         source: "../assets/دب.m4a"
//                       }



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
                           onClicked: {
                             audio.play()
                           }
                         }
                       }

//                       Audio {
//                         id: audio
//                         source: "../assets/رأس.m4a"
//                       }
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
                           onClicked: {
                             audio.play()
                           }
                         }
                       }

//                       Audio {
//                         id: audio
//                         source: "../assets/رأس.m4a"
//                       }
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
                           onClicked: {
                             audio.play()
                           }
                         }
                       }

//                       Audio {
//                         id: audio
//                         source: "../assets/رأس.m4a"
//                       }
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
                           onClicked: {
                             audio.play()
                           }
                         }
                       }

//                       Audio {
//                         id: audio
//                         source: "../assets/رأس.m4a"
//                       }
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
                           onClicked: {
                             audio.play()
                           }
                         }
                       }

//                       Audio {
//                         id: audio
//                         source: "../assets/رأس.m4a"
//                       }
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
                           onClicked: {
                             audio.play()
                           }
                         }
                       }

//                       Audio {
//                         id: audio
//                         source: "../assets/رأس.m4a"
//                       }
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
                           onClicked: {
                             audio.play()
                           }
                         }
                       }

//                       Audio {
//                         id: audio
//                         source: "../assets/رأس.m4a"
//                       }
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
                           onClicked: {
                             audio.play()
                           }
                         }
                       }

//                       Audio {
//                         id: audio
//                         source: "../assets/رأس.m4a"
//                       }
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
                           onClicked: {
                             audio.play()
                           }
                         }
                       }

//                       Audio {
//                         id: audio
//                         source: "../assets/رأس.m4a"
//                       }
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
                           onClicked: {
                             audio.play()
                           }
                         }
                       }

//                       Audio {
//                         id: audio
//                         source: "../assets/رأس.m4a"
//                       }
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
                           onClicked: {
                             audio.play()
                           }
                         }
                       }

//                       Audio {
//                         id: audio
//                         source: "../assets/رأس.m4a"
//                       }
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
                           onClicked: {
                             audio.play()
                           }
                         }
                       }

//                       Audio {
//                         id: audio
//                         source: "../assets/رأس.m4a"
//                       }
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
                           onClicked: {
                             audio.play()
                           }
                         }
                       }

//                       Audio {
//                         id: audio
//                         source: "../assets/رأس.m4a"
//                       }
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
                           onClicked: {
                             audio.play()
                           }
                         }
                       }

//                       Audio {
//                         id: audio
//                         source: "../assets/رأس.m4a"
//                       }
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
                           onClicked: {
                             audio.play()
                           }
                         }
                       }

//                       Audio {
//                         id: audio
//                         source: "../assets/رأس.m4a"
//                       }
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
                           onClicked: {
                             audio.play()
                           }
                         }
                       }

//                       Audio {
//                         id: audio
//                         source: "../assets/رأس.m4a"
//                       }
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
                        text: "Next"

                        onClicked :{
                          twentyninepage.navigationStack.push(thirty)
                        }
             }
                 Column {
                         anchors.bottom: parent.bottom
                         anchors.left: parent.left
                         AppButton {
                           anchors.bottom : parent.bottom
                           anchors.left: parent.left
                           text: "Listen"
                           onClicked: {
                             audio.play()
                           }
                         }
                       }

//                       Audio {
//                         id: audio
//                         source: "../assets/رأس.m4a"
//                       }
 }
 }
         Component{
             id:thirty
             Page{
                 id: thirtypage
                 title: "النهايه"
                 AppImage {
                         anchors.fill: parent
                         fillMode: Image.PreserveAspectFit
                        // source: "../assets/end.jpg"
                       }
                 AppButton {
                        anchors.bottom:   parent.bottom
                        anchors.right: parent.right
                        text: "End"

                        onClicked :{
                          thirtypage.navigationStack.push(menu)
                        }
             }
                 Column {
                         anchors.bottom: parent.bottom
                         anchors.left: parent.left
                         AppButton {
                           anchors.bottom : parent.bottom
                           anchors.left: parent.left
                           text: "Listen"
                           onClicked: {
                             audio.play()
                           }
                         }
                       }

//                       Audio {
//                         id: audio
//                         source: "../assets/رأس.m4a"
//                       }
 }
 }
 }
