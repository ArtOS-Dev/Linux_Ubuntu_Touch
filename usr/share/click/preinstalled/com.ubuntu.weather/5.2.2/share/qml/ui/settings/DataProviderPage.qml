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
import "../../data/keys.js" as Keys

Item {
    id: dataProviderPage
    height: listItem.height //dataProviderSetting.height

    ListItem {
        id: listItem
        height: providerLayout.height
        divider { visible: false; }
        ListItemLayout {
            id: providerLayout
            title.text: i18n.tr("Data Provider")
            subtitle.text: i18n.tr("OpenWeatherMap")
        }

        onClicked: locationSwitch.checked = !locationSwitch.checked
    }

    //remove expandable list as long as there is no other weather data provider implemented

    // ListModel {
    //     id: dataProviderModel
    //     ListElement { text: "OpenWeatherMap" }
    // }
    //
    // ExpandableListItem {
    //     id: dataProviderSetting
    //
    //     listViewHeight: dataProviderModel.count*units.gu(6.1)
    //     model: dataProviderModel
    //     title.text: i18n.tr("Data Provider")
    //     //subText.text: settings.service === "weatherchannel" ? "The Weather Channel" : "OpenWeatherMap"
    //     subText.text: "OpenWeatherMap"
    //
    //     delegate: StandardListItem {
    //         title.text: model.text
    //         icon.name: "ok"
    //         icon.visible: dataProviderSetting.subText.text === model.text
    //
    //         onClicked: {
    //             if (model.text === "The Weather Channel") {
    //                 settings.service = "weatherchannel"
    //             } else {
    //                 settings.service = "openweathermap"
    //             }
    //             refreshData(false, true);
    //             dataProviderSetting.toggleExpansion();
    //         }
    //     }
    // }

    // Component.onCompleted: {
    //     // If the key file for TWC is not blank, add the service to the model
    //     if (!!Keys.twcKey) {
    //         dataProviderModel.append({ text: "The Weather Channel" })
    //     }
    // }
}
