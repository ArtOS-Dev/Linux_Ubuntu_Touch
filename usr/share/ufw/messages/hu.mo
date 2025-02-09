��    ?        Y         p     q     s  �  {     �     	  *   )	     T	     q	  9   x	  )   �	     �	  +   �	      
     )
     7
     J
     ^
     q
  !   �
  #   �
     �
     �
     �
  C     %   X  %   ~  /   �     �     �     �               /     E     \     p  '   �     �     �     �  %   �          !  ,   =  
   j     u     �     �     �  )   �  $   �     �  #     #   @     d     g          �  &   �     �     �       �       �     �  �  �  $   i  #   �  _   �  1        D  R   M  E   �     �  2   �  
   )     4     E     X     q     �  !   �  3   �  ,   �     '  2   A  N   t  :   �  :   �  P   9  !   �     �  &   �  #   �  !   �     !  #   A      e  $   �  6   �     �     �     
  9   !  .   [  ,   �  2   �     �     �          %     ;  4   V  /   �     �  3   �  -        <  2   E     x     �  I   �     �       +   6                ,   /   *         !                   5          4   %      '       7      #   3   +   &       >   	           =                   2       6      <   8          $   ;   1                 -   .              0   "                                                   :   (   )      9          ?   
                     
 
(None) 
Usage: %(progname)s %(command)s

%(commands)s:
 %(enable)-31s enables the firewall
 %(disable)-31s disables the firewall
 %(default)-31s set default policy
 %(logging)-31s set logging to %(level)s
 %(allow)-31s add allow %(rule)s
 %(deny)-31s add deny %(rule)s
 %(reject)-31s add reject %(rule)s
 %(limit)-31s add limit %(rule)s
 %(delete)-31s delete %(urule)s
 %(insert)-31s insert %(urule)s at %(number)s
 %(reload)-31s reload firewall
 %(reset)-31s reset firewall
 %(status)-31s show firewall status
 %(statusnum)-31s show firewall status as numbered list of %(rules)s
 %(statusverbose)-31s show verbose firewall status
 %(show)-31s show firewall report
 %(version)-31s display version information

%(appcommands)s:
 %(applist)-31s list application profiles
 %(appinfo)-31s show information on %(profile)s
 %(appupdate)-31s update %(profile)s
 %(appdefault)-31s set default application policy
 %s is group writable! %s is world writable! (be sure to update your rules accordingly) : Need at least python 2.6)
 Action Added user rules (see 'ufw status' for running firewall): Adding IPv6 rule failed: IPv6 not enabled Bad destination address Bad interface name: reserved character: '!' Bad port Bad port '%s' Bad source address Checking ip6tables
 Checking iptables
 Checks disabled Could not update running firewall Couldn't determine iptables version Couldn't open '%s' for reading Couldn't stat '%s' Couldn't update rules file Default: %(in)s (incoming), %(out)s (outgoing), %(routed)s (routed) ERROR: this script should not be SGID ERROR: this script should not be SUID Firewall stopped and disabled on system startup Found exact match From IPv6 support not enabled Improper rule syntax Invalid 'from' clause Invalid 'port' clause Invalid 'proto' clause Invalid 'to' clause Invalid IP version '%s' Invalid interface clause for route rule Invalid option Logging disabled Logging enabled Mixed IP versions for 'from' and 'to' Need 'to' or 'from' clause Protocol mismatch (from/to) Protocol mismatch with specified protocol %s Rule added Rule deleted Rule updated Rules updated Rules updated (v6) Skipping malformed tuple (bad length): %s Skipping malformed tuple (iface): %s Skipping malformed tuple: %s Skipping unsupported IPv4 '%s' rule Skipping unsupported IPv6 '%s' rule To Unsupported policy '%s' Unsupported protocol '%s' Wrong number of arguments You need to be root to run this script problem running problem running sysctl problem running ufw-init
