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
 ���� 0 mypath myPath J m     K K � L L V / C o n t e n t s / R e s o u r c e s / S c r i p t s / s t a r t _ e n c o d e . s h H o      ���� &0 encoderscriptpath encoderScriptPath F  M�� M L     N N o    ���� &0 encoderscriptpath encoderScriptPath��   2  O P O l     ��������  ��  ��   P  Q R Q i    S T S I      �������� .0 checkhandbrakeclipath checkHandBrakeCLIPath��  ��   T k     _ U U  V W V q       X X ������ 0 	foundpath 	foundPath��   W  Y Z Y r      [ \ [ m     ��
�� boovfals \ o      ���� 0 	foundpath 	foundPath Z  ] ^ ] O    _ ` _ Z    a b���� a I   �� c��
�� .coredoexbool        obj  c c     d e d o    ���� $0 handbrakeclipath HandBrakeCLIPath e m    ��
�� 
psxf��   b r     f g f m    ��
�� boovtrue g o      ���� 0 	foundpath 	foundPath��  ��   ` m     h h�                                                                                  MACS   alis    l  
MacBook HD                 �o"�H+   �
Finder.app                                                      ����        ����  	                CoreServices    �o"�      ���     � f� f�  1MacBook HD:System:Library:CoreServices:Finder.app    
 F i n d e r . a p p   
 M a c B o o k   H D  &System/Library/CoreServices/Finder.app  / ��   ^  i j i Z    \ k l���� k l   ! m���� m H    ! n n o     ���� 0 	foundpath 	foundPath��  ��   l Q   $ X o p q o k   ' < r r  s t s r   ' 0 u v u I  ' .���� w
�� .sysostdfalis    ��� null��   w �� x��
�� 
prmp x m   ) * y y � z z 4 P l e a s e   l o c a t e   H a n d B r a k e C L I��   v o      ���� &0 handbrakeclialias handBrakeCLIAlias t  {�� { r   1 < | } | l  1 6 ~���� ~ n   1 6  �  1   4 6��
�� 
strq � l  1 4 ����� � n   1 4 � � � 1   2 4��
�� 
psxp � o   1 2���� &0 handbrakeclialias handBrakeCLIAlias��  ��  ��  ��   } o      ���� $0 handbrakeclipath HandBrakeCLIPath��   p R      ���� �
�� .ascrerr ****      � ****��   � �� ���
�� 
errn � d       � � m      ���� ���   q k   D X � �  � � � I  D U�� � �
�� .sysodisAaleR        TEXT � l 	 D E ����� � m   D E � � � � � H C a n n o t   c o n t i n u e   w i t h o u t   H a n d B r a k e C L I��  ��   � �� � �
�� 
as A � m   F G��
�� EAlTcriT � �� � �
�� 
btns � J   H K � �  ��� � m   H I � � � � �  Q u i t��   � �� ���
�� 
dflt � m   L O � � � � �  Q u i t��   �  ��� � L   V X � � m   V W��
�� boovfals��  ��  ��   j  ��� � L   ] _ � � m   ] ^��
�� boovtrue��   R  � � � l     ��������  ��  ��   �  � � � i    � � � I      �������� *0 gethandbrakepresets getHandBrakePresets��  ��   � k     � � �  � � � r      � � � J     ����   � o      ���� 0 presetnames presetNames �  � � � r    	 � � � J    ����   � o      ���� 0 presetformats presetFormats �  � � � r   
  � � � n  
  � � � 1    ��
�� 
txdl � 1   
 ��
�� 
ascr � o      ���� "0 saveddelimiters savedDelimiters �  � � � Q    � � � � � k    l � �  � � � r     � � � J     � �  � � � o    ��
�� 
ret  �  ��� � m     � � � � �  \ r��   � n      � � � 1    ��
�� 
txdl � 1    ��
�� 
ascr �  � � � r    % � � � b    # � � � o    !���� $0 handbrakeclipath HandBrakeCLIPath � m   ! " � � � � � 4   - - p r e s e t - l i s t   |   g r e p   +   |   � o      ���� 0 presetscript presetScript �  � � � r   & + � � � b   & ) � � � l 
 & ' ����� � o   & '���� 0 presetscript presetScript��  ��   � m   ' ( � � � � � � s e d   - E   ' s / ^ [ [ : s p a c e : ] ] + \ +   ( [ ^ : ] + ) : . * - f   + ( [ [ : a l n u m : ] ] { 3 , 4 } ) . * $ / \ 1 : \ 2 / ' � o      ���� 0 presetscript presetScript �  � � � r   , 3 � � � I  , 1�� ���
