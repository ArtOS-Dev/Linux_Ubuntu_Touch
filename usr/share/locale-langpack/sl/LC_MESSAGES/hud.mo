��          �      l      �  �   �     �     �     �     �  )   �  6   �  4     0   F     w  7   }  -  �  �   �  �   �  �   v  6   &     ]     u  �   {     S	  �  o	  �        �     �  �   �  
   �  $   �  &   �  !     8   2     k  5   p    �  �   �  �   r  �     *   �     �  
   �  �   �  (   �                         
                                                        	                 After the distances are calculated (including the indicator penalty) then all values above this max are dropped. This means that the history for those entries aren't looked up as well. Date Device In order to have the application's menu items appear higher in the search results a slight penalty is given to the indicator menu items. This value represents the percentage of that penalty so a value of '50' is a 50% additional to the calculated distance. Messages Penalty applied if a character is dropped Penalty applied if a character is dropped from the end Penalty applied when the characters are not the same Penalty for extra characters added to the search Sound The highest distance value that is shown in the results The penalty for each character dropped from the search string, as compared with the text of a menu item. This only applies to missing characters that are not at the end of the search term.

This penalty would be applied if the user typed "fle" when searching against the menu item "File", for example. The penalty for each extra character in the search string that does not appear in the text of a menu item.

This penalty would be applied if the user typed "fiile" when searching against the menu item "File", for example. The penalty for each missing character at the end of a search term.

This penalty would be applied if the user typed "fil" when searching against the menu item "File", for example. The penalty for each substituted character in the search term.

The penalty would be applied if the user typed "fike" when searching against the menu item "File", for example. The penalty given to a menu item being in an indicator Untitled Indicator (%s) Users When the HUD executes operations it stores the execution in order to make the future results better. Some users could choose to not want this data to be stored. If that is the case they should disable this property. Whether to store usage data Project-Id-Version: indicator-appmenu
Report-Msgid-Bugs-To: 
POT-Creation-Date: 2013-03-22 15:14+0100
PO-Revision-Date: 2013-03-22 20:52+0000
Last-Translator: Andrej Znidarsic <andrej.znidarsic@gmail.com>
Language-Team: Slovenian <sl@li.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-Launchpad-Export-Date: 2016-06-27 19:07+0000
X-Generator: Launchpad (build 18115)
Language: sl
 Po izračunu razdalj (vključno s kazalnikom kazni) so vse vrednosti nad največjo izračunano izpuščene. To pomeni, da za te vrednosti ni pregledana niti zgodovina. Datum Naprava Da se predmeti menijev programov pojavijo višje na seznamu rezultatov iskanja je predmetom menija kazalnika dana rahla kazen. Ta vrednost predstavlja odstotek kazni, zato vrednost '50' pomeni dodatnih 50% k izračunani razdalji. Sporočila Kazen dodana, če je znak izpuščen Kazen, če je izpuščen znak na koncu Kazen dodana, ko znaki niso enaki Kazen za dodatne znake, ki so dodani k iskalni poizvedbi Zvok Vrednost največje razdalje je prikazana v rezultatih Kazen za vsak znak izpuščen iz iskalnega niza kot je primerjano z besedilom predmeta menija. To velja le za manjkajoče znake, ki niso na koncu iskalnega niza.

Ta kazen bi bila na primer uporabljena, če bi uporabnik vnesel "dtoteka", ko bi iskal "Datoteka". Kazen za vsak dodaten znak v iskalnem nizu, ki se ne pojavi v besedilu predmeta menija.

Ta kazen bi bila uveljavljena, če bi uporabnika napisal "datoteeka", ko bi iskal predmet menija "Datoteka". Konec za vsak manjkajoči znak na koncu iskalnega izraza.

Ta kazen bi bila uporabljena, če bi uporabnik vnesel "datoetk", ko bi iskal "Datoteka". Kazen za vsak zamenjan znak v iskalnem izrazu.

Kazen bi bila uporabljena, če bi uporabnik vnesel "datopeka", ko bi iskal "Datoteka". Kazen dana predmetu menija, ki je kazalnik Neimenovani kazalnik (%s) Uporabniki Ko iskalni meni izvede dejanje, ga shrani, da bodo prihodnji rezultati boljši. Nekateri uporabniki morda teh podatkov ne želijo hraniti. V tem primeru to lastnost onemogočite. Ali naj bodo podatki o uporabi shranjeni 