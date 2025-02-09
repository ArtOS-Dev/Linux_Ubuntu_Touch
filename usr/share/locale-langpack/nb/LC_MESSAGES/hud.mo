��          �      l      �  �   �     �     �     �     �  )   �  6   �  4     0   F     w  7   }  -  �  �   �  �   �  �   v  6   &     ]     u  �   {     S	  �  o	  �        �     �  A  �  	   @     J  (   j  1   �  !   �     �  1   �  (    �   F  �   �  �   �  -   f     �     �  �   �     z                         
                                                        	                 After the distances are calculated (including the indicator penalty) then all values above this max are dropped. This means that the history for those entries aren't looked up as well. Date Device In order to have the application's menu items appear higher in the search results a slight penalty is given to the indicator menu items. This value represents the percentage of that penalty so a value of '50' is a 50% additional to the calculated distance. Messages Penalty applied if a character is dropped Penalty applied if a character is dropped from the end Penalty applied when the characters are not the same Penalty for extra characters added to the search Sound The highest distance value that is shown in the results The penalty for each character dropped from the search string, as compared with the text of a menu item. This only applies to missing characters that are not at the end of the search term.

This penalty would be applied if the user typed "fle" when searching against the menu item "File", for example. The penalty for each extra character in the search string that does not appear in the text of a menu item.

This penalty would be applied if the user typed "fiile" when searching against the menu item "File", for example. The penalty for each missing character at the end of a search term.

This penalty would be applied if the user typed "fil" when searching against the menu item "File", for example. The penalty for each substituted character in the search term.

The penalty would be applied if the user typed "fike" when searching against the menu item "File", for example. The penalty given to a menu item being in an indicator Untitled Indicator (%s) Users When the HUD executes operations it stores the execution in order to make the future results better. Some users could choose to not want this data to be stored. If that is the case they should disable this property. Whether to store usage data Project-Id-Version: indicator-appmenu
Report-Msgid-Bugs-To: 
POT-Creation-Date: 2013-03-22 15:14+0100
PO-Revision-Date: 2013-07-11 11:47+0000
Last-Translator: Åka Sikrom <Unknown>
Language-Team: Norwegian Bokmal <nb@li.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-Launchpad-Export-Date: 2016-06-27 19:07+0000
X-Generator: Launchpad (build 18115)
Language: nb
 Når avstandene er ferdig utregnet (inkludert indikator-nedrykk), vil alle treff med verdier som overstiger denne maksimumverdien fjernes fra søkeresultatet. Dette betyr også at historikken for slike elementer ikke blir sjekket. Dato Enhet For å fremme programmets menyvalg i søkeresultater, rykkes indikator-menyvalgene litt ned. Denne verdien angir prosentvis hvor langt indikator-nedrykket skal virke. For eksempel vil en verdi på «50» gi 50 prosent nedprioritering, i tillegg til beregnet avstand mellom søketreff som er og ikke er indikator-menyvalg. Meldinger Nedrykk ved manglende søketegn Nedrykk når et tegn mangler på slutten Nedrykk som skal brukes når tegnene ikke stemmer Nedrykk av overflødige søketegn Lyd Høyeste avviksverdi som skal vises i resultatene Nedrykk for manglende tegn i søkestrengen, der ytterligere presisjon i form av flere tegn ville gitt nøyaktig treff på et menyvalg. Dette gjelder kun tegn som ikke utgjør slutten av søkestrengen.
Denne vil brukes hvis brukeren for eksempel skriver «fl» når hun forsøker å finne «Fil». Nedrykk for hvert overflødige tegn i søkestrengen.
Et slikt nedrykk blir for eksempel lagt til hvis brukeren søker etter «fiil», og systemet finner menyvalget «Fil». Nedrykk per tegn som mangler i slutten av en søkestreng for å gi eksakt treff.

Denne vil brukes hvis brukeren for eksempel skriver «fi» når hun søker etter «fil». Nedrykk per tegn som ikke stemmer i en søkestreng, der søket - foruten feilen - ville gitt eksakt treff.

Denne vil brukes hvis brukeren for eksempel skriver «fik» når hun søker etter «Fil». Nedrykk av menyvalg som finnes i en indikator Indikator uten tittel(%s) Brukere Når HUD kjører kommandoer, blir disse lagret for å gjøre fremtidige resultater bedre. Noen brukere ønsker ikke at denne informasjonen skal lagres, og kan i så fall slå av denne funksjonen. Om bruksinformasjon skal lagres 