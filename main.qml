import QtQuick 2.5
import QtQuick.Controls 1.4
import QtQuick.Dialogs 1.2
import QtGraphicalEffects 1.0


//引入线性渐变和锥形渐变，还有径向渐变应该导入库QtGraphicalEffects 1.0

ApplicationWindow {
    id:root
    visible: true
    width: 1600
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
    //鼠标区域
    MouseArea{

        id:mousearea
        width: rec1.width
        height: rec1.height
        onClicked: rec2.visible=!rec2.visible
    }

    }

    Rectangle{
     id:rec2
     x:12 ;y:80
     width: 80;height: 60
     //颜色渐变，position为起始颜色位置，值为0.0到1.0之间，color为颜色，渐变定义了两个或两个以上的颜色被无缝连接，两个或者两个以上的颜色才能有渐变效果
     gradient: Gradient{
     //至少两个
     GradientStop{position: 0.0 ; color: "red"    }
     GradientStop{position: 0.5 ; color: "black"}
     GradientStop{position: 1.0 ; color: "blue"}

     }
    }

    //锥型渐变
     Rectangle{
         id:rec3
         x:100 ;y:12
         width: 200;height: 200

         ConicalGradient {
                    width: 200;
                    height: 200;
                    gradient: Gradient {
                        GradientStop{ position: 0.0; color: "#FFFF0000";}
                        GradientStop{ position: 0.3; color: "#FFFFA000";}
                        GradientStop{ position: 0.5; color: "#A0FF4000";}
                        GradientStop{ position: 1.0; color: "#FF800FFF";}
                    }
                   //horizontalOffset和verticalOffset是锥形中心点的水平和垂直偏移的像素数。中心点垂直朝上，产生的线，是0度角线。它的值默认为0,这两值都是0的时候就是圆心
                    horizontalOffset: 0;
                    verticalOffset: 0;
                }

     }
     //RadialGradient，径向渐变
     Rectangle{
         id:rec4
         x:330 ;y:12
         width: 200;height: 200

         RadialGradient  {
                    width: 200;
                    height: 200;
                    gradient: Gradient {
                        GradientStop{ position: 0.0; color: "#FFFF0000";}
                        GradientStop{ position: 0.3; color: "#FFFFA000";}
                        GradientStop{ position: 0.5; color: "#A0FF4000";}
                        GradientStop{ position: 1.0; color: "#FF800FFF";}
                    }
                   //horizontalOffset和verticalOffset是锥形中心点的水平和垂直偏移的像素数。中心点垂直朝上，产生的线，是0度角线。它的值默认为0,这两值都是0的时候就是圆心
                    horizontalOffset: 90;
                    verticalOffset: 90;
                }

     }


     //线性渐变没有中心一说，所以并没有horizontalOffset: 90;verticalOffset: 90;这两个属性
     Rectangle{
         id:rec5
         x:540 ;y:12
         width: 200;height: 200

         LinearGradient   {
                    width: 200;
                    height: 200;
                    gradient: Gradient {
                        GradientStop{ position: 0.0; color: "#FFFF0000";}
                        GradientStop{ position: 0.3; color: "#FFFFA000";}
                        GradientStop{ position: 0.5; color: "#A0FF4000";}
                        GradientStop{ position: 1.0; color: "#FF800FFF";}
                    }
                   //horizontalOffset和verticalOffset是锥形中心点的水平和垂直偏移的像素数。中心点垂直朝上，产生的线，是0度角线。它的值默认为0,这两值都是0的时候就是圆心
//                    horizontalOffset: 90;
//                    verticalOffset: 90;
                }
     }
     //通过下面代码证明Gradient和LinearGradient是一样的效果也就是都是线性渐变
     Rectangle{
         id:rec6
         x:750 ;y:12
         width: 200;height: 200
         gradient: Gradient {
                        GradientStop{ position: 0.0; color: "#FFFF0000";}
                        GradientStop{ position: 0.3; color: "#FFFFA000";}
                        GradientStop{ position: 0.5; color: "#A0FF4000";}
                        GradientStop{ position: 1.0; color: "#FF800FFF";}
                    }

    }

     Text {
         id: text_1
         x:960 ;y:100
         width: 200;height: 200
         text: "a text test1111111111111111111111111111111111111"
         //elide属性。宽度不足显示文本，显示为省略号，
         //省略样式：前(Text.ElideLeft)，中(Text.ElideMiddle)，后(Text.ElideRight)，默认(Text.ElideNone)
         elide: Text.ElideMiddle
         //设置文本样式
         style: Text.Raised
         //styleColor被用作概括文本的轮廓颜色，凸起或凹陷的文字阴影颜色。如果没有指定样式，则它不起作用。
         styleColor: "red"
         //垂直对齐
         verticalAlignment: Text.AlignHCenter
         //水平对齐
         horizontalAlignment: Text.AlignVCenter
         //字体大小
         font.pixelSize: 25
     }


     Row {
         id:row_1
         x:12;y:240
         Text { font.pointSize: 24; text: "Normal" }
         Text { font.pointSize: 24; text: "Raised"; style: Text.Raised; styleColor: "#AAAAAA" }
         Text { font.pointSize: 24; text: "Outline";style: Text.Outline; styleColor: "red" }
         Text { font.pointSize: 24; text: "Sunken"; style: Text.Sunken; styleColor: "#AAAAAA" }
     }

     Image {
         //id: pic
         x:1170 ; y:12
         width: 40;height: 40
         source: "/ball.jpg"
         fillMode: Image.TileHorizontally
         }
     Image {
         //id: pic
         x:1170 ; y:62
         width: 40;height: 40
         source: "/ball.jpg"
         fillMode: Image.TileVertically
         }


     Image {
         //id: pic
         x:1170 ; y:112
         width: 40;height: 40
         source: "/ball.jpg"
         fillMode: Image.Tile
         }


     Image {
         //id: pic
         x:1170 ; y:162
         width: 40;height: 40
         source: "/ball.jpg"
         fillMode: Image.PreserveAspectCrop
         }
     Image {
         //id: pic
         x:1170 ; y:212
         width: 40;height: 40
         source: "/ball.jpg"
         fillMode: Image.PreserveAspectFit
        // clip: true
         }

     Image {
         //id: pic
         x:1220 ; y:12
         width: 40;height: 40
         //还能加载网络图片
         source : "http://b79.photo.store.qq.com/psu?/7c595bd9-7aa7-4b74-92af-b0874c1528c8/ASXihnWbyI62kCamKmOGjQACj1HTNuIEgpyYcF5R5rw!/b/YdIhIS**bgAAYpG2JS9OawAA&bo=ngL2AQAAAAABFFg!&rf=viewer_4&t=5"
         }

     //图像水平旋转，镜像模式可以mirror属性
     Row{
         id:row_2
         x:1220
         y:62
         Image {
             //id: pic
             x:0 ; y:0
             width: 40;height: 40
             source: "/ball.jpg"
             mirror: false
             }
         Image {
             //id: pic
             x:40 ; y:0
             width: 40;height: 40
             source: "/ball.jpg"

             mirror: true
             }


     }


}
