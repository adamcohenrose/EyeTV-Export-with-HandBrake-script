FasdUAS 1.101.10   ��   ��    k             l      ��  ��   �*******************************************************
Copyright � 2009 Adam Cohen-Rose

This file is part of the EyeTV Export with HandBrake script.

The EyeTV Export with HandBrake script is free software: you can
redistribute it and/or modify it under the terms of the GNU
General Public License as published by the Free Software
Foundation, either version 3 of the License, or (at your option)
any later version.

The EyeTV Export with HandBrake script is distributed in the hope
that it will be useful, but WITHOUT ANY WARRANTY; without even
the implied warranty of MERCHANTABILITY or FITNESS FOR A
PARTICULAR PURPOSE. See the GNU General Public License for more
details.

You should have received a copy of the GNU General Public License
along with the EyeTV Export with HandBrake script. If not, see
<http://www.gnu.org/licenses/>
********************************************************     � 	 	� * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * 
 C o p y r i g h t   �   2 0 0 9   A d a m   C o h e n - R o s e 
 
 T h i s   f i l e   i s   p a r t   o f   t h e   E y e T V   E x p o r t   w i t h   H a n d B r a k e   s c r i p t . 
 
 T h e   E y e T V   E x p o r t   w i t h   H a n d B r a k e   s c r i p t   i s   f r e e   s o f t w a r e :   y o u   c a n 
 r e d i s t r i b u t e   i t   a n d / o r   m o d i f y   i t   u n d e r   t h e   t e r m s   o f   t h e   G N U 
 G e n e r a l   P u b l i c   L i c e n s e   a s   p u b l i s h e d   b y   t h e   F r e e   S o f t w a r e 
 F o u n d a t i o n ,   e i t h e r   v e r s i o n   3   o f   t h e   L i c e n s e ,   o r   ( a t   y o u r   o p t i o n ) 
 a n y   l a t e r   v e r s i o n . 
 
 T h e   E y e T V   E x p o r t   w i t h   H a n d B r a k e   s c r i p t   i s   d i s t r i b u t e d   i n   t h e   h o p e 
 t h a t   i t   w i l l   b e   u s e f u l ,   b u t   W I T H O U T   A N Y   W A R R A N T Y ;   w i t h o u t   e v e n 
 t h e   i m p l i e d   w a r r a n t y   o f   M E R C H A N T A B I L I T Y   o r   F I T N E S S   F O R   A 
 P A R T I C U L A R   P U R P O S E .   S e e   t h e   G N U   G e n e r a l   P u b l i c   L i c e n s e   f o r   m o r e 
 d e t a i l s . 
 
 Y o u   s h o u l d   h a v e   r e c e i v e d   a   c o p y   o f   t h e   G N U   G e n e r a l   P u b l i c   L i c e n s e 
 a l o n g   w i t h   t h e   E y e T V   E x p o r t   w i t h   H a n d B r a k e   s c r i p t .   I f   n o t ,   s e e 
 < h t t p : / / w w w . g n u . o r g / l i c e n s e s / > 
 * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * *   
  
 l     ��������  ��  ��        j     �� �� 0 	myappname 	myAppName  m        �   6 E y e T V   E x p o r t   w i t h   H a n d B r a k e      j    �� �� <0 encodingfinishednotification encodingFinishedNotification  m       �   " E n c o d i n g   F i n i s h e d      j    �� �� 80 encodingfailednotification encodingFailedNotification  m       �    E n c o d i n g   F a i l e d      l     ��������  ��  ��        i  	      I      �� !���� &0 registerwithgrowl registerWithGrowl !  "�� " o      ���� 0 	myappname 	myAppName��  ��     k     C # #  $ % $ Q      & ' ( & O    ) * ) r     + , + n     - . - 1    ��
�� 
pnam . 5    �� /��
�� 
appf / m   	 
 0 0 � 1 1 0 c o m . G r o w l . G r o w l H e l p e r A p p
�� kfrmID   , l 
     2���� 2 o      ����  0 growlhelperapp growlHelperApp��  ��   * m     3 3�                                                                                  MACS   alis    l  
