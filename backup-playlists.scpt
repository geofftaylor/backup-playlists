FasdUAS 1.101.10   ��   ��    k             l        	  x     �� 
 ��   
 1      ��
�� 
ascr  �� ��
�� 
minv  m         �    2 . 4��       Yosemite (10.10) or later    	 �   4   Y o s e m i t e   ( 1 0 . 1 0 )   o r   l a t e r      x    �� ����    2  	 ��
�� 
osax��        l     ��������  ��  ��        i        I      �� ���� 0 
pathexists 
pathExists   ��  o      ���� 0 pathname pathName��  ��    k     '       l      ��  ��    � Check if pathName is an existing file or folder.
		First, try to get a reference pathName by using alias. If it succeeds, return true.
		If it fails, try to get a reference to pathName as a POSIX path. If it succeeds, return true.
		Else return false.
	     �    �   C h e c k   i f   p a t h N a m e   i s   a n   e x i s t i n g   f i l e   o r   f o l d e r . 
 	 	 F i r s t ,   t r y   t o   g e t   a   r e f e r e n c e   p a t h N a m e   b y   u s i n g   a l i a s .   I f   i t   s u c c e e d s ,   r e t u r n   t r u e . 
 	 	 I f   i t   f a i l s ,   t r y   t o   g e t   a   r e f e r e n c e   t o   p a t h N a m e   a s   a   P O S I X   p a t h .   I f   i t   s u c c e e d s ,   r e t u r n   t r u e . 
 	 	 E l s e   r e t u r n   f a l s e . 
 	   !�� ! Q     ' " # $ " k    	 % %  & ' & c     ( ) ( o    ���� 0 pathname pathName ) m    ��
�� 
alis '  *�� * L    	 + + m    ��
�� boovtrue��   # R      ������
�� .ascrerr ****      � ****��  ��   $ Q    ' , - . , k     / /  0 1 0 c     2 3 2 4    �� 4
�� 
psxf 4 o    ���� 0 pathname pathName 3 m    ��
�� 
alis 1  5�� 5 L     6 6 m    ��
�� boovtrue��   - R      ������
�� .ascrerr ****      � ****��  ��   . L   % ' 7 7 m   % &��
�� boovfals��     8 9 8 l     ��������  ��  ��   9  : ; : l     <���� < r      = > = I    �� ? @
�� .sysodisAaleR        TEXT ? l 	    A���� A m      B B � C C 8 B a c k   u p   M u s i c   p l a y l i s t s   n o w ?��  ��   @ �� D E
�� 
mesS D m     F F � G G 2 Q u i t t i n g   i n   1 0   s e c o n d s . . . E �� H I
�� 
btns H l 
   J���� J J     K K  L M L m     N N � O O  Y e s M  P�� P m     Q Q � R R  N o��  ��  ��   I �� S T
�� 
dflt S m   	 
 U U � V V  Y e s T �� W��
