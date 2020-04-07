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
import QtQuick.Controls 2.2 as QC
import QtWebEngine 1.7
import "../components"

Page {
    id: onlineMapPage
    property string sourceName: "rainviewer.com"
    property double latitude:  weatherApp.locationsList[settings.current].location.coord.lat
    property double longitude: weatherApp.locationsList[settings.current].location.coord.lon
    property int zoom: 7
    property string snow: "&sn=1" //snow on
    property string mapType: "&rmt=1" //satellite map

    header: PageHeader {
        id: header

        title: i18n.tr("Rain radar")

        // Row {
        //     anchors {
        //         // verticalCenter: parent.verticalCenter
        //         top: parent.top
        //         topMargin: header.height*0.275
        //         left: parent.left
        //         leftMargin: units.gu(6)
        //     }
        //     spacing: units.gu(1)
        //
        //     Label {
        //         text: sourceName
        //         color: theme.palette.normal.activity
        //         font.pixelSize: units.gu(2)
        //         font.underline: true
        //         MouseArea {
        //             anchors.fill: parent
        //             onClicked: Qt.openUrlExternally("https://" + sourceName)
        //         }
        //     }
        //     Icon {
        //         color: theme.palette.normal.baseText
        //         height: width
        //         name: "external-link"
        //         width: units.gu(2)
        //         MouseArea {
        //             anchors.fill: parent
        //             onClicked: Qt.openUrlExternally("https://" + sourceName)
        //         }
        //     }
        // }

        QC.AbstractButton {
            id: sourceButton
            height: width
            width: units.gu(3)
            anchors {
                verticalCenter: parent.verticalCenter
                right: reloadButton.left
                rightMargin: units.gu(1)
            }

            onClicked: Qt.openUrlExternally("https://" + sourceName)

            Rectangle {
                anchors.fill: parent
                color: Theme.palette.selected.background
                visible: parent.pressed
            }

            Icon {
                anchors.centerIn: parent
                color: theme.palette.normal.baseText
                height: width
                name: "external-link"
                width: units.gu(2)
            }
        }

        QC.AbstractButton {
            id: reloadButton
            height: width
            width: units.gu(3)
            anchors {
                verticalCenter: parent.verticalCenter
                right: mapButton.left
                rightMargin: units.gu(1)
            }

            onClicked: {
              webview.reloadAndBypassCache();
              webview.firstLoadComplete = true;
            }

            Rectangle {
                anchors.fill: parent
                color: Theme.palette.selected.background
                visible: parent.pressed
            }

            Icon {
                anchors.centerIn: parent
                color: theme.palette.normal.baseText
                height: width
                name: "reload"
                width: units.gu(2)
            }
        }

        QC.AbstractButton {
            id: mapButton
            height: width
            width: units.gu(3)
            anchors {
                verticalCenter: parent.verticalCenter
                right: snowButton.left
                rightMargin: units.gu(1)
            }

            onClicked: {
                if (mapType === "&rmt=1") { //if satellite change to
                    if (getTheme() === "&th=1") { //if suru dark
                        mapType = "&rmt=2"; //dark map
                        mapIcon.color = theme.palette.disabled.baseText;
                    } else { //if ambiance or suru gradient
                      mapType = "&rmt=4"; //light map
                      mapIcon.color = theme.palette.disabled.baseText;
                    }
                } else { //if dark or light map
                    mapType = "&rmt=1"; //back to satellite map
                    mapIcon.color = theme.palette.normal.baseText;
                }
                webview.url = buildURL(sourceName,latitude,longitude,zoom,snow,mapType)
            }

            Rectangle {
                anchors.fill: parent
                color: Theme.palette.selected.background
                visible: parent.pressed
            }

            Icon {
                id:mapIcon
                anchors.centerIn: parent
                color: theme.palette.normal.baseText
                height: width
                source: "../graphics/satellite.svg"
                width: units.gu(2)
            }
        }
        QC.AbstractButton {
            id: snowButton
            height: width
            width: units.gu(3)
            anchors {
                verticalCenter: parent.verticalCenter
                right: parent.right
                rightMargin: units.gu(1)
            }

            onClicked: {
                if (snow === "&sn=1") {
                    snow = "&sn=0";
                    snowIcon.color = theme.palette.disabled.baseText;
                } else {
                    snow = "&sn=1";
                    snowIcon.color = theme.palette.normal.baseText;
                }
                webview.url = buildURL(sourceName,latitude,longitude,zoom,snow,mapType)
            }

            Rectangle {
                anchors.fill: parent
                color: Theme.palette.selected.background
                visible: parent.pressed
            }

            Icon {
                id:snowIcon
                anchors.centerIn: parent
                color: theme.palette.normal.baseText
                height: width
                name: "weather-chance-of-snow"
                width: units.gu(2)
            }
        }
    }

    ProgressBar {
        id: loadingIndicator
        anchors {
            top: header.bottom
            left: parent.left
            right: parent.right
        }
        height: units.gu(0.2)
        //aquire the webviews loading progress for the indicators value
        value: webview.loadProgress/100
        //hide loadingIndicator when page has been loaded successfully
        visible: webview.loadProgress === 100 ? false : true
    }

    Rectangle {
        //show placeholder while the page is loading to avoid ugly flickering of webview
        id: webViewPlaceholder
        anchors {
            top: loadingIndicator.bottom
            left: parent.left
            right: parent.right
            bottom: parent.bottom
        }
        z: 1
        color: theme.palette.normal.background
        visible: webview.loadProgress === 100 ? false : true

        QC.BusyIndicator {
            id: busy
            anchors.centerIn: parent
        }
    }

    WebEngineView {
        id: webview
        //to reload with another (or altered) url just change the url-value, no reload function needed
        url: buildURL(sourceName,latitude,longitude,zoom,snow,mapType)
        zoomFactor: 1.8
        profile: webViewProfile
        anchors {
            topMargin: onlineMapPage.header.height
            fill: parent
        }
    }

    WebEngineProfile {
        id: webViewProfile
        persistentCookiesPolicy: WebEngineProfile.NoPersistentCookies;
        httpCacheType: WebEngineProfile.DiskHttpCache;
    }

    //on Xperias WebEngineView causes a unity8 crash after approx. 5 minutes if the page is not reloaded
    Timer {
        id: refreshTimer
        interval: 240000  //4 minutes
        running: false
        repeat: false
        onTriggered: webview.reload()
    }

    function buildURL (basisURL,latValue, longValue, zoomValue, snVal, mapVal) {
        var url = "";

        if (latValue !== undefined && longValue !== undefined && basisURL !== undefined) {
            switch(basisURL) {
            case "rainviewer.com":
              url = "https://www.rainviewer.com/map.html?loc=" + latValue.toString() + "," + longValue.toString()+ "," + zoomValue.toString() + "&oFa=0&oC=0&oU=0&oCS=1&oF=1&sm=1&oAP=1&o=70&c=1&lm=1" + getTheme() + snVal + mapVal;
              break;
              /*parameters of rainviewer.com:
              &rmt=2 ... map type: 0=road map, 1=satellite, 2=dark map, 3=OSM map, 4=light map
              &sn=1 ... 0=snow off, 1=snow on
              &c=1 ... weather data color scheme: 0=original, 1=universal blue, 2=titan, 3=TheWeatherChannel, 4=nexrad levelIII, 5=rainbow @ selex SI
              &o=83 ... radar layer opacitiy value
              &th=0 ... 0=dark theme off, 1=dark theme on
              &oFa=0 ... 0=fast animation off, 1=fast animation on
              &oC=0 ... 0=show coverage off, 1=show coverage time on
              &oU=0 ... 0=UTC time off, 1=UTC time on
              &oCS=1 ... 0=legend off, 1=legend on
              &oF=1 ... 0=fullscreen off, 1=fullscreen on
              &oAP=1 ... 0=play off, 1=play on
              &sm=1 ... 0=smooth radar data off, 1=smooth radar data on
              &lm=1 ... 0=legend maximized, 1=legend minimized
              */
            // case "windy.com":
            //   url = "https://www.windy.com/?" + "," + latValue.toString() + "," + longValue.toString() + "," + zoomValue.toString();
            //   break;
            // case "darksky.net":
            //   url = "https://maps.darksky.net/@precipitation_rate" + "," + latValue.toString() + "," + longValue.toString() + "," + zoomValue.toString();
            //   break;
            }
        }

        if (networkError) {
            return ""
        } else {
            return url
        }
    }

    function getTheme() {
        var themeToSet
        if (theme.name == "Ubuntu.Components.Themes.SuruDark") {
            themeToSet = "&th=1";
        } else if (theme.name == "Ubuntu.Components.Themes.Ambiance") {
            themeToSet = "&th=0";
        } else if (theme.name == "Ubuntu.Components.Themes.SuruGradient") {
            themeToSet = "&th=0";
        }
        return themeToSet
    }
}
