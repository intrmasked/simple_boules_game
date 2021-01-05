import QtQuick 2.12
import QtQuick.Window 2.12
import QtQuick.Controls 2.1


Window {
    id: root
    width: 200; height: 200
    Label{
        text:"the winner is"
    }
    Text {
        x:100
        y:100

        text:dataStore.thewinner()
    }
    Text{
        x:50
        y:100
        text:"PLAYER"
    }

}
