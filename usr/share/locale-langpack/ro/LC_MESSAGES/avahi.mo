��    �      L  �   |
      �  �  �  h   �  �   
  i  �  b  e  �   �     b     q  %   �  5   �     �     �     �       "        1     A     Z     s     �      �     �     �  	   �       6     '   N  '   v  "   �  4   �  *   �  .   !     P  
   \     g     u     �     �     �     �     �     �                5     K     `     u     �     �     �     �     �     �     
               =     Q     n     �     �  %   �  &   �  #     #   5  #   Y  !   }  (   �  <   �  %        +      I     j  #   �     �     �  #   �  %   	  ?   /  	   o     y  %   �     �  
   �     �     �     �               ,     :     J     [     q     �     �     �  4   �     �                 '      F      U      h      }      �      �      �      �      �      �   '   �      !  &   &!  	   M!     W!     e!     s!     v!     !     �!     �!     �!  L   �!  ;   "     H"  "   g"     �"     �"     �"     �"     �"     �"  	   �"     �"  *   �"  $   #  +   0#  #   \#  7   �#  %   �#  "   �#  4   $  (   6$  (   _$     �$     �$     �$     �$     �$     �$     �$     �$     %  
    %  &   +%  '   R%  ,   z%     �%     �%     �%     �%      �%  �  &  �  �'  f   @*  �   �*  �  �+  �  .-  �   �/     x0     �0  (   �0  A   �0     	1     1     1     /1     81     R1     d1     �1     �1     �1  &   �1     �1     2     62     F2  G   _2  /   �2  0   �2  $   3  B   -3  (   p3  ,   �3     �3     �3     �3     �3     4     4     24     R4     r4     �4     �4     �4     �4     �4     �4     �4     5     '5     ;5     V5     r5      z5     �5     �5     �5     �5     �5     6      "6  '   C6  )   k6  /   �6  '   �6  '   �6  %   7  !   ;7  ,   ]7  H   �7  #   �7  %   �7  $   8  $   B8  &   g8  /   �8     �8  (   �8  7   9  U   ;9     �9     �9  &   �9     �9     �9     �9     :     ":     ;:     K:     a:     o:     �:     �:     �:     �:     �:     �:  @   �:     ?;     S;     b;     v;     �;     �;     �;     �;     �;     <     <     )<     2<     D<  /   I<     y<  -   �<     �<     �<     �<     �<  	   �<     =     =     =  %   1=  M   W=  8   �=  (   �=  %   >     ->     ;>     J>     W>     e>     i>  	   r>     |>  ,   �>  !   �>  3   �>     ?  G   $?  '   l?     �?  ;   �?     �?  +   
@     6@     C@     \@     s@     �@     �@     �@     �@  !   �@     �@  (   �@  )   "A  .   LA     {A     A     �A     �A  "   �A     J   �   3   �   .   r                                  y      �       �   �   [   S   �       c   ,   @   �   l   )   �   �   O       H      �       �   �       �          �   q           o         2   �           *   /       '       �      �   �             $   Y   b   C   �   �       K   7   d      {   ~   X   z           �   �   >   V       h   k          5           `       �          <   R   �   0       6       \       j      �       (       �   �   
   s   B      }       %       �   !       :   �   w   f             &   |      L       Z   ^   ?   T   U   e       8      P   1   M   v   u       i   �   G   n            �       �   x           9   =   ]          _   �      F           -       W   �          p   	          #   4      D       +       �          t   �   �   Q          N      �   "   E   m   �           ;   I           A   a   g        -h --help            Show this help
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
 Bad state Browse Service Types Browse for Zeroconf services available on your network Browse for Zeroconf-enabled SSH Servers Browse for Zeroconf-enabled VNC Servers Browse service type list is empty! Browsing for service type %s in domain %s failed: %s Browsing for services in domain <b>%s</b>: Browsing for services on <b>local network</b>: Browsing... Canceled.
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
 _Domain... avahi_domain_browser_new() failed: %s
 avahi_service_browser_new() failed: %s
 avahi_service_type_browser_new() failed: %s
 empty execlp() failed: %s
 n/a service_browser failed: %s
 service_type_browser failed: %s
 Project-Id-Version: Fedora 10
