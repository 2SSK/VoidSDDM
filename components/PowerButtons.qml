import QtQuick 2.0
import SddmComponents 2.0

Row {
    id: root
    spacing: 20
    
    // Shutdown button
    Rectangle {
        width: 50
        height: 50
        radius: width / 2
        color: '#333333'
        border.color: '#888888'
        border.width: 1
        antialiasing: true
        
        Text {
            text: "⏻"
            color: "#c4c4c4"
            font.pixelSize: 24
            anchors.centerIn: parent
        }
        
        MouseArea {
            anchors.fill: parent
            onClicked: sddm.powerOff()
        }
    }
    
    // Restart button
    Rectangle {
        width: 50
        height: 50
        radius: width / 2
        color: '#333333'
        border.color: '#888888'
        border.width: 1
        antialiasing: true
        
        Text {
            text: "↻"
            color: "#c4c4c4"
            font.pixelSize: 24
            anchors.centerIn: parent
        }
        
        MouseArea {
            anchors.fill: parent
            onClicked: sddm.reboot()
        }
    }

    // Suspend button
    Rectangle {
        width: 50
        height: 50
        radius: width / 2
        color: '#333333'
        border.color: '#888888'
        border.width: 1
        antialiasing: true
        
        Text {
            text: "⏾"
            color: "#c4c4c4"
            font.pixelSize: 24
            anchors.centerIn: parent
        }
        
        MouseArea {
            anchors.fill: parent
            onClicked: sddm.suspend()
        }
    }
}

