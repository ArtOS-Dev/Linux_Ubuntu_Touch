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
import "../../components"

Item {
    id: colorThemePage
    height: colorThemeSetting.height

    ListModel {
        id: colorThemeModel
        Component.onCompleted: initialize()
        function initialize() {
            colorThemeModel.append({"colors": "no colors", "text": i18n.tr("no colors")})
            colorThemeModel.append({"colors": "blue/yellow", "text": i18n.tr("blue/yellow")})
            colorThemeModel.append({"colors": "blue/orange", "text": i18n.tr("blue/orange")})
            colorThemeModel.append({"colors": "blue/red", "text": i18n.tr("blue/red")})
        }
    }

    ExpandableListItem {
        id: colorThemeSetting
        listViewHeight: colorThemeModel.count*units.gu(6.1)
        model: colorThemeModel
        title.text: i18n.tr("Temperature colors")
        subText.text: i18n.tr(settings.colorTheme)

        delegate: StandardListItem {
            title.text: model.text
            icon.name: "ok"
            icon.visible: settings.colorTheme === model.colors
            onClicked: {
                setTemperatureColors(model.colors);
                colorThemeSetting.toggleExpansion();
            }
        }
    }
}
