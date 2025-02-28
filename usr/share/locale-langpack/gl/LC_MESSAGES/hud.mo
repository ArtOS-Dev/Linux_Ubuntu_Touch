��          �      l      �  �   �     �     �     �     �  )   �  6   �  4     0   F     w  7   }  -  �  �   �  �   �  �   v  6   &     ]     u  �   {     S	  �  o	  �        �     �  #  �     �  /     ?   8  9   x  7   �     �  :   �  E  )  �   o  �   `  �   !  G   �     #     >  �   G     *                         
                                                        	                 After the distances are calculated (including the indicator penalty) then all values above this max are dropped. This means that the history for those entries aren't looked up as well. Date Device In order to have the application's menu items appear higher in the search results a slight penalty is given to the indicator menu items. This value represents the percentage of that penalty so a value of '50' is a 50% additional to the calculated distance. Messages Penalty applied if a character is dropped Penalty applied if a character is dropped from the end Penalty applied when the characters are not the same Penalty for extra characters added to the search Sound The highest distance value that is shown in the results The penalty for each character dropped from the search string, as compared with the text of a menu item. This only applies to missing characters that are not at the end of the search term.

This penalty would be applied if the user typed "fle" when searching against the menu item "File", for example. The penalty for each extra character in the search string that does not appear in the text of a menu item.

This penalty would be applied if the user typed "fiile" when searching against the menu item "File", for example. The penalty for each missing character at the end of a search term.

This penalty would be applied if the user typed "fil" when searching against the menu item "File", for example. The penalty for each substituted character in the search term.

The penalty would be applied if the user typed "fike" when searching against the menu item "File", for example. The penalty given to a menu item being in an indicator Untitled Indicator (%s) Users When the HUD executes operations it stores the execution in order to make the future results better. Some users could choose to not want this data to be stored. If that is the case they should disable this property. Whether to store usage data Project-Id-Version: indicator-appmenu
Report-Msgid-Bugs-To: 
POT-Creation-Date: 2013-03-22 15:14+0100
PO-Revision-Date: 2013-10-19 14:21+0000
Last-Translator: Marcos Lans <Unknown>
Language-Team: Galician <gl@li.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-Launchpad-Export-Date: 2016-06-27 19:07+0000
X-Generator: Launchpad (build 18115)
Language: gl
 Unha vez calculadas as distancias (incluída a penalización dos indicadores), todos os valores por riba deste máximo omítense. Isto significa que o historial desas entradas tampouco se consulta. Data Dispositivo Co fin de que os elementos do menú de aplicativos aparezan máis arriba nos resultados de busca penalízanse levemente os elementos do menú de indicadores. Este valor representa a porcentaxe desta penalización, de maneira que un valor de «50» é un 50% adicional á distancia calculada. Mensaxes Penalización aplicada se se omite un carácter Penalización que se aplica se un carácter do final desaparece Penalización aplicada cando os caracteres non son iguais Penalización polos caracteres extra engadidos á busca Son O valor da distancia máis alta que aparece nos resultados A penalización para cada carácter que falta na cadea de busca, en comparación co texto dun elemento de menú. Isto só se aplica aos caracteres que faltan e que non están no final do termo de busca.

Esta penalización aplicaríase se o usuario escribe «fcheiro» na busca do elemento de menú «Ficheiro», por exemplo. A penalización por cada carácter adicional na cadea de busca que non aparece no texto dun elemento de menú.

Esta penalización aplicaríase se o usuario escribe «ficcheiro» cando se busca o elemento de menú «Ficheiro», por exemplo. A penalización por cada carácter que falta ao final dun termo de busca.

Esta penalización aplicaríase se o usuario escribe «fic» na busca do elemento de menú «Ficheiro», por exemplo. Penalización por cada carácter substituído no termo de busca.

A penalización aplicaríase se o usuario escribe «Ficxeiro» na busca do elemento de menú «Ficheiro», por exemplo. A penalización que recibe un elemento do menú que está nun indicador Indicador sen título (%s) Usuarios Cando o HUD realiza operacións, almacena a súa execución para que os resultados saian mellor no futuro. Pode que algúns usuarios prefiran que os seus datos non se almacenen. De ser o caso, deben desactivar esta propiedade. Se gardar os datos de uso 