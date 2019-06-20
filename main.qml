import QtQuick 2.5
import QtQuick.Controls 1.4
import QtQuick.Dialogs 1.2

ApplicationWindow {
    id:root
    visible: true
    width: 640
    height: 480
    title: qsTr("rectangel")

    Rectangle{

    id:rec1
    x:12;y:12
    width: 80; height: 60
    //边框的颜色
    border.color: "red"
    //边框粗细
    border.width: 4
    radius: 8

    }


}
