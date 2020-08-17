��    -      �  =   �      �  ~   �  h   `     �     �     �  �   �     p     }  	   �     �     �     �     �    �  	   �  	   �    �     h     q  V   x     �  
   �     �  4   �  =   #	  =   a	     �	     �	     �	  0   �	     �	     �	     
     :
     O
     U
     f
     n
  #   u
  �   �
  q   !  *   �     �  x   �  �  ;  {     v   �                 �   -     �     �               /  *   8     c    h  
   �  	   �  �  �     z     �  b   �     �            :     G   O  >   �     �     �     �  7   �  #        =  1   [     �     �     �     �     �  %   �  �   �  n   �  )   �        �   #              '   %                    "                                           ,       &                            $   	                     (      -         +   
   #   !       *                 )                (Experts Only) Sets the context that calls will originate from. Leave this as from-internal unless you know what you're doing. (Optional) When using this DISA, the users CallerID will be set to this. Format is "User Name" <5551234> Actions Add DISA Allow Hangup Allow the current call to be disconnected and dial tone presented for a new call by pressing the Hangup feature code: %s while in a call Applications Call Recording Caller ID Caller ID Override Context Context cannot be blank DISA DISA Allows you 'Direct Inward System Access'. This gives you the ability to have an option on an IVR that gives you a dial tone, and you're able to dial out from the FreePBX machine as if you were connected to a standard extension. It appears as a Destination. DISA List DISA Name DISA is used to allow people from the outside world to call into your PBX and then be able to dial out of the PBX so it appears that their call is coming from the office which can be handy when traveling. You can set a destination in an IVR that points to the DISA or set a DID. Make sure you password protect this to keep people from dialing in and using your PBX to make calls out. DISA: %s Delete Determine if we keep the Caller ID being presented or if we override it. Default is No Digit Timeout Don't Care Force Give this DISA a brief name to help you identify it. If you choose Yes the disa will pass the caller id set above. If you wish to have multiple PIN's, separate them with commas Never No PIN Please enter a valid Caller ID or leave it blank Please enter a valid DISA Name Please enter a valid DISA PIN Record calls that use this DISA Require Confirmation Reset Response Timeout Seconds Submit The DISA Name provided is too long. The maximum amount of time it will wait before hanging up if the user has dialed an incomplete or invalid number. Default of 10 seconds The maximum amount of time permitted between digits when the user is typing in an extension. Default of 5 seconds The user will be prompted for this number. Yes equire Confirmation before prompting for password. Used when your PSTN connection appears to answer the call immediately Project-Id-Version: 2.5
Report-Msgid-Bugs-To: 
POT-Creation-Date: 2020-08-17 02:44+0000
PO-Revision-Date: 2018-05-29 09:26+0000
Last-Translator: Stell0 <stefano.fancello@nethesis.it>
Language-Team: Italian <http://*/projects/freepbx/disa/it/>
Language: it_IT
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Plural-Forms: nplurals=2; plural=n != 1;
X-Generator: Weblate 2.19.1
X-Poedit-Language: Italian
X-Poedit-Country: ITALY
 (Solo Esperti) Impostare il contesto da cui partiranno le chiamate. Lasciare questo su 'from-internal' se non si è sicuri. (Opzionale) Quando viene utilizzato il DISA, l'utente avrà questo ID Chiamante. Il Formato è "Nome Utente" <5551234> Azioni Aggiunta DISA Permetti Riaggancio Permette alla chiamata corrente di essere disconnessa e ripresentare il tono di libero per effettuare una nuova chiamata premendo durante la chiamata il Codice Servizio di Riaggancio: %s Applicazioni Registrazione chiamata ID Chiamante Override ID chiamante Contesto Il contesto non può essere lasciato vuoto DISA DISA Ti consente "Accesso diretto al sistema in entrata". Questo ti dà la possibilità di avere un'opzione su un IVR che ti dà un segnale di linea, e sei in grado di chiamare dal dispositivo FreePBX come se fossi connesso a un'estensione standard. Appare come una destinazione. Lista DISA Nome DISA DISA viene utilizzato per consentire alle persone provenienti dal mondo esterno di chiamare nel proprio PBX e quindi essere in grado di chiamare dal PBX in modo che appaia che la loro chiamata proviene dall'ufficio e che può essere utile quando si viaggia. È possibile impostare una destinazione in un IVR che punta al DISA o impostare un DID. Assicurati di proteggere con password questo per impedire alle persone di effettuare chiamate e utilizzare il PBX per effettuare chiamate. DISA: %s Elimina Determina se teniamo presente l'ID chiamante o se lo sostituiamo. L'impostazione predefinita è No Timeout Digitazione Non importa Forza Dare al DISA un nome breve per una facile identificazione. Se si sceglie Sì, la disa passerà l'id del chiamante sopra impostato. Si possono anche inserire più PIN, da separare con le virgole Mai No PIN Prego immettere un ID Chiamante valido o lasciare vuoto Prego immettere un Nome DISA valido Prego immettere un PIN valido Registrare le chiamate che utilizzano questo DISA Richiedi Conferma Azzerare Timeout Risposta Secondi Sottoscrivi Il nome DISA fornito è troppo lungo. Il tempo massimo che il sistema attende prima di riagganciare se un utente ha digitato un numero incompleto o sbagliato. Predefinito è 10 secondi. Il tempo massimo consentito tra le cifre quando l'utente sta digitando un'estensione. Predefinito di 5 secondi All'utente sarà richiesto questo numero. Si richiede la conferma prima di richiedere la password. Utilizzato quando la connessione PSTN sembra rispondere immediatamente alla chiamata 