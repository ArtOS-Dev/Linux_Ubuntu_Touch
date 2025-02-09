��          �      l      �  �   �     �     �     �     �  )   �  6   �  4     0   F     w  7   }  -  �  �   �  �   �  �   v  6   &     ]     u  �   {     S	  �  o	  �       �     �  �  �     �  b   �  �     s   �  u        z  [   �  �  �  g  �  '      E  q   b  ,   �       �    P   �                         
                                                        	                 After the distances are calculated (including the indicator penalty) then all values above this max are dropped. This means that the history for those entries aren't looked up as well. Date Device In order to have the application's menu items appear higher in the search results a slight penalty is given to the indicator menu items. This value represents the percentage of that penalty so a value of '50' is a 50% additional to the calculated distance. Messages Penalty applied if a character is dropped Penalty applied if a character is dropped from the end Penalty applied when the characters are not the same Penalty for extra characters added to the search Sound The highest distance value that is shown in the results The penalty for each character dropped from the search string, as compared with the text of a menu item. This only applies to missing characters that are not at the end of the search term.

This penalty would be applied if the user typed "fle" when searching against the menu item "File", for example. The penalty for each extra character in the search string that does not appear in the text of a menu item.

This penalty would be applied if the user typed "fiile" when searching against the menu item "File", for example. The penalty for each missing character at the end of a search term.

This penalty would be applied if the user typed "fil" when searching against the menu item "File", for example. The penalty for each substituted character in the search term.

The penalty would be applied if the user typed "fike" when searching against the menu item "File", for example. The penalty given to a menu item being in an indicator Untitled Indicator (%s) Users When the HUD executes operations it stores the execution in order to make the future results better. Some users could choose to not want this data to be stored. If that is the case they should disable this property. Whether to store usage data Project-Id-Version: indicator-appmenu
Report-Msgid-Bugs-To: 
POT-Creation-Date: 2013-03-22 15:14+0100
PO-Revision-Date: 2013-03-22 20:53+0000
Last-Translator: Sebastien Bacher <seb128@ubuntu.com>
Language-Team: Bulgarian <bg@li.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-Launchpad-Export-Date: 2016-06-27 19:07+0000
X-Generator: Launchpad (build 18115)
Language: bg
 Ако изчисленото разстояние (включително индикатора за наказание) превишава тази стойност, тогава съответния елемент няма да бъде включен в резултата. Също така за тези елементи, няма да може да се преглежда историята им. Дата Устройство За да се показва менюто с приложения над резултатите от търсенето, кратко известие ще се появи в един от елементите на меню индикатора. Тази стойност представлява процента на известието, например стойността 50 е 50% допълнително към изчисленото разстояние. Съобщения Уведомлението ще бъде прието, ако символа бъде изтрит Уведомлението ще бъде прието, ако символа в края на думата бъде изтрит Уведомлението ще бъде одобрено, ако символите не са едни и същи Уведомлението за излишни символи е добавено в текста за търсене Звук Максимално разстояние за включване в резултатите Известие за всеки символ изтрит от низа за търсене, за разлика от текста в списъка на менюто. Това важи само за липсващи символи, които не са в края на низа за търсене.

Известието ще се приеме, ако потребителят е написал "фйл" вместо да потърси "Файл", например. Известие за всеки излишен символ в низа за търсене, който не фигурира в списъка на менюто с приложения.

Известието ще се приеме, ако потребителят е написал "фаайл" вместо да потърси "Файл", например. Известие за всеки пропуснат символ в края на думата за търсене.

Известието ще се приеме, ако потребителят е написал "фал" когато е искал да намери "Файл", например. Известие за всеки заменен символ в заявката за търсене.

Известието ще се приеме, ако потребителят е написал "фаул", когато е искал да намери "Файл", например. Уведомлението ще се покаже в списъка на менюто като индикатор Нейзвестен индикатор (%s) Потребители Когато използвате HUD, той съхранява резултатите и по този начин вашите бъдещи запитвания ще се обработват по-добре. Някои потребители не искат тази информация да се съхранява. Ако желаете, можете да деактивирате тази функция. Съхраняване на данниte относно използването 