�� 
givu W m    ���� 
��   > o      ���� 0 alertresult alertResult��  ��   ;  X Y X l     ��������  ��  ��   Y  Z [ Z l    \���� \ r     ] ^ ] n     _ ` _ 1    ��
�� 
bhit ` o    ���� 0 alertresult alertResult ^ o      ���� 0 	runbackup 	runBackup��  ��   [  a b a l     c���� c r      d e d n     f g f 1    ��
�� 
gavu g o    ���� 0 alertresult alertResult e o      ���� 0 gaveup gaveUp��  ��   b  h i h l     ��������  ��  ��   i  j k j l  ! A l���� l Z   ! A m n���� m G   ! 0 o p o =   ! & q r q o   ! "���� 0 	runbackup 	runBackup r m   " % s s � t t  N o p o   ) ,���� 0 gaveup gaveUp n R   3 =���� u
�� .ascrerr ****      � ****��   u �� v��
�� 
errn v m   7 :��������  ��  ��  ��  ��   k  w x w l     ��������  ��  ��   x  y z y l  B I { | } { r   B I ~  ~ m   B E � � � � �  P l a y l i s t   B a c k u p  o      ���� 0 backupfolder backupFolder | Z T The name of the folder that will contain the backups, grouped in subfolders by date    } � � � �   T h e   n a m e   o f   t h e   f o l d e r   t h a t   w i l l   c o n t a i n   t h e   b a c k u p s ,   g r o u p e d   i n   s u b f o l d e r s   b y   d a t e z  � � � l  J ] � � � � r   J ] � � � b   J Y � � � n   J U � � � 1   Q U��
�� 
psxp � l  J Q ����� � I  J Q�� ���
�� .earsffdralis        afdr � m   J M��
�� afdrdocs��  ��  ��   � o   U X���� 0 backupfolder backupFolder � o      ���� 0 
basefolder 
baseFolder � 1 + backupFolder is a subfolder of ~/Documents    � � � � V   b a c k u p F o l d e r   i s   a   s u b f o l d e r   o f   ~ / D o c u m e n t s �  � � � l  ^ j � � � � r   ^ j � � � 4   ^ f�� �
�� 
psxf � o   b e���� 0 
basefolder 
baseFolder � o      ����  0 basefolderpath baseFolderPath � V P Get baseFolder's POSIX path so that we can concatenate it with the current date    � � � � �   G e t   b a s e F o l d e r ' s   P O S I X   p a t h   s o   t h a t   w e   c a n   c o n c a t e n a t e   i t   w i t h   t h e   c u r r e n t   d a t e �  � � � l  k v � � � � r   k v � � � I  k r�� ���
�� .sysoexecTEXT���     TEXT � m   k n � � � � �  d a t e   + ' % Y % m % d '��   � o      ���� 0 currentdate currentDate � . ( Get the current date in YYYYMMDD format    � � � � P   G e t   t h e   c u r r e n t   d a t e   i n   Y Y Y Y M M D D   f o r m a t �  � � � l  w � � � � � r   w � � � � b   w � � � � b   w � � � � n   w ~ � � � 1   z ~��
�� 
psxp � o   w z����  0 basefolderpath baseFolderPath � m   ~ � � � � � �  / � o   � ����� 0 currentdate currentDate � o      ���� 0 
savefolder 
saveFolder � !  The path to today's folder    � � � � 6   T h e   p a t h   t o   t o d a y ' s   f o l d e r �  � � � l  � � � � � � r   � � � � � I   � ��� ����� 0 
pathexists 
pathExists �  ��� � o   � �����  0 basefolderpath baseFolderPath��  ��   � o      ���� $0 basefolderexists baseFolderExists � !  Check if baseFolder exists    � � � � 6   C h e c k   i f   b a s e F o l d e r   e x i s t s �  � � � l  � � � � � � r   � � � � � I   � ��� ����� 0 
pathexists 
pathExists �  ��� � o   � ����� 0 
savefolder 
saveFolder��  ��   � o      ���� $0 savefolderexists saveFolderExists � !  Check if saveFolder exists    � � � � 6   C h e c k   i f   s a v e F o l d e r   e x i s t s �  � � � l     ��������  ��  ��   �  � � � l  � � � � � � I  � ��� ���
�� .JonspClpnull���     **** � o   � ����� 0 
savefolder 
saveFolder��   � D > Put saveFolder's path on the clipboard so we can use it later    � � � � |   P u t   s a v e F o l d e r ' s   p a t h   o n   t h e   c l i p b o a r d   s o   w e   c a n   u s e   i t   l a t e r �  � � � l     ��������  ��  ��   �  � � � l  �4 ����� � O   �4 � � � Z   �3 � ��� � � o   � ����� $0 basefolderexists baseFolderExists � k   � � � �  � � � l  � ��� � ���   � S M If baseFolder exists, check if saveFolder exists. If not, create saveFolder.    � � � � �   I f   b a s e F o l d e r   e x i s t s ,   c h e c k   i f   s a v e F o l d e r   e x i s t s .   I f   n o t ,   c r e a t e   s a v e F o l d e r . �  ��� � Z  � � � ����� � =  � � � � � o   � ����� $0 savefolderexists saveFolderExists � m   � ��
� boovfals � r   � � � � � I  � ��~�} �
�~ .corecrel****      � null�}   � �| � �
�| 
kocl � m   � ��{
�{ 
cfol � �z � �
�z 
insh � o   � ��y�y  0 basefolderpath baseFolderPath � �x ��w
�x 
prdt � K   � � � � �v ��u
�v 
pnam � o   � ��t�t 0 currentdate currentDate�u  �w   � o      �s�s 0 newsavefolder newSaveFolder��  ��  ��  ��   � k   �3 � �  � � � l  � ��r � ��r   � , & Else create baseFolder and saveFolder    � � � � L   E l s e   c r e a t e   b a s e F o l d e r   a n d   s a v e F o l d e r �  � � � r   � � � � I  ��q�p �
�q .corecrel****      � null�p   � �o � �
�o 
kocl � m   � ��n
�n 
cfol � �m � �
�m 
insh � l  � � �l�k  I  � ��j�i
�j .earsffdralis        afdr m   � ��h
�h afdrdocs�i  �l  �k   � �g�f
�g 
prdt K   � �e�d
�e 
pnam o  �c�c 0 backupfolder backupFolder�d  �f   � o      �b�b 0 newbasefolder newBaseFolder � �a r  3 I /�`�_
�` .corecrel****      � null�_   �^	

�^ 
kocl	 m  �]
�] 
cfol
 �\
