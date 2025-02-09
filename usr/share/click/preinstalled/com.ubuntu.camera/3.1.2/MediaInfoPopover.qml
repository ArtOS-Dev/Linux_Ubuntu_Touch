import QtQuick 2.4
import Ubuntu.Components 1.3
import Ubuntu.Components.Popups 1.3

import CameraApp 0.1

Popover {
    id: infoPopover
    property var currentMedia: null
    property var model: null
    property var exifData: fileOperations.getEXIFData(currentMedia.url)
    
    property var infoKeys : [
              { "key": 'Exif.Image.ImageWidth' , "title" : i18n.tr( "Width : %1")},
              { "key": 'Exif.Image.ImageLength' , "title" :i18n.tr( "Height : %1")},
              { "key": 'Exif.Image.DateTime' , "title" :i18n.tr( "Date : %1")},
              { "key": 'Exif.Image.Model' , "title" :i18n.tr( "Camera Model : %1")},
              { "key": 'Exif.Image.Copyright' , "title" :i18n.tr( "Copyright : %1")},
              { "key": 'Exif.Image.ExposureTime' , "title" :i18n.tr( "Exposure Time : %1")},
              { "key": 'Exif.Image.FNumber' , "title" :i18n.tr( "F. Number : %1")},
              { "key": 'Exif.Image.NewSubfileType' , "title" :i18n.tr( "Sub-File type : %1")},
            ];

    FileOperations {
        id: fileOperations
    }
    
    autoClose: true

    Item {
        height: childrenRect.height + units.gu(4)
        anchors {
            centerIn: parent
            margins: units.gu(1)
        }
        Column {
            anchors {
                centerIn: parent
            }

            spacing:units.gu(1)
            Label {
                text:i18n.tr("Media Information");
                textSize: Label.Large
                color: theme.palette.normal.overlayText
            }
            Label {
                text:i18n.tr("Name : %1".arg(infoPopover.model.fileName))
            }
            Label {
                text:i18n.tr("Type : %1").arg(infoPopover.model.fileType)
            }
            //Print stright forward EXIF data
            Repeater {
                model:infoKeys
                Label {
                    visible:undefined !== exifData[modelData['key']];
                    text:visible ? modelData["title"].arg(exifData[modelData['key']]) : "";
                }
            }
            Label {
                visible:undefined !==  exifData['Exif.Photo.Flash'];
                text: visible ? i18n.tr("With Flash : %1").arg( exifData['Exif.Photo.Flash'] == 0 ? i18n.tr("No") : i18n.tr("Yes")) : "";
            }

        }
    }

    }
 
