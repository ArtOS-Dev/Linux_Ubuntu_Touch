��    �      d  �   �
      8  �  9  h   �  �   J  i  ;  b  �  �        �     �  %   �  5   �           .     6     E  "   N     q     �     �     �     �      �            	   8     B  6   W  '   �  '   �  "   �  4     *   6  .   a     �     �  
   �     �     �     �     �     �          +     @     U     i     ~     �     �     �     �     �     �          +     3     S     Z     g     �     �     �     �     �  %     &   3  #   Z  #   ~  #   �  !   �  (   �  <     %   N     t      �     �  #   �     �       #   .  %   R  ?   x  	   �     �  %   �     �  
             '     9     Q     b     u     �     �     �     �     �     �     �  4         ;      M      \      p      �      �      �      �      �      �      �      !     !     +!  '   0!     X!  &   o!  	   �!     �!     �!     �!     �!     �!     �!     �!     �!  L   "  ;   U"     �"  "   �"     �"     �"     �"     �"     	#     #  	   #      #  *   )#  $   T#  +   y#  #   �#  7   �#  %   $  "   '$  4   J$  (   $  (   �$     �$     �$     �$     %     %     *%     ;%     @%     Q%     i%  
   q%     |%  &   �%  '   �%  ,   �%     �%     &     &     &      7&  �  X&  �  M(  �   3+    �+  S  �,  �  .  �   �0     1     �1  3   �1  A   �1     2  
   )2     42     K2  &   W2     ~2  %   �2  %   �2     �2     �2  .   3      L3  !   m3     �3     �3  <   �3  -   �3  -   *4  .   X4  C   �4  1   �4  0   �4     .5  	   <5     F5     R5     e5  -   |5     �5      �5     �5     �5     6     )6     >6     T6     k6     �6     �6     �6     �6  "   �6  !   �6  
    7  &   +7     R7     Z7     n7     �7  "   �7  $   �7  "   �7  (   8  /   78  0   g8  )   �8  &   �8  .   �8  +   9  :   D9  D   9  .   �9  (   �9  ,   :  0   I:  -   z:  &   �:     �:  +   �:  6   ;  M   K;     �;  #   �;  8   �;     <  	   <     '<     D<  $   \<     �<     �<     �<     �<     �<     �<     
=     '=     <=     \=  ?   {=     �=     �=     �=  '   >     )>     =>     Z>     x>     �>     �>     �>  
   �>     �>     �>  5   �>  !   2?  4   T?     �?     �?     �?     �?     �?     �?     �?     �?  )   �?  i   @  O   �@  /   �@  5   A     =A     QA     fA     wA     �A  	   �A  
   �A     �A  -   �A  #   �A  E   �A  #   CB  <   gB  -   �B     �B  ;   �B  /   .C  -   ^C  /   �C     �C     �C     �C     �C     D     $D     )D     GD  	   `D     jD     vD  &   D  '   �D  ,   �D     �D     E     E     E      7E     �   t   k   �           L   Z   �       i                    �   �       �       D      y   4   �   S               5          $   #   l          j   h                 _   T       �   -   M   8   &   B   6       P   d   �   C   �   G   �   Y   x   �   �   U       �   �                          �      ]   �   %   !   �      m   X   �                 n   \       7       >       �       "       .   |       s   �   H   �   
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
 Project-Id-Version: Avahi
