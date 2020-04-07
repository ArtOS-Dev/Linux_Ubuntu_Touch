/*
 * Copyright (C) 2017-2019 UBports
 * Copyright (C) 2014-2015 Canonical, Ltd.
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
import QtQuick.LocalStorage 2.0

Item {
    property var calculationHistoryDatabase: null
    readonly property int lastDatabaseVersion: 1

    ListModel {
        id: history

        Component.onCompleted: {
            getCalculations(function(calc) {
                history.append(calc);
            });
        }

        ListElement {
            dbId: -1
            formula: ''
            result: ''
            date: 0
        }
    }

    Timer {
        id: timer
        interval: 500
        property var execute: []
        onTriggered: {
            for (var i = 0; i < execute.length; i++) {
                execute[i]();
            }
            execute = [];
        }
    }

    function openDatabase() {
        // Check if the database was already opened
        if (calculationHistoryDatabase !== null) return;

        calculationHistoryDatabase = LocalStorage.openDatabaseSync(
            "com.ubuntu.calculator_reboot", "", "", 5000);

        // Update (or create) the database if needed
        if (calculationHistoryDatabase.version !== lastDatabaseVersion) {
            upgradeDatabase(calculationHistoryDatabase.version);
        }
    }

    function upgradeDatabase(currentDatabaseVersion) {
        // Array with all the SQL needed to create database and update versions
        var sqlcode = [
            'CREATE TABLE IF NOT EXISTS Calculations(
                dbId INTEGER PRIMARY KEY,
                formula TEXT NOT NULL,
                result TEXT NOT NULL,
                date INTEGER NOT NULL DEFAULT 0
            )'
        ];

        // Start the upgrade
        calculationHistoryDatabase.changeVersion(currentDatabaseVersion,
            lastDatabaseVersion, function(tx) {
                // Create the database
                if (currentDatabaseVersion < lastDatabaseVersion) {
                    tx.executeSql(sqlcode[0]);
                    console.log("Database upgraded to " + lastDatabaseVersion.toString());
                }
            }
        );
    }

    function getCalculations(callback) {
        openDatabase();

        // Do a transaction to take all calculations
        calculationHistoryDatabase.transaction(
            function (tx) {
                var results = tx.executeSql('SELECT * FROM Calculations');

                for (var i = 0; i < results.rows.length; i++) {
                    callback(results.rows.item(i));
                }
            }
        );
    }

    function addCalculationToScreen(formula, result) {
        // The function add the last formula to the model, and leave to
        // addCalculationToDatabase the job to add it to the database
        // that is called only after the element has been added to the
        // model
        var date = Date.now();
        history.append({"formula": formula,
            "result": result,
            "date": date,
        });
        var index = history.count - 1;
        // TODO: move this function to a plave that retards the execution to
        // improve performances
        timer.execute.push(function() {
            calculationHistory.addCalculationToDatabase(formula, result, date, index);
        });
        timer.start();
    }

    function addCalculationToDatabase(formula, result, date, index) {
        openDatabase();
        calculationHistoryDatabase.transaction(
            function (tx) {
                var results = tx.executeSql('INSERT INTO Calculations (
                    formula, result, date) VALUES(
                    ?, ?, ?)',
                    [formula, result, date]
                );
                // we need to update the listmodel unless we would have dbId = 0 on the
                // last inserted item
                history.setProperty(index, "dbId", parseInt(results.insertId));
            }
        );
    }

    function getContents() {
        return history;
    }

    function deleteCalc(dbId, id) {
        openDatabase();
        history.setProperty(id, "dbId", -1);

        timer.execute.push(function () {
            calculationHistoryDatabase.transaction(
                function (tx) {
                    tx.executeSql('DELETE FROM Calculations WHERE dbId = ?', [dbId]);
                }
            );
        });
        timer.start();
    }
}
