/*
 * Copyright (C) 2019 UBports
 *
 * This file is part of Ubuntu Calculator App
 *
 * Ubuntu Calculator App is free software: you can redistribute it and/or modify
 * it under the terms of the GNU General Public License version 3 as
 * published by the Free Software Foundation.
 *
 * Ubuntu Calculator App is distributed in the hope that it will be useful,
 * but WITHOUT ANY WARRANTY; without even the implied warranty of
 * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
 * GNU General Public License for more details.
 *
 * You should have received a copy of the GNU General Public License
 * along with this program.  If not, see <http://www.gnu.org/licenses/>.
 */
import QtQuick 2.4
import Ubuntu.Components 1.3
import QtQuick.Controls.Suru 2.2

Page {
    width: bottomEdge.width
    height: bottomEdge.height

    property int pressedKey: -1
    property string pressedKeyText: ""

    header: PageHeader {
        visible: false
    }

    Rectangle {
        anchors.fill: parent
        color: Suru.backgroundColor
    }

    CalcKeyboard {
        id: calcKeyboard

        anchors.fill: parent

        KeyboardPage {
            buttonRatio: 0.6
            buttonMaxHeight: scrollableView.height / 10.0

            // TODO determin if this is the best user experience
            onClicked: bottomEdge.collapse()

            keyboardModel: new Array(
                { text: "xⁿ", name: "power", pushText: "^", kbdKeys: [Qt.Key_AsciiCircum, 16781906] }, //Number needed to make key work with the German keyboard layout as that character is normally typed by pressing the circumflex key twice but that does not work here
                { text: "x²", name: "square", pushText: "^2", kbdKeys: [Qt.Key_twosuperior] },
                { text: "x³", name: "cube", pushText: "^3", kbdKeys: [Qt.Key_threesuperior] },
                // TRANSLATORS Natural logarithm symbol (logarithm to the base e)
                { text: i18n.tr("log"), name: "logarithm", pushText: "log(", kbdKeys: [Qt.Key_L] },
                { text: "ℯ", name: "eNumber", pushText: "E", kbdKeys: [Qt.Key_E] },
                { text: "π", name: "piNumber", pushText: "pi", kbdKeys: [Qt.Key_P] },
                // TRANSLATORS Modulo operation: Finds the remainder after division of one number by another
                { text: i18n.tr("mod"), name: "modulo", pushText: "%", kbdKeys: [Qt.Key_Percent] },
                { text: "!", name: "factorialNumber", kbdKeys: [Qt.Key_Exclam] },
                { text: "ℯⁿ", name: "exp", pushText: "E^" },
                { text: "1/x", name: "multiplicativeInverse", pushText: "^-1" },
                { text: "1/x²", name: "multiplicativeInverse2", pushText: "^-2" },
                { text: "1/x³", name: "multiplicativeInverse3", pushText: "^-3" },
                { text: "i", name: "i", pushText: "i", kbdKeys: [Qt.Key_I] },
                { text: "sin", name: "sinus", pushText: "sin(", kbdKeys: [Qt.Key_S] },
                { text: "cos", name: "cos", pushText: "cos(", kbdKeys: [Qt.Key_C]  },
                { text: "tan", name: "tangens", pushText: "tan(", kbdKeys: [Qt.Key_T]  },
                { text: "|x|", name: "abs", pushText: "abs(", kbdKeys: [Qt.Key_A, Qt.Key_Bar] },
                { text: "sin⁻¹", name: "arcsinus", pushText: "asin(" },
                { text: "cos⁻¹", name: "arccos", pushText: "acos(" },
                { text: "tan⁻¹", name: "arctangens", pushText: "atan(" }
            )
        }
    }

    Icon {
        id: close
        width: units.gu(3)
        height: units.gu(1.5)
        anchors {
            top: parent.top
            topMargin: units.gu(0.5)
            horizontalCenter: parent.horizontalCenter
        }

        name: "toolkit_bottom-edge-hint"
        rotation: 180

        MouseArea {
            anchors.fill: parent
            height: units.gu(1)

            onClicked: bottomEdge.collapse()
        }
    }

    SwipeArea {
        anchors.fill: parent
        direction: SwipeArea.Downwards

        onDraggingChanged: {
            if (!dragging) {
                bottomEdge.collapse()
            }
        }
    }
}
