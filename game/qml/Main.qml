import Felgo 3.0
import QtQuick 2.0
import "scenes"
import "common"

GameWindow {
    id: gameWindow
    activeScene: scene
    screenWidth: 960
    screenHeight: 640
    MenuScene {
      id: menuScene
    }

    state: "menu"

       // state machine, takes care reversing the PropertyChanges when changing the state like changing the opacity back to 0
       states: [
         State {
           name: "menu"
           PropertyChanges {target: menuScene; opacity: 1}
           PropertyChanges {target: gameWindow; activeScene: menuScene}
         },
         State {
           name: "selectLevel"
           PropertyChanges {target: selectLevelScene; opacity: 1}
           PropertyChanges {target: gameWindow; activeScene: level1}
         },
         State {
           name: "credits"
           PropertyChanges {target: creditsScene; opacity: 1}
           PropertyChanges {target: gameWindow; activeScene: level2}
         },
         State {
           name: "game"
           PropertyChanges {target: gameScene; opacity: 1}
           PropertyChanges {target: gameWindow; activeScene: level3}
         }
       ]
    }
