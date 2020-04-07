/*
 * Copyright (C) 2019 UBports
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
import Ubuntu.Components.Popups 1.3

Dialog {
    id: dialogue
    title: i18n.tr("available list actions")

    //Dialog component does create it's own Column component, therefore:
    //- do not use anchors on items
    //- do not set a height, it uses content height

    Text {
      id: singletapinfo
      wrapMode: Text.WordWrap
      color: theme.palette.normal.baseText
      text: "1. " + i18n.tr("single tap a location to view its weather")
    }

    Text {
      id: tapholdinfo
      wrapMode: Text.WordWrap
      color: theme.palette.normal.baseText
      text: "2. " + i18n.tr("tap and hold on a location to")
    }

    Text {
      id: tapholdinfo_a
      wrapMode: Text.WordWrap
      color: theme.palette.normal.baseText
      text: i18n.tr("a) enable sorting mode (drag the icon to reorder)")
    }

    Text {
      id: tapholdinfo_b
      wrapMode: Text.WordWrap
      color: theme.palette.normal.baseText
      text: i18n.tr("b) multiselect locations to delete")
    }

    // Text {
    //   id: tapholdinfo_b
    //   wrapMode: Text.WordWrap
    //   color: theme.palette.normal.baseText
    //   text: i18n.tr("3. swipe down in header to close locations page")
    // }

    Button {
      id: closeButton
      text: i18n.tr("close")
      onClicked: pop()
    }
}
