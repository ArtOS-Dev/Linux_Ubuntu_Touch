��    �      D  �   l
      �  �  �  h   �  �   �  i  �  b  U  �   �     R     a  %   t  5   �     �     �     �     �     �          '     @     W      p     �     �  	   �     �  6   �  '     '   C  "   k  4   �  *   �  .   �       
   )     4     B     T     h     z     �     �     �     �     �               -     B     X     n     �     �     �     �     �     �     �     
          ;     V     q  %   �  &   �  #   �  #     #   &  !   J  (   l  <   �  %   �     �           7  #   V     z     �  #   �  %   �  ?   �  	   <     F  %   Z     �  
   �     �     �     �     �     �     �               (     >     R     `     r  4   �     �     �     �     �           "      5      J      b      w      �      �      �      �   '   �      �   &   �   	   !     $!     2!     @!     C!     L!     ]!     b!     r!  L   �!  ;   �!     "  "   4"     W"     d"     r"     "     �"     �"  	   �"     �"  *   �"  $   �"  +   �"  #   )#  7   M#  %   �#  "   �#  4   �#  (   $  (   ,$     U$     e$     x$     �$     �$     �$     �$     �$     �$  
   �$  &   �$  '   %  ,   G%     t%     z%     �%     �%      �%  �  �%  ~  }'  �   �+  �  �,  F  L.  {  �0    4     &5  #   85  R   \5  p   �5  $    6     E6     R6     p6     ~6  +   �6  +   �6     �6  2   7  9   67  7   p7  9   �7     �7  0   �7  A   )8  `   k8  `   �8  E   -9  o   s9  H   �9  L   ,:     y:     �:     �:  -   �:  /   �:  -   +;  R   Y;  ,   �;     �;     �;     <     2<     P<     o<     �<     �<     �<     �<  3   =  "   ;=     ^=  :   u=     �=     �=  (   �=     �=  .   >  4   J>  :   >  I   �>  O   ?  L   T?  ?   �?  D   �?  ?   &@  E   f@  Y   �@  �   A  C   �A  K   �A  P   B  K   pB  M   �B  A   
C  -   LC  I   zC  R   �C  �   D     �D  -   �D  T   �D  )   @E     jE     zE  (   �E  9   �E  !   �E  ,   F     IF  "   dF  '   �F  #   �F  *   �F  %   �F  *   $G  4   OG  Y   �G  %   �G  #   H  ,   (H  :   UH  "   �H  0   �H  0   �H  C   I  1   YI  
   �I  *   �I  
   �I      �I     �I  X   �I  )   OJ  -   yJ     �J     �J     �J     �J  0   �J  (   )K  
   RK  (   ]K  >   �K  �   �K  n   PL  @   �L  C    M     DM     `M     }M     �M     �M     �M      �M     �M  K   N  R   XN  j   �N  ?   O  �   VO  F   �O  7   ,P  c   dP  G   �P  G   Q     XQ  !   rQ  6   �Q  "   �Q     �Q     R     "R     +R  $   KR     pR  7   �R  8   �R  =   �R     3S  %   :S     `S  ,   dS  3   �S     I   �   2   �   -   q                                  x      �       �   �   Z   R   �       b   +   ?   �   k   (   �   �   N       G      �       �   �       �          �   p          n         1   �           )   .       &       �      �   �             #   X   a       �   �       J   6   c   ~   z   }   W   y           �   �   =   U       g   j          B           _       �          ;   Q      /       5       [       i      �       '       �   �   
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
Language-Team: Uyghur <ug@li.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-Launchpad-Export-Date: 2016-06-27 17:41+0000
X-Generator: Launchpad (build 18115)
     -h --help            بۇ ياردەم ئۇچۇرىنى كۆرسىتىدۇ
    -V --version         نەشرىنى كۆرسىتىدۇ
    -D --browse-domains  مۇلازىمەتلەرنى ئەمەس كۆرۈش دائىرىسىنى كۆرسىتىدۇ 
    -a --all             تىپىنى ئەمەس مۇلازىمەتلەرنى كۆرسىتىدۇ
    -d --domain=DOMAIN   كۆرىدىغان دائىرە
    -v --verbose         verbose ھالىتىنى ئىناۋەتلىك قىلىدۇ
    -t --terminate       ئاساسەن تولۇق تىزىم كۆرسەتكەندىن كېيىن ئاخىرلاشتۇرىدۇ
    -c --cache           غەملەكتىكى بارلىق كىرگۈنى كۆرسەتكەندىن كېيىن ئاخىرلاشتۇرىدۇ
    -l --ignore-local    يەرلىك مۇلازىمەتلەرگە پىسەنت قىلمايدۇ
    -r --resolve         تېپىلغان مۇلازىمەتلەرنى ھەل قىلىدۇ
    -f --no-fail         daemon يوق بولۇپ قالسا، خاتالىق چىقارمايدۇ
    -p --parsable        تەھلىل قىلغىلى بولىدىغان پىچىمدا چىقىرىدۇ
     -k --no-db-lookup    مۇلازىمەت تىپىنى ھەل قىلمايدۇ
    -b --dump-db         مۇلازىمەت تىپى سانلىق-مەلۇماتىنى چىقىرىدۇ
 %s [تاللانمىلار]

    -h --help            بۇ ياردەم ئۇچۇرىنى كۆرسىتىدۇ
    -s --ssh             SSH مۇلازىمېتىرلىرىنى كۆرىدۇ
    -v --vnc             VNC مۇلازىمېتىرلىرىنى كۆرىدۇ
    -S --shell           SSH ۋە VNC مۇلازىمېتىرلىرىنى كۆرىدۇ
    -d --domain=DOMAIN   كۆرىدىغان دائىرە
 %s [تاللانما] %s <ماشىنا ئاتى ...>
%s [تاللانما] %s <ئادرېس ... >

    -h --help            بۇ ياردەم ئۇچۇرىنى كۆرسىتىدۇ
    -V --version         نەشرىنى كۆرسىتىدۇ
    -n --name            ماشىنا ئاتىنى ھەل قىلىدۇ
    -a --address         ئادرېسنى ھەل قىلىدۇ
    -v --verbose         verbose ھالىتىنى ئىناۋەتلىك قىلىدۇ
    -6                   IPv6 ئادرېسنى ئىزدەيدۇ
    -4                   IPv4 ئادرېسنى ئىزدەيدۇ
 %s [تاللانما] %s <ئاتى> <تىپ> <ئېغىز> [<txt ...>]
%s [تاللانما] %s <ماشىنا-ئاتى> <ئادرېس>

    -h --help            بۇ ياردەم ئۇچۇرىنى كۆرسىتىدۇ
    -V --version         نەشرىنى كۆرسىتىدۇ
    -s --service         مۇلازىمەتنى ئېلان قىلىدۇ
    -a --address         ئادرېسنى ئېلان قىلىدۇ
    -v --verbose         verbose ھالىتىنى ئىناۋەتلىك قىلىدۇ
    -d --domain=DOMAIN   مۇلازىمەتنى ئېلان قىلىدىغان دائىرە
    -H --host=DOMAIN     مۇلازىمەت بار ماشىنا
       --subtype=SUBTYPE An additional subtype to register this service with
    -R --no-reverse      Do not publish reverse entry with address
    -f --no-fail         daemon يوق بولۇپ قالسا خاتالىق چىقارمايدۇ
 %s [تاللانما] <يېڭى ماشىنا ئاتى>

    -h --help            بۇ ياردەم ئۇچۇرىنى كۆرسىتىدۇ
    -V --version         نەشرىنى كۆرسىتىدۇ
    -v --verbose         verbose ھالىتىنى ئىناۋەتلىك قىلىدۇ
 : ھەممىسى
 : غەملەك تۈگەي دېدى
 <i>نۆۋەتتە ھېچقانداق مۇلازىمەت تاللانمىغان</i> كۆرىدىغان، NULL بىلەن ئاخىرلاشقان مۇلازىمەت تىپلىرىنىڭ تىزىمى زىيارەت رەت قىلىندى ئادرېس ئادرېس ئائىلىسى ئادرېس: Avahi بايقاش Avahi SSH مۇلازىمېتىر كۆرگۈ Avahi VNC مۇلازىمېتىر كۆرگۈ Avahi Zeroconf كۆرگۈ Avahi خېرىدارى مەغلۇپ بولدى: %s Avahi دائىرە كۆرگۈ مەغلۇپ بولدى: %s Avahi ھەل قىلغۇچى مەغلۇپ بولدى: %s پارامېتىرنىڭ سانى توغرا ئەمەس.
 ناچار ھالەت مۇلازىمەت تىپلىرىنى كۆرۈش توردىكى Zeroconf مۇلازىمەتلىرىنى كۆرۈش Zeroconf ئىناۋەتلىك قىلىنغان SSH مۇلازىمېتىرلىرىنى كۆرۈش Zeroconf ئىناۋەتلىك قىلىنغان VNC مۇلازىمېتىرلىرىنى كۆرۈش كۆرۈش مۇلازىمەت تىپىنىڭ تىزىمى قۇرۇق! دائىرە %2$s نىڭدىكى مۇلازىمەت تىپى %1$s نى كۆرۈش مەغلۇپ بولدى: %3$s دائىرە <b>%s</b> دىكى مۇلازىمەتلەرنى كۆرۈش: <b>يەرلىك تور</b> دىكى مۇلازىمەتلەرنى كۆرۈش: كۆرۈۋاتىدۇ… بىكار قىلىندى.
 دائىرە ئۆزگەرتىش SSH مۇلازىمېتىرىنى تاللاش Shell مۇلازىمېتىرىنى تاللاش VNC مۇلازىمېتىرىنى تاللاش خېرىدار مەغلۇپ بولدى، ئاخىرلاشتۇرۇۋاتىدۇ: %s
 ‹%s› غا باغلىنىۋاتىدۇ...
 DNS خاتالىقى: FORMERR DNS خاتالىقى: NOTAUTH DNS خاتالىقى: NOTIMP DNS خاتالىقى: NOTZONE DNS خاتالىقى: NXDOMAIN DNS خاتالىقى: NXRRSET DNS خاتالىقى: REFUSED DNS خاتالىقى: SERVFAIL DNS خاتالىقى: YXDOMAIN DNS خاتالىقى: YXRRSET Daemon باغلىنىشتا مەغلۇپ بولدى Daemon ئىجرا بولمىغان ئۈستەلئۈستى ئۈزۈلدى، قايتا باغلىنىۋاتىدۇ…
 دائىرە دائىرە ئاتى: E Ifce Prot %-*s %-20s دائىرىسى
 E Ifce Prot دائىرىسى
 ‹%s› دېگەن ئاتتا قۇرۇلدى
 ئادرېس قوشۇش مەغلۇپ بولدى: %s
 مۇلازىمەت قۇرۇش مەغلۇپ بولدى: %s
 تارماق تىپ ‹%s› نى قۇرۇش مەغلۇپ بولدى: %s
 Avahi مۇلازىمېتىرىغا باغلىنىش مەغلۇپ بولدى: %s ئادرېس ھەل قىلغۇچنى قۇرۇش مەغلۇپ بولدى: %s
 %s ئۈچۈن كۆرگۈ قۇرۇش مەغلۇپ بولدى: %s خېرىدار نەڭىنى قۇرۇش  مەغلۇپ بولدى: %s
 دائىرە كۆرگۈ قۇرۇش  مەغلۇپ بولدى: %s كىرگۈ گۇرۇپپىسى قۇرۇش مەغلۇپ بولدى: %s
 ماشىنا ئاتىنى ھەل قىلغۇچنى قۇرۇش مەغلۇپ بولدى: %s
 دائىرە %3$s نىڭدىكى تىپ %2$s  نىڭ %1$s  دېگەن ھەل قىلغۇچىنى قۇرۇش مەغلۇپ بولدى: %4$s ئاددىي poll نەڭىنى قۇرۇش مەغلۇپ بولدى.
 ئادرېس ‹%s› نى تەھلىل قىلىش مەغلۇپ بولدى
 ئېغىز نومۇرىنى تەھلىل قىلىش مەغلۇپ بولدى: %s
 ماشىنا ئاتىنى سۈرۈشتۈرۈش مەغلۇپ بولدى: %s
 نەشر تېكىستىنى سۈرۈشتۈرۈش مەغلۇپ بولدى: %s
 Avahi دائىرىسىنى ئوقۇش مەغلۇپ بولدى: %s خەتلىتىش مەغلۇپ بولدى: %s
 ئادرېس ‹%s› نى ھەل قىلىش مەغلۇپ بولدى: %s
 ماشىنا ئاتى ‹%s› نى ھەل قىلىش مەغلۇپ بولدى: %s
 دائىرە %3$s نىڭدىكى تىپ %2$s  نىڭ %1$s  دېگەن مۇلازىمىتىنى ھەل قىلىش مەغلۇپ بولدى: %4$s
 ماشىنا ئاتى ماشىنا ئاتىنىڭ توقۇنۇشى
 ماشىنا ئاتى %s غا مۇۋەپپەقىيەتلىك ئۆزگەرتىلدى
 دەسلەپلەشتۈرۈۋاتىدۇ… ئارايۈز: ئىناۋەتسىز DNS TTL ئىناۋەتسىز DNS تىپى(class) DNS نىڭ قايتۇرۇش كودى ئىناۋەتسىز ئىناۋەتسىز DNS تىپى ئىناۋەتسىز خاتالىق كودى ئىناۋەتسىز RDATA ئىناۋەتسىز  ئادرېس ئىناۋەتسىز ئارگۇمېنت ئىناۋەتسىز سەپلىمە ئىناۋەتسىز دائىرە ئاتى ئىناۋەتسىز بەلگىلەر ئىناۋەتسىز ماشىنا ئاتى ئىناۋەتسىز ئارايۈز ئىندېكسى ئۆزگەرگۈچى سانى ئىناۋەتسىز، پەقەت بىرىلا لازىم.
 ئىناۋەتسىز مەشغۇلات ئىناۋەتسىز بوغچىما ئىناۋەتسىز ئېغىز نومۇرى ئىناۋەتسىز كېلىشىم بەلگىلىمىسى ئىناۋەتسىز  خاتىرە ئىناۋەتسىز خاتىرە ئاچقۇچى ئىناۋەتسىز مۇلازىمەت نامى مۇلازىمەتنىڭ تارماق تۈرى ئىناۋەتسىز ئىناۋەتسىز  مۇلازىمەت تىپى قۇرۇق يەرلىك ئاتنىڭ توقۇنۇشى ئورنى ئەسلەك تۈگەي دېدى ئاتى ئاتى توقۇنۇشتى، يېڭى ‹%s› دېگەن ئاتنى ئىشلىتىڭ.
 بۇيرۇق كۆرسىتىلمىگەن.
 مۇۋاپىق تور كېلىشىمى يوق تېپىلمىدى يول قويۇلمايدۇ قوللىمايدۇ جەزملە مەشغۇلات سىستېما خاتالىقى مەشغۇلات مەغلۇپ بولدى ئېغىز مۇلازىمەتنى ھەل قىلىش مۇلازىمەت ماشىنا ئاتىنى ھەل قىلىش قايتىشتىن بۇرۇن تاللانغان مۇلازىمەتنىڭ ماشىنا ئاتىنى ئاپتوماتىك ھەل قىلىش قايتىشتىن بۇرۇن تاللانغان مۇلازىمەتنى ئاپتوماتىك ھەل قىلىش مەنبە خاتىرە ئاچقۇچى ئەندىزە ئىكەن مۇلازىمېتىر نەشرى: %s؛ ماشىنا ئاتى : %s
 مۇلازىمەت ئاتى مۇلازىمەت ئاتى: مۇلازىمەت تىپى مۇلازىمەت تىپى: TXT TXT سانلىق-مەلۇمات TXT سانلىق-مەلۇمات: تېرمىنال ھەل قىلىنغان مۇلازىمەتنىڭ IP ئېغىز نومۇرى ھەل قىلىنغان مۇلازىمەتنىڭ TXT سانلىق-مەلۇماتى ماشىنا ئاتىنى ھەل قىلىشتا ئىشلىتىلىدىغان ئادرېس ئائىلىسى ھەل قىلىنغان مۇلازىمەتنىڭ ئادرېسى كۆرىدىغان دائىرىنى كىرگۈزۈڭ ياكى كۆڭۈلدىكى دائىرە ئۈچۈن NULL نى كۆرسىتىپ بېرىڭ ھەل قىلىنغان مۇلازىمەتنىڭ ماشىنا ئاتى سۇنۇلغان نەڭ ئىناۋەتلىك ئەمەس تەلەپ قىلىنغان مەشغۇلات كېرەكسىز بولغاچقا ئىناۋەتسىز تاللانغان مۇلازىمەتنىڭ مۇلازىمەت ئاتى تاللانغان مۇلازىمەتنىڭ مۇلازىمەت تىپى ۋاقىت ھالقىدى ئارگۇمېنت بەك ئاز
 ئەركىن ئۆزگەرگۈچىلەر بەك كۆپ
 خېرىدارلار بەك كۆپ كىرگۈ بەك كۆپ نەڭلەر بەك كۆپ تىپى نەشرى ماسلاشمىدى daemon نى كۈتۈۋاتىدۇ…
 دائىرە(_D)… avahi_domain_browser_new() مەغلۇپ بولدى: %s
 avahi_service_browser_new() مەغلۇپ بولدى: %s
 avahi_service_type_browser_new() مەغلۇپ بولدى: %s
 بوش execlp() مەغلۇپ بولدى: %s
 n/a service_browser مەغلۇپ بولدى: %s
 service_type_browser() مەغلۇپ بولدى: %s
 