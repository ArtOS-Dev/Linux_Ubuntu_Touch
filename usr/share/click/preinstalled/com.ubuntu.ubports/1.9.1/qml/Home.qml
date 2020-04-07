// Main.qml
//
// This file is part of the UBports Welcome App.
//
// Copyright © 2017-2018 UBports https://ubports.com
//
// Maintained by Jan Jakob Sprinz (@NeoTheThird) <jan@ubports.com>
//
// GNU GENERAL PUBLIC LICENSE
//    Version 3, 29 June 2007
//
// This program is free software: you can redistribute it and/or modify
// it under the terms of the GNU General Public License as published by
// the Free Software Foundation, either version 3 of the License, or
// (at your option) any later version.
//
// This program is distributed in the hope that it will be useful,
// but WITHOUT ANY WARRANTY; without even the implied warranty of
// MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
// GNU General Public License for more details.
//
// You should have received a copy of the GNU General Public License
// along with this program.  If not, see <http://www.gnu.org/licenses/>.

import QtQuick 2.4
import Ubuntu.Components 1.3
import "modules"

Page {
    id: homePage
    title: i18n.tr("Welcome to %1!").arg("UBports")

    header: DefaultHeader {
        flickable: scroll.flickableItem
    }

    property int yumiFrame: 0

    ScrollView {
        id: scroll
        anchors.fill: parent

        Column {
            id: homeColumn
            width: scroll.width
            spacing: colSpacing

            Image {
                id: yumi
                width: units.gu(25)
                height: width
                anchors.horizontalCenter: parent.horizontalCenter
                horizontalAlignment: Image.AlignHCenter
                source: yumiFrame === 24 ? Qt.resolvedUrl("../assets/logo-2.svg") : Qt.resolvedUrl("../assets/logo.svg")
                
                onVisibleChanged: visible ? yumiAnimation.start() : yumiAnimation.stop()

                Timer {
                    id: yumiAnimation
                    triggeredOnStart: true
                    repeat: true
                    interval: 80
                    
                    onTriggered: {
                        yumiFrame += 1;
                        if (yumiFrame > 24) yumiFrame = 0;
                    }
                }
            }

            CenteredLabel {
                text: i18n.tr("Welcome to %1!").arg("UBports")
                textSize: Label.XLarge
            }

            DefaultLabel {
                text: i18n.tr("We can change the future! Let's innovate and dream again.")
                textSize: Label.Large
            }

            DefaultLabel {
                text: i18n.tr("UBports builds the most private and innovative experience. It is limited in potential only by what you - the community member - can dream. Regain control of your device and personal data. You have choice and freedom with UBports.")
            }

            Spacer {}

            UbuntuShape {
                width: units.gu(10)
                height: width
                anchors.horizontalCenter: parent.horizontalCenter
                aspect: UbuntuShape.Flat

                image: Image {
                    source: Qt.resolvedUrl("../assets/join.svg")
                    sourceSize.width: parent.width
                    sourceSize.height: parent.height
                }
            }

            DefaultLabel {
                text: i18n.tr("Be more than a spectator - Become a game changer!")
                textSize: Label.Large
            }

            DefaultLabel {
                //TRANSLATORS: Please make sure the URLs are correct and don't fuck up the HTML.
                text: i18n.tr("With UBports you can actually change the things you don't like. Ever felt frustrated by a feature or a limitation or a weird layout? Get it changed! By <a href='https://github.com/ubports/ubports-touch'>reporting bugs and sending feature requests</a> UBports will become the smartest platform you've ever experienced.")
            }

            Spacer {}

            UbuntuShape {
                width: units.gu(10)
                height: width
                anchors.horizontalCenter: parent.horizontalCenter
                aspect: UbuntuShape.Flat

                image: Image {
                    source: Qt.resolvedUrl("../assets/donate.svg")
                    sourceSize.width: parent.width
                    sourceSize.height: parent.height
                }
            }

            DefaultLabel {
                text: i18n.tr("Pay what's fair")
                textSize: Label.Large
            }

            DefaultLabel {
                //TRANSLATORS: Please make sure the URLs are correct and don't fuck up the HTML.
                text: i18n.tr("UBports was created and exists because of many volunteers in the community near you and all over the world. Although we don't ask for a fixed fee we do depend on financial support from the community. So if you like Ubuntu Touch and want to see the project succeed, please consider a <a href='https://paypal.me/ubports'>one-time</a> or <a href='https://patreon.com/ubports'>regular monthly</a> or <a href='https://liberapay.com/ubports'>weekly</a> donation. We sincerely appreciate it and we know that you'll feel great about your fair contribution and be excited to particpate. In return, we believe in providing fair sevice and opportunity with transparency to all members of the project.")
            }

            Spacer {}

            UbuntuShape {
                width: units.gu(10)
                height: width
                anchors.horizontalCenter: parent.horizontalCenter
                aspect: UbuntuShape.Flat

                source: Image {
                    source: Qt.resolvedUrl("../assets/notification.svg")
                    sourceSize.width: parent.width
                    sourceSize.height: parent.height
                }
            }

            DefaultLabel {
                text: i18n.tr("Get looped in")
                textSize: Label.Large
            }

            DefaultLabel {
                //TRANSLATORS: Please make sure the URLs are correct and don't fuck up the HTML.
                text: i18n.tr("We are in this together. As a starting point, stay on top of the latest developments, related news and a whole bunch of other experience-enhancing updates. <a href='https://list.ubports.com/mailman/listinfo'>Join our e-mail newsletter</a> to stay in the loop.")
            }

            DefaultLabel {
                //TRANSLATORS: Please make sure the URLs are correct and don't fuck up the HTML.
                text: i18n.tr("UBports is made possible by our <a href='https://ubports.com/sponsors'>our awesome sponsors, donors and patrons</a>!")
            }

            Rectangle {
                id: spacer
                width: parent.width
                height: gnalMargins
            }
        }
    }
}
