��    �      D  �   l
      �  �  �  h   �  �   �  i  �  b  U  �   �     R     a  %   t  5   �     �     �     �     �     �          '     @     W      p     �     �  	   �     �  6   �  '     '   C  "   k  4   �  *   �  .   �       
   )     4     B     T     h     z     �     �     �     �     �               -     B     X     n     �     �     �     �     �     �     �     
          ;     V     q  %   �  &   �  #   �  #     #   &  !   J  (   l  <   �  %   �     �           7  #   V     z     �  #   �  %   �  ?   �  	   <     F  %   Z     �  
   �     �     �     �     �     �     �               (     >     R     `     r  4   �     �     �     �     �           "      5      J      b      w      �      �      �      �   '   �      �   &   �   	   !     $!     2!     @!     C!     L!     ]!     b!     r!  L   �!  ;   �!     "  "   4"     W"     d"     r"     "     �"     �"  	   �"     �"  *   �"  $   �"  +   �"  #   )#  7   M#  %   �#  "   �#  4   �#  (   $  (   ,$     U$     e$     x$     �$     �$     �$     �$     �$     �$  
   �$  &   �$  '   %  ,   G%     t%     z%     �%     �%      �%  �  �%  �  �'  }   s*    �*  E  ,  �  I-  �    0     �0     �0  .   �0  A   1     E1  
   U1     `1     w1     �1  !   �1  !   �1     �1     2  ,   $2     Q2  !   p2     �2     �2  5   �2  2   �2  1   ,3  +   ^3  D   �3  /   �3  /   �3     /4     >4     K4     ^4  0   x4     �4     �4     �4     �4     5     (5     =5     S5     j5     �5     �5     �5     �5     �5      �5  
   6  &   &6     M6     U6     g6     �6     �6  #   �6  !   �6  (   �6  *   '7  .   R7  &   �7  "   �7  ,   �7  *   �7  1   #8  ?   U8  +   �8      �8  '   �8  *   
9  -   59  %   c9     �9  +   �9  0   �9  L   �9     K:     ]:  -   z:     �:  
   �:     �:     �:  %   �:     ;     4;     Q;     c;     z;     �;     �;     �;     �;     �;  >   <     [<     r<     �<  (   �<     �<  #   �<     =      $=     E=  	   c=     m=     �=     �=     �=  /   �=     �=  6   �=     />     <>     J>     W>     _>     k>     �>     �>  &   �>  `   �>  N   !?  -   p?  /   �?     �?     �?     �?     @     @  	   @  
   &@     1@  .   :@  #   i@  <   �@  #   �@  9   �@  &   (A     OA  <   oA  *   �A  +   �A  #   B     'B     =B     QB     aB     sB     �B     �B     �B     �B  &   �B  '   �B  ,   C     HC     OC     dC     hC      �C     I   �   2   �   -   q                                  x      �       �   �   Z   R   �       b   +   ?   �   k   (   �   �   N       G      �       �   �       �          �   p          n         1   �           )   .       &       �      �   �             #   X   a       �   �       J   6   c   ~   z   }   W   y           �   �   =   U       g   j          B           _       �          ;   Q      /       5       [       i      �       '       �   �   
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
Language-Team: Asturian <alministradores@softastur.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-Launchpad-Export-Date: 2016-06-27 17:41+0000
X-Generator: Launchpad (build 18115)
     -h --help            Amuesa esta aida\n
    -V --version         Amuesa la versión\n
    -D --browse-domains Gueta dominios de gueta en llugar de servicios\n
    -a --all             Amuesa tolos servicios, independientemente de la triba.\n
    -d --domain=DOMAIN    El nome del dominiu en\n
    -v --verbose         Activa'l mou detalláu\n
    -t --terminate       Finar al amosar una llista más o menos completa\n
    -c --cache           Finar dempués d'amosar toles entraes de la cache\n
    -l --ignore-llocal    Ignorar servicios llocales\n
    -r --resolve         Resolver servicios atopaos\n
    -f --nun-fail         Nun fallar si'l degorriu nun tá disponible\n
    -p --parsable        Salida en formatu parsable\n
     -k --nun-db-lookup Nun gueta les tribes de servicios\n
    -b --dump-db Amuesa la base de datos de tribes de servicios\n
 %s [opciones]

    -h --help            Amosar esta aida
    -s --ssh             Inspeccionar sirvidores SSH
    -v --vnc             Inspeccionar sirvidores VNC
    -S --shell           Inspeccionar sirvidores SSH y VNC
    -d --domain=DOMINIU  El dominiu a inspeccionar
 %s [opciones] %s <nome del anfitrión ...>
%s [options] %s <direición ...>

    -h --help Amuesa esta aida
    -V --version Amuesa la versión
    -n --name Resuelve'l nome del anfitrión
    -a --address Resuelve la direición
    -v --vervose Activa'l mou verbosu
    -6 Gueta direición IPv6
    -4 Gueta direición IPv4
 %s [opciones] %s <nome> <triba> <puertu> [<txt …>]
%s [opciones] %s <nome-del-equipu> <direición>

    -h --help            Amosar esta aida
    -V --version         Amosar la versión
    -s --service         Asoleyar el serviciu
    -a --address         Asoleyar la direición
    -v --verbose         Activar el mou detalláu
    -d --domain=DOMINIO  Dominiu nel qu'asoleyar el serviciu
    -H --host=DOMINIO    Equipu nel que s'allusga'l serviciu
       --subtype=SUBTIPO  Una subtriba adicional cola que rexistrar esti serviciu
    -R --no-reverse      Nun asoleyar entrada de reversu con esta direición
    -f --no-fail         Nun fallar en casu de que'l degorriu nun tea disponible
 %s [opciones] <nuevu nome d'anfitrión>

    -h --help            Amuesa esta aida
    -V --version         Amuesa la versión
    -v --verbose         Activa'l mou detalláu
 : Too per agora
 : Caché escosada
 <i>Nun hai un serviciu anguaño esbilláu.</i> Una llista terminada en NULL coles tribes de servicios a restolar Accesu denegáu Direición Familia de direiciones Direición de corréu-e: Descubrimientu d'Avahi Restolador del sirvidor SSH Avahi Restolador del sirvidor VNC Avahi Restolador Zeroconf d'Avahi Fallu del veceru d'Avahi: %s Fallu d'esploración de dominios d'Avahi: %s Fallu del resolver d'Avahi: %s Númberu d'argumentos incorreutu
 Estáu incorreutu Tribes de Servicios a restolar Esplora los servicios Zeroconf disponibles na so rede Restolador pa sirvidores SSH con Zeroconf activáu Restolar por sirvidores VNC con zeroconf activáu ¡La llista de Tribes de Servicios ta erma! Falló la esploración de la triba de serviciu %s nel dominiu %s: %s Esplorando los servicios nel dominiu <b>%s</b>: Esplorando los servicios na <b>rede llocal</b>: Desaminando... Encaboxáu.
 Camudar el dominiu Seleiciona'l sirvidor SSH Seleiciona'l sirvidor d'intérprete de comandos: Seleiciona'l sirvidor VNC Fallu del veceru; colando: %s
 Coneutando con «%s»...
 Fallu de DNS: FORMERR Fallu de DNS: NOTAUTH Fallu de DNS: NOTIMP Fallu de DNS: NOTZONE Fallu de DNS: NXDOMAIN Fallu de DNS: NXRRSET Fallu de DNS: REFUSED Fallu de DNS: SERVFAIL Fallu de DNS: YXDOMAIN Fallu de DNS: YXRRSET Falló la conexón col degorriu El degorriu nun se ta executando Escritoriu Desconectáu; volviendo a coneutar...
 Dominiu Nome del dominiu: L'Ifaz Prot %-*s %-20s Dominiu
 L'Ifaz Prot Dominiu
 Afitáu baxo'l nome «%s»
 Fallu al amestar la direición: %s
 Fallu al amestar el serviciu: %s
 Fallu al amestar la subtriba «%s»: %s
 Fallu al coneutar col sirvidor d'Avahi: %s Fallu al criar el resolver de direiciones: %s
 Fallu al criar el restolador pa %s: %s Fallu al criar l'oxetu veceru: %s
 Fallu al criar el restolador del dominiu: %s Fallu al criar el grupu de la entrada: %s
 Fallu al criar el resolver de nomes d'equipu: %s
 Fallu al criar el resolver pa %s de triba %s nel dominiu %s: %s Fallu al criar un oxetu d'encuesta simple.
 Falló analizar direición '%s'
 Falló analizar númberu de puertu. %s
 Fallu al consultar el nome del equipu: %s
 Fallu al consultar la cadena de versión: %s
 Fallu al lleer el dominiu d'Avahi: %s Fallu al rexistrar: %s
 Fallu al resolver la direición «%s»: %s
 Fallu al resolver el nome del equipu «%s»: %s
 Fallu al resolver el serviciu «%s» de triba «%s» nel dominiu «%s»: %s
 Nome del sirvidor Conflictu de nomes d'equipu
 El nome del equipu camudóse con éxitu a %s
 Aniciando... Interface: El TTL del DNS ye incorreutu Clas de DNS nun válida Códigu de retornu de DNS nun válidu Triba de DNS nun válidu Códigu de fallu nun válidu RDATA nun válidu Direición nun válida Argumentu nun válidu Configuración nun válida Nome de dominiu non válidu Indicadores nun válidos Nome de máquina non válidu Índiz d'interface nun válidu Númberu d'argumentos incorreutu; esperabase exactamente ún.
 Operación nun válida Paquete nun válidu Númberu de puertu nun válidu Especificación de protocolu nun válida Rexistru non válidu Contraseña de rexistru nun válida Nome de serviciu nun válidu Subtriba de serviciu nun válidu Triba de serviciu nun válidu Ta baleru Colisión de nome llocal Llocalización Memoria escosada Nome Colisión de nomes; usase'l nome nuevu «%s».
 Ensin comandu especificáu.
 Nun hai disponible dengún protocolu de rede afayadizu Nun atopáuo Nun permitíu Nun sofitáu Aceutar Fallu de SO Falló la operación Puertu Resolver serviciu Resolver el nome d'equipu del serviciu Resolver el nome d'equipu del serviciu seleicionáu de mou automáticu enantes de la devolución Resolver el serviciu seleicionado de mou automáticu enantes de la devolución El recursu de rexistru contraseña ye patrón Versión del sirvidor: %s; Nome del equipu: %s
 Nome del serviciu Nome del serviciu: Triba de serviciu Triba de serviciu: TXT Datos TXT Datos TXT: Terminal El númberu de puertu IP del serviciu resueltu Los datos TXT del serviciu resueltu La familia de direiciones pa la resolución de nome d'equipu La direición del servicii resuelti El dominiu a desaminar, o NULL pal dominiu predetermináu El nome d'equipu del serviciu resueltu L'oxetu pasáu nun yera válidu La operación solicitada nun ye válida porque ye redundante El nome de serviciu del serviciu esbilláu La triba de serviciu del serviciu esbilláu Algamóse'l tiempu d'espera afitáu Mui pocos argumentos
 Abondos argumentos
 Abondos veceros Demasiaes entraes Abondos oxetos Triba Incompatibilidá de versiones Esperando al degorriu...
 _Dominiu... Falló avahi_domain_browser_new(): %s
 Falló avahi_service_browser_new(): %s
 Falló avahi_service_type_browser_new(): %s
 baleru execlp() falló: %s
 n/d Falló service_browser: %s
 Falló service_type_browser: %s
 