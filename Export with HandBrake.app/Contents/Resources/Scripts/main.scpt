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
 l     ��������  ��  ��        j     �� �� $0 handbrakeclipath HandBrakeCLIPath  m        �   6 / u s r / l o c a l / b i n / H a n d B r a k e C L I      j    �� �� 0 outputfolder outputFolder  m    ��
�� 
msng      j    �� ��  0 previouspreset previousPreset  m       �          j   	 �� �� "0 encoderpriority encoderPriority  m   	 
����        l     ��������  ��  ��        i      !   I      �������� 0 findthisapp findThisApp��  ��   ! k      " "  # $ # O     % & % r     ' ( ' 5    	�� )��
�� 
appf ) m     * * � + + H o r g . c o h e n - r o s e . E y e T V H a n d B r a k e E n c o d e r
�� kfrmID   ( o      ���� 0 myapp myApp & m      , ,�                                                                                  MACS   alis    l  
MacBook HD                 �o"�H+   �
Finder.app                                                      ����        ����  	                CoreServices    �o"�      ���     � f� f�  1MacBook HD:System:Library:CoreServices:Finder.app    
 F i n d e r . a p p   
 M a c B o o k   H D  &System/Library/CoreServices/Finder.app  / ��   $  -�� - L     . . o    ���� 0 myapp myApp��     / 0 / l     ��������  ��  ��   0  1 2 1 i    3 4 3 I      ���� 5�� .0 findencoderscriptpath findEncoderScriptPath��   5 �� 6��
�� 
from 6 o      ���� 0 myapp myApp��   4 k      7 7  8 9 8 r     	 : ; : l     <���� < n      = > = 1    ��
�� 
strq > l     ?���� ? n      @ A @ 1    ��
�� 
psxp A l     B���� B c      C D C o     ���� 0 myapp myApp D m    ��
�� 
TEXT��  ��  ��  ��  ��  ��   ; o      ���� 0 mypath myPath 9  E F E r   
  G H G b   
  I J I o   
 ���� 0 mypath myPath J m     K K � L L V / C o n t e n t s / R e s o u r c e s / S c r i p t s / s t a r t _ e n c o d e . s h H o      ���� &0 encoderscriptpath encoderScriptPath F  M�� M L     N N o    ���� &0 encoderscriptpath encoderScriptPath��   2  O P O l     ��������  ��  ��   P  Q R Q i    S T S I      �������� *0 gethandbrakepresets getHandBrakePresets��  ��   T k     � U U  V W V r      X Y X J     ����   Y o      ���� 0 presetnames presetNames W  Z [ Z r    	 \ ] \ J    ����   ] o      ���� 0 presetformats presetFormats [  ^ _ ^ r   
  ` a ` n  
  b c b 1    ��
�� 
txdl c 1   
 ��
�� 
ascr a o      ���� "0 saveddelimiters savedDelimiters _  d e d Q    � f g h f k    l i i  j k j r     l m l J     n n  o p o o    ��
�� 
ret  p  q�� q m     r r � s s  \ r��   m n      t u t 1    ��
�� 
txdl u 1    ��
�� 
ascr k  v w v r    % x y x b    # z { z o    !���� $0 handbrakeclipath HandBrakeCLIPath { m   ! " | | � } } 4   - - p r e s e t - l i s t   |   g r e p   +   |   y o      ���� 0 presetscript presetScript w  ~  ~ r   & + � � � b   & ) � � � l 
 & ' ����� � o   & '���� 0 presetscript presetScript��  ��   � m   ' ( � � � � � � s e d   - E   ' s / ^ [ [ : s p a c e : ] ] + \ +   ( [ ^ : ] + ) : . * - f   + ( [ [ : a l n u m : ] ] { 3 , 4 } ) . * $ / \ 1 : \ 2 / ' � o      ���� 0 presetscript presetScript   � � � r   , 3 � � � I  , 1�� ���
�� .sysoexecTEXT���     TEXT � l  , - ����� � o   , -���� 0 presetscript presetScript��  ��  ��   � 1      ��
�� 
rslt �  � � � r   4 9 � � � n   4 7 � � � 2  5 7��
�� 
citm � 1   4 5��
�� 
rslt � o      ���� 0 presetresults presetResults �  � � � r   : A � � � J   : = � �  ��� � m   : ; � � � � �  :��   � n      � � � 1   > @��
�� 
txdl � 1   = >��
�� 
ascr �  ��� � X   B l ��� � � k   R g � �  � � � r   R W � � � n   R U � � � 2  S U��
�� 
citm � o   R S���� 
0 preset   � o      ���� 0 currentpreset currentPreset �  � � � s   X _ � � � n   X \ � � � 4   Y \�� �
�� 
cobj � m   Z [����  � o   X Y���� 0 currentpreset currentPreset � n       � � �  ;   ] ^ � o   \ ]���� 0 presetnames presetNames �  ��� � s   ` g � � � n   ` d � � � 4   a d�� �
�� 
cobj � m   b c����  � o   ` a���� 0 currentpreset currentPreset � n       � � �  ;   e f � o   d e���� 0 presetformats presetFormats��  �� 
0 preset   � o   E F���� 0 presetresults presetResults��   g R      �� � �
�� .ascrerr ****      � **** � o      ���� 0 m   � �� ���
�� 
errn � o      ���� 0 n  ��   h k   t � � �  � � � l  t t�� � ���   � ; 5also reset text item delimiters in case of an error:     � � � � j a l s o   r e s e t   t e x t   i t e m   d e l i m i t e r s   i n   c a s e   o f   a n   e r r o r :   �  � � � r   t y � � � o   t u���� "0 saveddelimiters savedDelimiters � n      � � � 1   v x��
�� 
txdl � 1   u v��
�� 
ascr �  � � � l  z z�� � ���   �  and resignal the error:     � � � � 0 a n d   r e s i g n a l   t h e   e r r o r :   �  ��� � R   z ��� � �
�� .ascrerr ****      � **** � o   ~ ���� 0 m   � �� ���
�� 
errn � o   | }���� 0 n  ��  ��   e  ��� � L   � � � � J   � � � �  � � � o   � ����� 0 presetnames presetNames �  ��� � o   � ����� 0 presetformats presetFormats��  ��   R  � � � l     ��������  ��  ��   �  � � � i    � � � I      �������� .0 chooseoutputdirectory chooseOutputDirectory��  ��   � k     Z � �  � � � Z      � ��� � � l     ����� � =     � � � o     ���� 0 outputfolder outputFolder � m    ��
�� 
msng��  ��   � r   
  � � � l  
  ����� � I  
 � ��~
� .earsffdralis        afdr � m   
 �}
�} afdrmdoc�~  ��  ��   � o      �|�| $0 tempoutputfolder tempOutputFolder��   � r     � � � o    �{�{ 0 outputfolder outputFolder � o      �z�z $0 tempoutputfolder tempOutputFolder �  � � � Q    J � � � � r    . � � � l 	  ( ��y�x � I   (�w�v �
�w .sysostflalis    ��� null�v   � �u � �
�u 
prmp � l 	 ! " ��t�s � m   ! " � � � � � Z W h e r e   d o   y o u   w a n t   y o u r   m o v i e s   t o   b e   e x p o r t e d ?�t  �s   � �r ��q
�r 
dflc � o   # $�p�p $0 tempoutputfolder tempOutputFolder�q  �y  �x   � o      �o�o 0 outputfolder outputFolder � R      �n�m �
�n .ascrerr ****      � ****�m   � �l ��k
�l 
errn � d       � � m      �j�j ��k   � k   6 J � �  � � � I  6 G�i 
�i .sysodisAaleR        TEXT  l 	 6 7�h�g m   6 7 � J C a n n o t   c o n t i n u e   w i t h o u t   e x p o r t   f o l d e r�h  �g   �f
�f 
as A m   8 9�e
�e EAlTcriT �d
�d 
btns J   : =		 
�c
 m   : ; �  Q u i t�c   �b�a
�b 
dflt m   > A �  Q u i t�a   � �` L   H J m   H I�_
�_ 
msng�`   � �^ L   K Z l  K Y�]�\ n   K Y 1   T X�[
�[ 
strq l  K T�Z�Y n   K T 1   P T�X
�X 
psxp o   K P�W�W 0 outputfolder outputFolder�Z  �Y  �]  �\  �^   �  l     �V�U�T�V  �U  �T    i     I     �S�R�Q
�S .aevtoappnull  �   � ****�R  �Q   k    -   !"! l     �P#$�P  # "  fetch the recording details   $ �%% 8   f e t c h   t h e   r e c o r d i n g   d e t a i l s" &'& r     ()( J     �O�O  ) o      �N�N 0 recpaths recPaths' *+* r    	,-, J    �M�M  - o      �L�L 0 recdates recDates+ ./. O   
 �010 k    �22 343 r    565 l   7�K�J7 n    898 1    �I
�I 
sele9 1    �H
�H 
Prgw�K  �J  6 o      �G�G 0 recordinglist recordingList4 :;: Z    *<=�F�E< l   >�D�C> =    ?@? n    ABA 1    �B
�B 
lengB o    �A�A 0 recordinglist recordingList@ m    �@�@  �D  �C  = k    &CC DED I   #�?F�>
�? .sysodisAaleR        TEXTF m    GG �HH J P l e a s e   s e l e c t   a t   l e a s t   o n e   r e c o r d i n g !�>  E I�=I L   $ &�<�<  �=  �F  �E  ; J�;J X   + �K�:LK k   ; �MM NON r   ; @PQP l  ; >R�9�8R l  ; >S�7�6S n   ; >TUT 1   < >�5
�5 
pURLU l  ; <V�4�3V o   ; <�2�2 0 
currentrec 
currentRec�4  �3  �7  �6  �9  �8  Q o      �1�1 0 recloc recLocO WXW r   A JYZY l  A F[�0�/[ n   A F\]\ 1   D F�.
�. 
strq] l  A D^�-�,^ l  A D_�+�*_ n   A D`a` 1   B D�)
�) 
psxpa o   A B�(�( 0 recloc recLoc�+  �*  �-  �,  �0  �/  Z o      �'�' 0 recpath recPathX bcb s   K Qded o   K N�&�& 0 recpath recPathe l     f�%�$f n      ghg  ;   O Ph o   N O�#�# 0 recpaths recPaths�%  �$  c iji r   R [klk l  R Wm�"�!m l  R Wn� �n n   R Wopo 1   S W�
� 
Stimp l  R Sq��q o   R S�� 0 
currentrec 
currentRec�  �  �   �  �"  �!  l o      �� 0 recdate recDatej rsr r   \ ~tut o   \ _�� 0 recdate recDateu K      vv �wx
� 
yearw o      �� 0 y  x �yz
� 
mnthy o      �� 0 m  z �{�
� 
day { o      �� 0 d  �  s |}| O   �~~ b   � ���� b   � ���� b   � ���� b   � ���� 7  � ����
� 
ctxt� m   � ��� � m   � ��� � m   � ��� ���  -� 7  � ����
� 
ctxt� m   � ��� � m   � ��� � m   � ��� ���  -� 7  � ����
� 
ctxt� m   � ��
�
 � m   � ��	�	  c    ���� l   ����� [    ���� [    ���� ]    ���� o    ��� 0 y  � m   � ���'� ]   � ���� o   � ��� 0 m  � m   � ��� d� o   � ��� 0 d  �  �  � m   � ��
� 
TEXT} �� � s   � ���� l  � ������� 1   � ���
�� 
rslt��  ��  � l     ������ n      ���  ;   � �� o   � ����� 0 recdates recDates��  ��  �   �: 0 
currentrec 
currentRecL o   . /���� 0 recordinglist recordingList�;  1 m   
 ���                                                                                  EyTV   alis    B  
MacBook HD                 �o"�H+    �	EyeTV.app                                                      `���i|Y        ����  	                Applications    �o"�      �inI      �  !MacBook HD:Applications:EyeTV.app    	 E y e T V . a p p   
 M a c B o o k   H D  Applications/EyeTV.app  / ��  / ��� l  � ���������  ��  ��  � ��� l  � �������  � !  choose the encoding preset   � ��� 6   c h o o s e   t h e   e n c o d i n g   p r e s e t� ��� r   � ���� I   � ��������� *0 gethandbrakepresets getHandBrakePresets��  ��  � o      ���� 80 handbrakepresetsandformats handBrakePresetsAndFormats� ��� r   ���� I  �	����
