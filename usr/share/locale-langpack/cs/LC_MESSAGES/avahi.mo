��    �      d  �   �
      8  �  9  h   �  �   J  i  ;  b  �  �        �     �  %   �  5   �           .     6     E  "   N     q     �     �     �     �      �            	   8     B  6   W  '   �  '   �  "   �  4     *   6  .   a     �     �  
   �     �     �     �     �     �          +     @     U     i     ~     �     �     �     �     �     �          +     3     S     Z     g     �     �     �     �     �  %     &   3  #   Z  #   ~  #   �  !   �  (   �  <     %   N     t      �     �  #   �     �       #   .  %   R  ?   x  	   �     �  %   �     �  
             '     9     Q     b     u     �     �     �     �     �     �     �  4         ;      M      \      p      �      �      �      �      �      �      �      !     !     +!  '   0!     X!  &   o!  	   �!     �!     �!     �!     �!     �!     �!     �!     �!  L   "  ;   U"     �"  "   �"     �"     �"     �"     �"     	#     #  	   #      #  *   )#  $   T#  +   y#  #   �#  7   �#  %   $  "   '$  4   J$  (   $  (   �$     �$     �$     �$     %     %     *%     ;%     @%     Q%     i%  
   q%     |%  &   �%  '   �%  ,   �%     �%     &     &     &      7&  �  X&  �  (  k   �*  �   +  z  ,  a  �-  �   �/     �0     �0  '   �0  :   �0     71     K1     R1     _1     g1     �1     �1     �1     �1     �1  )   �1     )2     G2     b2     v2  6   �2  *   �2  5   �2  "   '3  3   J3  1   ~3  4   �3     �3  
   �3  
   �3     
