import QtQuick 2.0

Rectangle {
    id: root
    width: 250
    height: 35
    color: '#333333'
    radius: 16
    clip: true
    border.color: root.enabled ? '#aaaaaa' : '#888888'
    border.width: root.enabled ? 2 : 1
    antialiasing: true
    
    property alias passwordInput: passwordInput
    property alias passwordText: passwordInput.text
    property bool enabled: true
    
    signal loginRequested()
    
    Behavior on border.width {
        NumberAnimation { duration: 200; easing.type: Easing.OutCubic }
    }
    
    Behavior on border.color {
        ColorAnimation { duration: 200; easing.type: Easing.OutCubic }
    }
    
    // Subtle glow effect when selected
    Rectangle {
        anchors.fill: parent
        radius: parent.radius
        color: "transparent"
        border.color: root.enabled ? '#cccccc' : 'transparent'
        border.width: root.enabled ? 1 : 0
        opacity: root.enabled ? 0.3 : 0
        antialiasing: true
        
        Behavior on opacity {
            NumberAnimation { duration: 200; easing.type: Easing.OutCubic }
        }
        
        Behavior on border.width {
            NumberAnimation { duration: 200; easing.type: Easing.OutCubic }
        }
    }
    
    Item {
        anchors.fill: parent
        anchors.leftMargin: 20
        anchors.rightMargin: 20
        clip: true
        
        TextInput {
            id: passwordInput
            anchors.fill: parent
            color: "#c4c4c4"
            echoMode: TextInput.Password
            verticalAlignment: TextInput.AlignVCenter
            horizontalAlignment: TextInput.AlignHCenter
            font.pixelSize: 16
            passwordCharacter: "●"
            selectByMouse: false
            selectionColor: "transparent"
            enabled: root.enabled
            
            cursorDelegate: Rectangle {
                color: "transparent"
            }
            
            Keys.onPressed: {
                if (event.key === Qt.Key_Return || event.key === Qt.Key_Enter) {
                    root.loginRequested()
                    event.accepted = true
                } else if (event.key === Qt.Key_Up || event.key === Qt.Key_Down) {
                    // Forward Up/Down to parent
                    event.accepted = false
                }
            }
        }
    }
}

