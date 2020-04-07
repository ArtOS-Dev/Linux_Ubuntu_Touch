/*
 * Copyright (C) 2015, 2017 Canonical Ltd
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
import Ubuntu.Components 1.3 as UC
import QtQuick.Controls 2.2 as QC
import "../components"
import "../data/suncalc.js" as SunCalc
import "../data/moonphase.js" as MoonPhase


ListView {
    id: mainPageWeekdayListView
    height: parent.height
    model: ListModel {

    }
    width: weatherApp.width

    /*
      Data properties
    */
    property string name
    property string currentTemp
    property string icon
    property string iconName

    property var hourlyForecastsData
    property string hourlyTempUnits

    property var todayData
    property bool graphicVisible : false

    property var lastFetch  // don't store as int as reaches max int

    delegate: DayDelegate {
        day: model.day
        high: model.high
        image: model.image
        low: model.low

        modelData: model
    }
    header: UC.ListItem {
        divider { visible: false; }
        height: locationTop.height

        /* background rectangle to highlight todays info */
        Rectangle {
            width: parent.width
            height: homeTempInfo.height + units.gu(2)
            color: settings.highlightToday ? UC.UbuntuColors.graphite : "transparent"
            opacity: 0.2

            anchors {
                top: locationTop.top
                topMargin: units.gu(4) + headerRow.height + updatedLabel.height + locationsindicator.height
            }
        }

        Column {
            id: locationTop

            anchors {
                left: parent.left
                right: parent.right
                margins: units.gu(2)
            }
            spacing: units.gu(1)

            Row {  // spacing at top = row height + column spacing value
                height: units.gu(0.1)
                width: parent.width
            }

            HeaderRow {
                id: headerRow
                locationName: mainPageWeekdayListView.name
            }

            property var updatedAt: mainPageWeekdayListView.lastFetch
            onUpdatedAtChanged: diffTimer.restart()

            UC.Label {
                id: updatedLabel
                font.weight: Font.Light
                fontSize: "small"
                text: i18n.tr("Today") + " - " + updatedAtText + " "

                readonly property string updatedAtText: {
                    if (diffDays > 0) {
                        i18n.tr("updated %1 day ago", "updated %1 days ago", diffDays).arg(diffDays)
                    } else if (diffHours > 0) {
                        i18n.tr("updated %1 hour ago", "updated %1 hours ago", diffHours).arg(diffHours)
                    } else if (diffMinutes > 0) {
                        i18n.tr("updated %1 minute ago", "updated %1 minutes ago", diffMinutes).arg(diffMinutes)
                    } else {
                        i18n.tr("updated recently")
                    }
                }

                property var diff
                property int diffMinutes: Math.floor(diff / 60)
                property int diffHours: Math.floor(diffMinutes / 60)
                property int diffDays: Math.floor(diffHours / 24)

                // Check the time every 15 seconds
                Timer {
                    id: diffTimer
                    interval: 15000
                    repeat: true
                    running: parent.visible
                    triggeredOnStart: true

                    onTriggered: parent.diff = ((new Date().getTime() - mainPageWeekdayListView.lastFetch) / 1000)
                }
            }

            QC.PageIndicator {
                id: locationsindicator
                property int maxCount: 18
                currentIndex: settings.current
                count: weatherApp.locationsList.length
                interactive: true
                clip: true
                anchors.horizontalCenter: parent.horizontalCenter

                visible: weatherApp.locationsList.length > 1 ? true : false
                height: weatherApp.locationsList.length > 1 ? units.gu(2) : -units.gu(1)
                onCurrentIndexChanged: {settings.current = locationsindicator.currentIndex;}

                delegate: Rectangle {
                    width: units.gu(1)
                    height: units.gu(1)
                    visible: locationsindicator.count > locationsindicator.maxCount ? false : true
                    radius: height/2
                    // uncomment to show location index inside of PageIndicator
                    // widht: units.gu(1.8)
                    // radius: height/3.5
                    // UC.Label {
                    //   anchors.horizontalCenter: parent.horizontalCenter
                    //   anchors.verticalCenter: parent.verticalCenter
                    //   text: index + 1 //adding one because index starts at zero
                    //   font.pixelSize: units.gu(1.2)
                    //   color: index === locationsindicator.currentIndex ? theme.palette.normal.background : theme.palette.normal.foregroundText
                    // }
                    color: theme.palette.normal.baseText
                    opacity: index === locationsindicator.currentIndex ? 0.90 : 0.4
                    Behavior on opacity {
                        OpacityAnimator {
                            duration: 100
                        }
                    }
                }

                // UC.Label {
                //     visible: locationsindicator.count > locationsindicator.maxCount ? true : false
                //     text: i18n.tr("too many locations to display page indicator") + " (> %1)".arg(locationsindicator.maxCount)
                //     font.weight: Font.Light
                //     font.pixelSize: units.gu(1.5)
                //     font.italic: true
                //     anchors.horizontalCenter: parent.horizontalCenter
                // }
            }

            HomeTempInfo {
                id: homeTempInfo
                modelData: todayData
                now: mainPageWeekdayListView.currentTemp
                icon: mainPageWeekdayListView.icon
            }

            Loader {
                id: homeHourlyLoader
                asynchronous: true
                height: units.gu(19)
                source: "../components/HomeHourly.qml"
                visible: true
                width: parent.width
            }

            Row {  // add some space between hourly and daily forecast
                height: units.gu(1)
                width: parent.width
            }

            NumberAnimation {
                id: scrollToTopAnimation
                target: mainPageWeekdayListView;
                property: "contentY";
                duration: 200;
                easing.type: Easing.InOutQuad
                to: -height
            }

            Connections {
                target: locationPages
                onCurrentIndexChanged: {
                    if (locationPages.currentIndex !== index) {
                        scrollToTopAnimation.start()
                    } else {
                        mainPageWeekdayListView.contentY = -locationTop.height
                    }
                }
            }
        }
    }

    UC.PullToRefresh {
        id: pullToRefresh
        refreshing: false

        onRefresh: {
            if (networkError === false) {
              locationPages.loaded = false
              refreshing = true
              refreshData(false, true)
            } else {
              mainPageStack.push(Qt.resolvedUrl("../components/NetworkErrorStateComponent.qml"));
              refreshing = false
              loading = false
              refreshData(true, false)
            }
        }
    }

    function getDayData(data) {
        var tempUnits = settings.tempScale === "°C" ? "metric" : "imperial"
        var windUnits = settings.windUnits === "kph" ? "metric" : "imperial";
        var timezoneOffset = new Date().getTimezoneOffset();  //returns the time difference between UTC time and local time, in minutes
        //(data.location.timezone.dstOffset in hours * 60 to minutes + timezoneOffset in minutes)*60*1000 = offset in millisecond
        var offset = (data.location.timezone && data.location.timezone.gmtOffset !== undefined) ? (data.location.timezone.gmtOffset * 60 + timezoneOffset)*60*1000: timezoneOffset*60*1000
        var options = { timeZone: data.location.timezone.timeZoneId, timeZoneName: 'long' };
        var sunrise = new Date(SunCalc.SunCalc.getTimes(getDate(data.date), data.location.coord.lat, data.location.coord.lon).sunrise.getTime() + offset);
        var sunset = new Date(SunCalc.SunCalc.getTimes(getDate(data.date), data.location.coord.lat, data.location.coord.lon).sunset.getTime() + offset);
        // TRANSLATORS: "%1kph" and "%1mph" is to be able to add
        // an optional space between digit+unit i.e. In English '9kph', in Catalan '9 km/h'
        var windSpeedString = settings.windUnits === "kph" ? i18n.tr("%1kph") :
        // TRANSLATORS: "%1kph" and "%1mph" is to be able to add
        // in the German speaking area 'mi/h' would be the official unit, but according to several sources on the internet that is not used
        // therefore please leave 'mph' unless you do have other information
                                                             i18n.tr("%1mph");
        //date is provided as 11:59 of given day, so to get moonphase for start of day and end of day (subtract 719 min/add 720 minutes)
        var moonPhaseString = MoonPhase.getMoonPhaseString(getCustomDate(data.date,-719),getCustomDate(data.date,720)).moonphase;
        var moonPhaseEmoji = MoonPhase.getMoonPhaseString(getCustomDate(data.date,-719),getCustomDate(data.date,720)).moonemoji;
        var moonPhaseImage = MoonPhase.getMoonPhaseString(getCustomDate(data.date,-719),getCustomDate(data.date,720)).moonimage;

        return {
            day: formatTimestamp(data.date,"ddd") + " " + formatTimestampLocaleShort(data.date),
            low: Math.round(data[tempUnits].tempMin).toString() + settings.tempScale,
            high: (data[tempUnits].tempMax !== undefined) ? Math.round(data[tempUnits].tempMax).toString() + settings.tempScale : "–",
            image: (data.icon !== undefined && iconMap[data.icon] !== undefined) ? iconMap[data.icon] : "",
            condition: emptyIfUndefined(data.condition),
            chanceOfPrecip: emptyIfUndefined(data.propPrecip, "%"), //not supported by OpenWeatherMap json API
            //humidity forecast only provided for 3 days, other days zero returned -> omit zero values
            humidity: data.humidity === 0 ? "": emptyIfUndefined(data.humidity, "%"),
            sunrise: data.sunrise || sunrise.toLocaleTimeString(Qt.locale().name, options),
            sunset: data.sunset || sunset.toLocaleTimeString(Qt.locale().name, options),
            moonPhase: moonPhaseString,
            moonImage: moonPhaseImage,
            pressure: data.pressure + " hPa",
            uvIndex: emptyIfUndefined(data.uv),
            wind: data[windUnits].windSpeed === undefined || data.windDir === undefined
                        ? "" : windSpeedString.arg(Math.round(data[windUnits].windSpeed)) + " " + getWindBearing(data.windDir)
        };
    }

    function emptyIfUndefined(variable, append) {
        if (append === undefined) {
            append = ""
        }

        return variable === undefined ? "" : variable + append
    }

    /*
      Extracts values from the location weather data and puts them into the appropriate components
      to display them.

      Attention: Data access happens through "weatherApp.locationList[]" by index, since complex
      data in models will lead to type problems.
    */
    function renderData(index) {
        var data = weatherApp.locationsList[index],
                current = data.data[0].current,
                forecasts = data.data,
                forecastsLength = forecasts.length,
                hourlyForecasts = [];

        var tempUnits = settings.tempScale === "°C" ? "metric" : "imperial"

        // set general location data
        name = data.location.name;

        // set current temps and condition
        iconName = (current.icon) ? current.icon : "";
        icon = (imageMap[iconName] !== undefined) ? imageMap[iconName] : "";
        currentTemp = Math.round(current[tempUnits].temp).toString() + String("°");

        // reset days list
        // TODO: overwrite and trim to make the refresh smoother?
        mainPageWeekdayListView.model.clear()

        // set daily forecasts
        if(forecastsLength > 0) {
            for(var x=0;x<forecastsLength;x++) {
                // collect hourly forecasts if available
                if(forecasts[x].hourly !== undefined && forecasts[x].hourly.length > 0) {
                    hourlyForecasts = hourlyForecasts.concat(forecasts[x].hourly)
                }

                // Copy the coords and timezone of the location
                // so that sun{rise,set} work with OWM
                forecasts[x].location = {
                    coord: data.location.coord,
                    timezone: data.location.timezone
                };

                if (x === 0) {
                    // store today's data for later use
                    todayData = getDayData(forecasts[x]);
                } else {
                    // set daydata
                    mainPageWeekdayListView.model.append(getDayData(forecasts[x]));
                }
            }
        }

        // set data for hourly forecasts
        if(hourlyForecasts.length > 0) {
            hourlyForecastsData = hourlyForecasts;
            hourlyTempUnits = tempUnits;
        }

        // Set last updated time
        mainPageWeekdayListView.lastFetch = data.updated;
    }

    Component.onCompleted: renderData(index)
}
