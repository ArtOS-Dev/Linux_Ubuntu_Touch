��          �      l      �  �   �     �     �     �     �  )   �  6   �  4     0   F     w  7   }  -  �  �   �  �   �  �   v  6   &     ]     u  �   {     S	  �  o	  �        �     �  �   �     �  $   �  -     4   0  *   e     �  5   �  5  �  �     �   �  �   �  :   t     �     �    �  !   �                         
                                                        	                 After the distances are calculated (including the indicator penalty) then all values above this max are dropped. This means that the history for those entries aren't looked up as well. Date Device In order to have the application's menu items appear higher in the search results a slight penalty is given to the indicator menu items. This value represents the percentage of that penalty so a value of '50' is a 50% additional to the calculated distance. Messages Penalty applied if a character is dropped Penalty applied if a character is dropped from the end Penalty applied when the characters are not the same Penalty for extra characters added to the search Sound The highest distance value that is shown in the results The penalty for each character dropped from the search string, as compared with the text of a menu item. This only applies to missing characters that are not at the end of the search term.

This penalty would be applied if the user typed "fle" when searching against the menu item "File", for example. The penalty for each extra character in the search string that does not appear in the text of a menu item.

This penalty would be applied if the user typed "fiile" when searching against the menu item "File", for example. The penalty for each missing character at the end of a search term.

This penalty would be applied if the user typed "fil" when searching against the menu item "File", for example. The penalty for each substituted character in the search term.

The penalty would be applied if the user typed "fike" when searching against the menu item "File", for example. The penalty given to a menu item being in an indicator Untitled Indicator (%s) Users When the HUD executes operations it stores the execution in order to make the future results better. Some users could choose to not want this data to be stored. If that is the case they should disable this property. Whether to store usage data Project-Id-Version: indicator-appmenu
Report-Msgid-Bugs-To: 
POT-Creation-Date: 2013-03-22 15:14+0100
PO-Revision-Date: 2014-04-10 11:27+0000
Last-Translator: Timo Jyrinki <Unknown>
Language-Team: Finnish <fi@li.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-Launchpad-Export-Date: 2016-06-27 19:07+0000
X-Generator: Launchpad (build 18115)
Language: fi
 Kun kaikki etäisyydet on laskettu (ottaen huomioon ilmaisimen sakon), hävitetään kaikki arvot jotka ovat yli tämän maksimin. Tämä tarkoittaa, että myöskään noiden kohtien historiaa ei haeta. Päivä Laite Jotta ohjelman valikko tulisi korkeammalle hakutuloksissa, annetaan lievät rangaistuspisteet indikaattorivalikon kohteille. Tämä arvo edustaa rangaistuksen prosenttimäärää, joten esimerkiksi arvo '50' on 50% lisää laskettuun etäisyyteen. Viestit Sakkoa sovelletaan jos merkki putoaa Sakkoa sovelletaan, jos merkki putoaa lopusta Sakkoa sovelletaan silloin kun merkistö ei ole sama Rangaistus lisätyistä kirjaimista haussa Ääni Suurin etäisyyden arvo, joka näytetään tuloksissa Sakko, joka annetaan jokaiselle hakujonosta puuttuvalle merkille, verrattuna valikon kohteen tekstiin. Tämä vaikuttaa vain puuttuviin merkkeihin, jotka eivät ole hakusanan lopussa.

Tämä sakko annetaan esimerkiksi, jos käyttäjä on kirjoittanut "Tedosto" tehdessään hakua valikkokohteelle "Tiedosto". Rangaistus jokaiselle ekstrakirjaimelle hakuvirkkeessä, joka ei ilmene valikkotavaroiden tekstissä.
Tämä rangaistus tulisi voimaan, jos käyttäjä esimerkiksi kirjoittaisi "tieedosto", kun etsittäisiin valikkotavaraa "tiedosto". Sakko, joka annetaan jokaiselle puuttuvalle merkille hakusanan lopussa.

Tämä sakko annetaan esimerkiksi, jos käyttäjä on kirjoittanut "Tiedost" tehdessään hakua valikkokohteelle "Tiedosto". Sakko, joka annetaan jokaiselle korvatulle merkille hakusanassa.

Tämä sakko annetaan esimerkiksi, jos käyttäjä on kirjoittanut "Tuedosto" tehdessään hakua valikkokohteelle "Tiedosto". Valikkokohteelle annettu rangaistus ilmaisimena olemisesta Nimetön ilmaisin (%s) Käyttäjät Kun HUD toteuttaa toimintoja, se säilyttää käskyn jotta tulevaisuudessa hakutulokset olisivat parempia. Jotkut käyttäjät eivät välttämättä halua säilyttää näitä tietoja. Jos näin on, käyttäjän tulisi poistaa käytöstä tämä ominaisuus Minne käyttötiedot tallennetaan 