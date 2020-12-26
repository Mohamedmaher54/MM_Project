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
        id: beginnerlevel1
        onBackButtonPressed: gameWindow.state = "menu"

    }
    Level_2{
        id:beginnerlevel2
          onBackButtonPressed: gameWindow.state = "menu"
    }
    Level_3{
        id:beginnerlevel3
          onBackButtonPressed: gameWindow.state = "menu"
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
           PropertyChanges {target: beginnerlevel1; opacity: 1}
           PropertyChanges {target: gameWindow; activeScene: beginnerlevel1}
         },
         State {
           name: "level2"
           PropertyChanges {target: beginnerlevel2; opacity: 1}
           PropertyChanges {target: gameWindow; activeScene: beginnerlevel2}
         },
         State {
           name: "level3"
           PropertyChanges {target: beginnerlevel3; opacity: 1}
           PropertyChanges {target: gameWindow; activeScene: beginnerlevel3}
         }
       ]
    }
