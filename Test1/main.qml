import QtQuick 2.12
import QtQuick.Window 2.3




Window{
    Item {
        id: buttonRoot;
        width: 30; height: 60;
        Rectangle{
            anchors.fill: parent;
            color: "red";
            border.color: "blue";
            radius: 3;
        }

    }

    visible: true;
    width:640; height: 480;
    title: qsTr("Text");

    Rectangle{
        id: rect1;
        x: 12; y:12;
        width: 30; height: 40;
        color: "lightsteelblue";
        MouseArea {
            id: mousearea;
            width: rect1.width;
            height: rect1.height;
            onClicked: rect2.visible = !rect2.visible;
        }

    }

    Rectangle{
        id: rect2;
        x:60 ; y:12;
        width: 30; height: 40;
        border.color: "red";
        border.width: 5;
        radius: 8;
    }

    Text{
        x: 50; y: 60;
        text: qsTr("This quick borwn fox!");
        color: "#303030";
        font.family: "ubuntu";
        font.pixelSize: 30;
    }

    Text {
        width: 40; height: 30;
        text: qsTr("this is a very long text!");
        elide: Text.ElideMidle;
        style: Text.Sunken;
        styleColor: '#FF4444';
        verticalAlignment: Text.AlignTop;
    }



}



