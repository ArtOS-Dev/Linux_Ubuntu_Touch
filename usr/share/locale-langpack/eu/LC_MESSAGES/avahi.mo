��    �      \  �   �
      (  �  )  h   �  �   :  i  +  b  �  �   �     �     �  %   �  5   �               &     5     >     N     g     �     �      �     �     �  	          6   $  '   [  '   �  "   �  4   �  *     .   .     ]     i  
   r     }     �     �     �     �     �     �          "     6     K     a     v     �     �     �     �     �     �                 '     4     S     g     �     �     �  %   �  &      #   '  #   K  #   o  !   �  (   �  <   �  %        A      _     �  #   �     �     �  #   �  %     ?   E  	   �     �  %   �     �  
   �     �     �               /     B     P     `     q     �     �     �     �  4   �                 )      =      \      k      ~      �      �      �      �      �      �      �   '   �      %!  &   <!  	   c!     m!     {!     �!     �!     �!     �!     �!     �!  L   �!  ;   ""     ^"  "   }"     �"     �"     �"     �"     �"     �"  	   �"     �"  *   �"  $   !#  +   F#  #   r#  7   �#  %   �#  "   �#  4   $  (   L$  (   u$     �$     �$     �$     �$     �$     �$     %     %     %     6%  
   >%     I%  &   M%  '   t%  ,   �%     �%     �%     �%     �%      &  �  %&  �  �'  k   �*    +  �  ,  �  �-  �   &0     �0     �0  +   �0  6   %1     \1     m1     v1  	   �1     �1  !   �1  !   �1     �1     2  ,   "2     O2     o2     �2     �2  E   �2  4   �2  4   (3  /   ]3  A   �3  )   �3  *   �3  	   $4  
   .4     94     P4     `4     y4     �4  #   �4     �4     �4     	5     %5     @5     \5     y5     �5     �5     �5     �5     6     %6  
   >6  #   I6     m6     v6      �6     �6     �6  $   �6  %   �6  )   7  0   H7  *   y7  2   �7  *   �7  .   8  )   18  0   [8  C   �8  6   �8  (   9  -   09  3   ^9  2   �9  +   �9  !   �9  (   :  .   <:  G   k:     �:     �:  /   �:     ;     ;     &;     9;     N;     k;     ;     �;     �;     �;     �;     �;     �;     <     ,<  -   L<     z<     �<     �<     �<     �<     �<     =     (=     E=     ^=     j=  	   }=     �=     �=  -   �=     �=  -   �=     >     #>     6>     G>     L>     [>     s>     y>  "   �>  K   �>  7   �>  ,   1?  ,   ^?     �?     �?     �?     �?     �?  
   �?     �?  	   �?  )   �?  "   @  .   9@      h@  C   �@  &   �@  "   �@  7   A  '   OA  &   wA     �A     �A     �A     �A     �A     �A     B     B     'B     =B     CB     PB  .   VB  /   �B  4   �B     �B     �B     C  $   C  )   8C     �   s   j   �           K   Y   �       h                    �   �       �       C      x   3   �   R              4          #   "   k          i   g                 ^   S       �   ,   L   7   %   A   5       O   c   �   B   �   F   �   X   w   �      T       �   �                          �      \   �   $       �      l   W   �                  m   [       6       =       �       !       -   {       r   �   G   �   
   �   M      �   �   �       N   |         �       �   �      1       2      .   �   @       u   0       �       `   ~   P       )               E          (   p   H   v       y   '   b   �       <       �   d   I   J   }      z          ]      &   :   a       �       n   �   �   e   _             q   f   �       9   t   8   D               V   ?      �      U           ;   Q      �   Z   /   �   �   *   �   	                  o       +   >            -h --help            Show this help
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
 <i>No service currently selected.</i> A NULL terminated list of service types to browse for Access denied Address Address family Address: Avahi Discovery Avahi SSH Server Browser Avahi VNC Server Browser Avahi Zeroconf Browser Avahi client failure: %s Avahi domain browser failure: %s Avahi resolver failure: %s Bad number of arguments
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
Report-Msgid-Bugs-To: FULL NAME <EMAIL@ADDRESS>
POT-Creation-Date: 2015-12-03 14:10+0000
PO-Revision-Date: 2016-04-11 22:18+0000
Last-Translator: Ibai Oihanguren Sala <Unknown>
Language-Team: Basque <eu@li.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-Launchpad-Export-Date: 2016-06-27 17:41+0000
X-Generator: Launchpad (build 18115)
     -h --help            Erakutsi laguntza hau
    -V --version         Erakutsi bertsioa
    -D --browse-domains  Arakatu arakatze domeinuen bila (zerbitzuen ordez)
    -a --all             Erakutsi zerbitzu guztiak, mota kontuan izan gabe
    -d --domain=DOMEINUA   Arakatu beharreko domeinua
    -v --verbose         Gaitu modu berritsua
    -t --terminate       Bukatu zerrenda gutxi-asko osatu bat irauli ondoren
    -c --cache           Bukatu cache-ko sarrera guztiak irauli ondoren
    -l --ignore-local    Ezikusia egin zerbitzu lokalei
    -r --resolve         Ebatzi aurkitutako zerbitzuak
    -f --no-fail         Ez hutsegin daemon-a ez badago eskuragarri
    -p --parsable        Irteera formatu analizagarrian
     -k --no-db-lookup    Ez bilatu zerbitzu motak
    -b --dump-db         Irauli zerbitzu moten datubasea
 %s [aukerak]

    -h --help            Erakutsi laguntza hau
    -s --ssh             Arakatu SSH zerbitzariak
    -v --vnc             Arakatu VNC zerbitzariak
    -S --shell           Arakatu SSH eta VNC (biak)
    -d --domain=DOMEINUA   Arakatu beharreko domeinua
 %s [aukerak] %s <ostalari izena ...>
%s [aukerak] %s <helbidea ... >

    -h --help            Erakutsi laguntza hau
    -V --version         Erakutsi bertsioa
    -n --name            Ebatzi ostalari izena
    -a --address         Ebatzi helbidea
    -v --verbose         Gaitu modu berritsua
    -6                   Bilatu IPv6 helbidea
    -4                   Bilatu IPv4 helbidea
 %s [aukerak] %s <izena> <mota> <ataka> [<txt ...>]
%s [aukerak] %s <ostalari izena> <helbidea>

    -h --help            Erakutsi laguntza hau
    -V --version         Erakutsi bertsioa
    -s --service         Argitaratu zerbitzua
    -a --address         Argitaratu helbidea
    -v --verbose         Gaitu modu berritsua
    -d --domain=DOMEINUA   Zerbitzua argitaratzeko domeinua
    -H --host=DOMEINUA     Zerbitzua dagoen ostalaria
       --subtype=AZPIMOTA Azpimota gehigarri bat zerbitzu hau erregistratzeko
    -R --no-reverse      Ez argitaratu alderantzizko sarrera helbidearekin
    -f --no-fail         Ez huts egin daemon-a ez badago eskuragarri
 %s [aukerak] <ostalari izen berria>

    -h --help            Erakutsi laguntza hau
    -V --version         Erakutsi bertsioa
    -v --verbose         Gaitu modu berritsua
 :Guztia oraingoz
 :Cache-a agortuta
 <i>Unean ez dago zerbitzurik hautatuta.</i> Arakatzeko zerbitzu moten zerrenda, NULL batez bukatua Sarbidea ukatuta Helbidea Helbide familia Helbidea: Avahi aurkikuntza Avahi SSH zerbitzari arakatzailea Avahi VNC zerbitzari arakatzailea Avahi Zeroconf arakatzailea Avahi bezeroaren hutsegitea: %s avahi domeinu arakatzailearen hutsegitea: %s Avahi ebazlearen hutsegitea: %s Argumentu kopuru okerra
 Egoera okerra Arakatu zerbitzu motak Zure sarean eskuragarriak diren Zeroconf zerbitzuentzako arakatzailea Arakatu Zeroconf gaituta duten SSH zerbitzarien bila Arakatu Zeroconf gaituta duten VNC zerbitzarien bila Arakatzeko zerbitzu moten zerrenda hutsik dago! %s zerbitzu motaren bila %s domeinuan arakatzeak huts egin du: %s Zerbitzuak arakatzen <b>%s</b> domeinuan: Zerbitzuak arakatzen <b>sare lokalean</b>: Arakatzen _Konektatu Bertan behera utzita.
 Aldatu domeinua Aukeratu SSH zerbitzaria Aukeratu Shell zerbitzaria Aukeratu VNC zerbitzaria Bezeroaren hutsegitea, irteten: %s
 '%s'-(e)ra konektatzen ...
 DNSaren hutsegitea: FORMERR DNSaren hutsegitea: NOTAUTH DNSaren hutsegitea: NOTIMP DNSaren hutsegitea: NOTZONE DNSaren hutsegitea: NXDOMAIN DNSaren hutsegitea: NXRRSET DNSaren hutsegitea: REFUSED DNSaren hutsegitea: SERVFAIL DNSaren hutsegitea: YXDOMAIN DNSaren hutsegitea: YXRRSET Daemon konexioak huts egin du Daemon-a ez dago martxan Mahaigaina Deskonektatuta, birkonektatzen ...
 Domeinua Domeinu izena: G Ifze Prot %-*s %-20s Domeinua
 G Ifze Prot Domeinua
 '%s' izenpean ezarria
 Huts egin du helbidea gehitzean: %s
 Huts egin du zerbitzua gehitzean: %s
 Huts egin du '%s' azpimota gehitzean: %s
 Huts egin du Avahi zerbitzarira konektatzean: %s Huts egin du helbide ebazlea sortzean: %s
 Huts egin du %s-rentzako arakatzailea sortzean: %s Huts egin du bezero objektua sortzean: %s
 Huts egin du domeinu arakatzailea sortzean: %s Huts egin du sarrera taldea sortzean: %s
 Huts egin du ostalari izen ebazlea sortzean: %s
 Huts egin du %s-rentzat %s motako ebazlea sortzean %s domeinuan: %s Huts egin du galdeketa-objektu soil bat sortzerakoan.
 Huts egin du '%s' helbidea analizatzean
 Huts egin du ataka zenbakia analizatzean: %s
 Huts egin du ostalari-izena kontsultatzerakoan: %s
 Huts egin du bertsio-katea kontsultatzerakoan: %s
 Huts egin du Avahi domeinua irakurtzean: %s Huts egin du erregistratzean: %s
 Huts egin du '%s' helbidea ebaztean: %s
 Huts egin du '%s' ostalari izena ebaztean: %s
 Huts egin du '%s' zerbitzua, '%s' motakoa, ebaztean '%s' domeinuan: %s
 Ostalari izena Ostalari izenen gatazka
 Ostalari izena behar bezala aldatu da %s-(e)ra
 Hasieratzen... Interfazea: DNS TTL baliogabea DNS klase baliogabea DNS itzulera kode baliogabea DNS mota baliogabea Errore kode baliogabea RDATA baliogabea Helbide baliogabea Argumentu baliogabea Konfigurazio baliogabea Domeinu izen baliogabea Bandera baliogabeak Ostalari izen baliogabea Interfazearen indize baliogabea Argumentu kopuru okerra, bakarra espero zen.
 Eragiketa baliogabea Pakete baliogabea Ataka zenbaki baliogabea Protokolo zehaztapen baliogabea Erregistro baliogabea Erregistroaren gako baliogabea Zerbitzu izen baliogabea Zerbitzu azpimota baliogabea Zerbitzu mota baliogabea Hutsik dago Izen lokalen talka Kokalekua Memoria agortuta Izena Izenen talka, '%s' izen berria erabiliko da.
 Ez da komandorik zehaztu.
 Ez dago sareko protokolo egokirik eskuragarri Ez da aurkitu Ez dago baimenduta Ez dago onartuta Ados SEaren errorea Eragiketak huts egin du Ataka Ebatzi zerbitzua Ebatzi zerbitzuaren ostalari izena Itzuli aurretik ebatzi automatikoki hautatutako zerbitzuaren ostalari izena Itzuli aurretik ebatzi automatikoki hautatuko zerbitzua Baliabidearen erregistroaren gakoa eredua da Zerbitzari bertsioa: %s; Ostalari izena: %s
 Zerbitzu izena Zerbitzu izena: Zerbitzu mota Zerbitzu mota: TXT TXT datuak TXT datuak: Terminala Ebatzitako zerbitzuaren IP ataka zenbakia Ebatzitako zerbitzuaren TXT datuak Ostalari izenaren ebazpenerako helbide familia Ebatzitako zerbitzuaren helbidea Arakatu beharreko domeinua, edo NULL domeinu lehenetsia erabiltzeko Ebatzitako zerbitzuaren ostalari izena Pasatako objektua ez zen baliozkoa Eskatutako eragiketa baliogabea da erredundantea delako Hautatutako zerbitzuaren zerbitzu izena Hautatutako zerbitzuaren zerbitzu mota Denbora-muga iritsi da Argumentu gutxiegi
 Argumentu gehiegi
 Bezero gehiegi Sarrera gehiegi Objektu gehiegi Mota Bertsioak ez datoz bat Daemon-aren zain ...
 _Utzi _Domeinua... _Ados avahi_domain_browser_new()-k huts egin du: %s
 avahi_service_browser_new()-k huts egin du: %s
 avahi_service_type_browser_new()-k huts egin du: %s
 hutsik execlp()-ek huts egin du: %s
 e/e service_browser-ek huts egin du: %s
 service_type_browser-ek huts egin du: %s
 