�\ 
insh o  �[�[  0 basefolderpath baseFolderPath �Z�Y
�Z 
prdt K  !) �X�W
�X 
pnam o  $'�V�V 0 currentdate currentDate�W  �Y   o      �U�U 0 newsavefolder newSaveFolder�a   � m   � ��                                                                                  MACS  alis    @  Macintosh HD                   BD ����
Finder.app                                                     ����            ����  
 cu             CoreServices  )/:System:Library:CoreServices:Finder.app/    
 F i n d e r . a p p    M a c i n t o s h   H D  &System/Library/CoreServices/Finder.app  / ��  ��  ��   �  l     �T�S�R�T  �S  �R    l 5k�Q�P O  5k k  ;j  I ;@�O�N�M
�O .miscactvnull��� ��� null�N  �M   �L l Aj r  Aj  l Af!�K�J! 6 Af"#" n  AJ$%$ 1  FJ�I
�I 
pnam% 2  AF�H
�H 
cUsP# F  Me&'& H  NZ(( C  NY)*) 1  OS�G
�G 
pnam* m  TX++ �,,  P u r c h a s e d' = [d-.- 1  \`�F
�F 
pSmt. m  ac�E
�E boovfals�K  �J    o      �D�D 0 userplaylists userPlaylists T N Get all user playlists except "Purchased on iPhone," etc. and smart playlists    �// �   G e t   a l l   u s e r   p l a y l i s t s   e x c e p t   " P u r c h a s e d   o n   i P h o n e , "   e t c .   a n d   s m a r t   p l a y l i s t s�L   m  5800�                                                                                      @ alis    ,  Macintosh HD                   BD ����	Music.app                                                      ����            ����  
 cu             Applications   /:System:Applications:Music.app/   	 M u s i c . a p p    M a c i n t o s h   H D  System/Applications/Music.app   / ��  �Q  �P   121 l     �C�B�A�C  �B  �A  2 343 l      �@56�@  5�� The Music app's AppleScipt interface doesn't offer a way to export playlists, so we have to script the UI using System Events.
    This block iterates over the playlists in the Music app. When it finds a playlist with a name that matches userPlaylists,
    it selects the playlist, clicks File > Library > Export Playlist, and saves the playlist as an XML file in saveFolder.
   This uses the default file name, which is <playlist name>.xml.
   6 �77v   T h e   M u s i c   a p p ' s   A p p l e S c i p t   i n t e r f a c e   d o e s n ' t   o f f e r   a   w a y   t o   e x p o r t   p l a y l i s t s ,   s o   w e   h a v e   t o   s c r i p t   t h e   U I   u s i n g   S y s t e m   E v e n t s . 
         T h i s   b l o c k   i t e r a t e s   o v e r   t h e   p l a y l i s t s   i n   t h e   M u s i c   a p p .   W h e n   i t   f i n d s   a   p l a y l i s t   w i t h   a   n a m e   t h a t   m a t c h e s   u s e r P l a y l i s t s , 
         i t   s e l e c t s   t h e   p l a y l i s t ,   c l i c k s   F i l e   >   L i b r a r y   >   E x p o r t   P l a y l i s t ,   a n d   s a v e s   t h e   p l a y l i s t   a s   a n   X M L   f i l e   i n   s a v e F o l d e r . 
       T h i s   u s e s   t h e   d e f a u l t   f i l e   n a m e ,   w h i c h   i s   < p l a y l i s t   n a m e > . x m l . 
