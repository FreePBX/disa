��    +      t  ;   �      �  ~   �  h   8     �     �     �  �   �     H     U  	   d     n     �     �     �    �  	   �  	   �    �     @     I     P  
   ^     i  4   o  =   �     �     �     �  0   �      	     ?	     ]	     }	     �	     �	     �	     �	  #   �	  �   �	  q   d
  *   �
       x     �  ~    {  �   �     Q  ;   b  4   �    �     �     �  	     "         C  6   T  *   �  W  �             !  ,  .   N     }  (   �  &   �     �  c   �  �   S     �     �     �  T   �  B   L  5   �  S   �  -     
   G     R     q     ~  4   �  �   �  �   j  G   8     �  �   �                     $   *                    	                          (                         %                 '   !       &   "                      #   +                             
              )    (Experts Only) Sets the context that calls will originate from. Leave this as from-internal unless you know what you're doing. (Optional) When using this DISA, the users CallerID will be set to this. Format is "User Name" <5551234> Actions Add DISA Allow Hangup Allow the current call to be disconnected and dial tone presented for a new call by pressing the Hangup feature code: %s while in a call Applications Call Recording Caller ID Caller ID Override Context Context cannot be blank DISA DISA Allows you 'Direct Inward System Access'. This gives you the ability to have an option on an IVR that gives you a dial tone, and you're able to dial out from the FreePBX machine as if you were connected to a standard extension. It appears as a Destination. DISA List DISA Name DISA is used to allow people from the outside world to call into your PBX and then be able to dial out of the PBX so it appears that their call is coming from the office which can be handy when traveling. You can set a destination in an IVR that points to the DISA or set a DID. Make sure you password protect this to keep people from dialing in and using your PBX to make calls out. DISA: %s Delete Digit Timeout Don't Care Force Give this DISA a brief name to help you identify it. If you wish to have multiple PIN's, separate them with commas Never No PIN Please enter a valid Caller ID or leave it blank Please enter a valid DISA Name Please enter a valid DISA PIN Record calls that use this DISA Require Confirmation Reset Response Timeout Seconds Submit The DISA Name provided is too long. The maximum amount of time it will wait before hanging up if the user has dialed an incomplete or invalid number. Default of 10 seconds The maximum amount of time permitted between digits when the user is typing in an extension. Default of 5 seconds The user will be prompted for this number. Yes equire Confirmation before prompting for password. Used when your PSTN connection appears to answer the call immediately Project-Id-Version: 1.3
Report-Msgid-Bugs-To: 
POT-Creation-Date: 2018-11-14 18:26-0500
PO-Revision-Date: 2015-12-08 23:17+0200
Last-Translator: Andrew <andrew.nagy@the159.com>
Language-Team: Russian <http://weblate.freepbx.org/projects/freepbx/disa/ru_RU/>
Language: ru_RU
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Plural-Forms: nplurals=3; plural=n%10==1 && n%100!=11 ? 0 : n%10>=2 && n%10<=4 && (n%100<10 || n%100>=20) ? 1 : 2;
X-Generator: Weblate 2.2-dev
 (Только для экспертов) Установить контекст, из которого будут оригинироваться звонки. Оставить как есть - from-internal означает, что вы знаете, что делаете. (Опционально) Если используется эта DISA, то Caller ID будет изменён на указанный здесь. Формат "Имя Фамилия" <5551234> Действие Добавить Доступ к Asterisk извне (DISA) Разрешить прерывание звонка Разрешить прерывать текущий звонок и предоставить длинный гудок (КПВ) для нового звонка набором сервисного кода Положить трубку: %s во время разговора Приложения Запись вызова Caller ID Переопределение CID Контекст Контекст не может быть пустым Доступ в Asterisk извне (DISA) Доступ в Asterisk извне (DISA) дает вам дополнительную опцию при использовании IVR, а именно, набрать код и получить возможность звонить с Asterisk так, как если бы вы были подключенны к нему напрямую.  Список DISA Имя DISA Доступ в Asterisk извне (DISA) позволяет сотрудникам вне офиса звонить на ваш Asterisk и совершать с него звонки, так как будто звонок происходит из офиса, что может быть удобно, если сотрудник находится в командировке. Вы можете указать направление в IVR, которые будут указывать на DISA или установить DID. Перед использованием этой функции убедитесь, что вы установили пароль для предотвращения набора и использования вашего Asterisk посторонними людьми. Доступ к Asterisk извне (DISA): %s Удалить Таймаут между цифрами Не обращать внимание Запустить Присвойте короткое название для DISA для идентификации. Если хотите использовать несколько номеров PIN, укажите их разделяя запятой Никогда Нет PIN Введите разрешенный Caller ID или оставьте пустым Введите разрешенное название для DISA Введите разрешенный PIN для DISA Запись вызовов , которые используют данный DISA Требуется подтверждение Сброс Таймаут на ответ Секунд Подтвердить Слишком длинное название DISA. Максимальное время ожидания для пользователя, при вводе номеров PIN. По умолчанию - 10 сек Максимальный интервал времени , допустимый между цифрами при наборе номера пользователем. По умолчанию 5 секунд Пользователь будет вводить этот номер. Да Спросить Подтверждение перед приглашением ввести пароль. Используется когда ваше PSTN-подключение сразу отвечает на вызов 