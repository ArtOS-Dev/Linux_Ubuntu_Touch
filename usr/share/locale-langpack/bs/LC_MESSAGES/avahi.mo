��    �      D  �   l
      �  �  �  h   �  �   �  i  �  b  U  �   �     R     a  %   t  5   �     �     �     �     �     �          '     @     W      p     �     �  	   �     �  6   �  '     '   C  "   k  4   �  *   �  .   �       
   )     4     B     T     h     z     �     �     �     �     �               -     B     X     n     �     �     �     �     �     �     �     
          ;     V     q  %   �  &   �  #   �  #     #   &  !   J  (   l  <   �  %   �     �           7  #   V     z     �  #   �  %   �  ?   �  	   <     F  %   Z     �  
   �     �     �     �     �     �     �               (     >     R     `     r  4   �     �     �     �     �           "      5      J      b      w      �      �      �      �   '   �      �   &   �   	   !     $!     2!     @!     C!     L!     ]!     b!     r!  L   �!  ;   �!     "  "   4"     W"     d"     r"     "     �"     �"  	   �"     �"  *   �"  $   �"  +   �"  #   )#  7   M#  %   �#  "   �#  4   �#  (   $  (   ,$     U$     e$     x$     �$     �$     �$     �$     �$     �$  
   �$  &   �$  '   %  ,   G%     t%     z%     �%     �%      �%  �  �%  �  j'  s   Z*    �*  �  �+  W  �-  �   �/     �0     �0  &   �0  3   �0     1     (1     /1     ?1     G1     X1     x1     �1     �1  (   �1     �1     2     .2     ;2  1   R2  7   �2  7   �2  *   �2  ?   3  .   _3  5   �3     �3  
   �3     �3     �3     4     4     34     S4     q4     �4     �4     �4     �4     �4     �4     �4     5     5     '5     G5     Y5  ,   i5     �5     �5     �5     �5  "   �5      �5      6  +   >6  .   j6  .   �6  /   �6  -   �6  0   &7  )   W7  8   �7  A   �7  4   �7  +   18  (   ]8  ,   �8  /   �8  (   �8     9  ,   ,9  5   Y9  M   �9     �9     �9  .   :     4:  
   A:     L:     _:     v:     �:     �:     �:     �:     �:     �:     ;     &;     ;;     V;  6   s;     �;     �;     �;  "   �;     	<     <     3<     K<     f<     |<     �<     �<     �<     �<  *   �<     �<  ,   =     0=     @=     P=     _=     f=     �=     �=     �=      �=  D   �=  5   >      S>  *   t>     �>     �>     �>     �>     �>  
   �>     �>     �>     �>     ?  /   .?     ^?  7   t?     �?  %   �?  3   �?     %@     ;@     Q@     d@     x@     �@     �@     �@     �@     �@     �@  	   �@  *   �@  +   )A  0   UA     �A     �A     �A     �A  $   �A     I   �   2   �   -   q                                  x      �       �   �   Z   R   �       b   +   ?   �   k   (   �   �   N       G      �       �   �       �          �   p          n         1   �           )   .       &       �      �   �             #   X   a       �   �       J   6   c   ~   z   }   W   y           �   �   =   U       g   j          B           _       �          ;   Q      /       5       [       i      �       '       �   �   
   r   A      |       $       �           9   �   v   e             %   {      K       Y   ]   >   S   T   d       7      O   0   L   u   t       h   �   F   m            �       �   w           8   <   \          ^   �      E           ,       V   �          o   	          "   3      C       *       �          s   �   �   P   4       M      �   !   D   l   �           :   H           @   `   f        -h --help            Show this help
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
 Project-Id-Version: avahi
Report-Msgid-Bugs-To: 
POT-Creation-Date: 2015-12-03 14:10+0000
PO-Revision-Date: 2015-12-04 01:33+0000
Last-Translator: Launchpad Translations Administrators <Unknown>
Language-Team: Bosnian (sr) <bs@li.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-Launchpad-Export-Date: 2016-06-27 17:41+0000
X-Generator: Launchpad (build 18115)
     -h --help             Prikazuje ovu pomoć
    -V --version          Prikazuje verziju
    -D --browse-domains   Pretrazuje domene koji se mogu pretraživati umjesto usluga
    -a --all              Prikazuje sve usluge, bez obzira na vrstu
    -d --domain=DOMAIN    Domen u kome izvršiti pretraživanje
    -v --verbose          Omogućava režim opširnog ispisivanja
    -t --terminate        Prekida nakon izbacivanja manje-više završene liste
    -c --cache            Prekida nakon izbacivanja svih stavki iz keša
    -l --ignore-local     Ignoriše lokalne usluge
    -r --resolve          Rješava pronađene usluge
    -f --no-fail          Ne otkazuje ako demon nije dostupan
    -p --parsable         Izlaz u raščlanjivom formatu
     -k --no-db-lookup     Ne potražuje vrste usluge
    -b --dump-db          Izbacuje bazu podataka vrste usluge
 %s [opcije]

    -h --help             Prikazuje ovu pomoć
    -s --ssh              Pretražuje SSH servere
    -v --vnc              Pretražuje VNC servere
    -S --shell            Pretražuje i SSH i VNC
    -d --domain=DOMAIN    Domen u kome će se vršiti pretraživanje
 %s [opcije] %s <naziv domaćina ...>
%s [opcije] %s <adresa ... >

    -h --help             Prikazuje ovu pomoć
    -V --version          Prikazuje verziju
    -n --name             Rješava naziv domaćina
    -a --address          Rješava adresu
    -v --verbose          Omogućava režim opširnog ispisa
    -6                    Potražuje IPv6 adresu
    -4                    Potražuje IPv4 adresu
 %s [options] %s <name> <type> <port> [<txt ...>]
%s [options] %s <host-name> <address>

    -h --help            Prikaži pomoć
    -V --version         Prikaži verziju
    -s --service         Objavi servis
    -a --address         Objavi adresu
    -v --verbose         Omogući detaljni režim
    -d --domain=DOMAIN   Domena u kojoj se objavljuje servis
    -H --host=DOMAIN     Host gdje se servis nalazi
       --subtype=SUBTYPE Dodatni podtip s kojim se servis registruje
    -R --no-reverse      Ne objavljuj obrnute stavke s adresom
    -f --no-fail         Nemoj pasti ako demon ne radi
 %s [opcije] <novi naziv domaćina>

    -h --help             Prikazuje ovu pomoć
    -V --version          Prikazuje verziju
    -v --verbose          Omogućava režim opširnog ispisa
 : za sada sve
 : keš je prepunjen
 <i>Nema trenutno izabranih usluga.</i> NULL-om završena lista vrsta usluga za pregledanje Pristup je odbijen Adresa Porodica adresa Adresa: Avahi otkrivanje Pretraživač Avahi SSH servera Pretraživač Avahi VNC servera Avahi Zerokonf pretraživač Neuspjeh Avahi klijenta: %s Neuspjeh Avahi pretraživača domena: %s Neuspjeh Avahi rešavača: %s Loš broj argumenata
 Loše stanje Pregledaj vrste usluga Tražim dostupne Zerokonf usluge na vašoj mreži Pretražuje SSH servere na kojima je omogućen Zerokonf Pretražuje VNC servere na kojima je omogućen Zerokonf Spisak vrsta servisa za pregled je prazan! Pretraživanje za vrstom usluge %s u domenu %s nije uspjelo: %s Pretraživanje za uslugama u domenu <b>%s</b>: Pretraživanje za uslugama na <b>lokalnoj mreži</b>: Pretražujem... Otkazano.
 Promijeni domen Izaberite SSH server Izaberite konzolni server Izaberite VNC server Neuspjeh klijenta, izlazim: %s
 Povezujem se na „%s“ ...
 DNS kvar: FORMERR DNS kvar: NOTAUTH DNS kvar: NOTIMP DNS kvar: NOTZONE DNS kvar: NXDOMAIN DNS kvar: NXRRSET DNS kvar: REFUSED DNS kvar: SERVFAIL DNS kvar: YXDOMAIN DNS kvar: YXRRSET Povezivanje demona nije uspjelo Demon nije u radu Radna površina Veza je prekinuta, ponovno se povezujem ...
 Domen Ime domene: D Infs Prot %-*s %-20s Domen
 D Infs Prot Domen
 Uspostavljeno pod imenom „%s“
 Nisam uspio da dodam adresu: %s
 Nisam uspio da dodam uslugu: %s
 Nisam uspio da dodam podvrstu „%s“: %s
 Nisam uspio da se povežem na Avahi server: %s Nisam uspio da napravim rešavača adrese: %s
 Nisam uspio da napravim pretraživač za %s: %s Nisam uspio da napravim objekat klijenta: %s
 Nisam uspio da napravim pretraživač domena: %s Nisam uspio da napravim ulaznu grupu: %s
 Nisam uspio da napravim rešavača naziva domaćina: %s
 Nisam uspio da napravim rešavača za %s vrste %s u domenu %s: %s Nisam uspio da napravim objekat jednostavne ankete.
 Nisam uspio da raščlanim adresu „%s“
 Nisam uspio da riješim broja porta: %s
 Nisam uspio da propitam naziv domaćina: %s
 Nisam uspio da propitam redoslijed verzije: %s
 Nisam uspio da pročitam Avahi domen: %s Nisam uspio da registrujem: %s
 Nisam uspio da riješim adresu „%s“: %s
 Nisam uspio da riješim naziv domaćina „%s“: %s
 Nisam uspio da riješim uslugu „%s“ vrste „%s“ u domenu „%s“: %s
 Naziv domaćina Sukob naziva domaćina
 Naziv domaćina je uspješno promijenjen u %s
 Pokrećem... Interfejs: Nevažeći DNS TTL Nevažeća klasa DNS-a Nevažeći DNS povratni kod Nevažeći tip DNS-a Nevažeći kôd greške Nevažeći RDATA Nevažeća adresa Nevažeći argument Nevažeće podešavanje Nevažeći naziv domena Nevažeće zastavice Nevažeći naziv domaćina Nevažeći indeks interfejsa Nevažeći broj argumenata, očekujući tačno jedan.
 Nevažeća operacija Nevažeći paket Nevažeći broj porta Nevažeća specifikacija protokola Nevažeći zapis Nevažeći ključ zapisa Nevažeći naziv usluge Nevažeća podvrsta usluga Nevažeći tip usluge Prazno Sukob lokalnih naziva Lokacija Memorija je iscrpljena Naziv Sukob naziva, uzimam novi naziv „%s“.
 Komanda nije određena.
 Odgovarajući mrežni protokol nije dostupan Nije pronađeno Nije dozvoljeno Nije podržano U redu Greška operativnog sistema Operacija nije uspjela Port Servis za razrješavanje Razriješi ime računara servisa Razriješi ime računara odabranog servisa automatski prije povratka Razriješi odabrane servise automatski prije povratka Ključ zapisa resursa je šablon Verzija servera : %s; naziv domaćina: %s
 Naziv usluge Ime servisa: Vrsta usluge Tip servisa: TXT TXT podaci TXT podaci: Terminal Broj IP porta rešene usluge TXT podaci rešene usluge Porodica adresa za rješavanje naziva domaćina Adresa rešene usluge Domen za pregledanje, ili NULL za podrazumijevani domen Naziv domaćina rešene usluge Propušteni objekat nije bio važeći Zahtijevana operacija je nevažeća jer je suvišna Naziv izabrane usluge Vrsta izabrane usluge Vrijeme je isteklo Premalo argumenata
 Previše argumenata
 Previše klijenata Previše stavki Previše objekata Vrsta Nepodudaranje verzije Čekam na demona ...
 _Domen... avahi_domain_browser_new() nije uspio: %s
 avahi_service_browser_new() nije uspio: %s
 avahi_service_type_browser_new() nije uspio: %s
 prazno execlp() nije uspjela: %s
 n/d service_browser nije uspio: %s
 service_type_browser nije uspio: %s
 