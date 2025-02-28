/*
 * Copyright: 2013 - 2014 Canonical, Ltd
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
import Ubuntu.Components.ListItems 1.3
import Ubuntu.Components.Popups 1.3
import Evernote 0.1
import "../components"
import Qt.labs.settings 1.0

PageWithBottomEdge {
    id: root
    objectName: "notesPage"

    property var selectedNote: null
    property bool readOnly: false
    property bool narrowMode

    property alias filterNotebookGuid: notes.filterNotebookGuid
    property alias filterTagGuid: notes.filterTagGuid

    // We enable bottomEdge only in narrowMode.
    // To avoid flashing when a notebook is loaded, we wait to have all notes
    // loaded, but only in notebook view (when a filter is set), not in notes
    // page, because there isn't he flashing.
    bottomEdgeLabelVisible: narrowMode && (!notes.filterNotebookGuid || !notes.loading)
    bottomEdgeTitle: i18n.tr("Add note")
    bottomEdgePageComponent: EditNotePage {
        isBottomEdge: true
        MouseArea {
            anchors.fill: parent
        }

        ActivityIndicator {
            anchors.centerIn: parent
            running: root.bottomEdgeContentShown
            visible: true
        }
    }

    signal openSearch()
    signal editNote(var note)

    head {
        actions: [
            Action {
                visible: !narrowMode
                text: i18n.tr("Add note")
                iconName: "add"
                onTriggered: {
                    NotesStore.createNote(i18n.tr("Untitled"), filterNotebookGuid);
                }
            },
            Action {
                iconSource: "../images/sorting.svg"
                text: i18n.tr("Sorting")
                onTriggered: {
                    var popup = PopupUtils.open(Qt.resolvedUrl("../components/SortingDialog.qml"), root, {sortOrder: notes.sortOrder})
                    popup.accepted.connect( function(sortOrder) {
                        notes.sortOrder = sortOrder
                        popup.destroy();
                    })
                }
            },
            Action {
                text: i18n.tr("Search")
                iconName: "search"
                onTriggered: {
                    root.openSearch();
                }
            },
            Action {
                text: i18n.tr("Delete")
                iconName: "delete"
                visible: root.selectedNote !== null && !root.readOnly
                onTriggered: {
                    NotesStore.deleteNote(root.selectedNote.guid);
                }
            },
            Action {
                text: root.selectedNote.reminder ? i18n.tr("Edit reminder") : i18n.tr("Set reminder")
                // TODO: use this instead when the toolkit switches from using the
                // ubuntu-mobile-icons theme to suru:
                //iconName: root.selectedNote.reminder ? "reminder" : "reminder-new"
                iconSource: root.selectedNote.reminder ?
                    Qt.resolvedUrl("/usr/share/icons/suru/actions/scalable/reminder.svg") :
                    Qt.resolvedUrl("/usr/share/icons/suru/actions/scalable/reminder-new.svg")
                visible: root.selectedNote !== null && !root.readOnly
                onTriggered: {
                    root.selectedNote.reminder = !root.selectedNote.reminder
                    NotesStore.saveNote(root.selectedNote.guid)
                }
            },
            Action {
                text: i18n.tr("Edit")
                iconName: "edit"
                visible: root.selectedNote !== null && !root.readOnly
                onTriggered: {
                    print("should edit note")
                    root.editNote(root.selectedNote)
                }
            }
        ]
    }

    Settings {
        property alias sortOrder: notes.sortOrder
    }

    Notes {
        id: notes
    }

    function sortOrderToString(sortOrder){
        switch(sortOrder) {
        case Notes.SortOrderDateCreatedNewest:
        case Notes.SortOrderDateCreatedOldest:
            return "createdString";
        case Notes.SortOrderDateUpdatedNewest:
        case Notes.SortOrderDateUpdatedOldest:
            return "updatedString";
        case Notes.SortOrderTitleAscending:
        case Notes.SortOrderTitleDescending:
            return "title";
        }
        return "";
    }

    PulldownListView {
        id: notesListView
        objectName: "notespageListview"
        anchors { left: parent.left; right: parent.right }
        height: parent.height - y
        model: notes
        clip: true
        maximumFlickVelocity: units.gu(200)

        onRefreshed: {
            NotesStore.refreshNotes();
        }

        delegate: NotesDelegate {
            objectName: "notesDelegate" + index
            title: model.title
            date: notes.sortOrder == Notes.SortOrderUpdatedOldest || notes.sortOrder == Notes.SortOrderUpdatedNewest ?
                      model.updated : model.created

            content: model.tagline
            tags: {
                var tags = new Array();
                for (var i = 0; i < model.tagGuids.length; i++) {
                    tags.push(NotesStore.tag(model.tagGuids[i]).name)
                }
                return tags.join(" ");
            }
            resource: model.resourceUrls.length > 0 ? model.resourceUrls[0] : ""
            notebookColor: preferences.colorForNotebook(model.notebookGuid)
            reminder: model.reminder
            synced: model.synced
            loading: model.loading
            syncError: model.syncError
            conflicting: model.conflicting
            locked: conflicting
            deleted: model.deleted

            Component.onCompleted: {
                notes.note(model.guid).load(false);
            }

            onItemClicked: {
                root.selectedNote = NotesStore.note(guid);
            }

            onDeleteNote: {
                NotesStore.deleteNote(model.guid)
            }
            onEditNote: {
                root.editNote(NotesStore.note(model.guid));
            }
            onEditReminder: {
                pageStack.push(Qt.resolvedUrl("SetReminderPage.qml"), { note: NotesStore.note(model.guid) });
            }
            onEditTags: {
                var popup = PopupUtils.open(Qt.resolvedUrl("../components/EditTagsDialog.qml"), root,
                                { note: NotesStore.note(model.guid) });
                popup.done.connect(function() { NotesStore.saveNote(popup.note.guid)})
            }
        }

        section.criteria: {
            switch (notes.sortOrder) {
            case Notes.SortOrderTitleAscending:
            case Notes.SortOrderTitleDescending:
                return ViewSection.FirstCharacter;
            }

            return ViewSection.FullString
        }
        section.property: root.sortOrderToString(notes.sortOrder);

        section.delegate: ListItem {
            height: units.gu(5)
            Rectangle {
                anchors { left: parent.left; top: parent.top; right: parent.right }
                height: units.dp(1)
                color: Suru.neutralColor
                visible: index > 0
            }

            RowLayout {
                anchors { left: parent.left; right: parent.right; verticalCenter: parent.verticalCenter; margins: units.gu(1) }
                Label {
                    text: section
                    Layout.fillWidth: true
                }
                Label {
                    text: "(" + notes.sectionCount(root.sortOrderToString(notes.sortOrder), section) + ")"
                }
            }
        }

        BouncingProgressBar {
            anchors.top: parent.top
            visible: notes.loading
        }
        Label {
            anchors.centerIn: parent
            visible: !notes.loading && notesListView.count == 0
            width: parent.width - units.gu(4)
            wrapMode: Text.WordWrap
            horizontalAlignment: Text.AlignHCenter
            text: i18n.tr("No notes available. You can create new notes by pulling the note editor up from the bottom edge.")
        }

        Scrollbar {
            flickableItem: parent
        }
    }
}
