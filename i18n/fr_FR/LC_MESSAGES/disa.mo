��    -      �  =   �      �  ~   �  h   `     �     �     �  �   �     p     }  	   �     �     �     �     �    �  	   �  	   �    �     h     q  V   x     �  
   �     �  4   �  =   #	  =   a	     �	     �	     �	  0   �	     �	     �	     
     :
     O
     U
     f
     n
  #   u
  �   �
  q   !  *   �     �  x   �  �  ;  �     o   �     �     �     
  �         �     �     �     �     �     �              ;     I  ]  R  	   �  	   �  j   �     /     N     Z  8   a  L   �  D   �     ,     3     7  @   ;  *   |  *   �  ,   �     �          #     C  	   L  !   V  �   x  {     &   �     �  �   �              '   %                    "                                           ,       &                            $   	                     (      -         +   
   #   !       *                 )                (Experts Only) Sets the context that calls will originate from. Leave this as from-internal unless you know what you're doing. (Optional) When using this DISA, the users CallerID will be set to this. Format is "User Name" <5551234> Actions Add DISA Allow Hangup Allow the current call to be disconnected and dial tone presented for a new call by pressing the Hangup feature code: %s while in a call Applications Call Recording Caller ID Caller ID Override Context Context cannot be blank DISA DISA Allows you 'Direct Inward System Access'. This gives you the ability to have an option on an IVR that gives you a dial tone, and you're able to dial out from the FreePBX machine as if you were connected to a standard extension. It appears as a Destination. DISA List DISA Name DISA is used to allow people from the outside world to call into your PBX and then be able to dial out of the PBX so it appears that their call is coming from the office which can be handy when traveling. You can set a destination in an IVR that points to the DISA or set a DID. Make sure you password protect this to keep people from dialing in and using your PBX to make calls out. DISA: %s Delete Determine if we keep the Caller ID being presented or if we override it. Default is No Digit Timeout Don't Care Force Give this DISA a brief name to help you identify it. If you choose Yes the disa will pass the caller id set above. If you wish to have multiple PIN's, separate them with commas Never No PIN Please enter a valid Caller ID or leave it blank Please enter a valid DISA Name Please enter a valid DISA PIN Record calls that use this DISA Require Confirmation Reset Response Timeout Seconds Submit The DISA Name provided is too long. The maximum amount of time it will wait before hanging up if the user has dialed an incomplete or invalid number. Default of 10 seconds The maximum amount of time permitted between digits when the user is typing in an extension. Default of 5 seconds The user will be prompted for this number. Yes equire Confirmation before prompting for password. Used when your PSTN connection appears to answer the call immediately Project-Id-Version: PACKAGE VERSION
Report-Msgid-Bugs-To: 
POT-Creation-Date: 2020-08-17 02:44+0000
PO-Revision-Date: 2017-12-01 22:40+0200
Last-Translator: CATTAN Jérémie <jeremie@famillecattan.com>
Language-Team: French <http://weblate.freepbx.org/projects/freepbx/disa/fr_FR/>
Language: fr_FR
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Plural-Forms: nplurals=2; plural=n > 1;
X-Generator: Weblate 2.4
 (Experts seulement) Le contexte utilisé pour effectuer un appel. Laisser à "from-internal" à moins de savoir ce que vous faites. (Optionnel) L'ID appelant à utiliser lorsque vous utilisez ce DISA. Son format est "Nom Utilisateur" <5551234> Actions Ajouter DISA Permette de raccroche Permet de terminer l'appel en cours et d'avoir une tonalité d'appel pour procéder à un autre appel en pressant le code %s durant un appel Applications Enregistrer l'appel ID Appelant Remplacer ID appelant Contexte Le contexte ne peut être vide DISA DISA Vous permet l'accès distant au PBX. Ce qui vous donne la possibilité d'avoir une option dans une RVI qui, lorsque composée, donne une tonalité de composition pour entrer un numéro de téléphone et utiliser le FreePBX pour effectuer l'appel. Il apparaîtra comme destination. Liste de DISA Nom DISA DISA est utilisé pour permettre au monde extérieur d'utiliser votre PBX pour placer des appels externe qui semble provenir du bureau ce qui peut-être très utile sur la route. Vous pouvez le définir comme destination dans un  SVI ou comme destination pour un SDA (DID). Assurez-vous de mettre un mot de passe pour protéger l'accès à celui-ci. DISA : %s Supprimer Détermine si on conserve l'identification de l'appelant présenté ou si on l'écrase. Le défaut est Non Délais d'attente des chiffres Peu importe Forcer Donner à ce DISA un nom pour permettre de l'identifier. Si vous choisissez Oui le DISA va forcer l'identifiant spécifié ci-dessus. Si vous désirez avoir plusieurs NIPs, séparez-les par des virgules Jamais Non NIP S'il vous plaît saisir un ID appelant valide ou laisser à vide S'il vous plaît saisir un nom DISA valide S'il vous plaît saisir un NIP DISA valide Enregistrer les appels qui utilisent ce DISA Demande confirmation Réinitialiser Délai d'attente de la réponse Secondes Soumettre Le nom DISA fourni est trop long. Le temps d'attente maximal avant de raccrocher si l'utilisateur à signalé un numéro incomplet ou invalide. Par défaut, il s'agit de 10 secondes Le temps d'attente maximal entre les chiffres lors de la saisie d'un numéro de poste. Par défaut, il s'agit de 5 secondes L'utilisateur devra saisir ce numéro. Oui Requiert une confirmation avant de demander un mot de passe. À utiliser lorsque votre ligne téléphonique semble répondre à l'appel immédiatement 