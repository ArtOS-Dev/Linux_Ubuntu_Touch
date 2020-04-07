/*
 * Copyright (C) 2015-2016 Canonical Ltd
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
    id: unitsPage
    height: temperatureSetting.height

    property bool bug1341671workaround: true

    ListModel {
        id: temperatureModel
        Component.onCompleted: initialize()

        function initialize() {
            // TRANSLATORS: The strings are standard measurement units
            // of temperature in Celcius and are shown in the settings page.
            // Only the abbreviated form of Celcius should be used.
            temperatureModel.append({"text": i18n.tr("°C"), "value": "°C"})

            // TRANSLATORS: The strings are standard measurement units
            // of temperature in Fahrenheit and are shown in the settings page.
            // Only the abbreviated form of Fahrenheit should be used.
            temperatureModel.append({"text": i18n.tr("°F"), "value": "°F"})
        }
    }

    ExpandableListItem {
        id: temperatureSetting
        objectName: "temperatureSetting"

        listViewHeight: temperatureModel.count*units.gu(6.1)
        model: temperatureModel
        title.text: i18n.tr("Temperature Unit")
        subText.text: settings.tempScale === "°C" ? i18n.tr("°C")
                                             : i18n.tr("°F")

        delegate: StandardListItem {
            title.text: model.text
            icon.name: "ok"
            icon.visible: settings.tempScale === model.value

            onClicked: {
                settings.tempScale = model.value
                refreshData(true)
                temperatureSetting.toggleExpansion()
            }
        }
    }
}
