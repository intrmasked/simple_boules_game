import QtQuick 2.12
import QtQuick.Window 2.12
import QtQuick.Controls 2.1


ApplicationWindow {
    id: root
    width: 1920
    height: 1080
    visible: true
    title: qsTr("Boules Game")


    Row{
        spacing: 600


    Row {
        spacing: 15
        Label{
            text: "Player 1"
            font.pointSize: 20

        }


        Rectangle{
        width: 100; height: 100; radius: 100
          color: "blue"

          MouseArea {
              anchors.fill: parent

              onPressed: {
                  animation.start();
              }
          }

          NumberAnimation on y {
              id: animation
              running: false

              to: dataStore.ball1()
              duration: 5000
          }
         }
        Rectangle{
        width: 100; height: 100; radius: 100
          color: "blue"

          MouseArea {
              anchors.fill: parent

              onPressed: {
                  anima.start();
              }
          }

          NumberAnimation on y {
              id: anima
              running: false

              to: dataStore.ball2()
              duration: 5000
          }}
        Rectangle{
            width: 100; height: 100; radius: 100
              color: "blue"

              MouseArea {
                  anchors.fill: parent

                  onPressed: {
                      anim.start();
                  }
              }

              NumberAnimation on y {
                  id: anim
                  running: false

                  to: dataStore.ball3()
                  duration: 5000
              }}
    }



    Row {
        spacing: 15
        Label{
            text: "Player 2"
            font.pointSize: 20

        }
        Rectangle{
       width: 100; height: 100; radius: 100
          color: "red"


          MouseArea {
              anchors.fill: parent

              onPressed: {
                  animation1.start();
              }
          }

          NumberAnimation on y {
              id: animation1
              running: false

              to: dataStore.ball4()
              duration: 5000
          }}
        Rectangle{
        width: 100; height: 100; radius: 100
          color: "red"

          MouseArea {
              anchors.fill: parent

              onPressed: {
                  anima1.start();
              }
          }

          NumberAnimation on y {
              id: anima1
              running: false

              to: dataStore.ball5()
              duration: 5000
          }}
        Rectangle{
            width: 100; height: 100; radius: 100
              color: "yellow"

              MouseArea {
                  anchors.fill: parent

                  onPressed: {
                      anim1.start();


                  }
              }

              NumberAnimation on y {
                  id: anim1
                  running: false

                  to: dataStore.ball6()
                  duration: 5000
              }}
    }


    }

    Rectangle
    {      id: centerball
            color: "black"
        width: 50; height: 50; radius: 50;
        x: 760
        y: 540
    }
    Button{
        x:730
        y:640
        Label{
            text: "Results"
            anchors.centerIn: parent

             }
        onClicked: {
            var Component =Qt.createComponent("results.qml")
            var window =Component.createObject(root)
            window.show()
        }





}

    Component{
            id:qmlToLoad

            Row{
                anchors.fill : parent


                Rectangle{
                    width: 100; height : 100;color:"orange"
                    x:1000
                    y:1000
                    Text{
                        anchors.centerIn: parent
                        text:"Reset Window " + new Date().toTimeString()

                    }
                    MouseArea{
                        anchors.fill: parent
                        onClicked: {
                            root.close();
                            reseter.reset();

                        }
                    }
                }

            }

        }

        Loader{
            id:loader
            anchors.fill: parent
            sourceComponent: qmlToLoad
        }

        Text {
            id: texty
            x:800
            y:700
            text: qsTr("This Gamer will Conclude after 6th reset")
        }

    }



