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
import QtQuick.Layouts 1.1

Item {
    id: minuteModePage
    anchors {
      top: parent.top
      topMargin: units.gu(1)
      left: parent.left
      leftMargin: units.gu(2)
      right: parent.right
    }

    Column {
        anchors {
                top: parent.top
                left: parent.left
                right: parent.right
            }
            spacing: units.gu(1)

        Label {
          text: i18n.tr("Choose minute selection mode for time picker") + ":"
        }

        RowLayout {

            Label {
              text: i18n.tr("Use steps of")
            }
            CheckBox {
                id: fiveMinCheckBox
                checked: settings.fiveMinMode
                onCheckedChanged: {
                  fiveMinCheckBox.checked == true ? settings.fiveMinMode = true : settings.fiveMinMode = false;
                  oneMinCheckBox.checked = !fiveMinCheckBox.checked
                }
            }
            Label {
              //TRANSLATORS: abbreviation for time unit 'minutes'
              text: " 5 " + i18n.tr("min")
            }
            CheckBox {
                id: oneMinCheckBox
                checked: !settings.fiveMinMode
                onCheckedChanged: {
                  oneMinCheckBox.checked == true ? settings.fiveMinMode = false : settings.fiveMinMode = true;
                  fiveMinCheckBox.checked = !oneMinCheckBox.checked
                }
            }
            Label {
              //TRANSLATORS: abbreviation for time unit 'minutes'
              text: " 1 " + i18n.tr("min")
            }
        }
    }
}
