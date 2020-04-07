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

Row {
    height: forecastLabel.lineCount > forecastValue.lineCount ? forecastLabel.height : forecastValue.height
    spacing: units.gu(1.75)
    visible: value !== ""

    property alias imageName: icon.name
    property alias imageSource: icon.source //name and source needed depending on plattform
    property alias forecast: forecastLabel.text
    property alias value: forecastValue.text
    property alias labelText: textLabel.text

    //Button is one of the few components that do allow icon and label
    //workaround to display icon and text in the same place
    Button {
      id: workaround
      height: units.gu(2)
      width: height
      color: "transparent"
      Icon {
          id: icon
          color: theme.palette.normal.backgroundSecondaryText
          height: units.gu(2)
          width: height
      }
      Label{
        id: textLabel
        font.italic: true
      }
    }


    Label {
        id: forecastLabel
        elide: Text.ElideRight
        wrapMode: Text.WordWrap
        color: theme.palette.normal.backgroundText
        width: units.gu(16)
    }

    Text {
        id: forecastValue
        wrapMode: Text.WordWrap
        color: theme.palette.normal.backgroundText
        //minimum required widht: 2 space + 2 icon + 2 space + 16 label + 2 space + 16 value + 2 space = 42 units
        width: units.gu(17)
        //with more than one line from wordwrap give it some space between the lines
        lineHeight: lineCount > 0 ? 1.25 : 1.0
    }
}