Report-Msgid-Bugs-To: 
POT-Creation-Date: 2015-12-03 14:10+0000
PO-Revision-Date: 2015-12-04 01:33+0000
Last-Translator: Launchpad Translations Administrators <Unknown>
Language-Team: Romanian <LL@li.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-Launchpad-Export-Date: 2016-06-27 17:41+0000
X-Generator: Launchpad (build 18115)
Language: ro
     -h --help Afișează acest ajutor
    -V --version Afișează versiunia
    -D --browse-domains  Navigare domenii de navigare în loc de servicii
    -a --all Afișează toate serviciile, indiferent de tip
    -d --domain=DOMENIU Domeniul pentru navigare
    -v --verbose Activare modul detaliat
    -t --terminate Termină după afișarea unei liste mai mult sau mai puțin complete
    -c --cache Termină după afișarea tuturor întrărilor din cache
    -l --ignore-local Ignorare servicii locale
    -r --resolve Rezolvă serviciile găsite
    -f --no-fail Nu eșua dacă serviciul nu este disponibil
    -p --parsable Ieșire în format prelucrabil
     -k ---no-db-lookup Nu căuta tipuri de servicii
    -b --dump-db Arată baza de date tip serviciu
 %s [opțiuni]

    -h --help            Afișează acest ajutor
    -s --ssh             Navigare servere SSH
    -v --vnc             Navigare servere VNC
    -S --shell           Navigare  SSH și VNC
    -d --domain=DOMAIN   Domeniul de navigare
 %s [opțiuni] %s <nume gazdă ...>
%s [opțiuni] %s <adresă ... >

    -h --help              Afișează acest ajutor
    -V --version         Afișează versiune
    -n --name            Rezolvare nume domeniu
    -a --address         Rezolvare adresă
    -v --verbose         Activare mod detaliat
    -6                   Căutare adresă IPv6
    -4                   Căutare adresă IPv4
 %s [opțiuni] %s <nume> <tip> <port> [<txt ...>]