4 898 l l�:�?�>: O  l�;<; O  r�=>= O  }�?@? O  ��ABA O  ��CDC O  ��EFE X  ��G�=HG O  ��IJI O  ��KLK X  ��M�<NM Z  ��OP�;�:O E  ��QRQ o  ���9�9 0 userplaylists userPlaylistsR l ��S�8�7S n  ��TUT 1  ���6
�6 
pnamU o  ���5�5 0 
statictext 
staticText�8  �7  P k  ��VV WXW r  ��YZY I ���4[�3
�4 .miscslctnull���     uiel[ o  ���2�2 0 thisrow thisRow�3  Z o      �1�1 0 selectedrow selectedRowX \�0\ O  ��]^] O  ��_`_ k  �aa bcb r  ded m  �/
�/ boovtruee n      fgf 1  �.
�. 
focug 4  �-h
�- 
cwinh m  ii �jj 
 M u s i cc klk I �,m�+
�, .sysodelanull��� ��� nmbrm m  �*�* �+  l non I B�)p�(
�) .prcsclicnull��� ��� uielp n  >qrq 4  7>�'s
�' 
menIs m  :=tt �uu   E x p o r t   P l a y l i s t &r n  7vwv 4  07�&x
�& 
menEx m  36yy �zz  L i b r a r yw n  0{|{ 4  )0�%}
�% 
menI} m  ,/~~ �  L i b r a r y| n  )��� 4  ")�$�
�$ 
menE� m  %(�� ���  F i l e� 4  "�#�
�# 
mbar� m   !�"�" �(  o ��� I CH�!�� 
�! .sysodelanull��� ��� nmbr� m  CD�� �   � ��� O  I���� k  T��� ��� l Tf���� I Tf���
� .prcskprsnull���     ctxt� m  TW�� ���  G� ���
� 
faal� J  Zb�� ��� m  Z]�
� eMdsKcmd� ��� m  ]`�
� eMdsKsft�  �  � H B Shift-Cmd-G to change directories using the "Go to Folder" dialog   � ��� �   S h i f t - C m d - G   t o   c h a n g e   d i r e c t o r i e s   u s i n g   t h e   " G o   t o   F o l d e r "   d i a l o g� ��� I gl���
� .sysodelanull��� ��� nmbr� m  gh�� �  � ��� l mv���� I mv���
� .prcskprsnull���     ctxt� l mr���� I mr���
� .JonsgClp****    ��� null�  �  �  �  �  � A ; Paste saveFolder's location into the "Go to Folder" dialog   � ��� v   P a s t e   s a v e F o l d e r ' s   l o c a t i o n   i n t o   t h e   " G o   t o   F o l d e r "   d i a l o g� ��� I w|���
� .sysodelanull��� ��� nmbr� m  wx�� �  � ��� I }��
��	
�
 .prcskprsnull���     ctxt� o  }��
