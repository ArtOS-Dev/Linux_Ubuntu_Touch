Þ    ¦      L  ß   |
      ø  §  ù  h   ¡  ð   
  i  û  b  e     È     b     q  %     5   ª     à     î     ö       "        1     A     Z     s           £     Ä     ß  	   ø       6     '   N  '   v  "     4   Á  *   ö  .   !     P  
   \     g     u               ­     Ê     â     ÷                5     K     `     u          ¡     ¶     Ï     â     ê     
               =     Q     n          ¤  %   Ä  &   ê  #     #   5  #   Y  !   }  (     <   È  %        +      I     j  #        ­     Í  #   å  %   	  ?   /  	   o     y  %        ³  
   Ã     Î     Þ     ð               ,     :     J     [     q               ¥  4   ½     ò                 '      F      U      h      }            ª      ³      È      Ñ      â   '   ç      !  &   &!  	   M!     W!     e!     s!     v!     !     !     !     ¥!  L   ¿!  ;   "     H"  "   g"     "     "     ¥"     ²"     À"     Ä"  	   Í"     ×"  *   à"  $   #  +   0#  #   \#  7   #  %   ¸#  "   Þ#  4   $  (   6$  (   _$     $     $     «$     ¿$     Ð$     á$     ò$     ÷$     %  
    %  &   +%  '   R%  ,   z%     §%     ­%     Â%     Æ%      â%  À  &  V  Ä'     +    °+  Ã  Ï,  !  .  Ó   µ1     2  *   ¢2  C   Í2  G   3  $   Y3     ~3     3     ¤3  7   ²3     ê3  $   ÷3  $   4     A4  1   ]4  7   4  +   Ç4  %   ó4     5     /5  F   N5  2   5  3   È5  4   ü5  W   16  0   6  >   º6     ù6  "   7     )7     ?7     X7     w7  D   7     Õ7  "   ë7  !   8  !   08  "   R8  #   u8  "   8  "   ¼8  #   ß8  #   9  "   '9  *   J9  '   u9     9  4   °9     å9     ò9  $   :     (:  (   B:  /   k:  /   :  <   Ë:  6   ;  ;   ?;  5   {;  G   ±;  :   ù;  ;   4<  ;   p<  ]   ¬<  =   
=  1   H=  >   z=  2   ¹=  >   ì=  :   +>      f>  9   >  9   Á>  d   û>     `?     m?  ,   ?     ±?     Á?     Û?     ÷?  +   @     A@     _@     {@     @     ®@     Ä@     Ú@     ù@     A  -   .A  I   \A     ¦A     ¼A     ÒA  $   ñA     B  !   2B     TB  -   sB  $   ¡B     ÆB  -   ßB     C     C     *C  I   1C  .   {C  B   ªC     íC     D  !   (D     JD     MD     ZD  	   vD     D  !   D  H   ¸D  9   E  B   ;E  9   ~E     ¸E     ÈE     ÙE     ïE     F     
F     F     &F  1   -F  ,   _F  9   F  *   ÆF  i   ñF  *   [G  0   G  T   ·G  -   H  3   :H  $   nH     H     ­H  $   ÇH     ìH  $   I  	   0I     :I  %   SI     yI  5   I  6   ÃI  ;   úI     6J  #   :J     ^J  *   bJ  /   J     J      3      .   r                                  y                   [   S          c   ,   @      l   )         O       H      ¥                 ¢             q           o         2   ¦           *   /       '                              $   Y   b   C      £       K   7   d      {   ~   X   z                 >   V       h   k          5           `                 <   R      0       6       \       j             (             
   s   B      }       %          !       :      w   f             &   |      L       Z   ^   ?   T   U   e       8      P   1   M   v   u       i      G   n            ¡          x           9   =   ]          _         F           -       W             p   	          #   4      D       +                 t         Q          N      ¤   "   E   m              ;   I           A   a   g        -h --help            Show this help
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
 Project-Id-Version: avahi master
Report-Msgid-Bugs-To: 
POT-Creation-Date: 2015-12-03 14:10+0000
PO-Revision-Date: 2015-12-04 01:33+0000
Last-Translator: Launchpad Translations Administrators <Unknown>
Language-Team: Japanese <debian-japanese@lists.debian.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-Launchpad-Export-Date: 2016-06-27 17:41+0000
X-Generator: Launchpad (build 18115)
Language: ja
     -h --help            ãã®ãã«ããè¡¨ç¤ºãã
    -V --version         ãã¼ã¸ã§ã³ãè¡¨ç¤ºãã
    -D --browse-domains  ãµã¼ãã¹ã§ã¯ãªããã¡ã¤ã³ãæ¤ç´¢
    -a --all             ã¿ã¤ãã§ã¯ãªããå¨ã¦ã®ãµã¼ãã¹ãè¡¨ç¤ºãã
    -d --domain=DOMAIN   æ¤ç´¢ãããã¡ã¤ã³ãæå®
    -v --verbose         åé·åºåã¢ã¼ããæå¹ã«ãã
    -t --terminate       ã»ã¼å®å¨ãªãªã¹ããåºåããå¾ã§çµäºãã
    -c --cache           ã­ã£ãã·ã¥ããå¨ã¦ã®ã¨ã³ããªãåºåãã¦çµäºãã
    -l --ignore-local    ã­ã¼ã«ã«ãµã¼ãã¹ãç¡è¦ãã
    -r --resolve         è¦ã¤ãããµã¼ãã¹ãè§£æ±ºãã
    -f --no-fail         ãã¼ã¢ã³ãå©ç¨ã§ããªãéãfail ããªã
    -p --parsable        ãã¼ã¹å¦çãå¯è½ãªå½¢å¼ã§åºåãã
     -k --no-db-lookup    ãµã¼ãã¹ã¿ã¤ããæ¤ç´¢ããªã
    -b --dump-db         ãµã¼ãã¹ã¿ã¤ãã®ãã¼ã¿ãã¼ã¹ãåºåãã
 %s [ãªãã·ã§ã³]

    -h --help            ãã®ãã«ããè¡¨ç¤ºãã
    -s --ssh             SSHãµã¼ãã¼ã®æ¤ç´¢
    -v --vnc             VNCãµã¼ãã¼ã®æ¤ç´¢
    -S --shell           SSHã¨VNCãæ¤ç´¢ãã
    -d --domain=DOMAIN  æ¤ç´¢ãããã¡ã¤ã³ãæå®
 %s [ãªãã·ã§ã³] %s <ãã¹ãå ...>
%s [ãªãã·ã§ã³] %s <ã¢ãã¬ã¹ ... >

    -h --help            ãã®ãã«ããè¡¨ç¤º
    -V --version         ãã¼ã¸ã§ã³ãè¡¨ç¤º
    -n --name            ãã¹ãåãè§£æ±º
    -a --address         ã¢ãã¬ã¹ãè§£æ±º
    -v --verbose         åé·åºåã¢ã¼ããæå¹ã«ãã
    -6                   IPv6 ã¢ãã¬ã¹ã§æ¤ç´¢
    -4                   IPv4 ã¢ãã¬ã¹ã§æ¤ç´¢
 %s [ãªãã·ã§ã³] %s <åå> <ã¿ã¤ã> <ãã¼ã> [<txt ...>]
%s [ãªãã·ã§ã³] %s <ãã¹ãå> <ã¢ãã¬ã¹>

    -h --help            ãã®ãã«ããè¡¨ç¤ºãã
    -V --version         ãã¼ã¸ã§ã³ãè¡¨ç¤ºãã
    -s --service         ãµã¼ãã¹ãå¬éãã
    -a --address         ã¢ãã¬ã¹ãå¬éãã
    -v --verbose         åé·åºåã¢ã¼ããæå¹ã«ãã
    -d --domain=DOMAIN   ãµã¼ãã¹ãå¬éãããã¡ã¤ã³ãæå®
    -H --host=DOMAIN     ãµã¼ãã¹ãå­å¨ãããã¹ããæå®
       --subtype=SUBTYPE ãã®ãµã¼ãã¹ãç»é²ããè¿½å ãµãã¿ã¤ããæå®
    -R --no-reverse      ã¢ãã¬ã¹ã®éå¼ãã¨ã³ããªãå¬éããªã
    -f --no-fail         ãã¼ã¢ã³ãå©ç¨ã§ããªãéã« fail ããªã
 %s [ãªãã·ã§ã³] <æ°ãããã¹ãå>

    -h --help            ãã®ãã«ããè¡¨ç¤º
    -V --version         ãã¼ã¸ã§ã³ãè¡¨ç¤º
    -v --verbose         åé·åºåã¢ã¼ããæå¹ã«ãã
 : ã¨ããããå¨ã¦
 : ã­ã£ãã·ã¥ãä¸è¶³ãã¦ãã¾ã
 <i>ç¾å¨ã¯ã©ã®ãµã¼ãã¹ãé¸æããã¦ãã¾ããã</i> NULL ã§çµç«¯ãããæ¤ç´¢å¯¾è±¡ã®ãµã¼ãã¹ã¿ã¤ãã®ãªã¹ã ã¢ã¯ã»ã¹ãæå¦ããã¾ãã ã¢ãã¬ã¹ ã¢ãã¬ã¹ãã¡ããª ã¢ãã¬ã¹: äºæããªã D-Bus ã®ã¨ã©ã¼ãçºçãã¾ãã Avahi æ¤ç´¢ Avahi SSHãµã¼ãã¼ãã©ã¦ã¶ã¼ Avahi VNCãµã¼ãã¼ãã©ã¦ã¶ã¼ Avahi Zeroconf ãã©ã¦ã¶ Avahi ã¯ã©ã¤ã¢ã³ããå¤±æãã¾ãã: %s Avahi ãã¡ã¤ã³ãã©ã¦ã¶ãå¤±æãã¾ãã: %s Avahi ãªã¾ã«ããå¤±æãã¾ãã: %s å¼æ°ã®æ°ãééã£ã¦ãã¾ã
 ä¸æ­£ãªç¶æã§ã ãµã¼ãã¹ã¿ã¤ãã®æ¤ç´¢ ãããã¯ã¼ã¯ä¸ã®å©ç¨å¯è½ãª Zeroconf ãµã¼ãã¹ãæ¤ç´¢ Zeroconfãæå¹ã«ããSSHãµã¼ãã¼ãæ¤ç´¢ Zeroconf ãæå¹ã«ããVNCãµã¼ãã¼ãæ¤ç´¢ æ¤ç´¢ãµã¼ãã¹ã¿ã¤ãã®ãªã¹ããç©ºã§ã! ãã¡ã¤ã³ %2$s ã«ã¦ãµã¼ãã¹ã¿ã¤ã %1$s ã®æ¤ç´¢ã«å¤±æãã¾ãã: %3$s ãã¡ã¤ã³ <b>%s</b> ã§ã®ãµã¼ãã¹æ¤ç´¢: <b>ã­ã¼ã«ã«ãããã¯ã¼ã¯</b>ã§ã®ãµã¼ãã¹æ¤ç´¢: æ¤ç´¢ä¸­... ã­ã£ã³ã»ã«ããã¾ããã
 ãã¡ã¤ã³ã®å¤æ´ SSHãµã¼ãã¼ãé¸æ ã·ã§ã«ãµã¼ãã¼ãé¸æ VNCãµã¼ãã¼ãé¸æ ã¯ã©ã¤ã¢ã³ããå¤±æãã¾ãããçµäºãã¦ãã¾ã: %s
 '%s' ã¸æ¥ç¶ä¸­...
 DNS ãå¤±æãã¾ãã: FORMERR DNS ãå¤±æãã¾ãã: NOAUTH DNS ãå¤±æãã¾ãã: NOTIMP DNS ãå¤±æãã¾ãã: NOTZONE DNS ãå¤±æãã¾ãã: NXDOMAIN DNS ãå¤±æãã¾ãã: NXRRSET DNS ãå¤±æãã¾ãã: REFUSED DNS ãå¤±æãã¾ãã: SERVFAIL DNS ãå¤±æãã¾ãã: YXDOMAIN DNS ãå¤±æãã¾ãã: YXRRSET ãã¼ã¢ã³ã®æ¥ç¶ãå¤±æãã¾ãã ãã¼ã¢ã³ãåä½ãã¦ãã¾ãã ãã¹ã¯ããã åæ­ããã¾ãããåæ¥ç¶ãã¦ãã¾ã...
 ãã¡ã¤ã³ ãã¡ã¤ã³å: E Ifce Prot %-*s %-20s ãã¡ã¤ã³
 E Ifce Prot ãã¡ã¤ã³
 åå '%s' ã§æ¥ç¶ãç¢ºç«ãã¾ã
 ã¢ãã¬ã¹ã®è¿½å ã«å¤±æãã¾ãã: %s
 ãµã¼ãã¹ã®è¿½å ã«å¤±æãã¾ãã: %s
 ãµãã¿ã¤ã '%1$s' ã®è¿½å ã«å¤±æãã¾ãã: %2$s
 Avahiãµã¼ãã¼ã¸ã®æ¥ç¶ã«å¤±æãã¾ãã: %s ã¢ãã¬ã¹ã®ãªã¾ã«ãä½æã«å¤±æãã¾ãã: %s
 %1$s ã®ãã©ã¦ã¶ä½æã«å¤±æãã¾ãã: %2$s ã¯ã©ã¤ã¢ã³ããªãã¸ã§ã¯ãã®ä½æã«å¤±æãã¾ãã: %s
 ãã¡ã¤ã³ãã©ã¦ã¶ã®ä½æã«å¤±æãã¾ãã: %s ã¨ã³ããªã°ã«ã¼ãã®ä½æã«å¤±æãã¾ãã: %s
 ãã¹ãåã®ãªã¾ã«ãä½æã«å¤±æãã¾ãã: %s
 ãã¡ã¤ã³ %3$s ã®ã¿ã¤ã %2$s ã® %1$s ã®ãªã¾ã«ãä½æã«å¤±æãã¾ãã: %4$s simple poll ãªãã¸ã§ã¯ãã®ä½æã«å¤±æãã¾ãã
 ã¢ãã¬ã¹ '%s' ã®å¦çã«å¤±æãã¾ãã
 ãã¼ãçªå·ããã¼ã¹ããã®ã«å¤±æãã¾ãã: %s
 ãã¹ãåã®ã¯ã¨ãªã«å¤±æãã¾ãã: %s
 ãã¼ã¸ã§ã³æå­åã®ã¯ã¨ãªã«å¤±æãã¾ãã: %s
 Avahi ãã¡ã¤ã³ã®èª­ã¿è¾¼ã¿ã«å¤±æãã¾ãã: %s ç»é²ã«å¤±æãã¾ãã: %s
 ã¢ãã¬ã¹ '%1$s' ã®è§£æ±ºã«å¤±æãã¾ãã: %2$s
 ãã¹ãå '%1$s' ã®è§£æ±ºã«å¤±æãã¾ãã: %2$s
 ãã¡ã¤ã³ '%3$s' ã®ã¿ã¤ã '%2$s' ã®ãµã¼ãã¹ '%1$s' ã®è§£æ±ºã«å¤±æãã¾ãã: %4$s
 ãã¹ãå ãã¹ãåã®è¡çª
 ãã¹ãåã¯ %s ã«å¤æ´ããã¾ãã
 åæåä¸­... ã¤ã³ã¿ã¼ãã§ã¤ã¹: ä¸æ­£ãª DNS TTL å¤ã§ã ä¸æ­£ãª DNS ã¯ã©ã¹ã§ã DNS ã®ãªã¿ã¼ã³ã³ã¼ããä¸æ­£ã§ã ä¸æ­£ãª DNS ã¿ã¤ãã§ã ä¸æ­£ãªã¨ã©ã¼ã³ã¼ã ä¸æ­£ãª RDATA ã§ã ä¸æ­£ãªã¢ãã¬ã¹ã§ã ä¸æ­£ãªå¼æ°ã§ã ä¸æ­£ãªè¨­å®ã§ã ä¸æ­£ãªãã¡ã¤ã³åã§ã ä¸æ­£ãªãã©ã°ã§ã ä¸æ­£ãªãã¹ãåã§ã ä¸æ­£ãªã¤ã³ã¿ã¼ãã§ã¤ã¹ä¸è¦§ã§ã å¼æ°ã®æ°ãä¸æ­£ã§ããä¸ã¤ã ããæå®ãã¦ãã ããã
 ä¸æ­£ãªæä½ã§ã ä¸å½ãªãã±ãã ä¸æ­£ãªãã¼ãçªå·ã§ã ä¸æ­£ãªãã­ãã³ã«å®ç¾©ã§ã ä¸æ­£ãªã¬ã³ã¼ãã§ã ä¸æ­£ãªã¬ã³ã¼ãã­ã¼ã§ã ä¸æ­£ãªãµã¼ãã¹åã§ã ãµã¼ãã¹ã®ãµãã¿ã¤ããä¸æ­£ã§ã ä¸æ­£ãªãµã¼ãã¹ã¿ã¤ãã§ã ã°ã«ã¼ããç©ºã§ã ã­ã¼ã«ã«åã®è¡çªãçºçãã¾ãã å ´æ ã¡ã¢ãªä¸è¶³ã§ã åå ååãè¡çªãã¾ãããæ°ããåå '%s' ãå©ç¨ãã¾ãã
 ã³ãã³ããæå®ããã¦ãã¾ããã
 é©åãªãããã¯ã¼ã¯ãã­ãã³ã«ãè¦ã¤ããã¾ãã è¦ã¤ããã¾ããã§ãã è¨±å¯ããã¦ãã¾ãã ãµãã¼ãããã¦ãã¾ãã OK OS ã¨ã©ã¼ æä½ã«å¤±æãã¾ãã ãã¼ã ãµã¼ãã¹ã®è§£æ±º ãµã¼ãã¹ãã¹ãåã®è§£æ±º æ»ãåã«é¸æãããµã¼ãã¹ã®ãã¹ãåãèªåçã«è§£æ±º æ»ãåã«é¸æãããµã¼ãã¹ãèªåçã«è§£æ±º ãªã½ã¼ã¹ã¬ã³ã¼ãã­ã¼ãç¹°ãè¿ãã«ãªã£ã¦ãã¾ã ãµã¼ãã¼ã®ãã¼ã¸ã§ã³: %1$s; ãã¹ãå: %2$s
 ãµã¼ãã¹å ãµã¼ãã¹å: ãµã¼ãã¹ã¿ã¤ã ãµã¼ãã¹ã¿ã¤ã: TXT TXT ãã¼ã¿ TXT ãã¼ã¿ ç«¯æ« è§£æ±ºããããµã¼ãã¹ã® IP ãã¼ãçªå· è§£æ±ºããããµã¼ãã¹ã® TXT ãã¼ã¿ ãã¹ãåè§£æ±ºã«å©ç¨ããã¢ãã¬ã¹ãã¡ããª è§£æ±ºããããµã¼ãã¹ã®ã¢ãã¬ã¹ æ¤ç´¢ãããã¡ã¤ã³ãå¥åããããããã©ã«ãã®ãã¡ã¤ã³ã¨ãã¦ NULL ãæå®ãã è§£æ±ºããããµã¼ãã¹ã®ãã¹ãå ä¸æ­£ãªãªãã¸ã§ã¯ããæ¸¡ããã¾ãã è¦æ±ãããæä½ãéå°ã§ãã£ãçºãæä½ãç°å¸¸ãèµ·ããã¾ãã é¸æããããµã¼ãã¹ã®ãµã¼ãã¹å é¸æããããµã¼ãã¹ã®ãµã¼ãã¹ã¿ã¤ã ã¿ã¤ã ã¢ã¦ãã«éãã¾ãã å¼æ°ãè¶³ãã¾ãã
 å¼æ°ãå¤ããã¾ã
 ã¯ã©ã¤ã¢ã³ããå¤ããã¾ã ã¨ã³ããªãå¤ããã¾ã ãªãã¸ã§ã¯ããå¤ããã¾ã ã¿ã¤ã ãã¼ã¸ã§ã³ä¸ä¸è´ ãã¼ã¢ã³ãå¾ã£ã¦ãã¾ã...
 ãã¡ã¤ã³(_D)... avahi_domain_browser_new() ãå¤±æãã¾ãã: %s
 avahi_service_browser_new() ãå¤±æãã¾ãã: %s
 avahi_service_type_browser_new() ãå¤±æãã¾ãã: %s
 ç©º execlp() ãå¤±æãã¾ãã: %s
 n/a service_browser ãå¤±æãã¾ãã: %s
 service_type_browser ãå¤±æãã¾ãã: %s
 