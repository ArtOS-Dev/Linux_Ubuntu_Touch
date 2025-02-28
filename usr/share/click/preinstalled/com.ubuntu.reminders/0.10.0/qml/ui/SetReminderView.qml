/*
 * Copyright: 2013 Canonical, Ltd
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
import QtQuick.Layouts 1.1
import QtQuick.Controls.Suru 2.2
import Ubuntu.Components 1.3
import Ubuntu.Components.Pickers 1.3
import Evernote 0.1
import "../components"
import "../components/CustomPicker"

Flickable {
    id: root
    property string title: note.title
    property var note
    property bool minMode

    contentHeight: column.height + units.gu(4)
    clip: true
    flickableDirection: Flickable.AutoFlickIfNeeded

    ColumnLayout {
        id: column
        anchors { left: parent.left; top: parent.top; right: parent.right; margins: units.gu(1) }
        spacing: units.gu(2)

        RowLayout {
            spacing: units.gu(1)
            CheckBox {
                id: reminderDoneCheckbox
                checked: note.reminderDone
                onCheckedChanged: {
                    note.reminderDone = checked;
                }
            }

            Label {
                //TRANSLATORS: A checkbox with marks the reminder as done
                text: i18n.tr("Reminder done")
                MouseArea {
                    anchors.fill: parent
                    onClicked: reminderDoneCheckbox.checked = !reminderDoneCheckbox.checked
                }
            }
        }

        Label {
            text: i18n.tr("Select date and time for the reminder:")
            Layout.fillWidth: true
            wrapMode: Text.WordWrap
        }

        DatePicker {
            id: datePicker
            date: note.hasReminderTime ? note.reminderTime : new Date()
            anchors.horizontalCenter: parent.horizontalCenter
            StyleHints {
                highlightBackgroundColor: theme.palette.normal.raised
                highlightColor: UbuntuColors.jet
            }
        }

        DatePicker {
            id: timePicker
            mode: settings.fiveMinMode == true ? "Hours|FiveMinutes" : "Hours|Minutes"
            date: note.hasReminderTime ? note.reminderTime : new Date()
            anchors.horizontalCenter: parent.horizontalCenter
            StyleHints {
                highlightBackgroundColor: theme.palette.normal.raised
                highlightColor: UbuntuColors.jet
            }
        }

        RowLayout {
            Layout.fillWidth: true

            Button {
                // TRANSLATORS: Button that deletes a reminder
                text: i18n.tr("Delete")
                Layout.fillWidth: true
                Suru.highlightType: Suru.Mid
                color: Suru.highlightColor
                onClicked: {
                    note.reminder = false;
                    NotesStore.saveNote(note.guid);
                    pageStack.pop();
                }
            }

            Button {
                Layout.fillWidth: true
                // TRANSLATORS: Button that saves a reminder
                text: i18n.tr("Save")
                Suru.highlightType: Suru.PositiveHighlight
                color: Suru.highlightColor
                onClicked: {
                    note.reminder = true;
                    var date = datePicker.date
                    var time = timePicker.date
                    date.setHours(time.getHours());
                    date.setMinutes(time.getMinutes());
                    note.reminderTime = date;
                    print("set reminder time to", Qt.formatDate(date))
                    NotesStore.saveNote(note.guid)
                    pageStack.pop();
                }
            }
        }
    }
}
