��          �      l      �  �   �     �     �     �     �  )   �  6   �  4     0   F     w  7   }  -  �  �   �  �   �  �   v  6   &     ]     u  �   {     S	  �  o	  �             	  -    	   ?  (   I  '   r  '   �  5   �     �  D   �  H  B    �  �   �  �   t  0   L     }     �  �   �      e                         
                                                        	                 After the distances are calculated (including the indicator penalty) then all values above this max are dropped. This means that the history for those entries aren't looked up as well. Date Device In order to have the application's menu items appear higher in the search results a slight penalty is given to the indicator menu items. This value represents the percentage of that penalty so a value of '50' is a 50% additional to the calculated distance. Messages Penalty applied if a character is dropped Penalty applied if a character is dropped from the end Penalty applied when the characters are not the same Penalty for extra characters added to the search Sound The highest distance value that is shown in the results The penalty for each character dropped from the search string, as compared with the text of a menu item. This only applies to missing characters that are not at the end of the search term.

This penalty would be applied if the user typed "fle" when searching against the menu item "File", for example. The penalty for each extra character in the search string that does not appear in the text of a menu item.

This penalty would be applied if the user typed "fiile" when searching against the menu item "File", for example. The penalty for each missing character at the end of a search term.

This penalty would be applied if the user typed "fil" when searching against the menu item "File", for example. The penalty for each substituted character in the search term.

The penalty would be applied if the user typed "fike" when searching against the menu item "File", for example. The penalty given to a menu item being in an indicator Untitled Indicator (%s) Users When the HUD executes operations it stores the execution in order to make the future results better. Some users could choose to not want this data to be stored. If that is the case they should disable this property. Whether to store usage data Project-Id-Version: indicator-appmenu
Report-Msgid-Bugs-To: 
POT-Creation-Date: 2013-03-22 15:14+0100
PO-Revision-Date: 2013-03-22 20:53+0000
Last-Translator: Gabor Kelemen <kelemeng@openscope.org>
Language-Team: Hungarian <hu@li.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-Launchpad-Export-Date: 2016-06-27 19:07+0000
X-Generator: Launchpad (build 18115)
Language: hu
 Miután a távolság kiszámításra került (az indikátor büntetésével egyetemben), minden érték el lesz vetve, amely meghaladja ezt a maximum értéket. Ez azt jelenti, hogy ezen bejegyzések előzményei sem jelennek majd meg. Dátum Eszköz Annak érdekében, hogy az alkalmazások menüelemei feljebb jelenjenek meg a keresési eredmények között, az indikátor menü elemei büntetést kapnak. A megadott érték a büntetés mértékét mutatja százalékokban. Ha tehát az érték 50, akkor a számított távolság 50%-kal növekszik. Üzenetek Büntetés egy karakter kihagyása miatt Büntetés, ha az utolsó betű lemarad Büntetés ha a betűk nem egyeznek meg Büntetés a kereséshez adott extra karakterek miatt Hang A legnagyobb távolság, amely még megjelenik a találatok között Büntetés minden, a keresőkifejezésből kihagyott betű után, amely a menüelem szövegében benne van. Ez csak azokat a kihagyott betűket érinti, amelyek nem a szöveg végéről hiányoznak.

Ez a büntetés például akkor jut érvényre, ha a felhasználó azt írja be, hogy "fjl", noha a "Fájl" menü elemet keresi. Büntetés minden, a kereső kifejezésben szereplő extra betű után, amely nem található meg a menüelem szövegében.

Ez a büntetés például akkor jut érvényre, ha a felhasználó azt írja be, hogy „fájjl”, noha a „Fájl” menüelemet keresi. Minden, a keresőkifejezés végéről lemaradt betű utáni büntetés

Ez a büntetés például akkor jut érvényre, ha a felhasználó azt írta be, hogy „fáj”, bár a „Fájl” menüelemet kívánja megtalálni. Büntetés a keresőkifejezés minden elütött betűjéért.

Ez a büntetés például akkor jut érvényre, ha a felhasználó azt írta be, hogy „fáhl”, bár a „Fájl” menüelemet kívánja megtalálni. Büntetés, ha az adott menüelem egy indikátor Névtelen indikátor (%s) Felhasználók Amikor a HUD műveleteket hajt végre, tárolja azokat jövőbeli eredmények pontosítására. Ha nem szeretné, hogy ezek az adatok eltárolódjanak, le kell tiltania ezt a tulajdonságot. Tároljon-e használati adatokat 