Report-Msgid-Bugs-To: 
POT-Creation-Date: 2015-12-03 14:10+0000
PO-Revision-Date: 2015-12-04 01:33+0000
Last-Translator: Launchpad Translations Administrators <Unknown>
Language-Team: Fedora Spanish <trans-es@lists.fedoraproject.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-Launchpad-Export-Date: 2016-06-27 17:41+0000
X-Generator: Launchpad (build 18115)
X-Poedit-Country: ARGENTINA
Language: 
X-Poedit-Language: Spanish
     -h --help            Muestra esta ayuda
    -V --version         Muestra la versión
    -D --browse-domains  Explora dominios de búsqueda en lugar de servicios
    -a --all             Muestra todos los servicios independientemente del tipo.
    -d --domain=DOMAIN   El dominio que examinar
    -v --verbose         Activa el modo detallado
    -t --terminate       Terminar al volcar una lista más o menos completa
    -c --cache           Terminar después de volcar todas las entradas de la cache
    -l --ignore-local    Ignorar los servicios locales
    -r --resolve         Resolver servicios encontrados
    -f --no-fail         No fallar si el demonio no está disponible
    -p --parsable        Salida en formato analizable
     -k --no-db-lookup    No busca los tipos de servicios
    -b --dump-db         Vuelva la base de datos de tipos de servicios
 %s [opciones]

    -h --help            Mostrar esta ayuda
    -s --ssh             Examinar servidores SSH
    -v --vnc             Examinar servidores VNC
    -S --shell           Examinar servidores SSH y VNC
    -d --domain=DOMINIO  El dominio que examinar
 %s [opciones] %s <nombre del servidor …>
%s [opciones] %s <dirección …>

    -h --help Mostrar esta ayuda
    -V --version Mostrar la versión
    -n --name Resolver el nombre del anfitrión
    -a --address Resolver la dirección
    -v --vervose Activar el modo detallado
    -6 Buscar dirección IPv6
    -4 Buscar dirección IPv4
 %s [opciones] %s <nombre> <tipo> <puerto> [<txt …>]
