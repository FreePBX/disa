��    -      �  =   �      �  ~   �  h   `     �     �     �  �   �     p     }  	   �     �     �     �     �    �  	   �  	   �    �     h     q  V   x     �  
   �     �  4   �  =   #	  =   a	     �	     �	     �	  0   �	     �	     �	     
     :
     O
     U
     f
     n
  #   u
  �   �
  q   !  *   �     �  x   �    ;  �   D  �   4          )  ;   ;  .  w     �      �     �     �     �  8        E    J     Z     l  �  }     z     �  �   �  <   0     m     �  s   �  d     j   k     �     �     �  X   �  6   E  3   |  N   �  '   �     '  6   6     m     |  G   �  �   �  �   �  O   �     �  �   �              '   %                    "                                           ,       &                            $   	                     (      -         +   
   #   !       *                 )                (Experts Only) Sets the context that calls will originate from. Leave this as from-internal unless you know what you're doing. (Optional) When using this DISA, the users CallerID will be set to this. Format is "User Name" <5551234> Actions Add DISA Allow Hangup Allow the current call to be disconnected and dial tone presented for a new call by pressing the Hangup feature code: %s while in a call Applications Call Recording Caller ID Caller ID Override Context Context cannot be blank DISA DISA Allows you 'Direct Inward System Access'. This gives you the ability to have an option on an IVR that gives you a dial tone, and you're able to dial out from the FreePBX machine as if you were connected to a standard extension. It appears as a Destination. DISA List DISA Name DISA is used to allow people from the outside world to call into your PBX and then be able to dial out of the PBX so it appears that their call is coming from the office which can be handy when traveling. You can set a destination in an IVR that points to the DISA or set a DID. Make sure you password protect this to keep people from dialing in and using your PBX to make calls out. DISA: %s Delete Determine if we keep the Caller ID being presented or if we override it. Default is No Digit Timeout Don't Care Force Give this DISA a brief name to help you identify it. If you choose Yes the disa will pass the caller id set above. If you wish to have multiple PIN's, separate them with commas Never No PIN Please enter a valid Caller ID or leave it blank Please enter a valid DISA Name Please enter a valid DISA PIN Record calls that use this DISA Require Confirmation Reset Response Timeout Seconds Submit The DISA Name provided is too long. The maximum amount of time it will wait before hanging up if the user has dialed an incomplete or invalid number. Default of 10 seconds The maximum amount of time permitted between digits when the user is typing in an extension. Default of 5 seconds The user will be prompted for this number. Yes equire Confirmation before prompting for password. Used when your PSTN connection appears to answer the call immediately Project-Id-Version: FreePBX v2.5
Report-Msgid-Bugs-To: 
POT-Creation-Date: 2019-01-04 18:44-0500
PO-Revision-Date: 2018-07-18 19:11+0000
Last-Translator: Chavdar Shtiliyanov <chavdar_75@yahoo.com>
Language-Team: Bulgarian <http://*/projects/freepbx/disa/bg/>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Language: bg_BG
Plural-Forms: nplurals=2; plural=n != 1;
X-Generator: Weblate 2.19.1
X-Poedit-Language: Bulgarian
X-Poedit-Country: BULGARIA
X-Poedit-SourceCharset: utf-8
 (Само за Експерти) Установете контекст от който ще се извършват обажданията. Оставете from-internal освен ако знаете какво точно правите. (Незадължително) Когато използвате тази DISA, потребителските CallerID ще се установяват на това. Формат: "Потребителско Име" <5551234> Действия Добави DISA Позволи Прекъсване на Разговора Позволи на текущото обаждане да се разкачи и да се появи тон за избиране на ново  обаждане като се натисне специален код за Прекъсване на Разговора: %s докато говорите Приложения Запис на Разговор CallerID CallerID Замяна Контекст Трябва да има въведен контекст DISA DISA Ви разрешава 'Директен Вътрешен Достъп до Системата'. Предоставя ви възможност да въведете опция в IVR която да ви даде сигнал за  избиране, като по този начин ще можете да избирате навън от FreePBX централата все едно сте свързани като нормална вътрешна линия. Представя се като Направление. DISA Списък Име на DISA DISA се използва за да позволи на хора отвън да се обаждат на вашата централа и тогава да им се разреши да избират номера извън централата, като прави обаждането да изглежда все едно е направено от вашия офис което е полезно при пътувания. Можете да установите направление в IVR което да насочва към DISA или да зададете DID. Убедете се че сте поставили парола за употреба за да се предпазите от неоторизиран достъп до услугата. DISA: %s Изтрий Определете дали ще запазим Caller ID на обаждащия се или ще го заменим. По подразбиране е Не Време на Изчакване Между Цифрите Без Значение Винаги Дайте на DISA описващо име за да ви помогне при идентифицирането. Ако изберете Да, DISA ще пропусне въведения по-горе caller id. Ако искате да имате наколко PIN кода, разделете ги с запетая Никога Не PIN Моля въведете правилен CallerID или оставете празно Моля въведете правилно DISA Име Моля въведете правилен DISA PIN Запис на разговори които използват тази DISA Изисква Потвърждение Изчисти Време на Изчакване на Отговор Секунди Приеми Въведеното Име за DISA е прекалено дълго. Максималното време за което да изчаква преди да затвори ако потребителят е набрал непълен или неправилен номер. По-подразбиране 10 секунди Максимално допустимото време между цифрите, когато потребителят набира във вътрешна линия. По подразбиране е 5 секунди Потребителят ще бъде запитан за този номер. Да Потвърждаване преди поискване на парола. Използва се, когато вашата PSTN линия изглежда, че отговаря на обаждането веднага 