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
import "../data/keys.js" as Keys


Page {
    // Set to null otherwise the header is shown (but blank) over the top of the listview
    id: locationPage
    objectName: "homePage"
    flickable: null

    Rectangle {
      //when swiping BottomEdge the DayDelegate underneath gets clicked
      //transparent MouseArea to catch click events near BottomEdge
      id: avoidDayDelegateClick
      width: parent.width
      height: units.gu(4)
      color: "transparent"
      z:1 //raise above DayDelegate's
      anchors {
          bottom: parent.bottom
          left: parent.left
          right: parent.right
      }
      MouseArea {
          anchors.fill: parent
          cursorShape: Qt.PointingHandCursor
          propagateComposedEvents: false
          hoverEnabled: false
          onClicked: { bottomEdge.commit()}
      }
    }

    BottomEdge {
        id: bottomEdge
        height: parent.height
        preloadContent: false //needs to be set to false to allow theme changing without errors

        // Note: cannot use contentUrl and preload until pad.lv/1604509
        contentComponent: locationsPage

        Component {
            id: locationsPage
            LocationsPage {
                height: bottomEdge.height
                width: bottomEdge.width

                onPop: bottomEdge.collapse()
                onThemeChanged: {
                        //HACK: Dirty hack to avoid bottomEdge stops working after changing themes
                        //preloadContent needs to be set to false for this to work
                        bottomEdge.commit()
                        bottomEdge.collapse()
                    }
            }
        }
        hint.text: bottomEdge.hint.status == BottomEdgeHint.Locked ? i18n.tr("Locations") : ""
    }

    property var iconMap: {
        "sun": "weather-clear-symbolic",
        "moon": "weather-clear-night-symbolic",
        "cloud_sun": "weather-few-clouds-symbolic",
        "cloud_moon": "weather-few-clouds-night-symbolic",
        "cloud": "weather-clouds-symbolic",
        "rain": "weather-showers-symbolic",
        "thunder": "weather-storm-symbolic",
        "snow_shower": "weather-snow-symbolic",
        "fog": "weather-fog-symbolic",
        "snow_rain": "weather-snow-symbolic",
        "scattered": "weather-showers-scattered-symbolic",
        "overcast": "weather-overcast-symbolic"
    }

    property var imageMap: {
        "sun": Qt.resolvedUrl("../graphics/weather-clear.svg"),
        "moon": Qt.resolvedUrl("../graphics/weather-clear-night.svg"),
        "cloud_sun": Qt.resolvedUrl("../graphics/weather-few-clouds.svg"),
        "cloud_moon": Qt.resolvedUrl("../graphics/weather-few-clouds-night.svg"),
        "cloud": Qt.resolvedUrl("../graphics/weather-clouds.svg"),
        "rain": Qt.resolvedUrl("../graphics/weather-showers.svg"),
        "thunder": Qt.resolvedUrl("../graphics/weather-storm.svg"),
        "snow_shower": Qt.resolvedUrl("../graphics/weather-snow.svg"),
        "fog": Qt.resolvedUrl("../graphics/weather-fog.svg"),
        "snow_rain": Qt.resolvedUrl("../graphics/weather-snow.svg"),
        "scattered": Qt.resolvedUrl("../graphics/weather-showers-scattered.svg"),
        "overcast": Qt.resolvedUrl("../graphics/weather-overcast.svg"),
    }

    /*
     wrapper function to extract wind bearings delivered from API and return them as translatable strings
    */
    function getWindBearing(windBearing) {

        if (windBearing == "N") {
            // TRANSLATORS: N = North, wind bearing, abbreviated
            return i18n.tr("N");
        } else if (windBearing == "NE") {
            // TRANSLATORS: NE = North East, wind bearing, abbreviated
            return i18n.tr("NE");
        } else if (windBearing == "E") {
            // TRANSLATORS: E = East, wind bearing, abbreviated
            return i18n.tr("E");
        } else if (windBearing == "SE") {
            // TRANSLATORS: SE = South East, wind bearing, abbreviated
            return i18n.tr("SE");
        } else if (windBearing == "S") {
            // TRANSLATORS: S = South, wind bearing, abbreviated
            return i18n.tr("S");
        } else if (windBearing == "SW") {
            // TRANSLATORS: SW = South West, wind bearing, abbreviated
            return i18n.tr("SW");
        } else if (windBearing == "W") {
            // TRANSLATORS: W = West, wind bearing, abbreviated
            return i18n.tr("W");
        } else if (windBearing == "NW") {
            // TRANSLATORS: NW = NorthWest, wind bearing, abbreviated
            return i18n.tr("NW");
        } else {
            //if wind bearing is none of the above just push it trough without translation
            return windBearing;
        }
    }

    /*
      Format date object by given format.
    */
    function formatTimestamp(dateData, format) {
        return Qt.formatDate(getDate(dateData), i18n.tr(format))
    }

    /*
      Format date object by given format.
    */
    function formatTimestampLocaleShort(dateData) {
        return Qt.formatDate(getDate(dateData))
    }

    /*
      Format time object by given format.
    */
    function formatTime(dateData, format) {
        return Qt.formatTime(getDate(dateData), i18n.tr(format))
    }

    /*
      Get Date object from dateData including hour data.
    */
    function getDate(dateData) {
        return new Date(dateData.year, dateData.month, dateData.date, dateData.hours, dateData.minutes)
    }

    /*
      Get Date object from dateData with additional offset [in minutes].
    */
    function getCustomDate(dateData,offsetMin) {
        return new Date(dateData.year, dateData.month, dateData.date, dateData.hours, dateData.minutes + offsetMin)
    }

    // Do not show the Page Header
    header: PageHeader {
        visible: false
    }

    /*
      ListView for locations with snap-scrolling horizontally.
    */
    ListView {
        id: locationPages
        objectName: "locationPages"
        anchors {
            fill: parent
        }
        contentHeight: parent.height - bottomEdge.hint.height
        currentIndex: settings.current
        delegate: LocationPane {
            objectName: "locationPane" + index
        }
        highlightRangeMode: ListView.StrictlyEnforceRange
        model: weatherApp.locationsList.length
        orientation: ListView.Horizontal
        // TODO with snapMode, currentIndex is not properly set and setting currentIndex fails
        //snapMode: ListView.SnapOneItem

        property bool loaded: false

        signal collapseOtherDelegates(int index)

        onCurrentIndexChanged: {
            if (loaded) {
                // FIXME: when a model is reloaded this causes the currentIndex to be lost
                settings.current = currentIndex

                collapseOtherDelegates(-1)  // collapse all
            }
        }
        onModelChanged: {
            currentIndex = settings.current

            if (model > 0) {
                loading = false
                loaded = true
            }
        }
        onVisibleChanged: {
            if (!visible && loaded) {
                collapseOtherDelegates(-1)  // collapse all
            }
        }

        // TODO: workaround for not being able to use snapMode property
        Component.onCompleted: {
            var scaleFactor = units.gridUnit * 10;
            maximumFlickVelocity = maximumFlickVelocity * scaleFactor;
            flickDeceleration = flickDeceleration * scaleFactor;
        }

        Connections {
            target: settings
            onCurrentChanged: {
                locationPages.currentIndex = settings.current
            }
        }
    }

    LoadingIndicator {
        id: loadingIndicator
        anchors {
            bottom: parent.bottom
            left: parent.left
            right: parent.right
        }
        processing: loading
    }

    Loader {
        active: (locationsList === null || locationsList.length === 0) && mainPageStack.depth === 1
        anchors {
            fill: parent
        }
        asynchronous: true
        source: "../components/HomePageEmptyStateComponent.qml"
        visible: status === Loader.Ready && active
    }

    Loader {
        active: mainPageStack.depth === 1 && !Keys.twcKey && !Keys.owmKey
        anchors {
            fill: parent
        }
        asynchronous: true
        source: "../components/NoAPIKeyErrorStateComponent.qml"
        visible: status === Loader.Ready && active
    }
}
