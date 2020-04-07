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

ListItem {
    id: dayDelegate
    objectName:"dayDelegate" + index
    height: collapsedHeight

    divider { visible: false }

    property int collapsedHeight: units.gu(6.5)
    property int expandedHeight: collapsedHeight + units.gu(4) + (expandedInfo.item ? expandedInfo.item.height : 0)

    property alias day: dayLabel.text
    property alias image: weatherImage.name
    property alias high: highLabel.text
    property alias low: lowLabel.text

    property alias modelData: expandedInfo.modelData

    state: "normal"
    states: [
        State {
            name: "normal"
            PropertyChanges {
                target: dayDelegate
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
                target: dayDelegate
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
                    properties: "opacity"
                }
                ScriptAction {  // run animation to ensure the listitem fits
                    script: waitEnsureVisible.restart()
                }
            }
        },
        Transition {
            from: "expanded"
            to: "normal"
            SequentialAnimation {
                NumberAnimation {
                    easing.type: Easing.InOutQuad
                    properties: "opacity"
                }
                ScriptAction {
                    script: expandedInfo.active = false
                }
            }
        }
    ]

    onClicked: {
        state = state === "normal" ? "expanded" : "normal"
        locationPages.collapseOtherDelegates(index)
    }

    Item {
        id: mainInfo

        height: collapsedHeight
        anchors {
            left: parent.left
            right: parent.right
            margins: units.gu(2)
        }

        GridLayout {
            rowSpacing: units.gu(0)
            columnSpacing: units.gu(1.5)
            columns: 7
            anchors.horizontalCenter: parent.horizontalCenter

            Label {
                id: dayLabel
                Layout.preferredWidth: units.gu(11)
                elide: Text.ElideRight
                font.weight: Font.Light
                font.pixelSize: units.gu(1.8)
            }

            Icon {
                id: weatherImage
                Layout.preferredWidth: settings.tempScale === "°F" ? units.gu(3) : units.gu(5)
                height: units.gu(3)
                width: units.gu(3)
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
                //because Fahrenheit can go above 100 for three digits more space is needed
                Layout.preferredWidth: settings.tempScale === "°F" ? units.gu(4.5) : units.gu(3.5)
                color: settings.lowColor
                font.weight: Font.Normal
                font.pixelSize: units.gu(2.2)
                horizontalAlignment: Text.AlignRight
            }

            Icon {
                id: highImage
                height: units.gu(2)
                width: units.gu(2)
                name: "weather-clear-symbolic"
                color: settings.highColor
            }

            Label {
                id: highLabel
                Layout.preferredWidth: settings.tempScale === "°F" ? units.gu(4.5) : units.gu(3.5)
                color: settings.highColor
                font.weight: Font.Normal
                font.pixelSize: units.gu(2.2)
                horizontalAlignment: Text.AlignRight
            }

            Icon {
                id: updownIcon
                height: units.gu(2)
                width: units.gu(2)
                name: "down"
            }
        }
    }

    Loader {
        id: expandedInfo
        active: false
        anchors {
            bottomMargin: units.gu(2)
            horizontalCenter: parent.horizontalCenter
            top: mainInfo.bottom
            topMargin: units.gu(1)
        }
        asynchronous: true
        opacity: 0
        source: "DayDelegateExtraInfo.qml"

        property var modelData
    }

    Behavior on height {
        NumberAnimation {
            id: heightAnimation
            easing.type: Easing.InOutQuad
        }
    }

    NumberAnimation {
        // animation to ensure the listitem fits by moving the contentY
        id: ensureVisibleAnimation
        easing.type: Easing.InOutQuad
        properties: "contentY"
        target: dayDelegate.parent.parent
    }

    Timer {
        id: waitEnsureVisible
        interval: 16
        repeat: false

        onTriggered: {
            // Only trigger once the loader has loaded
            // and the animations have stopped
            // otherwise restart the timer
            if (expandedInfo.active && expandedInfo.status === Loader.Ready
                    && !heightAnimation.running) {
                // stop the current animation
                ensureVisibleAnimation.running = false;

                // Get the current position
                var view = dayDelegate.parent.parent;
                var pos = view.contentY;

                // Tell the listview to make the listitem fit
                view.positionViewAtIndex(index, ListView.Contain);

                // Animate from the original position to the new position
                ensureVisibleAnimation.from = pos;
                ensureVisibleAnimation.to = view.contentY;
                ensureVisibleAnimation.running = true;
            } else {
                restart()
            }
        }
    }

    Component.onCompleted: {
        locationPages.collapseOtherDelegates.connect(function(otherIndex) {
            if (dayDelegate && typeof index !== "undefined" && otherIndex !== index) {
                state = "normal"
            }
        });
    }
}