%s [opțiuni] %s <nume-gazdă> <adresă>

    -h --help            Arată acest ajutor
    -V --version         Arată versiunea
    -s --service         Publică serviciul
    -a --address         Publică adresa
    -v --verbose         Activează modul volubil
    -d --domain=DOMAIN   Domeniul pentru publicarea serviciului
    -H --host=DOMAIN     Gazda pentru serviciul rezident
       --subtype=SUBTYPE Un subtip suplimentar pentru asocierea serviciului
    -R --no-reverse      Nu publica intrare reversă cu adresă
    -f --no-fail         Nu se termină cu eroare dacă serviciul nu este disponibil
 %s [opțiuni] <nou nume calculator>

    -h --help            Afișează acest ajutor
    -V --version         Afișează versiunea
    -v --verbose         Activează mod detaliat
 : Deocamdată atât
 : Cache epuizat
 <i>Nici un serviciu selectat curent.</i> O listă terminată în NULL de servicii care să fie descoperite Acces refuzat Adresă Familie adresă Adresă: S-a produs o eroare D-Bus Descoperire Avahi Navigator de servere SSH Avahi Navigator Avahi de server VNC Navigator Avahi Zeroconf Clientul Avahi a eșuat: %s Navigatorul domeniu Avahi a eșuat: %s Eroare rezolvare Avahi: %s Număr incorect de parametri
 Stare greșită Navigare tipuri servicii Descoperă serviciile Zeroconf disponibile în rețeaua dumneavoastră. Navighează servere SSH având activat Zeroconf Navigheză serverele VNC având activat Zeroconf Lista tipului de servici este vidă! Căutarea pentru tipul serviciului %s în domeniul %s a eșuat: %s Navigare servicii în domeniu <b>%s</b>: Navigare servicii în <b>rețea locală</b>: Se descoperă... Anulat.
 Schimbă domeniu Alegeți server SSH Alegeți consolă server Alegeți server VNC Clientul a eșuat, ieșire: %s
 Se conectează la „%s” ...
 DNS eșuat: FORMERR DNS eșuat: NOTAUTH DNS eșuat: NOTIMP DNS eșuat: NOTZONE DNS eșuat: NXDOMAIN DNS eșuat: NXRRSET DNS eșuat: REFUSED DNS eșuat: SERVFAIL DNS eșuat: YXDMAIN DNS eșuat: YXRRSET Conxiune serviciu eșuată Serviciul nu funcționează Desktop Deconectat, se reconectează...
 Domeniu Nume domeniu: Domeniu E Ifce Prot %-*s %-20s
 Domeniu E Ifce Prot
 Sub nume stabilit „%s”
 Adăugare adresă eșuată: %s
 Adăugare serviciu eșuată: %s
 Adăugare subtip „%s” eșuată: %s
 Conectarea la serverul Avahi a eșuat: %s A eșuat crearea rezolvatorului de adresă: %s
 Creare navigator a eșuat pentru %s: %s Crearea obiectului client a eșuat: %s
 Creare navigator domeniu a eșuat: %s Creare intrare grup eșuată: %s
 A eșuat crearea rezolvatorului de nume: %s
 A eșuat crearea resolver-ului pentru %s de tipul %s în domeniul %s: %s Creare obiect interogare eșuată.
 Prelucrare adresă „%s” eșuată
 Prelucrare număr port eșuată: %s
 Interogare nume gazdă eșuată: %s
 Interogare șir versiune eșuată: %s
 Încercare de citire domeniu Avahi eșuată: %s Înregistrare eșuată: %s
 Rezolvare adresă „%s” eșuată: %s
 Rezolvare nume calculator gazdă „%s” a eșuat: %s
 A eșuat rezolvarea serviciului „%s” de tipul „%s” din domeniul „%s”: %s
 Nume gazdă Conflict nume gazdă
 Numele gazdei a fost modificat în %s
 Se inițializează... Interfață: DNS TTL nevalid Clasă DNS nevalidă Cod returnat DNS nevalid Tip DNS nevalid Cod de eroare nevalid RDATA nevalid Adresă nevalidă Argument nevalid Configurație nevalidă Nume domeniu nevalid Marcaje nevalide Nume gazdă nevalid Index interfeță nevalid Numărul de parametri nu este valid. Se așteaptă unul singur.
 Operație nevalidă Pachet nevalid Număr port nevalid Protocol specificat nevalid Înregistrare nevalidă Cheie înregistrare nevalidă Nume serviciu nevalid Subtip serviciu nevalid Tip serviciu nevalid Este gol Coliziune nume local Locație Memorie epuizată Nume Coloziune de nume, se alege nume nou „%s”.
 Nici o comandă specificată.
 Nu este disponibil nici un protocol de rețea Nu a fost găsit Nu este permis Nu este suportat OK Eroare SO Operațiune eșuată Port Rezolvare serviciu Rezolvă serviciul pentru nume gazdă Rezolvă automat numele gazdei pentru serviciul selectat înainte de revenire Rezolvă automat serviciul selectat înainte de revenire Înregistrarea cheie resursă este model Versiune server: %s; Nume server: %s
 Nume serviciu Nume serviciu: Tip serviciu Tip serviciu: TXT Date TXT Date TXT: Terminal Numărul portului IP al serviciului rezolvat Datele TXT a serviciului rezolvat Familia adresei pentru rezolvarea numelui de gazdă Adresa serviciului rezolvat Domeniu pentru care să se descopere, sau NULL pentru domeniul implicit Numele de gazdă a serviciului rezolvat Obiectul trimis nu este valid Operația cerută nu este validă deoarece este redundantă Numele serviciului selectat Tipul serviciului pentru serviciul selectat Timp expirat Prea puțini parametrii
 Prea mulţi parametri
 Prea mulți clienți Prea multe intrări Prea multe obiecte Tip Versiunea nu corespunde Se așteaptă pentru serviciu...
 _Domeniu... avahi_domain_browser_new() a eșuat: %s
 avahi_service_browser_new() a eșuat: %s
 avahi_service_type_browser_new() a eșuat: %s
 gol execlp() a eșuat: %s
 n/a service_browser a eșuat: %s
 service_type_browser a eșuat: %s
 