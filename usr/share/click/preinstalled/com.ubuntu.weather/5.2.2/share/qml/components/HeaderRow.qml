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
import QtQuick.Layouts 1.1 as QL
import Ubuntu.Components 1.3 as UC
import QtQuick.Controls 2.2 as QC

QL.RowLayout {
    id: headerRow

    property alias locationName: locationNameLabel.text

    width: parent.width

    UC.Label {
        objectName: 'headerLabel'
        id: locationNameLabel
        color: theme.palette.normal.baseText
        elide: Text.ElideRight
        font.weight: Font.Normal
        fontSize: "large"
        height: settingsButton.height
        QL.Layout.fillWidth: true
        verticalAlignment: Text.AlignVCenter
    }

    QC.AbstractButton {
        id: networkErrorButton
        height: width
        width: units.gu(4)
        anchors.right: settingsButton.left
        visible: networkError

        onClicked: {mainPageStack.push(Qt.resolvedUrl("../components/NetworkErrorStateComponent.qml"));}

        Rectangle {
            anchors.fill: parent
            color: Theme.palette.selected.background
            visible: parent.pressed
        }

        UC.Icon {
            anchors.centerIn: parent
            color: theme.palette.normal.baseText
            height: width
            name: "sync-error"
            width: units.gu(2.5)
        }
    }

    QC.AbstractButton {
        id: onlineMapButton
        height: width
        width: units.gu(4)
        anchors.right: settingsButton.left
        visible: !networkError

        onClicked: {mainPageStack.push(Qt.resolvedUrl("../components/OnlineMap.qml"));}

        Rectangle {
            anchors.fill: parent
            color: Theme.palette.selected.background
            visible: parent.pressed
        }

        UC.Icon {
            anchors.centerIn: parent
            color: theme.palette.normal.baseText
            height: width
            source: "../graphics/rain-radar.svg"
            width: units.gu(2.5)
        }
    }

    SettingsButton {
        id: settingsButton
        anchors.right: parent.right
    }
}
