import QtMultimedia 5.9
import QtQuick 2.0
import Felgo 3.0
import "scenes"
import "common"

GameWindow {
    id: gameWindowe
    MenuScene {
      id: menuScene
      onLevel1Pressed: gameWindow.state="level1"
      onLevel2Pressed: gameWindow.state="level2"
      onLevel3Pressed: gameWindow.state="level3"

    }
    Beginner_1{
        id:level1

    }
    Level_2{
        id:level2
    }
    Level_3{
        id:level3
    }

    state: "menu"
       states: [
         State {
           name: "menu"
           PropertyChanges {target: menuScene; opacity: 1}
           PropertyChanges {target: gameWindow; activeScene: menuScene}
         },
         State {
           name: "level1"
           PropertyChanges {target: level1; opacity: 1}
           PropertyChanges {target: gameWindow; activeScene: level1}
         },
         State {
           name: "level2"
           PropertyChanges {target: level2; opacity: 1}
           PropertyChanges {target: gameWindow; activeScene: level2}
         },
         State {
           name: "level3"
           PropertyChanges {target: level3; opacity: 1}
           PropertyChanges {target: gameWindow; activeScene: level3}
         }
       ]
    }