�� .sysoexecTEXT���     TEXT � l  , - ����� � o   , -���� 0 presetscript presetScript��  ��  ��   � 1      �
� 
rslt �  � � � r   4 9 � � � n   4 7 � � � 2  5 7�~
�~ 
citm � 1   4 5�}
�} 
rslt � o      �|�| 0 presetresults presetResults �  � � � r   : A � � � J   : = � �  ��{ � m   : ; � � � � �  :�{   � n      � � � 1   > @�z
�z 
txdl � 1   = >�y
�y 
ascr �  ��x � X   B l ��w � � k   R g � �  � � � r   R W � � � n   R U � � � 2  S U�v
�v 
citm � o   R S�u�u 
0 preset   � o      �t�t 0 currentpreset currentPreset �  � � � s   X _ � � � n   X \ � � � 4   Y \�s �
�s 
cobj � m   Z [�r�r  � o   X Y�q�q 0 currentpreset currentPreset � n       � � �  ;   ] ^ � o   \ ]�p�p 0 presetnames presetNames �  ��o � s   ` g   n   ` d 4   a d�n
�n 
cobj m   b c�m�m  o   ` a�l�l 0 currentpreset currentPreset n        ;   e f o   d e�k�k 0 presetformats presetFormats�o  �w 
0 preset   � o   E F�j�j 0 presetresults presetResults�x   � R      �i
�i .ascrerr ****      � **** o      �h�h 0 m   �g	�f
�g 
errn	 o      �e�e 0 n  �f   � k   t �

  l  t t�d�d   ; 5also reset text item delimiters in case of an error:     � j a l s o   r e s e t   t e x t   i t e m   d e l i m i t e r s   i n   c a s e   o f   a n   e r r o r :    r   t y o   t u�c�c "0 saveddelimiters savedDelimiters n      1   v x�b
�b 
txdl 1   u v�a
�a 
ascr  l  z z�`�`    and resignal the error:     � 0 a n d   r e s i g n a l   t h e   e r r o r :   �_ R   z ��^
�^ .ascrerr ****      � **** o   ~ �]�] 0 m   �\�[
�\ 
errn o   | }�Z�Z 0 n  �[  �_   � �Y L   � �   J   � �!! "#" o   � ��X�X 0 presetnames presetNames# $�W$ o   � ��V�V 0 presetformats presetFormats�W  �Y   � %&% l     �U�T�S�U  �T  �S  & '(' i   )*) I      �R�Q�P�R .0 chooseoutputdirectory chooseOutputDirectory�Q  �P  * k     Z++ ,-, Z     ./�O0. l    1�N�M1 =    232 o     �L�L 0 outputfolder outputFolder3 m    �K
�K 
msng�N  �M  / r   
 454 l  
 6�J�I6 I  
 �H7�G
�H .earsffdralis        afdr7 m   
 �F
�F afdrmdoc�G  �J  �I  5 o      �E�E $0 tempoutputfolder tempOutputFolder�O  0 r    898 o    �D�D 0 outputfolder outputFolder9 o      �C�C $0 tempoutputfolder tempOutputFolder- :;: Q    J<=>< r    .?@? l 	  (A�B�AA I   (�@�?B
�@ .sysostflalis    ��� null�?  B �>CD
�> 
prmpC l 	 ! "E�=�<E m   ! "FF �GG Z W h e r e   d o   y o u   w a n t   y o u r   m o v i e s   t o   b e   e x p o r t e d ?�=  �<  D �;H�:
�; 
dflcH o   # $�9�9 $0 tempoutputfolder tempOutputFolder�:  �B  �A  @ o      �8�8 0 outputfolder outputFolder= R      �7�6I
�7 .ascrerr ****      � ****�6  I �5J�4
�5 
errnJ d      KK m      �3�3 ��4  > k   6 JLL MNM I  6 G�2OP
�2 .sysodisAaleR        TEXTO l 	 6 7Q�1�0Q m   6 7RR �SS J C a n n o t   c o n t i n u e   w i t h o u t   e x p o r t   f o l d e r�1  �0  P �/TU
�/ 
as AT m   8 9�.
�. EAlTcriTU �-VW
�- 
btnsV J   : =XX Y�,Y m   : ;ZZ �[[  Q u i t�,  W �+\�*
�+ 
dflt\ m   > A]] �^^  Q u i t�*  N _�)_ L   H J`` m   H I�(
�( 
msng�)  ; a�'a L   K Zbb l  K Yc�&�%c n   K Yded 1   T X�$
�$ 
strqe l  K Tf�#�"f n   K Tghg 1   P T�!
�! 
psxph o   K P� �  0 outputfolder outputFolder�#  �"  �&  �%  �'  ( iji l     ����  �  �  j klk i     #mnm I     ���
� .aevtoappnull  �   � ****�  �  n k    >oo pqp l     �rs�  r "  fetch the recording details   s �tt 8   f e t c h   t h e   r e c o r d i n g   d e t a i l sq uvu r     wxw J     ��  x o      �� 0 recpaths recPathsv yzy r    	{|{ J    ��  | o      �� 0 recdates recDatesz }~} O   
 �� k    ��� ��� r    ��� l   ���� n    ��� 1    �
� 
sele� 1    �
� 
Prgw�  �  � o      �� 0 recordinglist recordingList� ��� Z    *����� l   ���� =    ��� n    ��� 1    �
� 
leng� o    �
�
 0 recordinglist recordingList� m    �	�	  �  �  � k    &�� ��� I   #���
� .sysodisAaleR        TEXT� m    �� ��� J P l e a s e   s e l e c t   a t   l e a s t   o n e   r e c o r d i n g !�  � ��� L   $ &��  �  �  �  � ��� X   + ����� k   ; ��� ��� r   ; @��� l  ; >���� l  ; >�� ��� n   ; >��� 1   < >��
�� 
pURL� l  ; <������ o   ; <���� 0 
currentrec 
currentRec��  ��  �   ��  �  �  � o      ���� 0 recloc recLoc� ��� r   A J��� l  A F������ n   A F��� 1   D F��
�� 
strq� l  A D������ l  A D������ n   A D��� 1   B D��
�� 
psxp� o   A B���� 0 recloc recLoc��  ��  ��  ��  ��  ��  � o      ���� 0 recpath recPath� ��� s   K Q��� o   K N���� 0 recpath recPath� l     ������ n      ���  ;   O P� o   N O���� 0 recpaths recPaths��  ��  � ��� r   R [��� l  R W������ l  R W������ n   R W��� 1   S W��
�� 
Stim� l  R S������ o   R S���� 0 
currentrec 
currentRec��  ��  ��  ��  ��  ��  � o      ���� 0 recdate recDate� ��� r   \ ~��� o   \ _���� 0 recdate recDate� K      �� ����
�� 
year� o      ���� 0 y  � ����
�� 
mnth� o      ���� 0 m  � �����
�� 
day � o      ���� 0 d  ��  � ��� O   ���� b   � ���� b   � ���� b   � ���� b   � ���� 7  � �����
�� 
ctxt� m   � ����� � m   � ����� � m   � ��� ���  -� 7  � �����
�� 
ctxt� m   � ����� � m   � ����� � m   � ��� ���  -� 7  � �����
�� 
ctxt� m   � ����� � m   � ����� � c    ���� l   ������� [    ���� [    ���� ]    ���� o    ����� 0 y  � m   � �����'� ]   � ���� o   � ����� 0 m  � m   � ����� d� o   � ����� 0 d  ��  ��  � m   � ���
�� 
TEXT� ���� s   � ���� l  � ������� 1   � ���
�� 
rslt��  ��  � l     ������ n      ���  ;   � �� o   � ����� 0 recdates recDates��  ��  ��  � 0 
currentrec 
currentRec� o   . /���� 0 recordinglist recordingList�  � m   
 ���                                                                                  EyTV   alis    B  
MacBook HD                 �o"�H+    �	EyeTV.app                                                      `���i|Y        ����  	                Applications    �o"�      �inI      �  !MacBook HD:Applications:EyeTV.app    	 E y e T V . a p p   
 M a c B o o k   H D  Applications/EyeTV.app  / ��  ~ ��� l  � ���������  ��  ��  � ��� l  � �������  � !  choose the encoding preset   � ��� 6   c h o o s e   t h e   e n c o d i n g   p r e s e t� ��� Z  � �������� l  � ������� =  � �   I   � ��������� .0 checkhandbrakeclipath checkHandBrakeCLIPath��  ��   m   � ���
�� boovfals��  ��  � L   � �����  ��  ��  �  r   � � I   � ��������� *0 gethandbrakepresets getHandBrakePresets��  ��   o      ���� 80 handbrakepresetsandformats handBrakePresetsAndFormats  r   �	 I  ���

�� .gtqpchltns    @   @ ns  
 n   � 4  ��
�� 
cobj m  ����  l 
 ����� o   ����� 80 handbrakepresetsandformats handBrakePresetsAndFormats��  ��   ��
�� 
appr m  
 � 0 C h o o s e   a n   e x p o r t   f o r m a t : ����
�� 
inSL J   �� o  ����  0 previouspreset previousPreset��  ��  	 o      ���� 0 chosenpreset chosenPreset  Z -���� l $���� = $ o  "���� 0 chosenpreset chosenPreset m  "#��
�� boovfals��  ��   L  ')����  ��  ��    r  .7 !  o  .1���� 0 chosenpreset chosenPreset! o      ����  0 previouspreset previousPreset "#" l 88��������  ��  ��  # $%$ l 88��&'��  & "  choose the output directory   ' �(( 8   c h o o s e   t h e   o u t p u t   d i r e c t o r y% )*) r  8A+,+ I  8=�������� .0 chooseoutputdirectory chooseOutputDirectory��  ��  , o      ���� "0 outputdirectory outputDirectory* -.- Z BR/0����/ l BI1����1 = BI232 o  BE���� "0 outputdirectory outputDirectory3 m  EH��
�� 
msng��  ��  0 L  LN����  ��  ��  . 454 l SS��������  ��  ��  5 676 l SS��89��  8 4 . locate the shell script (within this package)   9 �:: \   l o c a t e   t h e   s h e l l   s c r i p t   ( w i t h i n   t h i s   p a c k a g e )7 ;<; r  S\=>= I  SX�������� 0 findthisapp findThisApp��  ��  > o      ���� 0 myapp myApp< ?@? r  ]lABA I ]h����C�� .0 findencoderscriptpath findEncoderScriptPath��  C ��D��
�� 
fromD o  ad���� 0 myapp myApp��  B o      �� &0 encoderscriptpath encoderScriptPath@ EFE l mm�~�}�|�~  �}  �|  F GHG l mm�{IJ�{  I A ; now call the shell script to put the encoding on the queue   J �KK v   n o w   c a l l   t h e   s h e l l   s c r i p t   t o   p u t   t h e   e n c o d i n g   o n   t h e   q u e u eH LML r  mtNON m  mpPP �QQ  O o      �z�z 0 shellresults shellResultsM RSR Y  uT�yUV�xT Q  �WXYW k  ��ZZ [\[ r  ��]^] [  ��_`_ o  ���w�w "0 encoderpriority encoderPriority` m  ���v�v ^ o      �u�u "0 encoderpriority encoderPriority\ aba r  ��cdc I ���te�s
�t .sysoexecTEXT���     TEXTe l ��f�r�qf b  ��ghg b  ��iji b  ��klk b  ��mnm b  ��opo b  ��qrq b  ��sts b  ��uvu b  ��wxw b  ��yzy b  ��{|{ b  ��}~} o  ���p�p &0 encoderscriptpath encoderScriptPath~ m  �� ���   | l 
����o�n� o  ���m�m $0 handbrakeclipath HandBrakeCLIPath�o  �n  z m  ���� ���   x l ����l�k� n  ����� 4  ���j�
�j 
cobj� o  ���i�i 0 recidx recIdx� o  ���h�h 0 recpaths recPaths�l  �k  v m  ���� ���   t l 
����g�f� l ����e�d� n  ����� 4  ���c�
�c 
cobj� o  ���b�b 0 recidx recIdx� o  ���a�a 0 recdates recDates�e  �d  �g  �f  r m  ���� ���    'p o  ���`�` 0 chosenpreset chosenPresetn m  ���� ���  '  l o  ���_�_ "0 outputdirectory outputDirectoryj m  ���� ���    p r i o r i t y =h o  ���^�^ "0 encoderpriority encoderPriority�r  �q  �s  d o      �]�] 0 shellresult shellResultb ��\� r  ����� b  ����� b  ����� o  ���[�[ 0 shellresults shellResults� o  ���Z�Z 0 shellresult shellResult� o  ���Y
�Y 
ret � o      �X�X 0 shellresults shellResults�\  X R      �W��
�W .ascrerr ****      � ****� o      �V�V 0 errormsg errorMsg� �U��T
�U 
errn� o      �S�S 0 errornum errorNum�T  Y k  ��� ��� I ���R��Q
�R .sysodisAaleR        TEXT� b  ����� b  ����� b  ����� o  ���P�P 0 errormsg errorMsg� m  ���� ���  (� o  ���O�O 0 errornum errorNum� m  ���� ���  )�Q  � ��N� r  ���� b  ���� b  ���� b  ���� b  ���� b  ���� o  ���M�M 0 shellresults shellResults� o  � �L�L 0 errormsg errorMsg� m  �� ���  (� o  �K�K 0 errornum errorNum� m  
�� ���  )� o  �J
�J 
ret � o      �I�I 0 shellresults shellResults�N  �y 0 recidx recIdxU m  xy�H�H V l y}��G�F� n  y}��� 1  z|�E
�E 
leng� o  yz�D�D 0 recpaths recPaths�G  �F  �x  S ��C� I >�B��
�B .sysodlogaskr        TEXT� o  �A�A 0 shellresults shellResults� �@��
�@ 
appr� m  "�� ��� & S t a r t e d   e n c o d i n g . . .� �?��
�? 
btns� l 
%*��>�=� J  %*�� ��<� m  %(�� ���  O k�<  �>  �=  � �;��
�; 
dflt� J  -2�� ��:� m  -0�� ���  O k�:  � �9��8
�9 
givu� m  58�7�7 �8  �C  l ��6� l     �5�4�3�5  �4  �3  �6       �2� �1 �0�������2  � 
�/�.�-�,�+�*�)�(�'�&�/ $0 handbrakeclipath HandBrakeCLIPath�. 0 outputfolder outputFolder�-  0 previouspreset previousPreset�, "0 encoderpriority encoderPriority�+ 0 findthisapp findThisApp�* .0 findencoderscriptpath findEncoderScriptPath�) .0 checkhandbrakeclipath checkHandBrakeCLIPath�( *0 gethandbrakepresets getHandBrakePresets�' .0 chooseoutputdirectory chooseOutputDirectory
�& .aevtoappnull  �   � ****
�1 
msng�0  � �% !�$�#���"�% 0 findthisapp findThisApp�$  �#  � �!�! 0 myapp myApp�  ,�  *�
�  
appf
� kfrmID  �" � 	*���0E�UO�� � 4������ .0 findencoderscriptpath findEncoderScriptPath�  � ���
� 
from� 0 myapp myApp�  � ���� 0 myapp myApp� 0 mypath myPath� &0 encoderscriptpath encoderScriptPath� ��� K
� 
TEXT
� 
psxp
� 
strq� ��&�,�,E�O��%E�O�� � T������ .0 checkhandbrakeclipath checkHandBrakeCLIPath�  �  � ��� 0 	foundpath 	foundPath� &0 handbrakeclialias handBrakeCLIAlias�  h��
�	 y����� ���� �� �� ��
� 
psxf
�
 .coredoexbool        obj 
�	 
prmp
� .sysostdfalis    ��� null
� 
psxp
� 
strq�  � ������
�� 
errn������  
� 
as A
� EAlTcriT
� 
btns
� 
dflt�  
�� .sysodisAaleR        TEXT� `fE�O� b   �&j  eE�Y hUO� 9 *��l E�O��,�,Ec   W X  	�����kv�a a  OfY hOe� �� ����������� *0 gethandbrakepresets getHandBrakePresets��  ��  � 	�������������������� 0 presetnames presetNames�� 0 presetformats presetFormats�� "0 saveddelimiters savedDelimiters�� 0 presetscript presetScript�� 0 presetresults presetResults�� 
0 preset  �� 0 currentpreset currentPreset�� 0 m  �� 0 n  � ������ � � ������� ������������
�� 
ascr
�� 
txdl
�� 
ret 
�� .sysoexecTEXT���     TEXT
�� 
rslt
�� 
citm
�� 
kocl
�� 
cobj
�� .corecnte****       ****�� 0 m  � ������
�� 
errn�� 0 n  ��  
�� 
errn�� �jvE�OjvE�O��,E�O ^��lv��,FOb   �%E�O��%E�O�j E�O��-E�O�kv��,FO )�[��l kh ��-E�O��k/�6GO��l/�6G[OY��W X  ���,FO)�l�O��lv� ��*���������� .0 chooseoutputdirectory chooseOutputDirectory��  ��  � ���� $0 tempoutputfolder tempOutputFolder� ��������F���������R������Z��]��������
�� 
msng
�� afdrmdoc
�� .earsffdralis        afdr
�� 
prmp
�� 
dflc�� 
�� .sysostflalis    ��� null��  � ������
�� 
errn������  
�� 
as A
�� EAlTcriT
�� 
btns
�� 
dflt�� 
�� .sysodisAaleR        TEXT
�� 
psxp
�� 
strq�� [b  �  �j E�Y 	b  E�O *���� Ec  W X  	�����kv�a a  O�Ob  a ,a ,E� ��n��������
�� .aevtoappnull  �   � ****��  ��  � ���������� 0 
currentrec 
currentRec�� 0 recidx recIdx�� 0 errormsg errorMsg�� 0 errornum errorNum� N����������������������������������������������������������������������������������������������������P����������������������������������� 0 recpaths recPaths�� 0 recdates recDates
�� 
Prgw
�� 
sele�� 0 recordinglist recordingList
�� 
leng
�� .sysodisAaleR        TEXT
�� 
kocl
�� 
cobj
�� .corecnte****       ****
�� 
pURL�� 0 recloc recLoc
�� 
psxp
�� 
strq�� 0 recpath recPath
�� 
Stim�� 0 recdate recDate
�� 
year�� 0 y  
�� 
mnth�� 0 m  
�� 
day �� 0 d  ��'�� d
�� 
TEXT
�� 
ctxt�� �� �� �� �� 
�� 
rslt�� .0 checkhandbrakeclipath checkHandBrakeCLIPath�� *0 gethandbrakepresets getHandBrakePresets�� 80 handbrakepresetsandformats handBrakePresetsAndFormats
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
�� .sysodlogaskr        TEXT��?jvE�OjvE�O� �*�,�,E�O��,j  �j OhY hO ��[��l kh  ��,E�O��,�,E` O_ �6GO�a ,E` O_ E[a ,E` Z[a ,E` Z[a ,E` ZO_ a  _ a  _ a & =*[a \[Zk\Za 2a %*[a \[Za \Za  2%a !%*[a \[Za "\Za #2%UO_ $�6G[OY�YUO*j+ %f  hY hO*j+ &E` 'O_ '�k/a (a )a *b  kva  +E` ,O_ ,f  hY hO_ ,Ec  O*j+ -E` .O_ .a /  hY hO*j+ 0E` 1O*a 2_ 1l 3E` 4Oa 5E` 6O �k��,Ekh  db  kEc  O_ 4a 7%b   %a 8%��/%a 9%��/%a :%_ ,%a ;%_ .%a <%b  %j =E` >O_ 6_ >%_ ?%E` 6W .X @ A�a B%�%a C%j O_ 6�%a D%�%a E%_ ?%E` 6[OY�iO_ 6a (a Fa Ga Hkva Ia Jkva Ka La # M ascr  ��ޭ