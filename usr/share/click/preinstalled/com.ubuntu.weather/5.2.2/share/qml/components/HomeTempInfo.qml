/*
 * Copyright (C) 2015 Canonical Ltd
 *
 * This file is part of Ubuntu Weather App
 *
 * Ubuntu Weather App is free software: you can redistribute it and/or modify
 * it under the terms of the GNU General Public License version 3 as
 * published by the Free Software Foundation.
 *
 * Ubuntu Weather App is distributed in the hope that it will be useful,
 * but WITHOUT ANY WARRANTY; without even the implied warranty of
 * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
 * GNU General Public License for more details.
 *
 * You should have received a copy of the GNU General Public License
 * along with this program.  If not, see <http://www.gnu.org/licenses/>.
 */

import QtQuick 2.4
import Ubuntu.Components 1.3
import QtQuick.Layouts 1.1

Item {
    id: homeTempInfoItem
    anchors {
        left: parent.left
        right: parent.right
    }
    clip: true
    height: collapsedHeight
    objectName: "homeTempInfo"
    state: "normal"
    states: [
        State {
            name: "normal"
            PropertyChanges {
                target: homeTempInfoItem
                height: collapsedHeight
            }
            PropertyChanges {
                target: expandedInfo
                opacity: 0
            }
            PropertyChanges {
                target: updownIcon
                name: "down"
            }
        },
        State {
            name: "expanded"
            PropertyChanges {
                target: homeTempInfoItem
                height: expandedHeight
            }
            PropertyChanges {
                target: expandedInfo
                opacity: 1
            }
            PropertyChanges {
                target: updownIcon
                name: "up"
            }
        }
    ]
    transitions: [
        Transition {
            from: "normal"
            to: "expanded"
            SequentialAnimation {
                ScriptAction {
                    script: expandedInfo.active = true
                }
                NumberAnimation {
                    easing.type: Easing.InOutQuad
                    properties: "height,opacity"
                }
            }
        },
        Transition {
            from: "expanded"
            to: "normal"
            SequentialAnimation {
                NumberAnimation {
                    easing.type: Easing.InOutQuad
                    properties: "height,opacity"
                }
                ScriptAction {
                    script: expandedInfo.active = false
                }
            }
        }
    ]

    property int collapsedHeight: units.gu(19)
    property int expandedHeight: collapsedHeight + units.gu(4) + (expandedInfo.item ? expandedInfo.item.height : 0)

    property var modelData

    property alias now: nowLabel.text
    property alias icon: conditionIcon.source

    property color highColor: UbuntuColors.orange
    property color lowColor: UbuntuColors.blue

    Row {
      id: currentDataRow

      spacing: units.gu(1.5)
      anchors.horizontalCenter: parent.horizontalCenter

      Column {
          id: iconColumn

          Icon {
              id: conditionIcon

              height: units.gu(17)
              width: height
          }
      }

      Column {
          id: labelColumn

          spacing: units.gu(1)

          Label {
              id: spacer
              text: " "
              fontSize: "small"
          }

          Label {
              id: descriptionLabel
              font.capitalization: Font.Capitalize
              font.weight: Font.Normal
              fontSize: "large"
              text: modelData.condition
              width: units.gu(18)
              wrapMode: Text.WordWrap
              lineHeight: lineCount > 0 ? 1.25 : 1.0
          }

          Row {
              spacing: units.gu(1.5)

              Label {
                  id: nowLabel
                  font.pixelSize: units.gu(7)
                  font.weight: Font.Light
                  height: units.gu(7)
                  verticalAlignment: Text.AlignBottom  // AlignBottom seems to put it at the top?
              }

              GridLayout {
                  rowSpacing: units.gu(0)
                  columns: 2

                  Icon {
                      id: highImage
                      height: units.gu(2)
                      width: units.gu(2)
                      name: "weather-clear-symbolic"
                      color: settings.highColor
                  }

                  Label {
                      id: highLabel
                      Layout.alignment: Qt.AlignRight
                      color: settings.highColor
                      font.weight: Font.Normal
                      font.pixelSize: units.gu(2.2)
                      text: modelData.high
                  }

                  Icon {
                      id: lowImage
                      height: units.gu(2)
                      width: units.gu(2)
                      source: "../graphics/extended-information_moon.svg"
                      color: settings.lowColor
                  }
                  Label {
                      id: lowLabel
                      Layout.alignment: Qt.AlignRight
                      color: settings.lowColor
                      font.weight: Font.Normal
                      font.pixelSize: units.gu(2.2)
                      // font.weight: Font.Light     //use this when emphasising high temp
                      // fontSize: "medium"          //use this when emphasising high temp
                      text: modelData.low
                  }
              }
          }
        }
    }

    Icon {
        id: updownIcon
        anchors {
            horizontalCenter: parent.horizontalCenter
            top: currentDataRow.bottom
        }
        height: units.gu(2)
        width: units.gu(2)
        name: "down"
    }

    Loader {
        id: expandedInfo
        active: false
        anchors {
            horizontalCenter: parent.horizontalCenter
            top: updownIcon.bottom
            topMargin: units.gu(2)
        }
        asynchronous: true
        opacity: 0
        source: "DayDelegateExtraInfo.qml"

        property var modelData: {
            var tmp = ({});

            // Remove the condition only for modelData
            // as it is needed in todayData in the Column above
            if (todayData) {
                tmp = todayData;
                tmp.condition = "";
            }

            return tmp;
        }
    }

    // Rectangle {
    //     id: emphasiseColor
    //     anchors.horizontalCenter: parent.horizontalCenter
    //     width: units.gu(50)
    //
    //     height: collapsedHeight
    //     // anchors {
    //     //     fill: parent
    //     // }
    //     color: UbuntuColors.graphite
    //     z: -1
    // }

    MouseArea {
        anchors {
            fill: parent
        }
        onClicked: {
            parent.state = parent.state === "normal" ? "expanded" : "normal"
            // -2 as this is in header (not a delegate) and needs a fake index
            locationPages.collapseOtherDelegates(-2)
        }
    }

    Behavior on height {
        NumberAnimation {
            easing.type: Easing.InOutQuad
        }
    }

    Component.onCompleted: {
        locationPages.collapseOtherDelegates.connect(function(otherIndex) {
            // -2 as this is in header (not a delegate) and needs a fake index
            if (homeTempInfoItem && typeof index !== "undefined" && otherIndex !== -2) {
                state = "normal"
            }
        });
    }
}
