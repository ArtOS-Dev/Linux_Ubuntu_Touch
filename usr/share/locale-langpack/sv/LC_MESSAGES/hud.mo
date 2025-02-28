��          �      l      �  �   �     �     �     �     �  )   �  6   �  4     0   F     w  7   }  -  �  �   �  �   �  �   v  6   &     ]     u  �   {     S	  �  o	  �        �     �  �   �     �  *   �  &   �       $   :     _  B   d  �   �  �   h  �   &  �   �  <   �     �  
     �     $   �                         
                                                        	                 After the distances are calculated (including the indicator penalty) then all values above this max are dropped. This means that the history for those entries aren't looked up as well. Date Device In order to have the application's menu items appear higher in the search results a slight penalty is given to the indicator menu items. This value represents the percentage of that penalty so a value of '50' is a 50% additional to the calculated distance. Messages Penalty applied if a character is dropped Penalty applied if a character is dropped from the end Penalty applied when the characters are not the same Penalty for extra characters added to the search Sound The highest distance value that is shown in the results The penalty for each character dropped from the search string, as compared with the text of a menu item. This only applies to missing characters that are not at the end of the search term.

This penalty would be applied if the user typed "fle" when searching against the menu item "File", for example. The penalty for each extra character in the search string that does not appear in the text of a menu item.

This penalty would be applied if the user typed "fiile" when searching against the menu item "File", for example. The penalty for each missing character at the end of a search term.

This penalty would be applied if the user typed "fil" when searching against the menu item "File", for example. The penalty for each substituted character in the search term.

The penalty would be applied if the user typed "fike" when searching against the menu item "File", for example. The penalty given to a menu item being in an indicator Untitled Indicator (%s) Users When the HUD executes operations it stores the execution in order to make the future results better. Some users could choose to not want this data to be stored. If that is the case they should disable this property. Whether to store usage data Project-Id-Version: indicator-appmenu
Report-Msgid-Bugs-To: 
POT-Creation-Date: 2013-03-22 15:14+0100
PO-Revision-Date: 2013-09-25 06:34+0000
Last-Translator: Josef Andersson <Unknown>
Language-Team: Swedish <sv@li.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-Launchpad-Export-Date: 2016-06-27 19:07+0000
X-Generator: Launchpad (build 18115)
Language: sv
 När sökavstånden räknats ut (inklusive indikatoravdraget) ignoreras alla värden över detta maxvärde. Det betyder att sökhistoriken för dessa inte heller kommer att användas. Datum Enhet För att få programmens menyobjekt att visas högre upp bland sökresultaten ges ett mindre avdrag för indikatorns menyobjekt. Dett värde motsvarar det procentuella avdraget, så '50' betyder en ökning med 50% av det beräknade avståndet. Meddelanden Avdrag för tecken som saknas i sökningen Avdrag för tecken som saknas i slutet Avdrag för felaktiga tecken Avdrag för extratecken i sökningen Ljud Högsta värdet för sökavståndet till det som visas i resulatet Avdrag för varje tecken som saknas i söksträngen, men som finns i menyobjektet.

Avdraget kommer att användas om användaren exempelvis skriver "Arkv" istället för menyobjektets "Arkiv". Avdrag för varje extra tecken i söksträngen som inte finns i menyobjektet.

Avdraget kommer att användas om användaren exempelvis skriver "Arkiiv" istället för menyobjektets "Arkiv". Avdrag för varje tecken som saknas i slutet av söksträngen, men som finns i menyobjektet.

Avdraget kommer att användas om användaren exempelvis skriver "Arki" istället för menyobjektets "Arkiv". Avdrag för varje felaktigt tecken i söksträngen, men som finns i menyobjektet.

Avdraget kommer att användas om användaren exempelvis skriver "Srkiv" istället för menyobjektets "Arkiv". Avdraget som ges ett menyobjekt som finns inuti en indikator Namnlös indikator (%s) Användare När HUD:en utför åtgärder, lagras körningen för att framtida resultat ska bli bättre. Vissa användare kanske inte vill att datan ska lagras. I så fall kan man avaktivera den här egenskapen. Huruvida användningsdata ska lagras 