MacBook HD                 �o"�H+   �
Finder.app                                                      ����        ����  	                CoreServices    �o"�      ���     � f� f�  1MacBook HD:System:Library:CoreServices:Finder.app    
 F i n d e r . a p p   
 M a c B o o k   H D  &System/Library/CoreServices/Finder.app  / ��   ' R      ������
�� .ascrerr ****      � ****��  ��   ( L     4 4 m    ��
�� 
msng %  5 6 5 l   ��������  ��  ��   6  7�� 7 O    C 8 9 8 w   # B : ; : k   % B < <  = > = r   % 3 ? @ ? J   % 1 A A  B C B l 	 % * D���� D o   % *���� <0 encodingfinishednotification encodingFinishedNotification��  ��   C  E�� E l 	 * / F���� F l 
 * / G���� G o   * /���� 80 encodingfailednotification encodingFailedNotification��  ��  ��  ��  ��   @ o      ���� $0 notificationlist notificationList >  H I H I  4 ?���� J
�� .registernull��� ��� null��   J �� K L
�� 
appl K l 	 6 7 M���� M o   6 7���� 0 	myappname 	myAppName��  ��   L �� N O
�� 
anot N l 
 8 9 P���� P o   8 9���� $0 notificationlist notificationList��  ��   O �� Q��
�� 
dnot Q o   : ;���� $0 notificationlist notificationList��   I  R�� R L   @ B S S o   @ A����  0 growlhelperapp growlHelperApp��   ;,                                                                                  GRRR   alis    �  
MacBook HD                 �o"�H+   �=!GrowlHelperApp.app                                              �=U�o�        ����  	                	Resources     �o"�      �o�     �=! �= �= |� =  WMacBook HD:Library:PreferencePanes:Growl.prefPane:Contents:Resources:GrowlHelperApp.app   &  G r o w l H e l p e r A p p . a p p   
 M a c B o o k   H D  LLibrary/PreferencePanes/Growl.prefPane/Contents/Resources/GrowlHelperApp.app  / ��   9 4     �� T
�� 
capp T o    ����  0 growlhelperapp growlHelperApp��     U V U l     ��������  ��  ��   V  W X W i    Y Z Y I      �� [���� 00 notifyencodingfinished notifyEncodingFinished [  \ ] \ o      ���� 0 success   ]  ^ _ ^ o      ���� 0 recordingname recordingName _  `�� ` o      ���� 0 mydescription  ��  ��   Z k     � a a  b c b r      d e d I     
�� f���� &0 registerwithgrowl registerWithGrowl f  g�� g o    ���� 0 	myappname 	myAppName��  ��   e o      ����  0 growlhelperapp growlHelperApp c  h�� h Z    � i j�� k i l    l���� l =     m n m o    ���� 0 success   n m    ��
�� boovtrue��  ��   j Z    ] o p�� q o l    r���� r =     s t s o    ����  0 growlhelperapp growlHelperApp t m    ��
�� 
msng��  ��   p O    1 u v u I   0�� w x
�� .sysodlogaskr        TEXT w l 
   y���� y o    ���� 0 mydescription  ��  ��   x �� z {
�� 
appr z b    " | } | m      ~ ~ �   $ F i n i s h e d   e n c o d i n g : } l 
   ! ����� � o     !���� 0 recordingname recordingName��  ��   { �� � �
�� 
btns � J   # & � �  ��� � m   # $ � � � � �  O K��   � �� � �
�� 
dflt � l 
 ' * ����� � J   ' * � �  ��� � m   ' ( � � � � �  O K��  ��  ��   � �� ���
�� 
givu � m   + ,���� ��   v m     � ��                                                                                  MACS   alis    l  
MacBook HD                 �o"�H+   �
Finder.app                                                      ����        ����  	                CoreServices    �o"�      ���     � f� f�  1MacBook HD:System:Library:CoreServices:Finder.app    
 F i n d e r . a p p   
 M a c B o o k   H D  &System/Library/CoreServices/Finder.app  / ��  ��   q O   4 ] � � � w   ; \ � � � I  = \���� �
�� .notifygrnull��� ��� null��   � �� � �
�� 
name � l 
 ? D ����� � o   ? D���� <0 encodingfinishednotification encodingFinishedNotification��  ��   � �� � �
�� 
titl � b   G L � � � m   G J � � � � � & F i n i s h e d   e n c o d i n g :   � o   J K���� 0 recordingname recordingName � �� � �
�� 
desc � l 
 O P ����� � o   O P���� 0 mydescription  ��  ��   � �� ���
�� 
appl � o   S X���� 0 	myappname 	myAppName��   �,                                                                                  GRRR   alis    �  
MacBook HD                 �o"�H+   �=!GrowlHelperApp.app                                              �=U�o�        ����  	                	Resources     �o"�      �o�     �=! �= �= |� =  WMacBook HD:Library:PreferencePanes:Growl.prefPane:Contents:Resources:GrowlHelperApp.app   &  G r o w l H e l p e r A p p . a p p   
 M a c B o o k   H D  LLibrary/PreferencePanes/Growl.prefPane/Contents/Resources/GrowlHelperApp.app  / ��   � 4   4 8�� �
�� 
capp � o   6 7����  0 growlhelperapp growlHelperApp��   k Z   ` � � ��� � � l  ` c ����� � =   ` c � � � o   ` a����  0 growlhelperapp growlHelperApp � m   a b��
�� 
msng��  ��   � O   f � � � � I  j ��� � �
�� .sysodisAaleR        TEXT � b   j o � � � m   j m � � � � � " F a i l e d   t o   e n c o d e   � l 
 m n ����� � o   m n���� 0 recordingname recordingName��  ��   � �� � �
�� 
mesS � l 
 r s ����� � o   r s���� 0 mydescription  ��  ��   � � � �
� 
as A � l 
 v y ��~�} � m   v y�|
