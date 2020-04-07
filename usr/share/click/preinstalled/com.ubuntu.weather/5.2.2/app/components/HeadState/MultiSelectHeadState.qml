/*
 * Copyright (C) 2015, 2017
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
    id: selectionState
    name: "selection"

    property PageHeader thisHeader: PageHeader {
        id: multiselectheader

        flickable: thisPage.flickable
        visible: thisPage.state === "selection"
        title: i18n.tr("Locations")

        leadingActionBar {
            actions: [
                Action {
                    text: i18n.tr("exit reorder mode")
                    iconName: "back"
                    onTriggered: listview.closeSelection()
                }
            ]
        }

        trailingActionBar {
            actions: [
                Action {
                    iconName: "select"
                    text: i18n.tr("Select All")
                    onTriggered: {
                        if (listview.getSelectedIndices().length === listview.model.count) {
                            listview.clearSelection()
                        } else {
                            listview.selectAll()
                        }
                    }
                },
                Action {
                    enabled: listview.getSelectedIndices().length > 0
                    iconName: "delete"
                    text: i18n.tr("Delete")
                    visible: removable

                    onTriggered: {
                        removed(listview.getSelectedIndices())

                        listview.closeSelection()
                    }
                }
            ]
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
        //     Timer {
        //        id: delayTimer
        //        //intervall needs to be a minimum of 200, otherwise collapse is not entirely finished
        //        //this will result in the page flickering when y is set back to zero
        //        interval: 200; running: false; repeat: false;
        //        onTriggered: {
        //           multiselectheader.y = 0  //reset to zero position
        //        }
        //     }
        // }
    }

    property ListView listview
    property bool removable: false
    property Page thisPage

    signal removed(var selectedIndices)

    PropertyChanges {
        target: thisPage
        header: thisHeader
    }
}
