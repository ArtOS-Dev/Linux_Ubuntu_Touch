��    �      d  �   �
      8  �  9  h   �  �   J  i  ;  b  �  �        �     �  %   �  5   �           .     6     E  "   N     q     �     �     �     �      �            	   8     B  6   W  '   �  '   �  "   �  4     *   6  .   a     �     �  
   �     �     �     �     �     �          +     @     U     i     ~     �     �     �     �     �     �          +     3     S     Z     g     �     �     �     �     �  %     &   3  #   Z  #   ~  #   �  !   �  (   �  <     %   N     t      �     �  #   �     �       #   .  %   R  ?   x  	   �     �  %   �     �  
             '     9     Q     b     u     �     �     �     �     �     �     �  4         ;      M      \      p      �      �      �      �      �      �      �      !     !     +!  '   0!     X!  &   o!  	   �!     �!     �!     �!     �!     �!     �!     �!     �!  L   "  ;   U"     �"  "   �"     �"     �"     �"     �"     	#     #  	   #      #  *   )#  $   T#  +   y#  #   �#  7   �#  %   $  "   '$  4   J$  (   $  (   �$     �$     �$     �$     %     %     *%     ;%     @%     Q%     i%  
   q%     |%  &   �%  '   �%  ,   �%     �%     &     &     &      7&  #  X&  �  |(  r   +  �   �+  �  ],  c  �-  �   H0     �0     1  $   #1  2   H1     {1     �1     �1     �1  1   �1     �1     �1     2     82  )   Q2  5   {2  .   �2     �2     �2     3  <   *3  1   g3  1   �3  (   �3  ;   �3  *   04  4   [4     �4     �4     �4     �4     �4     �4     �4  =   	5     G5     _5     |5     �5     �5     �5     �5     6     *6     H6     f6  +   �6     �6     �6  7   �6     	7     7     7     ;7     M7  $   l7  %   �7  *   �7  1   �7  9   8  .   N8  1   }8  .   �8  ,   �8  A   9  H   M9  5   �9  +   �9  /   �9  1   (:  0   Z:  %   �:     �:  -   �:  6   �:  G   4;     |;     �;  ,   �;     �;     �;     �;     �;     <     3<     H<     _<     x<     �<     �<     �<     �<     �<     �<  :   =     O=     b=     s=  "   �=     �=     �=     �=     �=     >  	   )>      3>     T>     Z>     p>  8   t>     �>  4   �>     �>     ?  
   ?     ?     $?     @?     V?     \?  %   p?  A   �?  4   �?     @  .   *@     Y@     f@     t@     �@     �@     �@     �@     �@  (   �@     �@  2   A     5A  2   PA  "   �A     �A  4   �A     �A     B     "B     2B     FB     ZB     mB     |B     �B     �B      �B  
   �B     �B     �B  1   �B  /   C  7   JC     �C     �C     �C  $   �C  (   �C     �   t   k   �           L   Z   �       i                    �   �       �       D      y   4   �   S               5          $   #   l          j   h                 _   T       �   -   M   8   &   B   6       P   d   �   C   �   G   �   Y   x   �   �   U       �   �                          �      ]   �   %   !   �      m   X   �                 n   \       7       >       �       "       .   |       s   �   H   �   
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
 Project-Id-Version: avahi master
Report-Msgid-Bugs-To: 
POT-Creation-Date: 2015-12-03 14:10+0000
PO-Revision-Date: 2015-12-19 21:02+0000
Last-Translator: Andrej Znidarsic <andrej.znidarsic@gmail.com>
Language-Team: Slovenian GNOME Translation Team <gnome-si@googlegroups.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-Launchpad-Export-Date: 2016-06-27 17:41+0000
X-Generator: Launchpad (build 18115)
X-Poedit-Country: SLOVENIA
Language: 
X-Poedit-Language: Slovenian
X-Poedit-SourceCharset: utf-8
     -h --help            Pokaži to pomoč
    -V --version         Pokaži različico
    -D --browse-domains  Brskanje domen namesto storitev
    -a --all             Pokaži vse storitve neglede na vrsto
    -d --domain=DOMAIN  Domena za brskanje
    -v --verbose         Omogoči podrobni način izpisa
    -t --terminate       Končaj po prikazu seznama
    -c --cache           Končaj po prikazu vnosov predpomnilnika
    -l --ignore-local    Prezri krajevne stražnike
    -r --resolve         Razreši najdene storitve
    -f --no-fail         Ne končaj, v kolikor ozadnji program ni na voljo
    -p --parsable        Izpis v razčlenjenem zapisu
     -k --no-db-lookup    Ne išči vrst storitev
    -b --dump-db         Podatkovna zbirka izpisa vrste storitve
 %s [možnosti]

    -h --help Pokaže to pomoč
    -s --ssh Brskanje za SSH strežniki
    -v --vnc Brskanje za VNC strežniki
    -S --shell Brskanje za SSH in VNC strežniki
    -d --domain=DOMENA Domena za brskanje
 %s [možnosti] %s <ime-gostitelja ...>
%s [možnosti] %s <naslov ... >

    -h --help            Pokaži to pomoč
    -V --version         Pokaži različico
    -n --name            Razreši ime gostitelja
    -a --address         Razreši naslov
    -v --verbose         Omogoči podrobni izpis
    -6                   Poišči naslov IPv6
    -4                   Poišči naslov IPv4
 %s [možnosti] %s <ime> <vrsta> <vrata> [<txt ...>]
%s [možnosti] %s <ime-gostitelja> <naslov>

    -h --help            Pokaži to pomoč
    -V --version         Pokaži različico
    -s --service         Objavi storitev
    -a --address         Objavi naslov
    -v --verbose         Omogoči podrobni izpis
    -d --domain=DOMAIN   Domena za objavo storitve
    -H --host=DOMAIN     Gostitelj storitve
       --subtype=SUBTYPE Dodatna podrejena vrsta za vpis storitve
    -R --no-reverse      Ne objavi obratnega vnosa z naslovom
    -f --no-fail         Ne končaj, v kolikor ozadnji program ni na voljo
 %s [možnosti] <novo ime gostitelja>

    -h --help            Pokaži to pomoč
    -V --version         Pokaži različico
    -v --verbose         Omogoči podrobni izpis
 : Vse za zdaj
 : Predpomnilnik je izčrpan
 <i>Trenutno ni izbrane storitve.</i> Nično zaključen seznam vrst storitev za brskanje Dostop je zavrnjen Naslov Družina naslova Naslov: Prišlo je do nepričakovane napake vodila D-Bus. Odkrivanje storitev Avahi Avahi brskalnik strežnika SSH Avahi brskalnik strežnika VNC Brskalnik Avahi Zeroconf Dejanje odjemalca Avahi je spodletelo: %s Dejanje domenskega brskalnika Avahi je spodletelo: %s Razreševanje podatkov Avahi je spodletelo: %s Napačno število argumentov.
 Slabo stanje Brskanje med vrstami storitev Brskanje med razpoložljivimi storitvami Zeroconf v omrežju Brskanje med omogočenimi strežniki Zeroconf SSH Brskanje med omogočenimi strežniki Zeroconf VNC Seznam brskanja vrst storitev je prazen! Brskanje za storitev vrste %s v domeni %s je spodletela: %s Brskanje za storitvami v domeni <b>%s</b>: Brskanje za storitvami na <b>krajevnem omrežju</b>: Brskanje ... _Poveži Preklicano.
 Spremeni domeno Izbor strežnika SSH Izbor lupinskega strežnika Izbor strežnika VNC Spodletelo izvajanje odjemalca, zato bo dejanje končano: %s
 Povezovanje z '%s' ...
 Spodletel odziv DNS: FORMERR Spodletel odziv DNS: NOTAUTH Spodletel odziv DNS: NOTIMP Spodletel odziv DNS: NOTZONE Spodletel odziv DNS: NXDOMAIN Spodletel odziv DNS: NXRRSET Spodletel odziv DNS: REFUSED Spodletel odziv DNS: SERVFAIL Spodletel odziv DNS: YXDOMAIN Spodletel odziv DNS: YXRRSET Povezava z ozadnjim programom je spodletela Ozadnji program ni zagnan Namizje Povezava je prekinjena; poteka ponovno povezovanje ...
 Domena Ime domene: E Ifce Prot %-*s %-20s domena
 Domena Ifce Prot
 Vzpostavljeno pod imenom '%s'
 Dodajanje naslova je spodletelo: %s
 Dodajanje storitve je spodletelo: %s
 Dodajanje podvrste '%s' je spodletelo: %s
 Povezovanje s strežnikom Avahi je spodletelo: %s Ustvarjanje naslovnega razreševalnika je spodletelo: %s
 Ustvarjanje brskalnika za %s je spodletelo: %s Ustvarjanje predmeta odjemalca je spodletelo: %s
 Ustvarjanje brskalnika domen je spodletelo: %s Ustvarjanje skupine vnosa je spodletelo: %s
 Ustvarjanje razreševalnika gostiteljskih imen je spodletelo: %s
 Ustvarjanje razreševalnika za %s vrste %s v domeni %s je spodletelo: %s Ustvarjanje predmeta enostavne ankete je spodletelo.
 Razčlenjevanje naslova '%s' je spodletelo
 Razreševanje številke vrat je spodletelo: %s
 Poizvedovanje imena gostitelja je spodletelo: %s
 Poizvedovanje niza različice je spodletelo: %s
 Branje domene Avahi je spodletelo: %s Vpisovanje je spodletelo: %s
 Razreševanje naslova '%s' je spodletelo: %s
 Razreševanje imena gostitelja '%s' je spodletelo: %s
 Razreševanje storitve '%s' vrste '%s' v domeni '%s' je spodletelo: %s
 Ime gostitelja Ime gostitelja je v sporu
 Ime gostitelja je uspešno spremenjeno v %s
 Začenjanje ... Vmesnik: Neveljaven DNS TTL Neveljaven razred DNS Neveljavna DNS vrnitvena koda Neveljavna vrsta DNS Neveljavna koda napake Neveljaven podatek RDATA Neveljaven naslov Neveljaven argument Neveljavna nastavitev Neveljavno ime domene Neveljavne zastavice Neveljavno ime gostitelja Neveljavno kazalo vmesnika Neveljavno število argumentov, saj je pričakovan le en.
 Neveljavno dejanje Neveljaven paket Neveljavna številka vrat Neveljavna specifikacija protokola Neveljaven zapis Neveljaven ključ zapisa Neveljavno ime storitve Neveljavna podvrsta storitve Neveljavna vrsta storitve Je prazno Krajevno poimenovanje je v sporu Mesto Pomnilnik je izčrpan Ime Poimenovanje je v sporu, zato bo izbrano novo ime '%s'.
 Ni določenega ukaza.
 Na voljo ni nobenega ustreznega omrežnega protokola Ni zadetkov Ni dovoljeno Ni podprto V redu Napaka operacijskega okolja Dejanje je spodletelo Vrata Razrešene storitve Ime gostitelja storitve razreševanja Samodejno razreši ime gostitelja izbrane storitve pred povratkom Samodejno razreši izbrano storitev pred povrnitvijo Ključ zapisa vira je vzorec Različica strežnika: %s; ime gostitelja: %s
 Ime storitve Ime storitve: Vrsta storitve Vrsta storitve: TXT Podatki TXT Podatki TXT: Terminal Številka vrat IP za razrešeno storitev Podatki TXT razrešene storitve Družina naslova za razreševanje imena gostitelja Naslov razrešene storitve Domena za brskanje oziroma NULL za privzeto domeno Ime gostitelja razrešene storitve Poslan predmet ni veljaven Zahtevana operacija je zaradi odvečnosti neveljavna Ime izbrane storitve Vrsta izbrane storitve Čas je potekel Premalo argumentov
 Preveč argumentov
 Preveč odjemalcev Preveč vnosov Preveč predmetov Vrsta Neskladje različic Čakanje na ozadnji program ...
 _Prekliči _Domena ... _V redu ukaz avahi_domain_browser_new() je spodletel: %s
 ukaz avahi_service_browser_new() spodletel: %s
 ukaz avahi_service_type_browser_new() je spodletel: %s
 prazno ukaz execlp() je spodletel: %s
 ni na voljo brskalnik storitev je spodletel: %s
 ukaz service_type_browser spodletel: %s
 