%s Project-Id-Version: ufw
Report-Msgid-Bugs-To: FULL NAME <EMAIL@ADDRESS>
POT-Creation-Date: 2014-02-20 14:16-0600
PO-Revision-Date: 2009-08-26 19:19+0000
Last-Translator: Hrotkó Gábor <roti@profi-media.com>
Language-Team: Hungarian <hu@li.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-Launchpad-Export-Date: 2015-01-26 20:08+0000
X-Generator: Launchpad (build 17306)
 
 
(Nincs) 
Használat: %(progname)s %(command)s
%(commands)s:

 %(enable)-31s engedélyezi a tűzfalat
 %(disable)-31s letiltja a tűzfalat
 %(default)-31s beállítja az alapértelmezett szabályokat
 %(logging)-31s %(level)s értékre állítja a naplózást
 %(allow)-31s engedélyezi a(z) %(rule)s szabályt
 %(deny)-31s letiltja a(z) %(rule)s szabályt
 %(reject)-31s visszautasítja a(z) %(rule)s szabályt
 %(limit)-31s korlátozza a(z) %(rule)s szabályt
 %(delete)-31s törli a(z) %(urule)s szabályt
 %(insert)-31s %(urule)s szabály hozzáfűzése %(number)s számmal
 %(reload)-31s újratölti a tűzfalat
 %(reset)-31s újraindítja a tűzfalat
 %(status)-31s kiírja a tűzfal állapotát
 %(statusnum)-31s kiírja a tűzfal állapotát számozott listaként a(z) %(rules)s szabályokról
 %(statusverbose)-31s kiírja a tűzfal állapotát bővebben
 %(show)-31s kiírja a tűzfal jelentését
 %(version)-31s kiírja a verziószámot

%(appcommands)s:
 %(applist)-31s alkalmazásprofilok listája
 %(appinfo)-31s kiírja a(z) %(profile)s adatait
 %(appupdate)-31s frissíti a(z) %(profile)s profilt
 %(appdefault)-31s beállítja az alapértelmezett alkalmazásszabályokat
 A(z) '%s' a csoport által írható! A(z) '%s' mindenki által írható! (győződjön meg arról, hogy az alkalmazásszabályai megfelelően rögzítésre kerültek-e) : Python 2.6 vagy későbbi verzió szükséges)
 Művelet Felhasználói szabályok hozzáadva (a futó tűzfalhoz lásd: „ufw status”): IPv6 szabály hozzáadása nem sikerült: az IPv6 nincs engedélyezve Rossz cél cím Hibás csatolónév: fenntartott karakter: „!” Rossz port Rossz port: '%s' Rossz forrás cím Ip6tables ellenőrzése
 Iptables ellenőrzése
 Ellenőrzések kikapcsolva A futó tűzfal nem frissíthető Nem sikerült meghatározni az iptables verzióját A(z) '%s' fájl nem nyitható meg olvasásra Nem található a(z) '%s' A szabályokat tartalmazó fájl nem frissíthető Alapértelmezett: %(in)s (bejövő), %(out)s (kimenő), %(routed)s (route-olt) HIBA: ehhez a parancsfájlhoz nem állítható SGID jelző HIBA: ehhez a parancsfájlhoz nem állítható SUID jelző A tűzfalat leállította és elindulását letiltotta a rendszer elindulásakor Pontosan illeszkedő találat van Feladó Az IPv6 támogatás nem engedélyezett Nem megfelelő szabály szintaktika Érvénytelen 'honnan' kifejezés Érvénytelen 'port' kifejezés Érvénytelen 'protokol' kifejezés Érvénytelen 'hová' kifejezés A(z) '%s' érvénytelen IP változat Érvénytelen interface utasítás a route szabályhoz Helytelen opció Naplózás kikapcsolva Naplózás bekapcsolva Kevert Ip változatok a 'honnan' és 'hová' értékekhez Szükség van a 'honnan' vagy 'hová' szavakra Nincs egyezés a protokolnál (honnan/hová) A protokol nem egyezik a megadott '%s' protokollal Szabály hozzáadva Szabály törölve Szabály frissítve Szabályok frissítve Szabályok frissítve (v6) A következő kihagyása: '%s' (érvénytelen hossz) Rosszul formázott tuple (iface) kihagyása: %s A következő kihagyása:' %s' Nem támogatott IPv4 szabály („%s”) kihagyása Nem támogatott '%s' IPv6 szabály kihagyása Címzett A(z) '%s' biztonsági beállítás nem támogatott Nem támogatott protokol: '%s' Hibás számú argumentumok A parancsfájl futtatásához rendszergazdai jogosultságok szükségesek Probléma futás közben Probléma a sysctl futtatásako hiba történt az ufw-init futtatásakor
%s 