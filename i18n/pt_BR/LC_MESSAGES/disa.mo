��    -      �  =   �      �  ~   �  h   `     �     �     �  �   �     p     }  	   �     �     �     �     �    �  	   �  	   �    �     h     q  V   x     �  
   �     �  4   �  =   #	  =   a	     �	     �	     �	  0   �	     �	     �	     
     :
     O
     U
     f
     n
  #   u
  �   �
  q   !  *   �     �  x   �  �  ;  �     }   �     %     -     <  �   R               6     B     `  $   i     �    �  
   �  	   �  �  �     �     �  Z   �     �     
       ;     R   [  :   �     �     �     �  E   �  )   >  $   h  "   �     �  	   �     �     �     �  %   �  �   !  z   �  +   -     Y  l   ]              '   %                    "                                           ,       &                            $   	                     (      -         +   
   #   !       *                 )                (Experts Only) Sets the context that calls will originate from. Leave this as from-internal unless you know what you're doing. (Optional) When using this DISA, the users CallerID will be set to this. Format is "User Name" <5551234> Actions Add DISA Allow Hangup Allow the current call to be disconnected and dial tone presented for a new call by pressing the Hangup feature code: %s while in a call Applications Call Recording Caller ID Caller ID Override Context Context cannot be blank DISA DISA Allows you 'Direct Inward System Access'. This gives you the ability to have an option on an IVR that gives you a dial tone, and you're able to dial out from the FreePBX machine as if you were connected to a standard extension. It appears as a Destination. DISA List DISA Name DISA is used to allow people from the outside world to call into your PBX and then be able to dial out of the PBX so it appears that their call is coming from the office which can be handy when traveling. You can set a destination in an IVR that points to the DISA or set a DID. Make sure you password protect this to keep people from dialing in and using your PBX to make calls out. DISA: %s Delete Determine if we keep the Caller ID being presented or if we override it. Default is No Digit Timeout Don't Care Force Give this DISA a brief name to help you identify it. If you choose Yes the disa will pass the caller id set above. If you wish to have multiple PIN's, separate them with commas Never No PIN Please enter a valid Caller ID or leave it blank Please enter a valid DISA Name Please enter a valid DISA PIN Record calls that use this DISA Require Confirmation Reset Response Timeout Seconds Submit The DISA Name provided is too long. The maximum amount of time it will wait before hanging up if the user has dialed an incomplete or invalid number. Default of 10 seconds The maximum amount of time permitted between digits when the user is typing in an extension. Default of 5 seconds The user will be prompted for this number. Yes equire Confirmation before prompting for password. Used when your PSTN connection appears to answer the call immediately Project-Id-Version: PACKAGE VERSION
Report-Msgid-Bugs-To: 
POT-Creation-Date: 2018-08-31 18:52-0400
PO-Revision-Date: 2016-12-12 22:54+0200
Last-Translator: Alexander <alexander.schley@paranagua.pr.gov.br>
Language-Team: Portuguese (Brazil) <http://weblate.freepbx.org/projects/freepbx/disa/pt_BR/>
Language: pt_BR
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Plural-Forms: nplurals=2; plural=n != 1;
X-Generator: Weblate 2.4
 (Somente Especialistas) Define o contexto de onde as chamadas serão originadas. Deixe isso como de interno, a menos que saiba o que está fazendo. (Opcional) Ao usar este DISA,  ID Chamador dos usuários serão definidos para ele. O formato é "Nome de Usuário" <5551234> Ações Adicionar DISA Permitir Desligamento Permitir que a chamada atual seja desconectada e o tom de discagem seja apresentado para uma nova chamada pressionando o código de recurso de Desligamento: %s enquanto estiver em uma chamada Aplicações Gravação de Chamadas ID Chamador Substituição do ID Chamador Contexto O contexto não pode ficar em branco DISA DISA permite que você "direcione o acesso interno ao sistema". Isso lhe dá a capacidade de ter uma opção em uma URA que lhe dá um tom de discagem e você pode discar para fora da máquina FreePBX como se estivesse conectado a um ramal padrão. Aparece como um Destino. Lista DISA Nome DISA DISA é usado para permitir que as pessoas do mundo exterior possam chamar em sua central PBX e, em seguida, sejam capazes de discar pelo PBX, assim parecendo que sua chamada está vindo do escritório, o que pode ser útil quando se está viajando. Você pode definir um destino em uma URA que aponta para o DISA ou definir um DID. Certifique-se de que a senha está protegida para evitar que as pessoas façam discagem e usem seu PBX para fazer chamadas. DISA: %s Apagar Determine se mantem o ID  chamador apresentado ou se será substituído. O padrão é Não Tempo Limite de Digitação Não Importa Forçar Dê a esta DISA um breve nome para ajudar a identificá-la. Se você escolher Sim, o disa passará o identificador de chamadas definido acima. Se você deseja ter vários PIN's, separe-os com vírgulas Nunca Não PIN Introduza uma identificação de chamada válida ou deixe-a em branco Por favor, digite um nome válido da DISA Por favor insira um PIN DISA válido Gravar chamadas que user essa DISA Solicitar Confirmação Reiniciar Tempo Limite de Resposta Segundos Enviar O nome DISA fornecido é muito longo. A quantidade máxima de tempo de espera antes de desligar se o usuário tiver discado um número incompleto ou inválido. Padrão de 10 segundos A quantidade máxima de tempo permitido entre dígitos quando o usuário estiver digitando um ramal. Padrão de 5 segundos O usuário será avisado para este número. Sim Exigir confirmação antes de solicitar a senha. Usado quando a conexão PSTN atende a chamada imediatamente 