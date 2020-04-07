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
import "../components"
import "settings"
Page {
    id: settingsPage

    header: PageHeader {
        title: i18n.tr("Settings")

        Label {
          id: versionText
          anchors {right: parent.right; rightMargin: units.gu(2); verticalCenter: parent.verticalCenter}
          font.italic: true
          font.weight: Font.Light
          fontSize: "normal"
          text: "v5.2.2"
        }
    }

    property bool bug1341671workaround: true

    Flickable {
        id: settingsFlickable
        clip: true
        flickableDirection: Flickable.AutoFlickIfNeeded

        anchors {
            topMargin: settingsPage.header.height + units.gu(1)
            fill: parent
        }

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
                height: dpp.height > 0 ? dpp.height : units.gu(7)
                divider { visible: false; }

                DataProviderPage {
                    id: dpp
                    width: parent.width
                }
            }

            ListItem {
                width: parent.width
                height: ripg.height > 0 ? ripg.height : units.gu(7)
                divider { visible: false; }

                RefreshIntervalPage {
                    id: ripg
                    width: parent.width
                }
            }

            ListItem {
                width: parent.width
                height: wupg.height > 0 ? wupg.height : units.gu(7)
                divider { visible: false; }

                WindUnitsPage {
                    id: wupg
                    width: parent.width
                }
            }

            ListItem {
                width: parent.width
                height: upg.height > 0 ? upg.height : units.gu(7)
                divider { visible: false; }

                TempUnitsPage {
                    id: upg
                    width: parent.width
                }
            }

            ListItem {
                width: parent.width
                height: tcp.height > 0 ? tcp.height : units.gu(7)
                divider { visible: false; }

                TemperatureColorPage {
                    id: tcp
                    width: parent.width
                }
            }

            ListItem {
                width: parent.width
                height: tpg.height > 0 ? tpg.height : units.gu(7)
                divider { visible: false; }

                ThemePage {
                    id: tpg
                    width: parent.width
                }
            }

            ListItem {
                width: parent.width
                height: tbcp.height > 0 ? tbcp.height : units.gu(7)
                divider { visible: false; }

                TodayColorPage {
                    id: tbcp
                    width: parent.width
                }
            }

            ListItem {
                width: parent.width
                height: lpg.height > 0 ? lpg.height : units.gu(7)
                divider { visible: false; }

                LocationPage {
                    id: lpg
                    width: parent.width
                }
            }
        }
    }
}
