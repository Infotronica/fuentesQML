import QtQuick 2.9
import QtQuick.Window 2.2
import QtQuick.Controls 2.2
import QtQuick.Layouts 1.3

Window {
    visible: true
    width: 1024
    height: 768
    title: qsTr("Hello World")
    /*
      name: es para fuentes instaladas en el sistema
      source: para fuentes NO instaladas en el sistema
              y que usamos agregando las fuentes a los recursos del proyecto.

      Tiene prioridad la la propiedad name sobre la proiedad source
    */
    FontLoader {
        id: avenir_next_condensed_ultra_lightight
        //name: "Purisa"
        source: "font/Avenir Next Condensed Ultra Light.ttf"
    }

    FontLoader {
        id: awesome
        //name: "Purisa"
        source: "font/Font Awesome 5 Free-Solid-900.otf"
    }

    FontLoader {
        id: code39
        //name: "Purisa"
        source: "font/code39.ttf"
    }

    FontLoader {
        id: code128
        //name: "Purisa"
        source: "font/code128.ttf"
    }

    FontLoader {
        id: code_2_of_5_interleaved
        //name: "Purisa"
        source: "font/code25I.ttf"
    }

    ColumnLayout {
        spacing: 25

        Text {
            text: avenir_next_condensed_ultra_lightight.name
            font.pixelSize: Window.height*0.04
            font.family: avenir_next_condensed_ultra_lightight.name
        }
        Text {
            text: "\uf039"
            font.pixelSize: Window.height*0.04
            font.family: awesome.name
        }
        Text {
            text: "align-justify"
            font.pixelSize: Window.height*0.04
            font.family: awesome.name
        }
        Text {
            text: "Fuente instalada en el sistema"
            font.pixelSize: Window.height*0.04
            font.family: "Purisa" // también se puede usar directamente una fuente instalada sin usar FontLoader
        }
        Text {
            text: "*123456*"
            font.pixelSize: Window.height*0.10
            font.family: code39.name
        }
        Text {
            text: "000010"
            font.pixelSize: Window.height*0.10
            font.family: code128.name
        }
        Text {
            text: "000010"
            font.pixelSize: Window.height*0.10
            font.family: code_2_of_5_interleaved.name
        }
    }
}
