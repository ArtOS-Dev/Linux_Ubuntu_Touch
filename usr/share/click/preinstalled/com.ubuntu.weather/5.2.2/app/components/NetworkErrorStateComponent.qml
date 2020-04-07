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
import "../components"

Rectangle {
    color: theme.palette.normal.background
    anchors.fill: parent

    SettingsButton {
        anchors {
            right: parent.right
            top: parent.top
            rightMargin: units.gu(2)
            topMargin: units.gu(2)
        }
    }

    Column {
        anchors {
            centerIn: parent
        }
        spacing: units.gu(4)
        width: parent.width - units.gu(4)

        Label {
            id: networkErrorStateLabel
            anchors {
                horizontalCenter: parent.horizontalCenter
            }
            fontSize: "x-large"
            text: i18n.tr("Network Error")
            width: parent.width
            wrapMode: Text.WordWrap
        }

        Label {
            anchors {
                horizontalCenter: parent.horizontalCenter
            }
            text: i18n.tr("No network connection. Could not load weather data.\nPlease check your network settings and try again.")
            width: parent.width
            wrapMode: Text.WordWrap
        }

        Button {
            text: i18n.tr("OK")
            anchors {
                horizontalCenter: parent.horizontalCenter
            }
            onClicked: pop()
        }
    }
}
