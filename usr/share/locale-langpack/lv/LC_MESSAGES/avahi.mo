��    �      D  �   l
      �  �  �  h   �  �   �  i  �  b  U  �   �     R     a  %   t  5   �     �     �     �     �     �          '     @     W      p     �     �  	   �     �  6   �  '     '   C  "   k  4   �  *   �  .   �       
   )     4     B     T     h     z     �     �     �     �     �               -     B     X     n     �     �     �     �     �     �     �     
          ;     V     q  %   �  &   �  #   �  #     #   &  !   J  (   l  <   �  %   �     �           7  #   V     z     �  #   �  %   �  ?   �  	   <     F  %   Z     �  
   �     �     �     �     �     �     �               (     >     R     `     r  4   �     �     �     �     �           "      5      J      b      w      �      �      �      �   '   �      �   &   �   	   !     $!     2!     @!     C!     L!     ]!     b!     r!  L   �!  ;   �!     "  "   4"     W"     d"     r"     "     �"     �"  	   �"     �"  *   �"  $   �"  +   �"  #   )#  7   M#  %   �#  "   �#  4   �#  (   $  (   ,$     U$     e$     x$     �$     �$     �$     �$     �$     �$  
   �$  &   �$  '   %  ,   G%     t%     z%     �%     �%      �%  �  �%  �  ~'  j   G*  
  �*  �  �+    L-  �   �/     �0     �0  /   �0  ;   �0     1     #1     *1     81     @1     R1     n1     �1     �1  #   �1     �1     �1     2     *2  =   C2  +   �2  +   �2  *   �2  9   3  &   >3  .   e3     �3  	   �3     �3     �3     �3     �3     
4     &4     >4     S4     h4     |4     �4     �4     �4     �4     �4     �4  !   5     45  
   G5  "   R5     u5     }5     �5     �5     �5      �5  !   6  )   #6  +   M6  *   y6  $   �6  (   �6  )   �6  '   7  3   D7  9   x7  2   �7     �7  $   8  (   *8  '   S8  %   {8     �8  "   �8  ,   �8  >   9     L9     ^9  0   z9     �9  	   �9     �9     �9     �9     	:     :     4:     D:     U:     i:     �:     �:     �:     �:  8   �:     ;     2;     C;  "   Z;     };     �;     �;     �;     �;  	   �;     <     !<     '<  	   8<  8   B<     {<  (   �<     �<     �<     �<     �<  
   �<     �<     
=     =     =  K   ?=  9   �=  %   �=  *   �=     >     (>     ;>     H>     V>     Z>  	   c>     m>  %   y>     �>  (   �>     �>  :   �>  "   5?     X?  .   u?     �?  #   �?     �?     �?     @     -@     C@     Z@     p@     u@     �@     �@  *   �@  +   �@  0   A     4A     ;A     TA     XA  $   xA     I   �   2   �   -   q                                  x      �       �   �   Z   R   �       b   +   ?   �   k   (   �   �   N       G      �       �   �       �          �   p          n         1   �           )   .       &       �      �   �             #   X   a       �   �       J   6   c   ~   z   }   W   y           �   �   =   U       g   j          B           _       �          ;   Q      /       5       [       i      �       '       �   �   
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
Report-Msgid-Bugs-To: FULL NAME <EMAIL@ADDRESS>
POT-Creation-Date: 2015-12-03 14:10+0000
PO-Revision-Date: 2015-12-04 01:33+0000
Last-Translator: Launchpad Translations Administrators <Unknown>
Language-Team: Latvian <lv@li.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-Launchpad-Export-Date: 2016-06-27 17:41+0000
X-Generator: Launchpad (build 18115)
     -h --help            Rādīt šo palīdzību
    -V --version         Rādīt versiju
    -D --browse-domains  Pārlūkot pārlūkojamos domēnus, nevis servisus
    -a --all             Rādīt visus servisus, neskatoties uz tipiem
    -d --domain=DOMĒNS   Domēns, kurā pārlūkot
    -v --verbose         Aktivēt detalizētu režīmu
    -t --terminate       Apturēt pēc daudz maz pilnīga saraksta izmešanas
    -c --cache           Apturēt pēc visu ierakstu izmešanas no keša
    -l --ignore-local    Ignorēt lokālos servisus
    -r --resolve         Atrastie meklēšanas servisi
    -f --no-fail         Neavarēt, ja nav atrasts dēmons
    -p --parsable        Izvade parsējamā formā
     -k --no-db-lookup    Neuzmeklēt servisu tipus
    -b --dump-db         Izmest servisu tipu datubāzi
 %s [opcijas]

    -h --help            Rādīt šo palīdzību
    -s --ssh             Pārlūkot SSH serverus
    -v --vnc             Pārlūkot VNC serverus
    -S --shell           Pārlūkot gan SSH, gan VNC
    -d --domain=DOMĒNS   Domēns, kurā pārlūkot
 %s [opcijas] %s <datora nosaukums...>
%s [opcijas] %s <adrese ... >

    -h --help            Rādīt šo palīdzību
    -V --version         Rādīt versiju
    -n --name            Atrast datora nosaukumu
    -a --address         Atrast adresi
    -v --verbose         Aktivēt detalizēto režīmi
    -6                   Uzmeklēt IPv6 adreses
    -4                   Uzmeklēt IPv4 adreses
 %s [opcijas] %s <nosaukums> <tips> <ports> [<txt ...>]
%s [opcijas] %s <datora-nosaukums> <adrese>

    -h --help            Rādīt šo palīdzību
    -V --version         Rādīt versiju
    -s --service         Publicēt servisu
    -a --address         Publicēt adresi
    -v --verbose         Aktivēt detalizēto režīmu
    -d --domain=DOMĒNS   Domēns, kurā publicēt servisu
    -H --host=DOMĒNS     Kur atrodas serviss
       --subtype=APAKŠTIPS Papildu apakštips, ar ko reģistrēt šo servisu
    -R --no-reverse      Nepublicēt apgriezto ierakstu ar adresi
    -f --no-fail         Neavarēt, ja dēmons nav pieejams
 %s [opcijas] <jauns datora nosaukums>

    -h --help            Rādīt šo palīdzību
    -V --version         Rādīt versiju
    -v --verbose         Aktivēt detalizēto režīmi
 : Pagaidām viss
 : Kešs izsmelts
 <i>Neviens serviss pašlaik nav izvēlēts.</i> Ar NULL pabeigts saraksts ar servisu veidiem, ko pārlūkot Pieeja liegta Adrese Adrešu saime Adrese: Avahi atklāšana Avahi SSH serveru pārlūks Avahi VNC serveru pārlūks Avahi Zeroconf pārlūks Avahi klienta kļūme: %s Avahi domēna pārlūka kļūme: %s Avahi atradēja kļūme: %s Slikts parametru saraksts
 Slikts stāvoklis Pārlūkot servisa tipus Pārlūkot Zeroconf pakalpojumus, kas pieejami šajā tīklā Pārlūkot Zeroconf aktivētus SSH serverus Pārlūkot Zeroconf aktivētus VNC serverus Pārlūka servisa tipu saraksts ir tukšs! Servisa tipa %s pārlūkošana domēnā %s neizdevās: %s Pārlūkot servisus domēnā<b>%s</b>: Pārlūkot servisus <b>lokālajā tīklā</b>: Pārlūko... Atcelts.
 Mainīt domēnu Izvēlieties SSH serveri Izvēlieties čaulas serveri Izvēlieties VNC serveri Klienta kļūme, iziet: %s
 Savienojas ar '%s' ...
 DNS kļūme: FORMERR DNS kļūme: NOTAUTH DNS kļūme: NOTIMP DNS kļūme: NOTZONE DNS kļūme: NXDOMAIN DNS kļūme: NXRRSET DNS kļūme: REFUSED DNS kļūme: SERVFAIL DNS kļūme: YXDOMAIN DNS kļūme: YXRRSET Neizdevās savienoties ar dēmonu Dēmons nedarbojas Darbvirsma Atvienojās, atkal savienojas ...
 Domēns Domēna nosaukums: E Ifce Prot %-*s %-20s domēns
 E Ifce Prot domēns
 Izveido ar nosaukumu '%s'
 Neizdevās pievienot adresi: %s
 Neizdevās pievienot servisu: %s
 Neizdevās pievienot apakštipu '%s': %s
 Neizdevās savienoties ar Avahi serveri: %s Neizdevās izveidot adrešu atradēju: %s
 Neizdevās izveidot %s pārlūku: %s Neizdevās izveidot klienta objektu: %s
 Neizdevās izveidot domēna pārlūku: %s Neizdevās izveidot ierakstu grupu: %s
 Neizdevās izveidot datoru nosaukumu atradēju: %s
 Neizdevās izveidot %s atradēju tipam %s domēnā %s: %s Neizdevās izveidot vienkāršu aptaujas objektu.
 Neizdevās parsēt adresi '%s'
 Neizdevās parsēt porta numuru: %s
 Neizdevās vaicāt datora nosaukumu: %s
 Neizdevās vaicāt versijas virkni: %s
 Neizdevās nolasīt Avahi domēnu: %s Neizdevās reģistrēt: %s
 Neizdevās atrast adresi '%s': %s
 Neizdevās atrast datora nosaukumu '%s': %s
 Neizdevās atrast servisu '%s' ar tipu '%s' domēnā '%s': %s
 Servera nosaukums Datoru nosaukumu konflikts
 Datora nosaukums ir veiksmīgi nomainīts uz %s
 Inicializē... Saskarne: Nederīgs DNS TTL Nederīga DNS klase Nederīgs DNS atgrieztais kods Nederīgs DNS tips Nederīgs kļūdas kods Nederīgs RDATA Nederīga adrese Nederīgs parametrs Nederīga konfigurācija Nederīgs domēna nosaukums Nederīgs karogs Nederīgs datora nosaukums Nederīgs saskarnes indekss Nederīgs parametru skaits, tiek gaidīts tieši viens.
 Nederīga darbība Nederīga pakete Nederīgs porta numurs Nederīga protokola specifikācija Nederīgs ieraksts Nederīga ieraksta atslēga Nederīgs servisa nosaukums Nederīgs servisa apakštips Nederīgs servisa veids Ir tukšs Lokālā vārda kolīzija Vieta Atmiņa izsmelta Nosaukums Nosaukumu kolīzija, izvēlieties jaunu nosaukumu '%s'.
 Nav norādīta komanda.
 Nav pieejams piemērots tīkla protokols Nav atrasts Nav atļauts Nav atbalstīts Labi OS kļūda Darbība neizdevās Ports Atrast servisu Atrast servisa datora nosaukumu Pirms atgriezties, atrast izvēlētā servisa datora nosaukumu automātiski Pirms atgriezties, atrast izvēlēto servisu automātiski Resursa ieraksta atslēga ir šablons Servera versija: %s; Datora nosaukums: %s
 Servisa nosaukums Servisa nosaukums: Servisa tips Servisa tips: TXT TXT dari TXT dati: Terminālis IP porta skaitlis atrastajam servisam Atrastā servisa TXT dati Adrešu saime datora nosaukuma atradumam Atrastā servisa adrese Domēns, kurā pārlūkot, vai NULL noklusētajam domēnam Atrastā servisa servera nosaukums Padotais objekts nav derīgs Pieprasītā darbība nav derīga, jo ir lieka Izvēlētā servisa nosaukums Servisa tips izvēlētajam servisam Tika sasniegta noildze Pārāk maz parametru
 Pārāk daudz parametru
 Pārāk daudz klientu Pārāk daudz ierakstu Pārāk daudz objektu Tips Versiju nesakritība Gaida uz dēmonu ...
 _Domēns... avahi_domain_browser_new() neizdevās: %s
 avahi_service_browser_new() neizdevās: %s
 avahi_service_type_browser_new() neizdevās: %s
 tukšs execlp() neizdevās: %s
 n/p service_browser neizdevās: %s
 service_type_browser neizdevās: %s
 