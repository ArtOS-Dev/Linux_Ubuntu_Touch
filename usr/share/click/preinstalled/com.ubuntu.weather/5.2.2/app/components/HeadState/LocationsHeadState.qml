/*
 * Copyright (C) 2016
 *      Andrew Hayzen <ahayzen@gmail.com>
 *      Victor Thompson <victor.thompson@gmail.com>
 *
 * This program is free software; you can redistribute it and/or modify
 * it under the terms of the GNU General Public License as published by
 * the Free Software Foundation; version 3.
 *
 * This program is distributed in the hope that it will be useful,
 * but WITHOUT ANY WARRANTY; without even the implied warranty of
 * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
 * GNU General Public License for more details.
 *
 * You should have received a copy of the GNU General Public License
 * along with this program.  If not, see <http://www.gnu.org/licenses/>.
 */

import QtQuick 2.4
import Ubuntu.Components 1.3

State {
    name: "default"

    property PageHeader thisHeader: PageHeader {
        id: locationsheader

        flickable: thisPage.flickable
        visible: thisPage.state === "default"
        title: i18n.tr("Locations")

        leadingActionBar {
            actions: [
                Action {
                    iconName: "down"
                    objectName: "back"
                    onTriggered: thisPage.pop()
                }
            ]
            objectName: "locationsLeadingActionBar"
        }

        trailingActionBar {
            actions: [
                Action {
                    iconName: "info"
                    objectName: "listactionhelpdialog"
                    onTriggered: mainPageStack.push(Qt.resolvedUrl("../../components/ListActionHelpDialog.qml"))
                },
                Action {
                    iconName: "add"
                    objectName: "addLocation"
                    onTriggered: mainPageStack.push(Qt.resolvedUrl("../../ui/AddLocationPage.qml"))
                }
            ]
            objectName: "locationsTrailingActionBar"
        }

        //creates option to swipe in header to close a page by using a MouseArea
        // MouseArea {
        //     id: swipeToActionArea
        //     anchors.fill: parent
        //     //allows click events for items underneath the mouse area
        //     propagateComposedEvents: true
        //     //configure drag behavior for header
        //     drag.target: parent
        //     drag.axis: Drag.YAxis
        //     drag.minimumY: 0
        //     drag.threshold: locationsheader.height/3
        //     drag.maximumY: locationsheader.height*3
        //     onReleased: {
        //       bottomEdge.collapse();
        //       delayTimer.start();
        //     }
        //
        //     //TODO: add timer to slide down header y in slow motion, call collapse at the end of timer
        //     //      at the same time reduce opacity to zero to show page underneath
        //     //      maybe using NumberAnimation on y on this?
        //
        //     //header position needs to be set back to y=0 for next page call
        //     Timer {
        //        id: delayTimer
        //        //intervall needs to be a minimum of 200, otherwise collapse is not entirely finished
        //        //this will result in the page flickering when y is set back to zero
        //        interval: 200; running: false; repeat: false;
        //        onTriggered: {
        //           locationsheader.y = 0  //reset to zero position
        //        }
        //     }
        // }
    }
    property Item thisPage

    PropertyChanges {
        target: thisPage
        header: thisHeader
    }
}