� 
ret �	  � ��� I �����
� .sysodelanull��� ��� nmbr� m  ���� �  � ��� I �����
� .prcsclicnull��� ��� uiel� 4  ����
� 
butT� m  ���� ���  S a v e�  � ��� I ��� ���
�  .sysodelanull��� ��� nmbr� m  ������ ��  �  � n IQ��� 4  JQ���
�� 
cwin� m  MP�� ���  S a v e�  g  IJ�  ` n ���� 4  ����
�� 
prcs� m   �� ��� 
 M u s i c�  g  ��^ m  �����                                                                                  sevs  alis    \  Macintosh HD                   BD ����System Events.app                                              ����            ����  
 cu             CoreServices  0/:System:Library:CoreServices:System Events.app/  $  S y s t e m   E v e n t s . a p p    M a c i n t o s h   H D  -System/Library/CoreServices/System Events.app   / ��  �0  �;  �:  �< 0 
statictext 
staticTextN l �������� 2  ����
�� 
sttx��  ��  L n ����� 4  �����
�� 
uiel� m  ������ �  g  ��J o  ������ 0 thisrow thisRow�= 0 thisrow thisRowH l �������� 2  ����
�� 
crow��  ��  F n ����� 4  �����
�� 
outl� m  ������ �  g  ��D n ����� 4  �����
�� 
scra� m  ������ �  g  ��B n ����� 4  �����
�� 
splg� m  ������ �  g  ��@ n }���� 4  ~����
�� 
cwin� m  ���� ��� 
 M u s i c�  g  }~> n rz��� 4  sz���
�� 
prcs� m  vy�� ��� 
 M u s i c�  g  rs< m  lo���                                                                                  sevs  alis    \  Macintosh HD                   BD ����System Events.app                                              ����            ����  
 cu             CoreServices  0/:System:Library:CoreServices:System Events.app/  $  S y s t e m   E v e n t s . a p p    M a c i n t o s h   H D  -System/Library/CoreServices/System Events.app   / ��  �?  �>  9 ��� l     ��������  ��  ��  � ��� l �������� O  ����� I ��������
�� .aevtquitnull��� ��� null��  ��  � m  �����                                                                                      @ alis    ,  Macintosh HD                   BD ����	Music.app                                                      ����            ����  
 cu             Applications   /:System:Applications:Music.app/   	 M u s i c . a p p    M a c i n t o s h   H D  System/Applications/Music.app   / ��  ��  ��  � ��� l     ��������  ��  ��  � ��� l     ��������  ��  ��  � ��� l     ��������  ��  ��  � ��� l     ��������  ��  ��  � ��� l     ��������  ��  ��  � ���� l     ��������  ��  ��  ��       ��������  � ������
�� 
pimr�� 0 
pathexists 
pathExists
�� .aevtoappnull  �   � ****� ����� �  ��� �� ��
�� 
vers��  � �����
�� 
cobj� ��   ��
�� 
osax��  � �� ���������� 0 
pathexists 
pathExists�� ����� �  ���� 0 pathname pathName��  � ���� 0 pathname pathName� ��������
�� 
alis��  ��  
�� 
psxf�� ( ��&OeW X   *�/�&OeW 	X  f� �����������
�� .aevtoappnull  �   � ****� k    ���  :��  Z    a  j  y  �  �  �  �  �  �		  �

  �  8 �����  ��  ��  � ������ 0 thisrow thisRow�� 0 
statictext 
staticText� ] B�� F�� N Q�� U������������������ s������ ��������������� ����� �����������������������������0����+�����������������������������~�i�}�|�{�z��y~yt�x���w�v�u�t�s�r�q��p
�� 
mesS
�� 
btns
�� 
dflt
�� 
givu�� 
�� 
�� .sysodisAaleR        TEXT�� 0 alertresult alertResult
�� 
bhit�� 0 	runbackup 	runBackup
�� 
gavu�� 0 gaveup gaveUp
�� 
bool
�� 
errn������ 0 backupfolder backupFolder
�� afdrdocs
�� .earsffdralis        afdr
�� 
psxp�� 0 
basefolder 
baseFolder
�� 
psxf��  0 basefolderpath baseFolderPath
�� .sysoexecTEXT���     TEXT�� 0 currentdate currentDate�� 0 
savefolder 
saveFolder�� 0 
pathexists 
pathExists�� $0 basefolderexists baseFolderExists�� $0 savefolderexists saveFolderExists
�� .JonspClpnull���     ****
�� 
kocl
�� 
cfol
�� 
insh
�� 
prdt
�� 
pnam�� 
�� .corecrel****      � null�� 0 newsavefolder newSaveFolder�� 0 newbasefolder newBaseFolder
�� .miscactvnull��� ��� null
�� 
cUsP  
�� 
pSmt�� 0 userplaylists userPlaylists
�� 
prcs
�� 
cwin
�� 
splg
�� 
scra
�� 
outl
�� 
crow
�� 
cobj
�� .corecnte****       ****
�� 
uiel
�� 
sttx
� .miscslctnull���     uiel�~ 0 selectedrow selectedRow
�} 
focu
�| .sysodelanull��� ��� nmbr
�{ 
mbar
�z 
menE
�y 
menI
�x .prcsclicnull��� ��� uiel
�w 
faal
�v eMdsKcmd
�u eMdsKsft
�t .prcskprsnull���     ctxt
�s .JonsgClp****    ��� null
�r 
ret 
�q 
butT
�p .aevtquitnull��� ��� null���������lv����� E�O��,E�O��,E` O�a  
 	_ a & )a a lhY hOa E` Oa j a ,_ %E` O*a _ /E` Oa j E` O_ a ,a  %_ %E` !O*_ k+ "E` #O*_ !k+ "E` $O_ !j %Oa & �_ # 3_ $f  '*a 'a (a )_ a *a +_ la , -E` .Y hY K*a 'a (a )a j a *a +_ la , -E` /O*a 'a (a )_ a *a +_ la , -E` .UOa 0 1*j 1O*a 2-a +,a 3[[a +,\Za 4>C\[a 5,\Zf8A1E` 6UOa 7E*a 8a 9/9*a :a ;/-*a <k/#*a =k/*a >k/*a ?-[a 'a @l Akh  � �*a Bk/ � �*a C-[a 'a @l Akh _ 6�a +, ��j DE` EOa 7 �*a 8a F/ �e*a :a G/a H,FOlj IO*a Jk/a Ka L/a Ma N/a Ka O/a Ma P/j QOlj IO*a :a R/ Ka Sa Ta Ua Vlvl WOlj IO*j Xj WOlj IO_ Yj WOlj IO*a Za [/j QOkj IUUUY h[OY�6UU[OY�
UUUUUUOa 0 *j \U ascr  ��ޭ