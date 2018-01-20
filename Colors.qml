import QtQuick 2.0
import QtQuick.Controls 2.0
import QtQuick.Layouts 1.3
import QtQuick.Particles 2.0

import MyFiles.ImageAnalyzer 1.0

Item{
    id : fond

    ImageAnalyzer{ id : imageAnalyzer }

    Image {
        id : imageToAnalyze
        source : "qrc:/img/img.png"
        anchors.centerIn: parent
        anchors.verticalCenterOffset: -bottom_bar.height/2
        width : (fond.width < fond.height)?fond.width/2:fond.height/2
        height : this.width
    }

    MouseArea{
        anchors.fill: parent

        hoverEnabled: true
        focus:true

        onClicked: {
            //            if(hidecursor.cursorShape == Qt.BlankCursor)
            //                hidecursor.cursorShape = Qt.ArrowCursor
            //            else
            //                hidecursor.cursorShape = Qt.BlankCursor
            console.log(imageAnalyzer.getPixelsValues(imageToAnalyze.source))
            console.log("clic")
        }

    }

}