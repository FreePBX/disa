��          �      �        ~   	  h   �     �     �  �     	   �     �     �     �    �     M     V  4   d  =   �     �  0   �          +     I     ^  �   o  *   �  �  "  �   �  x   t	  
   �	     �	  b   
     h
     q
  	   �
     �
  �  �
  	   }     �  4   �  9   �       )   
     4     N     n     {  �   �  '                                                                    
                          	             (Experts Only) Sets the context that calls will originate from. Leave this as from-internal unless you know what you're doing. (Optional) When using this DISA, the users CallerID will be set to this. Format is "User Name" <5551234> Add DISA Allow Hangup Allow the current call to be disconnected and dial tone presented for a new call by pressing the Hangup feature code: %s while in a call Caller ID Caller ID Override Context Context cannot be blank DISA is used to allow people from the outside world to call into your PBX and then be able to dial out of the PBX so it appears that their call is coming from the office which can be handy when traveling. You can set a destination in an IVR that points to the DISA or set a DID. Make sure you password protect this to keep people from dialing in and using your PBX to make calls out. DISA: %s Digit Timeout Give this DISA a brief name to help you identify it. If you wish to have multiple PIN's, separate them with commas PIN Please enter a valid Caller ID or leave it blank Please enter a valid DISA Name Please enter a valid DISA PIN Require Confirmation Response Timeout The maximum amount of time it will wait before hanging up if the user has dialed an incomplete or invalid number. Default of 10 seconds The user will be prompted for this number. Project-Id-Version: FreePBX 2.5 Chinese Translation
Report-Msgid-Bugs-To: 
POT-Creation-Date: 2019-03-28 07:39+0530
PO-Revision-Date: 2010-01-23 00:00+0800
Last-Translator: 周征晟 <zhougongjizhe@163.com>
Language-Team: EdwardBadBoy <zhougongjizhe@163.com>
Language: 
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-Poedit-Language: Chinese
X-Poedit-Country: CHINA
X-Poedit-SourceCharset: utf-8
 （高级设置）设置发起呼叫的上下文。除非你知道自己在做什么，否则让这项设置保持为from-internal（从内部发起） （可选设置）在使用这个DISA时，用户的主叫ID就会被发送到这里。格式是“用户名”<5551234> 添加DISA 允许挂断 允许在呼叫中按下挂断功能代码%s后，中断当前呼叫并播送新呼叫的提示音 主叫ID 来电显示覆盖 上下文 上下文不能不填 DISA 简单来说就是通过外部呼入公司内部PBX，然后通过公司的内部的PBX线路做再次呼出的一个业务。当公司员工出差时，如果通过DISA呼出到客户端时，让客户感觉到是通过公司内部IPPBX呼出。用户可以设置一个IVR目的地来指向一个DISA 或者设置一个DID号码。注意，如果设置DISA，切记对呼出的线路进行密码设置，保证公司IPPBX的安全，防止外部用户盗打电话。 DISA：%s 按键超时 为此DISA起一个名字，以帮助你辨识它。 如果你想设置多个PIN码，请用逗号分隔它们 PIN码 请输入有效的主叫ID，或者不填 请输入有效的DISA名 请输入有效的DISA的PIN码 需要确认 应答超时 如果用户拨打了不完整的或者无效的号码，系统在挂端前需要等待的最长的时间。默认设置是10秒。 用户将被要求输入这个号码。 