/*
 * Copyright (C) 2020 UBports
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
import "../../components"

Item {
    id: highlightTodayPage
    height: listItem.height

    ListItem {
        id: listItem
        height: highlightLayout.height
        divider { visible: false; }
        ListItemLayout {
            id: highlightLayout
            title.text: i18n.tr("Grey background for today data?")
            Switch {
                id: highlightSwitch
                SlotsLayout.position: SlotsLayout.Last
                checked: settings.highlightToday
                onCheckedChanged: settings.highlightToday = checked;
            }
        }

        onClicked: highlightSwitch.checked = !highlightSwitch.checked
    }
}