�| EAlTwarN�~  �}   � �{ � �
�{ 
btns � J   z  � �  ��z � m   z } � � � � �  O K�z   � �y � �
�y 
dflt � l 
 � � ��x�w � J   � � � �  ��v � m   � � � � � � �  O K�v  �x  �w   � �u ��t
�u 
givu � m   � ��s�s �t   � m   f g � ��                                                                                  MACS   alis    l  
MacBook HD                 �o"�H+   �
Finder.app                                                      ����        ����  	                CoreServices    �o"�      ���     � f� f�  1MacBook HD:System:Library:CoreServices:Finder.app    
 F i n d e r . a p p   
 M a c B o o k   H D  &System/Library/CoreServices/Finder.app  / ��  ��   � O   � � � � � w   � � � � � I  � ��r�q �
�r .notifygrnull��� ��� null�q   � �p � �
�p 
name � l 
 � � ��o�n � o   � ��m�m 80 encodingfailednotification encodingFailedNotification�o  �n   � �l � �
�l 
titl � b   � � � � � m   � � � � � � � " F a i l e d   t o   e n c o d e   � o   � ��k�k 0 recordingname recordingName � �j � �
�j 
desc � l 
 � � ��i�h � o   � ��g�g 0 mydescription  �i  �h   � �f ��e
�f 
appl � o   � ��d�d 0 	myappname 	myAppName�e   �,                                                                                  GRRR   alis    �  
MacBook HD                 �o"�H+   �=!GrowlHelperApp.app                                              �=U�o�        ����  	                	Resources     �o"�      �o�     �=! �= �= |� =  WMacBook HD:Library:PreferencePanes:Growl.prefPane:Contents:Resources:GrowlHelperApp.app   &  G r o w l H e l p e r A p p . a p p   
 M a c B o o k   H D  LLibrary/PreferencePanes/Growl.prefPane/Contents/Resources/GrowlHelperApp.app  / ��   � 4   � ��c �
�c 
capp � o   � ��b�b  0 growlhelperapp growlHelperApp��   X  � � � l     �a�`�_�a  �`  �_   �  � � � i     � � � I     �^ ��]
�^ .aevtoappnull  �   � **** � o      �\�\ 0 argv  �]   � k     2 � �  � � � r      � � � o     �[�[ 0 argv   � J       � �  � � � o      �Z�Z 0 
resultcode 
resultCode �  � � � o      �Y�Y 0 recordingname recordingName �  ��X � o      �W�W ,0 recordingdescription recordingDescription�X   �  � � � r     � � � m    �V
�V boovfals � o      �U�U 0 success   �  � � � Z   ) � ��T�S � l    ��R�Q � =    � � � o    �P�P 0 
resultcode 
resultCode � m     � � � � �  0�R  �Q   � r   " % � � � m   " #�O
�O boovtrue � o      �N�N 0 success  �T  �S   �  ��M � I   * 2�L ��K�L 00 notifyencodingfinished notifyEncodingFinished �  � � � o   + ,�J�J 0 success   �  �  � o   , -�I�I 0 recordingname recordingName  �H o   - .�G�G ,0 recordingdescription recordingDescription�H  �K  �M   � �F l     �E�D�C�E  �D  �C  �F       �B   	�A�@�?�B   �>�=�<�;�:�9�8�7�6�5�4�3�> 0 	myappname 	myAppName�= <0 encodingfinishednotification encodingFinishedNotification�< 80 encodingfailednotification encodingFailedNotification�; &0 registerwithgrowl registerWithGrowl�: 00 notifyencodingfinished notifyEncodingFinished
�9 .aevtoappnull  �   � ****�8 0 
resultcode 
resultCode�7 0 recordingname recordingName�6 ,0 recordingdescription recordingDescription�5 0 success  �4  �3   �2  �1�0
�/�2 &0 registerwithgrowl registerWithGrowl�1 �.�.   �-�- 0 	myappname 	myAppName�0  
 �,�+�*�, 0 	myappname 	myAppName�+  0 growlhelperapp growlHelperApp�* $0 notificationlist notificationList  3�) 0�(�'�&�%�$�# ;�"�!� ��
�) 
appf
�( kfrmID  
�' 
pnam�&  �%  
�$ 
msng
�# 
capp
�" 
appl
�! 
anot
�  
dnot� 
� .registernull��� ��� null�/ D � *���0�,E�UW 	X  �O*�/ !�Zb  b  lvE�O*���� O�U � Z���� 00 notifyencodingfinished notifyEncodingFinished� ��   ���� 0 success  � 0 recordingname recordingName� 0 mydescription  �   ����� 0 success  � 0 recordingname recordingName� 0 mydescription  �  0 growlhelperapp growlHelperApp �� �� ~� �� ����
�	� ��� ���� ����  � ����� �� &0 registerwithgrowl registerWithGrowl
� 
msng
� 
appr
� 
btns
� 
dflt
� 
givu� �
 
�	 .sysodlogaskr        TEXT
� 
capp
� 
name
� 
titl
� 
desc
� 
appl
� .notifygrnull��� ��� null
� 
mesS
� 
as A
�  EAlTwarN�� 

�� .sysodisAaleR        TEXT� �*b   k+  E�O�e  O��  � ���%��kv��kv��� UY +*��/ #�Z*�b  a a �%a �a b   � UY \��  -� %a �%a �a a �a kv�a kv��a  UY +*��/ #�Z*�b  a a �%a �a b   � U �� �������
�� .aevtoappnull  �   � ****�� 0 argv  ��   ���� 0 argv   ���������� ���
�� 
cobj�� 0 
resultcode 
resultCode�� 0 recordingname recordingName�� ,0 recordingdescription recordingDescription�� 0 success  �� 00 notifyencodingfinished notifyEncodingFinished�� 3�E[�k/E�Z[�l/E�Z[�m/E�ZOfE�O��  eE�Y hO*���m+  �  1 4 3 � n H a r r y   a n d   H i s   B u c k e t   F u l l   o f   D i n o s a u r s   -   C a r t o o n s . e y e t v	 �& L o g   a v a i l a b l e   a t   / U s e r s / a d a m c r / L i b r a r y / L o g s / E y e T V _ E x p o r t _ w i t h _ H a n d B r a k e / e x p o r t i n g _ H a r r y   a n d   H i s   B u c k e t   F u l l   o f   D i n o s a u r s   -   C a r t o o n s . e y e t v . 1 0 3 8 2 . l o g
�A boovfals�@  �?  ascr  ��ޭ