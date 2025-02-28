��          �      l      �  �   �     �     �     �     �  )   �  6   �  4     0   F     w  7   }  -  �  �   �  �   �  �   v  6   &     ]     u  �   {     S	  �  o	  �        �     �  D  �  	   )  )   3  5   ]  1   �  )   �     �  =   �  �   1  �     �   �  �   t  8        P     l  �   {  0   C                         
                                                        	                 After the distances are calculated (including the indicator penalty) then all values above this max are dropped. This means that the history for those entries aren't looked up as well. Date Device In order to have the application's menu items appear higher in the search results a slight penalty is given to the indicator menu items. This value represents the percentage of that penalty so a value of '50' is a 50% additional to the calculated distance. Messages Penalty applied if a character is dropped Penalty applied if a character is dropped from the end Penalty applied when the characters are not the same Penalty for extra characters added to the search Sound The highest distance value that is shown in the results The penalty for each character dropped from the search string, as compared with the text of a menu item. This only applies to missing characters that are not at the end of the search term.

This penalty would be applied if the user typed "fle" when searching against the menu item "File", for example. The penalty for each extra character in the search string that does not appear in the text of a menu item.

This penalty would be applied if the user typed "fiile" when searching against the menu item "File", for example. The penalty for each missing character at the end of a search term.

This penalty would be applied if the user typed "fil" when searching against the menu item "File", for example. The penalty for each substituted character in the search term.

The penalty would be applied if the user typed "fike" when searching against the menu item "File", for example. The penalty given to a menu item being in an indicator Untitled Indicator (%s) Users When the HUD executes operations it stores the execution in order to make the future results better. Some users could choose to not want this data to be stored. If that is the case they should disable this property. Whether to store usage data Project-Id-Version: indicator-appmenu
Report-Msgid-Bugs-To: 
POT-Creation-Date: 2013-03-22 15:14+0100
PO-Revision-Date: 2013-03-22 20:53+0000
Last-Translator: Osman Tosun <rainman.neu@gmail.com>
Language-Team: Turkish <tr@li.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-Launchpad-Export-Date: 2016-06-27 19:07+0000
X-Generator: Launchpad (build 18115)
Language: tr
 (Gösterge cezâları dâhil olmak üzere) uzaklıklar hesaplandıktan sonra, bu en fazla değerin üzerindekiler bırakılır. Yâni, bu aramalar için geçmiş göz önüne alınmamış demektir. Tarih Aygıt Uygulamanın seçke öğeleri arama sonuçlarında daha yukarıda görünsün diye işaretçi menü maddeleri belli bir miktarda uzağa itilirler. Bu değer bahsedilen uzaklaştırmanın değerini yüzde cinsinden belirtir, yani değere "50" verilmesi hesaplanan uzaklığa fazladan %50 ekleme yapılacağı anlamına gelir. İletiler Karakter çıkartılırsa ceza uygulanır Sondan bir karakter düşürülürse ceza uygulanır. Karakterler aynı olmadığında uygulanacak ceza Aramaya fazladan eklenen karakter cezası Ses Sonuçlar içerisinde gösterilen en yüksek uzaklık değeri Seçeneklerden birinin yazısı ile karşılaştırıldığında, arama yazısında eksik olan herbir karakter için cezalandırma.

Bu durum sadece arama terimi sonunda değil; eksik karakterler için de geçerlidir. Seçke öğesi metninde görünmeyen arama dizisi karakteri içindeki fazladan her karakter için ceza.

Bu ceza, örneğin eğer kullanıcı "Dosya" seçke öğesini ararken "doosya" yazdı ise kullanılacaktır. Arama teriminin sonundaki kayıp her karakter için ceza.

Bu ceza mesela kullanıcı "Dosya" seçke ögesini aratırken "dos" yazarsa uygulanır. Arama terimindeki değiştirilmiş her karakter için ceza. 

Bu cezâ, örneğin kullanıcı, "dosya" seçke öğesini ararken "tosya" yazdıysa uygulanacaktır. Bir göstergede olan bir seçke öğesine verilmiş ceza Başlıksız Gösterge (%s) Kullanıcılar Daha iyi sonuçlar sağlamak için Akıllı Seçke'de yapılan işlemler kaydedilir. Bazı kullanıcılar bu verilerin kaydedilmemesini isteyebilir. Böyle bir durum varsa bu aracı etkisizleştirin. Kullanım verilerinin saklanıp saklanmayacağı 