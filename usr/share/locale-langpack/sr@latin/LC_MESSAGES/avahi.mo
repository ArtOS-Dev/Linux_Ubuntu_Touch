��    �      �  �   �	      �  �  �  h   �  �   
  i  �  �   e     �       %   !  5   G     }     �     �  "   �     �     �     �                7     X     s  	   �     �  6   �  '   �  '   
  "   2  4   U  *   �  .   �     �  
   �     �     	          /     A     ^     v     �     �     �     �     �     �     	          5     J     c     v     ~     �     �     �     �     �          +  %   K  &   q  #   �  #   �  #   �  !     (   &  <   O  %   �     �      �     �  #        4     T  #   l  %   �  ?   �  	   �        %        :     J     Z     l     �     �     �     �     �     �     �               !  4   9     n     �     �     �     �     �     �     �          &     /     D     M     ^  '   c     �  &   �  	   �     �     �     �     �     �            "   0     S     `     m     v  *     $   �  +   �  #   �  7     %   W  "   }  4   �  (   �  (   �     '      7      J      ^      o      �      �      �      �   
   �   &   �   '   �   ,   !     F!     [!     _!      {!  �  �!  �  R#  r   J&    �&  �  �'  �   ])     *     %*  -   :*  5   h*     �*     �*     �*  /   �*     �*     +     (+     H+     e+  $   }+     �+     �+     �+     �+  6   �+  8   0,  8   i,  *   �,  =   �,  -   -  4   9-     n-  
   ~-     �-     �-  %   �-     �-     �-     .     !.     3.     E.     V.     h.     {.     �.     �.     �.     �.  '   �.     �.     /  #   //     S/     Y/     v/  "   �/      �/      �/  +   �/  *   0  /   D0  .   t0  +   �0  /   �0  '   �0  9   '1  B   a1  2   �1  ,   �1  /   2  7   42  4   l2  $   �2     �2  -   �2  7   3  N   I3     �3     �3  (   �3     �3     �3     	4  "   %4     H4     d4     {4     �4     �4     �4     �4     �4     5      5  4   95     n5     �5     �5  "   �5     �5     �5     �5     6     .6     F6     M6     c6     i6     }6  *   �6     �6  ,   �6     �6     7     7     #7     *7     F7     [7      `7  *   �7     �7     �7  
   �7     �7     �7     �7  1   8     I8  5   b8  !   �8      �8  3   �8     9     %9     ;9     O9     h9     }9     �9     �9     �9     �9     �9  	   �9  3   �9  4   ):  9   ^:  !   �:  	   �:  (   �:  -   �:                 $                      M   C   E                 �           :   ~   6   |   9      �   �      m                      K       W   }   k   [   �      �   "   X       =   p   -   I   t      �   2   V       F   �   \   �   	   �           #       b   J          /   e   i   �   H   c       1   _         5   g             T   ?   ^          y      @   l   {              +   <   �       '   A   
   *   q          a               �   .   �   f   L   U       0          n   G   v   �   �   (                 �       w   )           4       o       7       B   !   �          ;   &   Y               �   u       S           �   8      %   s   �   R   d   Q   N       >   j           �   x   ,   z          �       ]      �   O      D      �   Z   r   `   P               �   �   h              3              -h --help            Show this help
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
 %s [options] <new host name>

    -h --help            Show this help
    -V --version         Show version
    -v --verbose         Enable verbose mode
 : All for now
 : Cache exhausted
 <i>No service currently selected.</i> A NULL terminated list of service types to browse for Access denied Address Address family An unexpected D-Bus error occurred Avahi Discovery Avahi SSH Server Browser Avahi VNC Server Browser Avahi Zeroconf Browser Avahi client failure: %s Avahi domain browser failure: %s Avahi resolver failure: %s Bad number of arguments
 Bad state Browse Service Types Browse for Zeroconf services available on your network Browse for Zeroconf-enabled SSH Servers Browse for Zeroconf-enabled VNC Servers Browse service type list is empty! Browsing for service type %s in domain %s failed: %s Browsing for services in domain <b>%s</b>: Browsing for services on <b>local network</b>: Browsing... Canceled.
 Change domain Choose SSH server Choose Shell Server Choose VNC server Client failure, exiting: %s
 Connecting to '%s' ...
 DNS failure: FORMERR DNS failure: NOTAUTH DNS failure: NOTIMP DNS failure: NOTZONE DNS failure: NXDOMAIN DNS failure: NXRRSET DNS failure: REFUSED DNS failure: SERVFAIL DNS failure: YXDOMAIN DNS failure: YXRRSET Daemon connection failed Daemon not running Desktop Disconnected, reconnecting ...
 Domain E Ifce Prot %-*s %-20s Domain
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
 Initializing... Invalid DNS TTL Invalid DNS class Invalid DNS return code Invalid DNS type Invalid Error Code Invalid RDATA Invalid address Invalid argument Invalid configuration Invalid domain name Invalid flags Invalid host name Invalid interface index Invalid number of arguments, expecting exactly one.
 Invalid operation Invalid packet Invalid port number Invalid protocol specification Invalid record Invalid record key Invalid service name Invalid service subtype Invalid service type Is empty Local name collision Location Memory exhausted Name Name collision, picking new name '%s'.
 No command specified.
 No suitable network protocol available Not found Not permitted Not supported OK OS Error Operation failed Port Resource record key is pattern Server version: %s; Host name: %s
 Service Name Service Type TXT Data Terminal The IP port number of the resolved service The TXT data of the resolved service The address family for host name resolution The address of the resolved service The domain to browse in, or NULL for the default domain The host name of the resolved service The object passed in was not valid The requested operation is invalid because redundant The service name of the selected service The service type of the selected service Timeout reached Too few arguments
 Too many arguments
 Too many clients Too many entries Too many objects Type Version mismatch Waiting for daemon ...
 _Domain... avahi_domain_browser_new() failed: %s
 avahi_service_browser_new() failed: %s
 avahi_service_type_browser_new() failed: %s
 execlp() failed: %s
 n/a service_browser failed: %s
 service_type_browser failed: %s
 Project-Id-Version: avahi
Report-Msgid-Bugs-To: 
POT-Creation-Date: 2015-12-03 14:10+0000
PO-Revision-Date: 2015-12-04 01:33+0000
Last-Translator: Launchpad Translations Administrators <Unknown>
Language-Team: Serbian (sr) <fedora-trans-sr@redhat.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-Launchpad-Export-Date: 2016-06-27 17:41+0000
X-Generator: Launchpad (build 18115)
Language: 
     -h --help             Prikaži ovu pomoć
    -V --version          Prikaži verziju
    -D --browse-domains   Pretraži domene koji se mogu pretraživati umesto usluga
    -a --all              Prikaži sve usluge, bez obzira na vrstu
    -d --domain=DOMEN     Domen za pretraživanje
    -v --verbose          Uključi režim opširnog ispisa
    -t --terminate        Prekini posle izbacivanja više ili manje završene liste
    -c --cache            Prekini posle izbacivanja svih zapisa iz keša
    -l --ignore-local     Ignoriši lokalne usluge
    -r --resolve          Razreši pronađene usluge
    -f --no-fail          Nemoj da otkažeš ako sistemska usluga nije dostupna
    -p --parsable         Izlaz u formatu koji se može raščlaniti
     -k --no-db-lookup     Nemoj tražiti vrste usluge
    -b --dump-db          Izbaci bazu podataka vrste usluge
 %s [opcije]

    -h --help             Prikaži ovu pomoć
    -s --ssh              Pretraži SSH servere
    -v --vnc              Pretraži VNC servere
    -S --shell            Pretraži i SSH i VNC
    -d --domain=DOMEN     Domen u kome će se vršiti pretraživanje
 %s [opcije] %s <naziv domaćina ...>
%s [opcije] %s <adresa ... >

    -h --help             Prikaži ovu pomoć
    -V --version          Prikaži verziju
    -n --name             Razreši naziv domaćina
    -a --address          Razreši adresu
    -v --verbose          Uključi režim opširnog ispisa
    -6                    Traži IPv6 adresu
    -4                    Traži IPv4 adresu
 %s [opcije] <novi naziv domaćina>

    -h --help             Prikaži ovu pomoć
    -V --version          Prikaži verziju
    -v --verbose          Uključi režim opširnog ispisa
 : za sada sve
 : keš je prepunjen
 <i>Nijedna usluga trenutno nije izabrana.</i> Spisak vrsta usluga za pregledanje ograničen sa NULL Zabranjen pristup Adresa Porodica adresa Desila se neočekivana greška u D-Bus softveru Avahi otkrivanje Pretraživač Avahi SSH servera Pretraživač Avahi VNC servera Avahi Zeroconf pretraživač Kvar Avahi klijenta: %s Kvar Avahi pretraživača domena: %s Kvar Avahi razrešivača: %s Loš broj argumenata
 Loše stanje Pregledaj vrste usluga Pretražujem dostupne Zeroconf usluge na vašoj mreži Pretražujem SSH servere na kojima je omogućen Zeroconf Pretražujem VNC servere na kojima je omogućen Zeroconf Spisak vrsta servisa za pregled je prazan! Pretraživanje za vrstom usluge %s u domenu %s neuspešno: %s Pretraživanje za uslugom u domenu <b>%s</b>: Pretraživanje za uslugom na <b>lokalnoj mreži</b>: Pretražujem... Otkazano.
 Promeni domen Izaberite SSH server Izaberite server komandnog okruženja Izaberite VNC server Kvar klijenta, izlazim: %s
 Povezujem se na „%s“ ...
 DNS kvar: FORMERR DNS kvar: NOTAUTH DNS kvar: NOTIMP DNS kvar: NOTZONE DNS kvar: NXDOMAIN DNS kvar: NXRRSET DNS kvar: REFUSED DNS kvar: SERVFAIL DNS kvar: YXDOMAIN DNS kvar: YXRRSET Povezivanje sistemske usluge neuspešno Sistemska usluga se ne pokreće Radna površina Nepovezan, ponovno povezivanje ...
 Domen D Spr Prot %-*s %-20s Domen
 D Spr Prot Domen
 Uspostavljeno pod imenom „%s“
 Neuspešno dodavanje adrese: %s
 Neuspešno dodavanje usluge: %s
 Neuspešno dodavanje podvrste „%s“: %s
 Neuspešno povezivanje na Avahi server: %s Neuspešno pravljenje razrešivača adrese: %s
 Neuspešno pravljenje pretraživača za %s: %s Neuspešno pravljenje objekta klijenta: %s
 Neuspešno pravljenje pretraživača domena: %s Neuspešno pravljenje zapisa grupe: %s
 Neuspešno pravljenje razrešivača naziva domaćina: %s
 Neuspešno pravljenje razrešivača za %s vrste %s u domenu %s: %s Neuspešno pravljenje objekta jednostavne ankete.
 Neuspešno raščlanjivanje adrese „%s“
 Neuspešno razrešavanje broja priključka: %s
 Neuspešno izvršavanje upita za nazivom domaćina: %s
 Neuspešno izvršavanje upita za niskom verzije: %s
 Neuspešno čitanje Avahi domena: %s Neuspešna registracija: %s
 Neuspešno razrešavanje adrese „%s“: %s
 Neuspešno razrešavanje naziva domaćina „%s“: %s
 Neuspešno rezrešavanje usluge „%s“ vrste „%s“ u domenu „%s“: %s
 Naziv domaćina Sukob naziva domaćina
 Naziv domaćina uspešno promenjen u %s
 Pokrećem... Neispravan DNS TTL Neispravna klasa DNS usluge Neispravan povratni kod DNS usluge Neispravna vrsta DNS usluge Neispravan kod greške Neispravna RDATA vrsta podataka Netačna adresa Neispravan argument Neispravno podešavanje Neispravan naziv domena Neispravni indikatori Neispravan naziv domaćina Neispravan indeks sprege Neispravan broj argumenata, očekujem tačno jedan.
 Netačna operacija Neispravan paket Neispravan broj priključka Neispravna specifikacija protokola Neispravan zapis Neispravan ključ zapisa Neispravan naziv usluge Neispravna podvrsta usluga Neispravna vrsta usluge Prazno Sukob lokalnih naziva Mesto Memorija prepunjena Naziv Sukob naziva, uzimam novi naziv „%s“.
 Komanda nije određena.
 Odgovarajući mrežni protokol nije dostupan Nije pronađeno Nije dozvoljeno Nije podržano U redu Greška operativnog sistema Operacija neuspešna Port Ključ zapisa resursa je šablon Verzija servera : %s; naziv domaćina: %s
 Naziv usluge Vrsta usluge TXT podaci Terminal Broj IP porta razrešene usluge TXT podaci razrešene usluge Porodica adresa za razrešavanje naziva domaćina Adresa razrešene usluge Domen za pregledanje, ili NULL za podrazumevani domen Naziv domaćina razrešene usluge Prenos objekta nije bio ispravan Tražena operacija je neispravna jer je redundantna Naziv izabrane usluge Vrsta izabrane usluge Pauza je dostignuta Suviše malo argumenata
 Previše argumenata
 Previše klijenata Previše zapisa Previše objekata Vrsta Neslaganje verzije Čekam na sistemsku uslugu ...
 _Domen... Neuspešna funkcija avahi_domain_browser_new(): %s
 Neuspešna funkcija avahi_service_browser_new(): %s
 Neuspešna funkcija avahi_service_type_browser_new(): %s
 Funkcija execlp() neuspešna: %s
 nepoznato Neuspešna funkcija service_browser: %s
 Neuspešna funkcija service_type_browser: %s
 