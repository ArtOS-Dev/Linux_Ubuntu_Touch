��    �      D  �   l
      �  �  �  h   �  �   �  i  �  b  U  �   �     R     a  %   t  5   �     �     �     �     �     �          '     @     W      p     �     �  	   �     �  6   �  '     '   C  "   k  4   �  *   �  .   �       
   )     4     B     T     h     z     �     �     �     �     �               -     B     X     n     �     �     �     �     �     �     �     
          ;     V     q  %   �  &   �  #   �  #     #   &  !   J  (   l  <   �  %   �     �           7  #   V     z     �  #   �  %   �  ?   �  	   <     F  %   Z     �  
   �     �     �     �     �     �     �               (     >     R     `     r  4   �     �     �     �     �           "      5      J      b      w      �      �      �      �   '   �      �   &   �   	   !     $!     2!     @!     C!     L!     ]!     b!     r!  L   �!  ;   �!     "  "   4"     W"     d"     r"     "     �"     �"  	   �"     �"  *   �"  $   �"  +   �"  #   )#  7   M#  %   �#  "   �#  4   �#  (   $  (   ,$     U$     e$     x$     �$     �$     �$     �$     �$     �$  
   �$  &   �$  '   %  ,   G%     t%     z%     �%     �%      �%  �  �%  J  �'  �   �+  �  �,    @.  o  T0  �   �4  "   �5  :   �5  4    6  �   56  #   �6     �6  )   7     -7     A7  5   T7  7   �7  #   �7  !   �7  :   8  #   C8  -   g8     �8  7   �8  i   �8  Z   S9  [   �9  U   
:  m   `:  D   �:  N   ;     b;     x;     �;  )   �;  P   �;  )    <  0   J<  "   {<     �<     �<     �<     �<     =     4=     R=     p=     �=     �=  4   �=  /   >  #   1>  B   U>     �>     �>  4   �>  )   ?  9   -?  =   g?  ;   �?  A   �?  G   #@  R   k@  H   �@  R   A  I   ZA  J   �A  c   �A  r   SB  b   �B  >   )C  @   hC  J   �C  P   �C  8   ED  &   ~D  D   �D  U   �D  v   @E     �E  9   �E  7   F     IF     eF     uF      �F  C   �F  "   �F  5   G     PG  $   hG  !   �G  #   �G  &   �G  "   �G  6   H  5   TH  j   �H  )   �H     I  -   >I  ?   lI  $   �I  5   �I  /   J  8   7J  1   pJ     �J  .   �J     �J  $   �J  
   K  O   (K  ,   xK  L   �K     �K     L  !   $L     FL     UL  &   eL     �L  +   �L  C   �L  �   M  x   �M  N   -N  K   |N     �N     �N     O     #O     BO     FO     [O     qO  ]   �O  L   �O  x   /P  H   �P  }   �P  ^   oQ  R   �Q  u   !R  S   �R  >   �R      *S  #   KS  %   oS  ,   �S  6   �S  6   �S  
   0T  1   ;T  %   mT     �T  0   �T  1   �T  6   U     >U     GU     gU  %   U  *   �U     I   �   2   �   -   q                                  x      �       �   �   Z   R   �       b   +   ?   �   k   (   �   �   N       G      �       �   �       �          �   p          n         1   �           )   .       &       �      �   �             #   X   a       �   �       J   6   c   ~   z   }   W   y           �   �   =   U       g   j          B           _       �          ;   Q      /       5       [       i      �       '       �   �   
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
 Project-Id-Version: el
Report-Msgid-Bugs-To: 
POT-Creation-Date: 2015-12-03 14:10+0000
PO-Revision-Date: 2015-12-04 01:33+0000
Last-Translator: Launchpad Translations Administrators <Unknown>
Language-Team: American English <fedora-trans-el@redhat.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-Launchpad-Export-Date: 2016-06-27 17:41+0000
X-Generator: Launchpad (build 18115)
Language: 
     -h --help Εμφάνιση αυτής της βοήθειας
    -V --version Εμφάνιση έκδοσης
    -D --browse-domains Περιήγηση σε τομείς περιήγησης αντί για υπηρεσίες
    -a --all Εμφάνιση όλων των υπηρεσιών, ανεξαρτήτως τύπου
    -d --domain=ΤΟΜΕΑΣ Ο τομέας στον οποίο θα περιηγηθείτε
    -v --verbose Ενεργοποίηση εκτενούς μορφής
    -t --terminate Τερματισμός μετά τη λήψη μιας περίπου ολοκληρωμένης λίστας
    -c --cache Τερματισμός μετά τη λήψη όλων των εγγραφών από την προσωρινή μνήμη
    -l --ignore-local Αγνόηση τοπικών υπηρεσιών
    -r --resolve Ανάκτηση υπηρεσιών που βρέθηκαν
    -f --no-fail Μη αποτυχία εάν ο δαίμονας δεν είναι διαθέσιμος
    -p --parsable Παροχή εξόδου σε αναλύσιμη μορφή
     -k --no-db-lookup Να μη γίνει αναζήτηση τύπου υπηρεσιών
    -b --dump-db Εξαγωγή βάσης δεδομένων τύπων υπηρεσιών
 %s [επιλογές]

    -h --help           Εμφανίζει αυτή τη βοήθεια
    -s --ssh             Περιήγηση για διακομιστές SSH
    -v --vnc            Περιήγηση για  διακομιστές VNC
    -S --shell          Περιήγηση για διακομιστές SSH και VNC
    -d --domain=DOMAIN   Ο τομές στον οποίο θα γίνει η περιήγηση
 %s [επιλογές] %s <host name ...>
%s [επιλογές] %s <διεύθυνση ... >

    -h --help            Εμφάνιση βοήθειας
    -V --version         Εμφάνιση έκδοσης
    -n --name            Μετάφραση host name
    -a --address         Μετάφραση διεύθυνσης
    -v --verbose         Ενεργοποίηση verbose mode
    -6                   Αναζήτηση διεύθυνσης IPv6
    -4                   Αναζήτηση διεύθυνσης IPv4
 %s [επιλογές] %s <όνομα> <τύπος> <θύρα> [<txt ...>]
%s [επιλογές] %s <όνομα-υπολογιστή> <διεύθυνση>

    -h --help            Εμφάνιση αυτής της βοήθειας
    -V --version         Εμφάνιση αυτής της έκδοσης
    -s --service         Δημοσίευση υπηρεσίας
    -a --address         Δημοσίευση διεύθυνσης
    -v --verbose         Ενεργοποιείστε την λεπτομερή λειτουργία
    -d --domain=ΤΟΜΕΑΣ   Τομέας να δημοσιεύση την υπηρεσία σε
    -H --host=ΥΠΟΛΟΓΙΣΤΗΣ     Κεντρικός υπολογιστής όπου η υπηρεσία βρίσκεται
       --subtype=ΥΠΟΤΥΠΟΣ Ένα επιπλέον υπότυπο να εγγραφείτε στην υπηρεσία με
    -R --no-reverse      Μην δημοσιεύετε αντίστροφη είσοδο με τη διεύθυνση
    -f --no-fail        Να μην αποτύχει αν ο δαίμονας δεν είναι διαθέσιμος
 %s [επιλογές] <νέο host name>

    -h --help            Εμφάνιση βοήθειας
    -V --version         Εμφάνιση έκδοσης
    -v --verbose         Ενεργοποίηση verbose mode
 : Όλα προς το παρόν
 : Εξαντλήθηκε η προσωρινή μνήμη
 <i>Δεν επιλέχθηκε υπηρεσία.</i> Μια λίστα από τύπους υπηρεσιών, που διαχωρίζεται με το χαρακτήρα NULL, για περιήγηση Αποτυχία πρόσβασης Διεύθυνση Κατηγορία διευθύνσεων Διεύθυνση: Εύρεση Avahi Περιηγητής εξυπηρετητή SSH Avahi Περιηγητής εξυπηρετητών VNC Avahi Περιηγητής Zeroconf Avahi Αποτυχία Avahi client: %s Αποτυχία περιήγησης τομέα Avahi: %s Αποτυχία Avahi resolver: %s Λάθος αριθμός ορισμάτων
 Κακή κατάσταση Περιήγηση σε τύπους υπηρεσιών Περιήγηση στις διαθέσιμες υπηρεσίες Zeroconf του δικτύου σας Αναζήτηση εξυπηρετητών SSH με ενεργοποιημένο Zeroconf Αναζητήστε Zeroconf-ενεργοποιημένους εξυπηρετητές VNC Η λίστα περιήγησης τύπου υπηρεσίας είναι κενή! Αποτυχία αναζήτησης για τον τύπο υπηρεσίας %s στον τομέα %s: %s Περιήγηση υπηρεσιών στον τομέα <b>%s</b>: Περιήγηση υπηρεσιών στο <b>τοπικό δίκτυο</b>: Περιήγηση... Ακυρώθηκε.
 Αλλαγή τομέα Επιλέξτε διακομιστή SSH Επιλέξτε διακομιστή για σύνδεση φλοιού (shell) Επιλέξτε διακομιστή VNC Αποτυχία πελάτη, έξοδος: %s
 Σύνδεση με το '%s' ...
 Αποτυχία DNS: FORMERR Αποτυχία DNS: NOTAUTH Αποτυχία DNS: NOTIMP Αποτυχία DNS: NOTZONE Αποτυχία DNS: NXDOMAIN Αποτυχία DNS: NXRRSET Αποτυχία DNS: REFUSED Αποτυχία DNS: SERVFAIL Αποτυχία DNS: YXDOMAIN Αποτυχία DNS: YXRRSET Αποτυχία σύνδεσης υπηρεσίας Η υπηρεσία δεν εκτελείται Επιφάνεια εργασίας Αποσύνδεση, γίνεται επανασύνδεση ...
 Επίθημα (domain) Επίθημα (domain name): Γ Διασύνδ. Πρωτ %-*s %-20s Τομέας
 Γ Διασύνδ. Πρωτ Τομέας
 Δημιουργήθηκε υπό το όνομα «%s»
 Αποτυχία προσθήκης διεύθυνσης: %s
 Αποτυχία προσθήκης υπηρεσίας: %s
 Αποτυχία προσθήκης υπο-τύπου «%s»: %s
 Αποτυχία σύνδεσης στο διακομιστή Avahi: %s Αποτυχία δημιουργίας ανακτητή διεύθυνσης: %s
 Αποτυχία δημιουργίας περιηγητή για %s: %s Αποτυχία δημιουργίας αντικειμένου πελάτη: %s
 Αποτυχία δημιουργίας περιηγητή τομέα: %s Αποτυχία δημιουργίας ομάδος εγγραφής: %s
 Αποτυχία δημιουργίας ανακτητή ονόματος υπολογιστή: %s
 Αποτυχία δημιουργίας ανακτητή για %s του τύπου %s στον τομέα %s: %s Αποτυχία δημιουργίας αντικειμένου απλής ψηφοφορίας.
 Αποτυχία ανάλυσης διεύθυνσης «%s»
 Αποτυχία ανάλυσης αριθμού θύρας: %s
 Αποτυχία εύρεσης ονόματος υπολογιστή: %s
 Αποτυχία εύρεσης αλφαριθμητικού έκδοσης: %s
 Αποτυχία ανάγνωσης τομέα Avahi: %s Αποτυχία εγγραφής: %s
 Αποτυχία ανάκτησης διεύθυνσης «%s»: %s
 Αποτυχία ανάκτησης ονόματος υπολογιστή «%s»: %s
 Αποτυχία ανάκτησης υπηρεσίας «%s» του τύπου «%s» στον τομέα «%s»: %s
 Όνομα υπολογιστή Σύγκρουση ονόματος υπολογιστή
 Επιτυχής αλλαγή του host name σε %s
 Αρχικοποίηση… Διεπαφή: Λανθασμένο DNS TTL Μη έγκυρη κλάση DNS Μη έγκυρος επιστρεφόμενος κωδικός DNS Μη έγκυρος τύπος DNS Μη έγκυρος κωδικός σφάλματος Μη έγκυρο RDATA Μη έγκυρη διεύθυνση Λανθασμένο όρισμα Λανθασμένη ρύθμιση Λανθασμένο όνομα domain Μη έγκυρες σημαίες Λανθασμένο όνομα εξυπηρετητή Μη έγκυρο ευρετήριο διεπαφής Μη έγκυρος αριθμός ορισμάτων, αναμενόταν μόνο ένα όρισμα.
 Λανθασμένη λειτουργία Μη έγκυρο πακέτο Μη έγκυρος αριθμός θύρας Μη έγκυρος καθορισμός πρωτοκόλλου Μη έγκυρη καταγραφή Μη έγκυρη καταγραφή κλειδιού Μη έγκυρο όνομα υπηρεσίας Μη έγκυρος υπο-τύπος υπηρεσίας Μη έγκυρος τύπος υπηρεσίας Είναι κενό Διένεξη τοπικού ονόματος Τοποθεσία Η μνήμη εξαντλήθηκε Όνομα Σύγκρουση ονομάτων,  επιλογή ενός νέου «%s».
 Δεν καθορίστηκε εντολή.
 Δεν υπάρχει διαθέσιμο πρωτόκολλο δικτύου Δε βρέθηκε Δεν επιτρέπεται Δεν υποστηρίζεται Εντάξει Σφάλμα OS Η λειτουργία απέτυχε Θύρα Υπηρεσία επίλυσης (resolve) Όνομα υπολογιστή υπηρεσίας επίλυσης Επιλύστε το όνομα του υπολογιστή της προεπιλεγμένης υπηρεσίας αυτόματα πριν από την επιστροφή Επιλύστε την επιλεγμένη υπηρεσία αυτόματα πριν από την επιστροφή Το κλειδί του πόρου εγγραφής είναι πρότυπο Έκδοση διακομιστή: %s; Όνομα υπολογιστή: %s
 Όνομα Υπηρεσίας Όνομα υπηρεσίας: Τύπος υπηρεσίας Είδος υπηρεσίας: TXT Δεδομένα TXT Δεδομένα TXT: Τερματικό Το νούμερο της IP πόρτας της ανακτηθείσας υπηρεσίας Τα TXT δεδομένα της ανακτηθείσας υπηρεσίας Η διεύθυνση οικογένειας για την ανάλυση του κεντρικού υπολογιστή Η διεύθυνση της ανακτηθείσας υπηρεσίας Ο τομέας όπου θα περιηγηθείτε ή NULL (κενό) για τον προεπιλεγμένο τομέα Το όνομα του υπολογιστή της ανακτηθείσας υπηρεσίας Η εισαγωγή του αντικειμένου δεν είναι έγκυρη Η λειτουργία που ζητήθηκε δεν είναι έγκυρη επειδή είναι περιττή Το όνομα υπηρεσίας της επιλεγμένης υπηρεσίας Ο τύπος της επιλεγμένης υπηρεσίας Λήξη ορίου χρόνου Πολύ λίγα ορίσματα
 Πάρα πολλά ορίσματα
 Μεγάλος αριθμός πελατών Μεγάλος αριθμός καταχωρήσεων Μεγάλος αριθμός αντικειμένων Τύπος Δεν ταιριάζουν οι εκδόσεις Αναμονή υπηρεσίας...
 _Τομέας... αποτυχία avahi_domain_browser_new(): %s
 αποτυχία avahi_service_browser_new(): %s
 αποτυχία avahi_service_type_browser_new(): %s
 κενό αποτυχία execlp() : %s
 μη διαθέσιμο αποτυχία service_browser: %s
 αποτυχία service_type_browser: %s
 