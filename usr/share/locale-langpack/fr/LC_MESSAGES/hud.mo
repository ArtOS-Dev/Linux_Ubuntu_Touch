��          �      l      �  �   �     �     �     �     �  )   �  6   �  4     0   F     w  7   }  -  �  �   �  �   �  �   v  6   &     ]     u  �   {     S	  �  o	  �               h       �  4   �  9   �  D   �  I   @     �  ?   �  i  �    8  �   >  �     I   �     <     W  *  d  8   �                         
                                                        	                 After the distances are calculated (including the indicator penalty) then all values above this max are dropped. This means that the history for those entries aren't looked up as well. Date Device In order to have the application's menu items appear higher in the search results a slight penalty is given to the indicator menu items. This value represents the percentage of that penalty so a value of '50' is a 50% additional to the calculated distance. Messages Penalty applied if a character is dropped Penalty applied if a character is dropped from the end Penalty applied when the characters are not the same Penalty for extra characters added to the search Sound The highest distance value that is shown in the results The penalty for each character dropped from the search string, as compared with the text of a menu item. This only applies to missing characters that are not at the end of the search term.

This penalty would be applied if the user typed "fle" when searching against the menu item "File", for example. The penalty for each extra character in the search string that does not appear in the text of a menu item.

This penalty would be applied if the user typed "fiile" when searching against the menu item "File", for example. The penalty for each missing character at the end of a search term.

This penalty would be applied if the user typed "fil" when searching against the menu item "File", for example. The penalty for each substituted character in the search term.

The penalty would be applied if the user typed "fike" when searching against the menu item "File", for example. The penalty given to a menu item being in an indicator Untitled Indicator (%s) Users When the HUD executes operations it stores the execution in order to make the future results better. Some users could choose to not want this data to be stored. If that is the case they should disable this property. Whether to store usage data Project-Id-Version: indicator-appmenu
Report-Msgid-Bugs-To: 
POT-Creation-Date: 2013-03-22 15:14+0100
PO-Revision-Date: 2013-03-22 14:54+0000
Last-Translator: Sebastien Bacher <seb128@ubuntu.com>
Language-Team: French <fr@li.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-Launchpad-Export-Date: 2016-06-27 19:07+0000
X-Generator: Launchpad (build 18115)
Language: fr
 Une fois les distances calculées (en tenant compte de la pénalité appliquée aux indicateurs), toutes les valeurs situées au-dessus de ce maximum sont rejetées. Cela signifie que l'historique pour ces entrées n'est pas non plus consulté. Date Périphérique Afin que les éléments de menu de l'application apparaissent prioritairement dans les résultats de la recherche, une légère pénalité est donnée aux items du menu d'indicateurs. La valeur indiquée représente le pourcentage de cette pénalité, donc une valeur de '50' correspond à 50% supplémentaires de pénalité par rapport à la position normale. Messages Pénalité appliquée lorsqu'il manque un caractère Pénalité appliquée s'il manque un caractère à la fin Pénalité appliquée lorsque les caractères ne sont pas identiques Pénalité pour des caractères supplémentaires ajoutés à la recherche Son La plus grande valeur de distance affichée dans les résultats Pénalité pour chaque caractère manquant dans la chaîne recherchée, par rapport au texte d'un élément de menu. Cela s'applique uniquement aux caractères manquants qui ne sont pas à la fin du terme recherché.

Par exemple, cette pénalité sera appliquée si l'utilisateur saisit « fchier » alors qu'il recherche l'élément de menu « Fichier ». Pénalité pour chaque caractère de la chaîne recherchée qui n'existe pas dans le texte d'un élément de menu.

Par exemple, cette pénalité sera appliquée si l'utilisateur saisit « fiichier » alors qu'il recherche l'élément de menu « Fichier ». Pénalité pour chaque caractère manquant à la fin du terme recherché.

Par exemple, cette pénalité sera appliquée si l'utilisateur saisit « fichie » alors qu'il recherche l'élément de menu « Fichier ». Pénalité pour chaque caractère substitué dans le terme recherché.

Par exemple, cette pénalité sera appliquée si l'utilisateur saisit « ficjier » alors qu'il recherche l'élément de menu « Fichier ». Pénalité attribuée à un élément de menu présent dans un indicateur Indicateur sans titre (%s) Utilisateurs Lorsque l'affichage tête haute exécute des opérations, il enregistre des données concernant leur exécution pour améliorer la qualité des résultats ultérieurs. Certains utilisateurs pourraient choisir de ne pas stocker ces données. Dans ce cas, ils devraient désactiver cette propriété. Indique s'il faut enregistrer les données d'utilisation 