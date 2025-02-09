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

import Evernote 0.1
import QtQuick 2.3
import Ubuntu.OnlineAccounts.Plugin 1.0

OAuthMain {
    creationComponent: OAuth {
        Connections {
            target: UserStore
            onUserChanged: saveUsername()
        }

        function completeCreation(reply) {
            EvernoteConnection.hostname = "www.evernote.com"
            EvernoteConnection.token = reply.AccessToken
            EvernoteConnection.connectToEvernote();
            /* At this point the username is getting retrieved. Once that's
             * done, UserStore will notify that its "username" property has
             * been changed, and we'll continue from saveUsername(). */
        }

        function saveUsername() {
            account.updateDisplayName(UserStore.userName)
            account.synced.connect(finished)
            account.sync()
        }
    }
}
