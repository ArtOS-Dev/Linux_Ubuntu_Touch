/*
 * Copyright: 2014 Canonical, Ltd
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
import Ubuntu.Components.Popups 1.3
import Ubuntu.Components.ListItems 1.3
import Evernote 0.1

Dialog {
    id: root

    title: i18n.tr("Edit tags")
    text: tags.count == 0 ? noTagsText : haveTagsText

    property string noTagsText: i18n.tr("Enter a tag name to attach it to the note.")
    property string haveTagsText: i18n.tr("Enter a tag name or select one from the list to attach it to the note.")

    property var note

    signal done();

    Tags {
        id: tags
    }

    SortFilterModel {
        id: tagsSortFilterModel
        model: tags
        filter.property: "name"
        filter.pattern: RegExp(textField.text)
    }

    RowLayout {
        Layout.preferredWidth: parent.width - units.gu(2)
        Layout.alignment: Qt.AlignHCenter
        z: 2

        Item {
            Layout.fillWidth: true
            Layout.preferredHeight: okButton.height

            TextField {
                id: textField
                placeholderText: i18n.tr("Tag name")
                anchors.fill: parent

                onAccepted: accept();

                function accept() {
                    var tagName = displayText;
                    // While displayText might be something useful, text will be empty when typing with
                    // predictive keyboard. displayText is read-only though, in order to update it, we
                    // need to actually cause a changed event on text, so let's set it and unset it again.
                    textField.text = ' ';
                    textField.text = '';


                    // Check if the tag exists
                    for (var i=0; i < tags.count; i++) {
                        var tag = tags.tag(i);
                        if (tag.name == tagName) {
                            // The tag exists, check if is already selected: if it is,
                            // do nothing, otherwise add to tags of the note
                            if (note.tagGuids.indexOf(tag.guid) === -1) {
                                note.tagGuids.push(tag.guid);
                            }
                            return;
                        }
                    }

                    var newTag = NotesStore.createTag(tagName);
                    print("tag created", newTag.name, "appending to note");
                    note.tagGuids.push(newTag.guid)
                }

            }

            Rectangle {
                anchors {
                    left: textField.left
                    top: textField.bottom
                    right: textField.right
                }
                color: Suru.backgroundColor
                border.width: units.dp(1)
                border.color: Suru.foregroundColor
                height: Math.min(5, tagsListView.count) * units.gu(4)
                visible: (textField.text.length > 0 || textField.inputMethodComposing) && (textField.focus || tagsListView.focus)

                ListView {
                    id: tagsListView
                    anchors.fill: parent
                    model: tagsSortFilterModel
                    clip: true

                    delegate: Empty {
                        height: units.gu(4)
                        RowLayout {
                            id: tagRow
                            anchors.fill: parent
                            anchors.margins: units.gu(1)
                            spacing: units.gu(1)

                            property bool used: root.note ? root.note.tagGuids.indexOf(model.guid) !== -1 : false
                            Label {
                                text: model.name
                                color: textField.text === model.name ? Suru.highlightColor : Suru.foregroundColor
                                Suru.highlightType: Suru.InformationHighlight
                                Layout.fillHeight: true
                                Layout.fillWidth: true
                            }
                            Icon {
                                name: "tick"
                                visible: tagRow.used
                                Layout.fillHeight: true
                            }
                        }

                        onClicked: {
                            textField.text = model.name
                        }
                    }
                }
            }
        }


        Button {
            id: okButton
            text: i18n.tr("OK")
            Suru.highlightType: Suru.PositiveHighlight
            color: Suru.highlightColor
            enabled: textField.text.replace(/\s+/g, '') !== '' || textField.inputMethodComposing === true; // Not only whitespaces!
            onClicked: textField.accept()
        }
    }

    Column {
        width: parent.width

        Repeater {
            id: optionSelector

            model: tags

            ListItem {
                id: tagDelegate
                height: units.gu(5)
                property bool selected: root.note ? root.note.tagGuids.indexOf(model.guid) !== -1 : false

                SlotsLayout {
                    height: units.gu(5)
                    mainSlot: Label {
                        text: model.name
                    }

                    Icon {
                        name: "tick"
                        height: units.gu(3)
                        width: height
                        visible: tagDelegate.selected
                        SlotsLayout.position: SlotsLayout.Trailing
                    }
                }

                onClicked: {
                    if (selected) {
                        var index = root.note.tagGuids.indexOf(model.guid);
                        root.note.tagGuids.splice(index, 1);
                    }
                    else {
                        root.note.tagGuids.push(model.guid);
                    }
                    NotesStore.saveNote(root.note.guid);
                }
            }
        }
    }

    Button {
        id: closeButton
        Layout.preferredWidth: parent.width - units.gu(2)
        Layout.alignment: Qt.AlignHCenter

        text: i18n.tr("Close")

        onClicked: {
            root.done();
            PopupUtils.close(root)
        }
    }
}
