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
    id: themePage
    height: themeSetting.height

    ListModel {
        id: themeModel
        Component.onCompleted: initialize()

        function initialize() {
            themeModel.append({"text": i18n.tr("System theme"), "value": "System"})
            themeModel.append({"text": i18n.tr("Suru-dark theme"), "value": "Suru-dark"})
            themeModel.append({"text": i18n.tr("Ambiance theme"), "value": "Ambiance"})
        }
    }

    Timer {
       id: themeTimer
       //intervall needs to be a minimum of 200, otherwise collapse is not entirely finished
       interval: 200; running: false; repeat: false;
       onTriggered: {
          weatherApp.setCurrentTheme();
       }
    }

    ExpandableListItem {
        id: themeSetting
        listViewHeight: themeModel.count*units.gu(6.1)
        model: themeModel
        title.text: i18n.tr("Style")
        subText.text: settings.selectedTheme

        delegate: StandardListItem {
            title.text: model.text
            icon.name: "ok"
            icon.visible: settings.selectedTheme === model.value
            onClicked: {
                settings.selectedTheme = model.value;
                themeSetting.toggleExpansion();
                //when calling weatherApp.setCurrentTheme(); without timer the list will not collapse
                themeTimer.start();
            }
        }
    }
}
