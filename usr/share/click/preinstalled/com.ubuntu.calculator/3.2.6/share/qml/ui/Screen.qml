/*
 * Copyright (C) 2017-2019 UBports
 * Copyright 2014-2015 Canonical Ltd.
 *
 * This file is part of ubuntu-calculator-app.
 *
 * ubuntu-calculator-app is free software; you can redistribute it and/or modify
 * it under the terms of the GNU General Public License as published by
 * the Free Software Foundation; version 3.
 *
 * ubuntu-calculator-app is distributed in the hope that it will be useful,
 * but WITHOUT ANY WARRANTY; without even the implied warranty of
 * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
 * GNU General Public License for more details.
 *
 * You should have received a copy of the GNU General Public License
 * along with this program.  If not, see <http://www.gnu.org/licenses/>.
 */
import QtQuick 2.4
import Ubuntu.Components 1.3
import QtQuick.Controls.Suru 2.2

import "../upstreamcomponents"
import "../engine/formula.js" as Formula

ListItem {
    id: root
    objectName: "screenroot" + model.index

    color: Suru.backgroundColor
    Suru.textStyle: Suru.SecondaryText
    height: units.gu(7)
    divider.visible: false

    Row {
        id: calculationRow
        objectName: "historyrow"

        anchors {
            fill: parent
            rightMargin: units.gu(1)
            leftMargin: units.gu(1)
        }

        layoutDirection: Qt.RightToLeft
        spacing: units.gu(1)

        Text {
            id: result
            objectName: "result" + model.index

            anchors.verticalCenter: parent.verticalCenter

            color: Suru.foregroundColor
            text: Formula.returnFormulaToDisplay(model.result, i18n, mainView.decimalPoint)
            textFormat: Text.PlainText
            font.pixelSize: units.gu(2.5)
            lineHeight: units.gu(2)
            lineHeightMode: Text.FixedHeight
            verticalAlignment: Text.AlignVCenter
        }

        Text {
            id: formula
            objectName: "formula" + model.index

            anchors.verticalCenter: parent.verticalCenter
            width: parent.width - result.width

            color: Suru.foregroundColor
            textFormat: Text.PlainText
            text: Formula.returnFormulaToDisplay(model.formula, i18n, mainView.decimalPoint) + " ="
            font.pixelSize: units.gu(2)

            verticalAlignment: Text.AlignVCenter
            horizontalAlignment: Text.AlignRight
        }
    }
}
