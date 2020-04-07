/*
 *
 * This file is part of Ubuntu Clock App
 *
 * Ubuntu Clock App is free software: you can redistribute it and/or modify
 * it under the terms of the GNU General Public License version 3 as
 * published by the Free Software Foundation.
 *
 * Ubuntu Clock App is distributed in the hope that it will be useful,
 * but WITHOUT ANY WARRANTY; without even the implied warranty of
 * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
 * GNU General Public License for more details.
 *
 * You should have received a copy of the GNU General Public License
 * along with this program.  If not, see <http://www.gnu.org/licenses/>.
 */

import QtQuick 2.4
import QtGraphicalEffects 1.0

Item {
    id:_swipearea

    DropShadow {
       anchors.fill:_swipearea
       visible: bottomSwipeRect.visible
       verticalOffset: 0
       radius:3
       samples: 7
       color: Qt.rgba(0,0,0,0.2)
       source:bottomSwipeRect
       transparentBorder :true
    }
    MouseArea {
        z:10
        enabled: _swipearea.visible
        anchors.fill:bottomSwipeRect
        onPressed: { listview.interactive = true ; mouse.accepted = false }
    }
    Rectangle {
        id:bottomSwipeRect
        anchors {
            fill:parent
            topMargin:4
        }
        color:theme.palette.normal.background
    }
}
