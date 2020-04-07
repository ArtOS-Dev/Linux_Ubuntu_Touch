/*
 * Copyright: 2019 UBports
 *
 * This file is part of reminders
 *
 * reminders is free software: you can redistribute it and/or modify
 * it under the terms of the GNU General Public License as published by
 * the Free Software Foundation; version 3.
 *
 * reminders is distributed in the hope that it will be useful,
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
import "settings"

Page {
    id: settingsPage
    objectName: 'settingsPage'

    Flickable {
        id: settingsFlickable
        clip: true
        flickableDirection: Flickable.AutoFlickIfNeeded
        anchors.fill: parent
        contentHeight: settingsColumn.childrenRect.height

        Column {
            id: settingsColumn
            anchors {
                    top: parent.top
                    left: parent.left
                    right: parent.right
                }

            ListItem {
                width: parent.width
                height: mmp.height > 0 ? mmp.height : units.gu(7)

                MinuteModePage {
                    id: mmp
                    width: parent.width
                }

                //on the last item don't show divider
                divider { visible: false; }
            }
        }
    }
}