4     4     ,4     @4  $   R4     w4     �4     �4     �4     �4     �4     5     5     25     J5     b5     y5     �5     �5  ,   �5     �5     �5  9   6  .   ?6     n6     �6     �6  $   �6  '   �6  )   7  ,   @7  (   m7  -   �7  ,   �7  8   �7  >   *8  $   i8     �8  &   �8  %   �8  $   �8  #   9     B9  $   Z9  3   9  <   �9     �9     :  ,   #:     P:  
   c:     n:     �:     �:     �:     �:     �:     �:      ;     ;     );     B;     X;     u;  9   �;     �;     �;     �;     <     $<     6<     P<     i<     �<     �<     �<     �<     �<     �<  '   �<     =  8   &=  
   _=  
   j=     u=     �=     �=     �=     �=     �=  (   �=  H   �=  7   0>  #   h>  (   �>     �>     �>     �>     �>     �>     �>  	   �>  	   ?  %   ?     4?  ,   R?     ?  6   �?  (   �?     �?  ;   @  #   V@      z@     �@     �@     �@     �@     �@     A     ,A     0A     BA     ZA     cA     oA  '   wA  (   �A  -   �A  	   �A      B     B     B  !   7B     �   t   k   �           L   Z   �       i                    �   �       �       D      y   4   �   S               5          $   #   l          j   h                 _   T       �   -   M   8   &   B   6       P   d   �   C   �   G   �   Y   x   �   �   U       �   �                          �      ]   �   %   !   �      m   X   �                 n   \       7       >       �       "       .   |       s   �   H   �   
   �   N      �   �   �       O   }         �       �   �      2       3      /   �   A       v   1       �       a      Q       *               F          )   q   I   w       z   (   c   �       =       �   e   J   K   ~      {          ^      '   ;   b       �       o   �   �   f   `             r   g   �       :   u   9   E               W   @      �      V           <   R      �   [   0   �   �   +   �   	                  p       ,   ?            -h --help            Show this help
    -V --version         Show version
    -D --browse-domains  Browse for browsing domains instead of services
    -a --all             Show all services, regardless of the type
    -d --domain=DOMAIN   The domain to browse in
    -v --verbose         Enable verbose mode
    -t --terminate       Terminate after dumping a more or less complete list
    -c --cache           Terminate after dumping all entries from the cache
    -l --ignore-local    Ignore local services
    -r --resolve         Resolve services found
    -f --no-fail         Don't fail if the daemon is not available
    -p --parsable        Output in parsable format
     -k --no-db-lookup    Don't lookup service types
    -b --dump-db         Dump service type database
 %s [options]

    -h --help            Show this help
    -s --ssh             Browse SSH servers
    -v --vnc             Browse VNC servers
    -S --shell           Browse both SSH and VNC
    -d --domain=DOMAIN   The domain to browse in
 %s [options] %s <host name ...>
%s [options] %s <address ... >

    -h --help            Show this help
    -V --version         Show version
    -n --name            Resolve host name
    -a --address         Resolve address
    -v --verbose         Enable verbose mode
    -6                   Lookup IPv6 address
    -4                   Lookup IPv4 address
 %s [options] %s <name> <type> <port> [<txt ...>]
%s [options] %s <host-name> <address>

    -h --help            Show this help
    -V --version         Show version
    -s --service         Publish service
    -a --address         Publish address
    -v --verbose         Enable verbose mode
    -d --domain=DOMAIN   Domain to publish service in
    -H --host=DOMAIN     Host where service resides
       --subtype=SUBTYPE An additional subtype to register this service with
    -R --no-reverse      Do not publish reverse entry with address
    -f --no-fail         Don't fail if the daemon is not available
 %s [options] <new host name>

    -h --help            Show this help
    -V --version         Show version
    -v --verbose         Enable verbose mode
 : All for now
 : Cache exhausted
 <i>No service currently selected.</i> A NULL terminated list of service types to browse for Access denied Address Address family Address: An unexpected D-Bus error occurred Avahi Discovery Avahi SSH Server Browser Avahi VNC Server Browser Avahi Zeroconf Browser Avahi client failure: %s Avahi domain browser failure: %s Avahi resolver failure: %s Bad number of arguments
 Bad state Browse Service Types Browse for Zeroconf services available on your network Browse for Zeroconf-enabled SSH Servers Browse for Zeroconf-enabled VNC Servers Browse service type list is empty! Browsing for service type %s in domain %s failed: %s Browsing for services in domain <b>%s</b>: Browsing for services on <b>local network</b>: Browsing... C_onnect Canceled.
 Change domain Choose SSH server Choose Shell Server Choose VNC server Client failure, exiting: %s
 Connecting to '%s' ...
 DNS failure: FORMERR DNS failure: NOTAUTH DNS failure: NOTIMP DNS failure: NOTZONE DNS failure: NXDOMAIN DNS failure: NXRRSET DNS failure: REFUSED DNS failure: SERVFAIL DNS failure: YXDOMAIN DNS failure: YXRRSET Daemon connection failed Daemon not running Desktop Disconnected, reconnecting ...
 Domain Domain Name: E Ifce Prot %-*s %-20s Domain
 E Ifce Prot Domain
 Established under name '%s'
 Failed to add address: %s
 Failed to add service: %s
 Failed to add subtype '%s': %s
 Failed to connect to Avahi server: %s Failed to create address resolver: %s
 Failed to create browser for %s: %s Failed to create client object: %s
 Failed to create domain browser: %s Failed to create entry group: %s
 Failed to create host name resolver: %s
 Failed to create resolver for %s of type %s in domain %s: %s Failed to create simple poll object.
 Failed to parse address '%s'
 Failed to parse port number: %s
 Failed to query host name: %s
 Failed to query version string: %s
 Failed to read Avahi domain: %s Failed to register: %s
 Failed to resolve address '%s': %s
 Failed to resolve host name '%s': %s
 Failed to resolve service '%s' of type '%s' in domain '%s': %s
 Host Name Host name conflict
 Host name successfully changed to %s
 Initializing... Interface: Invalid DNS TTL Invalid DNS class Invalid DNS return code Invalid DNS type Invalid Error Code Invalid RDATA Invalid address Invalid argument Invalid configuration Invalid domain name Invalid flags Invalid host name Invalid interface index Invalid number of arguments, expecting exactly one.
 Invalid operation Invalid packet Invalid port number Invalid protocol specification Invalid record Invalid record key Invalid service name Invalid service subtype Invalid service type Is empty Local name collision Location Memory exhausted Name Name collision, picking new name '%s'.
 No command specified.
 No suitable network protocol available Not found Not permitted Not supported OK OS Error Operation failed Port Resolve Service Resolve Service Host Name Resolve the host name of the selected service automatically before returning Resolve the selected service automatically before returning Resource record key is pattern Server version: %s; Host name: %s
 Service Name Service Name: Service Type Service Type: TXT TXT Data TXT Data: Terminal The IP port number of the resolved service The TXT data of the resolved service The address family for host name resolution The address of the resolved service The domain to browse in, or NULL for the default domain The host name of the resolved service The object passed in was not valid The requested operation is invalid because redundant The service name of the selected service The service type of the selected service Timeout reached Too few arguments
 Too many arguments
 Too many clients Too many entries Too many objects Type Version mismatch Waiting for daemon ...
 _Cancel _Domain... _OK avahi_domain_browser_new() failed: %s
 avahi_service_browser_new() failed: %s
 avahi_service_type_browser_new() failed: %s
 empty execlp() failed: %s
 n/a service_browser failed: %s
 service_type_browser failed: %s
 Project-Id-Version: avahi
Report-Msgid-Bugs-To: 
POT-Creation-Date: 2015-12-03 14:10+0000
PO-Revision-Date: 2016-02-03 07:39+0000
Last-Translator: Martin Šácha <lp@s0c4.net>
Language-Team: Czech <translation-team-cs@lists.sourceforge.net>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-Launchpad-Export-Date: 2016-06-27 17:41+0000
X-Generator: Launchpad (build 18115)
Language: cs
     -h --help            Zobrazí tuto nápovědu
    -V --version         Zobrazí verzi
    -D --browse-domains  Procházení domén místo služeb
    -a --all             Zobrazí všechny služby nezávisle na jejich typu
    -d --domain=DOMAIN  Doména k procházení
    -v --verbose         Podrobný výpis
    -t --terminate       Ukončit po vypsání celeého seznamu
    -c --cache           Ukončit po vypsání výsledků z cache
    -l --ignore-local    Ignorovat lokální služby
    -r --resolve         Odhalit nalezené služby
    -f --no-fail         Nezhavarovat pokud není démon dostupný
    -p --parsable        Vypsat ve strojově čitelném formátu
     -k --no-db-lookup    Nezjišťovat typ služeb
    -b --dump-db         Vypsat databázi typů služeb
 %s [volba]

    -h --help            Zobrazí tuto nápovědu
    -s --ssh             Prochází SSH servery
    -v --vnc             Prochází VNC servery
    -S --shell           Prochází SSH i VNC
    -d --domain=DOMAIN   Doména k procházení
 %s [volby] %s <host name ...>
%s [volby] %s <adresa ... >

    -h --help            Zobrazí tuto nápovědu
    -V --version         Zobrazí verzi
    -n --name            Zjistí název hostitele
    -a --address         Zjistí adresu
    -v --verbose         Povolí podbrobný výpis
    -6                   Hledat IPv6 adresu
    -4                   Hledat IPv4 adresu
 %s [volby] %s <název> <typ> <port> [<txt ...>]
%s [volby] %s <host-name> <adresa>

    -h --help            Zobrazí tuto nápovědu
    -V --version         Zobrazí verzi
    -s --service         Publikuje službu
    -a --address         Publikuje adresu
    -v --verbose         Povolí podrobný výpis
    -d --domain=DOMAIN   Doména do které bude služba publikována
    -H --host=DOMAIN     Doména sídla služby
       --subtype=SUBTYPE Přídavný typ služby
    -R --no-reverse      Do not publish reverse entry with address
    -f --no-fail         Nezhavarovat pokud není démon dostupný
 %s [volby] <nový název hostitele>

    -h --help            Zobrazit tuto nápovědu
    -V --version         Zobrazit verzi
    -v --verbose         Povolit mód verbose
 : Zatím je to vše
 : Mezipaměť vyčerpána
 <i>Není zvolená žádná služba.</i> Seznam typů služeb k prohledání ukončený znakem NULL Přístup zamítnut Adresa Rodina adres Adresa: Neočekávaná chyba D-Bus Prohlížeč Avahi Avahi SSH Server Browser Avahi VNC Server Browser Prohlížeč Avahi Zeroconf Selhání Avahi klienta: %s Selhání prohlížeče domény Avahi: %s Selhání Avahi resolveru: %s Chybný počet argumentů
 Nevyhovující stav Prohlížet typy služeb Prohlížet služby Zeroconf dostupné ve vaší síti Procházení Zeroconf-enabled SSH serverů Prohlížeč pro zeroconf-zpřístupěné VNC servery Seznam typů služeb je prázdný! Hledání typu služby %s v doméně %s selhalo: %s Probíhá hledání služeb v doméně <b>%s</b>: Probíhá hledání služeb v <b>místní síti</b>: Procházím... Přip_ojit Zrušeno.
 Změnit doménu Zvolte SSH server Vybrat Shell server Zvolte VNC server Selhání klienta, ukončuje se: %s
 Připojuji se k '%s' ...
 Selhání DNS: FORMERR Selhání DNS: NOTAUTH Selhání DNS: NOTIMP Selhání DNS: NOTZONE Selhání DNS: NXDOMAIN Selhání DNS: NXRRSET Selhání DNS: REFUSED Selhání DNS: SERVFAIL Selhání DNS: YXDOMAIN Selhání DNS: YXRRSET Selhalo připojení k démonovi Démon neběží Pracovní prostředí Odpojeno, pokouším se znovu připojit ...
 Doména Název domény: Událost Síťové rozhraní Protokol %-*s %-20s Doména
 Událost Síťové rozhraní Protokol Doména
 Založeno pod názvem '%s'
 Selhalo přidání adresy: %s
 Selhalo přidání služby: %s
 Selhalo přidání subtypu '%s': %s
 Selhalo připojení k serveru Avahi: %s Selhalo vytvoření adresy resolveru: %s
 Selhalo vytvoření prohlížeče pro %s: %s Selhalo vytvoření objektu klienta: %s
 Selhalo vytvoření prohlížeče domény: %s Selhalo vytvoření skupinového vstupu: %s
 Selhalo vytvoření hostitelského jména resolveru: %s
 Selhalo vytvoření resolveru pro %s typu %s v doméně %s: %s Nelze vytvořit jednoduchý objekt.
 Selhala analýza adresy '%s'
 Selhalo parsování čísla portu: %s
 Selhal dotaz na jméno hostitele: %s
 Selhal dotaz na řetězec verze: %s
 Selhalo načtení domény Avahi: %s Selhala registrace: %s
 Selhalo rozeznání adresy '%s': %s
 Selhalo rozeznání hostitelského jména '%s': %s
 Selhala analýza služby '%s' typy '%s' v doméně '%s': %s
 Jméno počítače Konflikt hostitelského názvu
 Název hostitele úspěšně změněn na %s
 Inicializuje se… Rozhraní: Neplatné DNS TTL Neplatná třída DNS Neplatný návratový kód DNS Neplatný typ DNS Neplatný chybový kód Neplatné RDATA Neplatná adresa Neplatný parametr Neplatná konfigurace Neplatný název domény Nesprávné parametry Neplatný název počítače Neplatný index rozhraní Neplatný počet argumentů, očekáván přesně jeden.
 Neplatná operace Neplatný packet Neplatné číslo portu Neplatná specifikace protokolu Neplatný záznam Neplatný klíč záznamu Neplatný název služby Neplatný subtyp služby Neplatný typ služby Je prázdný Kolize lokálního jména Umístění Paměť vyčerpána Název Kolize jmen, volím nové jméno '%s'.
 Nebyl zvolen příkaz.
 Žádný vyhovující síťový protokol není dostupný Nenalezeno Nepovoleno Nepodporováno Budiž Chyba OS Operace selhala Port Analyzovaná služba Hostitelský název analyzované služby Analyzovat jméno hostitele vybrané služby automaticky před návratem Analyzovat vybranou službu automaticky před návratem Vzorem je zdrojový klíč záznamu Verze serveru: %s; Jméno hostitele: %s
 Název služby Název služby: Typ služby Typ služby: TXT TXT data TXT data: Terminál Číslo IP portu analyzované služby TXT data analyzované služby Rodina adres ke zjištění názvu hostitele Adresa analyzované služby Doména k procházení, nebo NIC pro výchozí doménu Hostitelské jméno analyzované služby Přijatý objekt nebyl platný Požadovaná operace je neplatná, protože je nadbytečná Název služby pro vybranou službu Typ služby pro vybranou službu Čas vypršel Příliš málo argumentů
 Příliš mnoho argumentů
 Příliš mnoho klientů Příliš mnoho položek Příliš mnoho objektů Typ Verze nesouhlasí Čekám na démona ...
 _Zrušit _Doména... _Budiž avahi_domain_browser_new() selhalo: %s
 avahi_service_browser_new() selhalo: %s
 avahi_service_type_browser_new() selhalo: %s
 prázdné execlp() selhalo: %s
 n/a service_browser selhalo: %s
 service_type_browser selhalo: %s
 