%s [opciones] %s <nombre-del-equipo> <dirección>

    -h --help            Mostrar esta ayuda
    -V --version         Mostrar la versión
    -s --service         Publicar el servicio
    -a --address         Publicar la dirección
    -v --verbose         Activar el modo detallado
    -d --domain=DOMINIO  Dominio donde publicar el servicio
    -H --host=DOMINIO    Anfitrión donde reside el servicio
       --subtype=SUBTIPO  Un subtipo adicional con el que registrar este servicio
    -R --no-reverse      No publicar entrada de reverso con esta dirección
    -f --no-fail         No fallar en caso que el demonio no esté disponible
 %s [opciones] <nuevo nombre de anfitrión>

    -h --help            Muestra esta ayuda
    -V --version         Muestra la versión
    -v --verbose         Activa el modo detallado
 : Todo por ahora
 : Caché agotada
 <i>No hay un servicio actualmente seleccionado.</i> Una lista terminada en NULL con los tipos de servicios a examinar Acceso denegado Dirección Familia de direcciones Dirección: Ocurrió un error de D-Bus no esperado Descubrimiento de Avahi Examinador de servidores SSH de Avahi Examinador de servidores VNC de Avahi Navegador Zeroconf de Avahi Fallo del cliente de Avahi: %s Fallo de exploración de dominios de Avahi: %s Fallo del resolutor de Avahi: %s Número de argumentos incorrecto
 Estado incorrecto Tipos de servicios a examinar Navegar en busca de servicios Zeroconf disponibles en su red Examinar servidores SSH con zeroconf activado Examinar servidores VNC con zeroconf activado ¡La lista de tipos de servicios está vacía! Falló la exploración del tipo de servicio %s en el dominio %s: %s Examinando los servicios en el dominio <b>%s</b>: Examinando los servicios en la <b>red local</b>: Examinando… C_onectar Cancelado.
 Cambiar el dominio Elegir el servidor SSH Elegir el servidor de intérprete de órdenes Elegir el servidor VNC Fallo del cliente; saliendo: %s
 Conectando con «%s» …
 Fallo de DNS: FORMERR Fallo de DNS: NOTAUTH Fallo de DNS: NOTIMP Fallo de DNS: NOTZONE Fallo de DNS: NXDOMAIN Fallo de DNS: NXRRSET Fallo de DNS: REFUSED Fallo de DNS: SERVFAIL Fallo de DNS: YXDOMAIN Fallo de DNS: YXRRSET Falló la conexión con el demonio El demonio no se está ejecutando Escritorio Desconectado; volviendo a conectar…
 Dominio Nombre del dominio: E Ifaz Prot %-*s %-20s Dominio
 E Ifaz Prot Dominio
 Establecido bajo el nombre «%s»
 Falló al añadir la dirección: %s
 Falló al añadir el servicio: %s
 Falló al añadir el subtipo «%s»: %s
 Falló al conectar con el servidor de Avahi: %s Falló al crear el resolutor de direcciones: %s
 Falló al crear el examinador para %s: %s Falló al crear el objeto cliente: %s
 Falló al crear el dominio de exploración: %s Falló al crear el grupo de la entrada: %s
 Falló al crear el resolutor de nombres de anfitrión: %s
 Falló al crear el resolutor para %s de tipo %s en el dominio %s: %s Falló al crear un objeto de encuesta simple.
 Falló al analizar la dirección «%s»
 Falló al analizar el número de puerto: %s
 Error al consultar el nombre del anfitrión: %s
 Error al consultar la cadena de versión: %s
 Falló al leer el dominio de Avahi: %s Falló al registrar: %s
 Error al resolver la dirección «%s»: %s
 Error al resolver el nombre del anfitrión «%s»: %s
 Error al resolver el servicio «%s» de tipo «%s» en el dominio «%s»: %s
 Nombre del anfitrión Conflicto de nombres de anfitrión
 El nombre del anfitrión se ha cambiado con éxito a %s
 Inicializando… Interfaz: El TTL del DNS no es válido Clase de DNS no válida Código de retorno de DNS no válido Tipo de DNS no válido Código de error no válido RDATA no válido Dirección no válida Argumento no válido Configuración no válida Nombre de dominio no válido Opciones no válidas Nombre de anfitrión no válido Índice de interfaz no válido Número de argumentos incorrecto; se esperaba exactamente uno.
 Operación no válida Paquete no válido Número de puerto no válido Especificación de protocolo no válida Registro no válido Clave de registro no válida Nombre de servicio no válido Subtipo de servicio no válido Tipo de servicio no válido Está vacío Colisión de nombre local Ubicación Memoria agotada Nombre Colisión de nombres; se usa el nombre nuevo «%s».
 No se especificó ninguna orden.
 No hay disponible ningún protocolo de red apropiado No encontrado No permitido No soportado Aceptar Error de SO Falló la operación Puerto Resolver servicio Resolver el nombre de equipo del servicio Resolver el nombre del anfitrión del servicio seleccionado de manera automática antes de la devolución Resolver el servicio seleccionado de manera automática antes de la devolución La clave del registro del recurso es un patrón Versión del servidor: %s; Nombre del anfitrión: %s
 Nombre del servicio Nombre del servicio: Tipo de servicio Tipo de servicio: TXT Datos TXT Datos TXT: Terminal El número de puerto IP del servicio resuelto Los datos TXT del servicio resuelto La familia de direcciones para la resolución de nombre de anfitrión La dirección del servicio resuelto El dominio a examinar, o NULL para el dominio predeterminado El nombre de anfitrión del servicio resuelto El objeto pasado no era válido La operación solicitada no es válida porque es redundante El nombre de servicio del servicio seleccionado El tipo de servicio del servicio seleccionado Se ha alcanzado el tiempo de espera establecido Muy pocos argumentos
 Demasiados argumentos
 Demasiados clientes Demasiadas entradas Demasiados objetos Tipo Incompatibilidad de versiones Esperando al demonio…
 _Cancelar _Dominio… _Aceptar Falló avahi_domain_browser_new(): %s
 Falló avahi_service_browser_new(): %s
 Falló avahi_service_type_browser_new(): %s
 vacío execlp() falló: %s
 n/d Falló service_browser: %s
 Falló service_type_browser: %s
 