�� .gtqpchltns    @   @ ns  � n   � ���� 4   � ����
�� 
cobj� m   � ����� � l 
 � ������� o   � ����� 80 handbrakepresetsandformats handBrakePresetsAndFormats��  ��  � ����
�� 
appr� m   � ��� ��� 0 C h o o s e   a n   e x p o r t   f o r m a t :� �����
�� 
inSL� J   ��� ���� o   �����  0 previouspreset previousPreset��  ��  � o      ���� 0 chosenpreset chosenPreset� ��� Z ������� l ������ = ��� o  ���� 0 chosenpreset chosenPreset� m  ��
�� boovfals��  ��  � L  ����  ��  ��  � ��� r  &��� o   ���� 0 chosenpreset chosenPreset� o      ����  0 previouspreset previousPreset� ��� l ''��������  ��  ��  � ��� l ''������  � "  choose the output directory   � ��� 8   c h o o s e   t h e   o u t p u t   d i r e c t o r y� ��� r  '0��� I  ',�������� .0 chooseoutputdirectory chooseOutputDirectory��  ��  � o      ���� "0 outputdirectory outputDirectory� ��� Z 1A������� l 18������ = 18��� o  14���� "0 outputdirectory outputDirectory� m  47��
�� 
msng��  ��  � L  ;=����  ��  ��  � ��� l BB��������  ��  ��  � ��� l BB������  � 4 . locate the shell script (within this package)   � ��� \   l o c a t e   t h e   s h e l l   s c r i p t   ( w i t h i n   t h i s   p a c k a g e )� ��� r  BK��� I  BG�������� 0 findthisapp findThisApp��  ��  � o      ���� 0 myapp myApp� ��� r  L[��� I LW������� .0 findencoderscriptpath findEncoderScriptPath��  � �����
�� 
from� o  PS���� 0 myapp myApp��  � o      ���� &0 encoderscriptpath encoderScriptPath� ��� l \\��������  ��  ��  � ��� l \\������  � A ; now call the shell script to put the encoding on the queue   � ��� v   n o w   c a l l   t h e   s h e l l   s c r i p t   t o   p u t   t h e   e n c o d i n g   o n   t h e   q u e u e� ��� r  \c��� m  \_�� ���  � o      ���� 0 shellresults shellResults� ��� Y  d���� ��� Q  q k  t�  r  t� [  t{	
	 o  ty���� "0 encoderpriority encoderPriority
 m  yz����  o      ���� "0 encoderpriority encoderPriority  r  �� I ������
�� .sysoexecTEXT���     TEXT l ������ b  �� b  �� b  �� b  �� b  �� b  �� b  �� b  ��  b  ��!"! b  ��#$# b  ��%&% b  ��'(' o  ������ &0 encoderscriptpath encoderScriptPath( m  ��)) �**   & l 
��+����+ o  ������ $0 handbrakeclipath HandBrakeCLIPath��  ��  $ m  ��,, �--   " l ��.����. n  ��/0/ 4  ����1
�� 
cobj1 o  ������ 0 recidx recIdx0 o  ������ 0 recpaths recPaths��  ��    m  ��22 �33    l 
��4����4 l ��5����5 n  ��676 4  ����8
�� 
cobj8 o  ������ 0 recidx recIdx7 o  ������ 0 recdates recDates��  ��  ��  ��   m  ��99 �::    ' o  ������ 0 chosenpreset chosenPreset m  ��;; �<<  '   o  ������ "0 outputdirectory outputDirectory m  ��== �>>    p r i o r i t y = o  ������ "0 encoderpriority encoderPriority��  ��  ��   o      ���� 0 shellresult shellResult ?��? r  ��@A@ b  ��BCB b  ��DED o  ������ 0 shellresults shellResultsE o  ������ 0 shellresult shellResultC o  ����
�� 
ret A o      ���� 0 shellresults shellResults��   R      ��FG
�� .ascrerr ****      � ****F o      ���� 0 errormsg errorMsgG ��H��
�� 
errnH o      ���� 0 errornum errorNum��   k  �II JKJ I ����L��
�� .sysodisAaleR        TEXTL b  ��MNM b  ��OPO b  ��QRQ o  ������ 0 errormsg errorMsgR m  ��SS �TT  (P o  ������ 0 errornum errorNumN m  ��UU �VV  )��  K W��W r  �XYX b  ��Z[Z b  ��\]\ b  ��^_^ b  ��`a` b  ��bcb o  ������ 0 shellresults shellResultsc o  ������ 0 errormsg errorMsga m  ��dd �ee  (_ o  ������ 0 errornum errorNum] m  ��ff �gg  )[ o  ����
�� 
ret Y o      ���� 0 shellresults shellResults��  �� 0 recidx recIdx� m  gh����   l hlh����h n  hliji 1  ik��
�� 
lengj o  hi���� 0 recpaths recPaths��  ��  ��  � k��k I -��lm
�� .sysodlogaskr        TEXTl o  ���� 0 shellresults shellResultsm ��no
�� 
apprn m  pp �qq & S t a r t e d   e n c o d i n g . . .o �rs
� 
btnsr l 
t�~�}t J  uu v�|v m  ww �xx  O k�|  �~  �}  s �{yz
�{ 
dflty J  !{{ |�z| m  }} �~~  O k�z  z �y�x
�y 
givu m  $'�w�w �x  ��   ��v� l     �u�t�s�u  �t  �s  �v       �r� �q �p������r  � 	�o�n�m�l�k�j�i�h�g�o $0 handbrakeclipath HandBrakeCLIPath�n 0 outputfolder outputFolder�m  0 previouspreset previousPreset�l "0 encoderpriority encoderPriority�k 0 findthisapp findThisApp�j .0 findencoderscriptpath findEncoderScriptPath�i *0 gethandbrakepresets getHandBrakePresets�h .0 chooseoutputdirectory chooseOutputDirectory
�g .aevtoappnull  �   � ****
�q 
msng�p  � �f !�e�d���c�f 0 findthisapp findThisApp�e  �d  � �b�b 0 myapp myApp�  ,�a *�`
�a 
appf
�` kfrmID  �c � 	*���0E�UO�� �_ 4�^�]���\�_ .0 findencoderscriptpath findEncoderScriptPath�^  �] �[�Z�Y
�[ 
from�Z 0 myapp myApp�Y  � �X�W�V�X 0 myapp myApp�W 0 mypath myPath�V &0 encoderscriptpath encoderScriptPath� �U�T�S K
�U 
TEXT
�T 
psxp
�S 
strq�\ ��&�,�,E�O��%E�O�� �R T�Q�P���O�R *0 gethandbrakepresets getHandBrakePresets�Q  �P  � 	�N�M�L�K�J�I�H�G�F�N 0 presetnames presetNames�M 0 presetformats presetFormats�L "0 saveddelimiters savedDelimiters�K 0 presetscript presetScript�J 0 presetresults presetResults�I 
0 preset  �H 0 currentpreset currentPreset�G 0 m  �F 0 n  � �E�D�C r | ��B�A�@ ��?�>�=�<��;
�E 
ascr
�D 
txdl
�C 
ret 
�B .sysoexecTEXT���     TEXT
�A 
rslt
�@ 
citm
�? 
kocl
�> 
cobj
�= .corecnte****       ****�< 0 m  � �:�9�8
�: 
errn�9 0 n  �8  
�; 
errn�O �jvE�OjvE�O��,E�O ^��lv��,FOb   �%E�O��%E�O�j E�O��-E�O�kv��,FO )�[��l kh ��-E�O��k/�6GO��l/�6G[OY��W X  ���,FO)�l�O��lv� �7 ��6�5���4�7 .0 chooseoutputdirectory chooseOutputDirectory�6  �5  � �3�3 $0 tempoutputfolder tempOutputFolder� �2�1�0�/ ��.�-�,�+��*�)�(�'�&�%�$�#
�2 
msng
�1 afdrmdoc
�0 .earsffdralis        afdr
�/ 
prmp
�. 
dflc�- 
�, .sysostflalis    ��� null�+  � �"�!� 
�" 
errn�!���   
�* 
as A
�) EAlTcriT
�( 
btns
�' 
dflt�& 
�% .sysodisAaleR        TEXT
�$ 
psxp
�# 
strq�4 [b  �  �j E�Y 	b  E�O *���� Ec  W X  	�����kv�a a  O�Ob  a ,a ,E� ������
� .aevtoappnull  �   � ****�  �  � ����� 0 
currentrec 
currentRec� 0 recidx recIdx� 0 errormsg errorMsg� 0 errornum errorNum� M�������G��������
�	��������� ����������������������������������������������������),29;=���������SUdfp��w��}������� 0 recpaths recPaths� 0 recdates recDates
� 
Prgw
� 
sele� 0 recordinglist recordingList
� 
leng
� .sysodisAaleR        TEXT
� 
kocl
� 
cobj
� .corecnte****       ****
� 
pURL� 0 recloc recLoc
� 
psxp
�
 
strq�	 0 recpath recPath
� 
Stim� 0 recdate recDate
� 
year� 0 y  
� 
mnth� 0 m  
� 
day � 0 d  � '�� d
�� 
TEXT
�� 
ctxt�� �� �� �� �� 
�� 
rslt�� *0 gethandbrakepresets getHandBrakePresets�� 80 handbrakepresetsandformats handBrakePresetsAndFormats
�� 
appr
�� 
inSL
�� .gtqpchltns    @   @ ns  �� 0 chosenpreset chosenPreset�� .0 chooseoutputdirectory chooseOutputDirectory�� "0 outputdirectory outputDirectory
�� 
msng�� 0 findthisapp findThisApp�� 0 myapp myApp
�� 
from�� .0 findencoderscriptpath findEncoderScriptPath�� &0 encoderscriptpath encoderScriptPath�� 0 shellresults shellResults
�� .sysoexecTEXT���     TEXT�� 0 shellresult shellResult
�� 
ret �� 0 errormsg errorMsg� ������
�� 
errn�� 0 errornum errorNum��  
�� 
btns
�� 
dflt
�� 
givu�� 
�� .sysodlogaskr        TEXT�.jvE�OjvE�O� �*�,�,E�O��,j  �j OhY hO ��[��l kh  ��,E�O��,�,E` O_ �6GO�a ,E` O_ E[a ,E` Z[a ,E` Z[a ,E` ZO_ a  _ a  _ a & =*[a \[Zk\Za 2a %*[a \[Za \Za  2%a !%*[a \[Za "\Za #2%UO_ $�6G[OY�YUO*j+ %E` &O_ &�k/a 'a (a )b  kva  *E` +O_ +f  hY hO_ +Ec  O*j+ ,E` -O_ -a .  hY hO*j+ /E` 0O*a 1_ 0l 2E` 3Oa 4E` 5O �k��,Ekh  db  kEc  O_ 3a 6%b   %a 7%��/%a 8%��/%a 9%_ +%a :%_ -%a ;%b  %j <E` =O_ 5_ =%_ >%E` 5W .X ? @�a A%�%a B%j O_ 5�%a C%�%a D%_ >%E` 5[OY�iO_ 5a 'a Ea Fa Gkva Ha Ikva Ja Ka # L ascr  ��ޭ