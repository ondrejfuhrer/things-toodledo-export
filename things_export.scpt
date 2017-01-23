FasdUAS 1.101.10   ��   ��    k             l     ��  ��     -------      � 	 	  - - - - - - -     
  
 l     ��  ��    : 4 Convert Things (from Cultured Code) database to CSV     �   h   C o n v e r t   T h i n g s   ( f r o m   C u l t u r e d   C o d e )   d a t a b a s e   t o   C S V      l     ��  ��    ' ! https://culturedcode.com/things/     �   B   h t t p s : / / c u l t u r e d c o d e . c o m / t h i n g s /      l     ��������  ��  ��        l     ��  ��      Version 1.0     �      V e r s i o n   1 . 0      l     ��������  ��  ��        l     ��   ��    e _ This script produces two CSVs on the user's Desktop. One for todos and the other for projects.      � ! ! �   T h i s   s c r i p t   p r o d u c e s   t w o   C S V s   o n   t h e   u s e r ' s   D e s k t o p .   O n e   f o r   t o d o s   a n d   t h e   o t h e r   f o r   p r o j e c t s .   " # " l     �� $ %��   $ 0 * It requires that Things.app is installed.    % � & & T   I t   r e q u i r e s   t h a t   T h i n g s . a p p   i s   i n s t a l l e d . #  ' ( ' l     ��������  ��  ��   (  ) * ) l     �� + ,��   + e _ Things todos and projects can be tied either using the project name in the todos CSV or better    , � - - �   T h i n g s   t o d o s   a n d   p r o j e c t s   c a n   b e   t i e d   e i t h e r   u s i n g   t h e   p r o j e c t   n a m e   i n   t h e   t o d o s   C S V   o r   b e t t e r *  . / . l     �� 0 1��   0 M G the project id in the todos CSV since this is guaranteed to be unique.    1 � 2 2 �   t h e   p r o j e c t   i d   i n   t h e   t o d o s   C S V   s i n c e   t h i s   i s   g u a r a n t e e d   t o   b e   u n i q u e . /  3 4 3 l     ��������  ��  ��   4  5 6 5 l     �� 7 8��   7 c ] Project Areas are not present since I had difficulty pulling them out and don't use them so     8 � 9 9 �   P r o j e c t   A r e a s   a r e   n o t   p r e s e n t   s i n c e   I   h a d   d i f f i c u l t y   p u l l i n g   t h e m   o u t   a n d   d o n ' t   u s e   t h e m   s o   6  : ; : l     �� < =��   < "  didn't investigate further.    = � > > 8   d i d n ' t   i n v e s t i g a t e   f u r t h e r . ;  ? @ ? l     ��������  ��  ��   @  A B A l     �� C D��   C   Known Issues:    D � E E    K n o w n   I s s u e s : B  F G F l     �� H I��   H e _ This script is slow as molasses. Seems to cause Things to hit 100% CPU usage on a single core.    I � J J �   T h i s   s c r i p t   i s   s l o w   a s   m o l a s s e s .   S e e m s   t o   c a u s e   T h i n g s   t o   h i t   1 0 0 %   C P U   u s a g e   o n   a   s i n g l e   c o r e . G  K L K l     �� M N��   M ^ X Guessing perhaps the Things Applescript implementation isn't parallelized at all or my     N � O O �   G u e s s i n g   p e r h a p s   t h e   T h i n g s   A p p l e s c r i p t   i m p l e m e n t a t i o n   i s n ' t   p a r a l l e l i z e d   a t   a l l   o r   m y   L  P Q P l     �� R S��   R > 8 first attempt at Applescript-ing needs some refinement!    S � T T p   f i r s t   a t t e m p t   a t   A p p l e s c r i p t - i n g   n e e d s   s o m e   r e f i n e m e n t ! Q  U V U l     ��������  ��  ��   V  W X W l     �� Y Z��   Y i c Also I haven't delineated Inbox, Today, Next, Scheduled, Someday etc. A grievous oversight I know     Z � [ [ �   A l s o   I   h a v e n ' t   d e l i n e a t e d   I n b o x ,   T o d a y ,   N e x t ,   S c h e d u l e d ,   S o m e d a y   e t c .   A   g r i e v o u s   o v e r s i g h t   I   k n o w   X  \ ] \ l     �� ^ _��   ^ h b but to be frank I only use Today and I couldn't come up with an elegant approach to pulling those    _ � ` ` �   b u t   t o   b e   f r a n k   I   o n l y   u s e   T o d a y   a n d   I   c o u l d n ' t   c o m e   u p   w i t h   a n   e l e g a n t   a p p r o a c h   t o   p u l l i n g   t h o s e ]  a b a l     �� c d��   c g a categories out of Things without hard coding them into my script and iterating over each one in     d � e e �   c a t e g o r i e s   o u t   o f   T h i n g s   w i t h o u t   h a r d   c o d i n g   t h e m   i n t o   m y   s c r i p t   a n d   i t e r a t i n g   o v e r   e a c h   o n e   i n   b  f g f l     �� h i��   h   turn.    i � j j    t u r n . g  k l k l     �� m n��   m  -------     n � o o  - - - - - - -   l  p q p l     ��������  ��  ��   q  r s r l     �� t u��   t   Setup todo file    u � v v     S e t u p   t o d o   f i l e s  w x w l    * y���� y r     * z { z b     ( | } | b      ~  ~ b      � � � b     	 � � � l     ����� � I    �� � �
�� .earsffdralis        afdr � m     ��
�� afdrdesk � �� ���
�� 
rtyp � m    ��
�� 
utxt��  ��  ��   � m     � � � � �   T h i n g s   -   t o d o   -   � I   	 �� ����� 0 dateisoformat dateISOformat �  ��� � I  
 ������
�� .misccurdldt    ��� null��  ��  ��  ��    m     � � � � �    } I    '�� ����� 0 replace_chars   �  � � � I    !�� ����� 0 timeisoformat timeISOformat �  ��� � I   ������
�� .misccurdldt    ��� null��  ��  ��  ��   �  � � � m   ! " � � � � �  : �  ��� � m   " # � � � � �  -��  ��   { o      ���� "0 todofilepattern todoFilePattern��  ��   x  � � � l  + 0 ����� � r   + 0 � � � b   + . � � � o   + ,���� "0 todofilepattern todoFilePattern � m   , - � � � � �    0 . x m l � o      ���� 0 todofilepath todoFilePath��  ��   �  � � � l  1 A ����� � r   1 A � � � l  1 = ����� � I  1 =�� � �
�� .rdwropenshor       file � 4   1 5�� �
�� 
file � o   3 4���� 0 todofilepath todoFilePath � �� ���
�� 
perm � m   8 9��
�� boovtrue��  ��  ��   � o      ���� 0 todofile todoFile��  ��   �  � � � l  B M ����� � I  B M�� � �
�� .rdwrseofnull���     **** � o   B E���� 0 todofile todoFile � �� ���
�� 
set2 � m   H I����  ��  ��  ��   �  � � � l     �� � ���   � � � write "name,status,tag names,cancellation date,due date,modification date,contact,project name, project id,area,activation date,id,completion date,creation date,notes,complete" & linefeed to todoFile    � � � ��   w r i t e   " n a m e , s t a t u s , t a g   n a m e s , c a n c e l l a t i o n   d a t e , d u e   d a t e , m o d i f i c a t i o n   d a t e , c o n t a c t , p r o j e c t   n a m e ,   p r o j e c t   i d , a r e a , a c t i v a t i o n   d a t e , i d , c o m p l e t i o n   d a t e , c r e a t i o n   d a t e , n o t e s , c o m p l e t e "   &   l i n e f e e d   t o   t o d o F i l e �  � � � l  N _ ����� � I  N _�� � �
�� .rdwrwritnull���     **** � b   N U � � � m   N Q � � � � �: < x m l > < t i t l e > T o o d l e d o   : :   t o - d o   l i s t < / t i t l e > < l i n k > h t t p : / / w w w . t o o d l e d o . c o m / < / l i n k > < t o o d l e d o v e r s i o n > 6 < / t o o d l e d o v e r s i o n > < d e s c r i p t i o n > Y o u r   t o - d o   l i s t < / d e s c r i p t i o n > � 1   Q T��
�� 
lnfd � �� ���
�� 
refn � o   X [���� 0 todofile todoFile��  ��  ��   �  � � � l     ��������  ��  ��   �  � � � l     �� � ���   �   Setup project file    � � � � &   S e t u p   p r o j e c t   f i l e �  � � � l     �� � ���   � � �set projectFilePath to (path to desktop as Unicode text) & "Things Backup - project - " & replace_chars(dateISOformat(current date), ":", "-") & ".csv"    � � � �. s e t   p r o j e c t F i l e P a t h   t o   ( p a t h   t o   d e s k t o p   a s   U n i c o d e   t e x t )   &   " T h i n g s   B a c k u p   -   p r o j e c t   -   "   &   r e p l a c e _ c h a r s ( d a t e I S O f o r m a t ( c u r r e n t   d a t e ) ,   " : " ,   " - " )   &   " . c s v " �  � � � l     �� � ���   � U Oset projectFile to (open for access file projectFilePath with write permission)    � � � � � s e t   p r o j e c t F i l e   t o   ( o p e n   f o r   a c c e s s   f i l e   p r o j e c t F i l e P a t h   w i t h   w r i t e   p e r m i s s i o n ) �  � � � l     �� � ���   � ! set eof of projectFile to 0    � � � � 6 s e t   e o f   o f   p r o j e c t F i l e   t o   0 �  � � � l     �� � ���   � � �write "name,status,tag names,cancellation date,due date,modification date,contact,area,activation date,id,completion date,creation date,notes" & linefeed to projectFile    � � � �P w r i t e   " n a m e , s t a t u s , t a g   n a m e s , c a n c e l l a t i o n   d a t e , d u e   d a t e , m o d i f i c a t i o n   d a t e , c o n t a c t , a r e a , a c t i v a t i o n   d a t e , i d , c o m p l e t i o n   d a t e , c r e a t i o n   d a t e , n o t e s "   &   l i n e f e e d   t o   p r o j e c t F i l e �  � � � l     ��������  ��  ��   �  � � � l  ` ����� � O   ` � � � k   f � �  � � � l  f f��������  ��  ��   �  � � � l  f f�� � ���   � _ Y debug - can use the below counter to exit the todo loop after N iterations for debugging    � � � � �   d e b u g   -   c a n   u s e   t h e   b e l o w   c o u n t e r   t o   e x i t   t h e   t o d o   l o o p   a f t e r   N   i t e r a t i o n s   f o r   d e b u g g i n g �  � � � r   f k � � � m   f g����   � o      ���� 0 counter   �  � � � r   l q � � � m   l m����   � o      ���� 0 filecounter fileCounter �  � � � X   r� ��� � � k   �� � �  � � � r   � � � � � n  � � � � � I   � ��� ����� "0 escapetexttocsv escapeTextToCsv �  ��  n  � � I   � ������� 0 	trim_line    n  � � I   � ������� $0 formatemptyvalue formatEmptyValue 	��	 c   � �

 n   � � 1   � ���
�� 
pnam o   � ��� 0 todo toDo m   � ��~
�~ 
utxt��  ��    f   � �  m   � � �    �} m   � ��|�| �}  ��    f   � ���  ��   �  f   � � � o      �{�{ 0 todoname toDoName �  r   � � n  � � I   � ��z�y�z $0 formatemptyvalue formatEmptyValue �x n   � � 1   � ��w
�w 
tdst o   � ��v�v 0 todo toDo�x  �y    f   � � o      �u�u 0 
todostatus 
toDoStatus  r   � �  n  � �!"! I   � ��t#�s�t "0 escapetexttocsv escapeTextToCsv# $�r$ n  � �%&% I   � ��q'�p�q $0 formatemptyvalue formatEmptyValue' (�o( n   � �)*) 1   � ��n
�n 
tnam* o   � ��m�m 0 todo toDo�o  �p  &  f   � ��r  �s  "  f   � �  o      �l�l 0 todotags toDoTags +,+ l  � ��k�j�i�k  �j  �i  , -.- r   � �/0/ n  � �121 I   � ��h3�g�h 0 dateisoformat dateISOformat3 4�f4 n   � �565 1   � ��e
�e 
cncd6 o   � ��d�d 0 todo toDo�f  �g  2  f   � �0 o      �c�c $0 todocancellation toDoCancellation. 787 r   � �9:9 n  � �;<; I   � ��b=�a�b 0 timeisoformat timeISOformat= >�`> n   � �?@? 1   � ��_
�_ 
cncd@ o   � ��^�^ 0 todo toDo�`  �a  <  f   � �: o      �]�] ,0 todocancellationtime toDoCancellationTime8 ABA l  � ��\�[�Z�\  �[  �Z  B CDC r   � �EFE n  � �GHG I   � ��YI�X�Y 0 dateisoformat dateISOformatI J�WJ n   � �KLK 1   � ��V
�V 
duedL o   � ��U�U 0 todo toDo�W  �X  H  f   � �F o      �T�T 0 tododue toDoDueD MNM r   �OPO n  �QRQ I   ��SS�R�S 0 timeisoformat timeISOformatS T�QT n   � �UVU 1   � ��P
�P 
duedV o   � ��O�O 0 todo toDo�Q  �R  R  f   � �P o      �N�N 0 tododuetime toDoDueTimeN WXW l �M�L�K�M  �L  �K  X YZY l �J�I�H�J  �I  �H  Z [\[ r  ]^] n _`_ I  	�Ga�F�G 0 dateisoformat dateISOformata b�Eb n  	cdc 1  
�D
�D 
moddd o  	
�C�C 0 todo toDo�E  �F  `  f  	^ o      �B�B $0 todomodification toDoModification\ efe r  %ghg n !iji I  !�Ak�@�A 0 timeisoformat timeISOformatk l�?l n  mnm 1  �>
�> 
moddn o  �=�= 0 todo toDo�?  �@  j  f  h o      �<�< ,0 todomodificationtime toDoModificationTimef opo l &&�;qr�;  q > 8 set toDoContact to my formatEmptyValue(contact of toDo)   r �ss p   s e t   t o D o C o n t a c t   t o   m y   f o r m a t E m p t y V a l u e ( c o n t a c t   o f   t o D o )p tut l &&�:�9�8�:  �9  �8  u vwv r  &/xyx n  &+z{z m  '+�7
�7 
tspt{ o  &'�6�6 0 todo toDoy o      �5�5 0 todoproject toDoProjectw |}| r  07~~ m  03�� ���   o      �4�4 "0 todoprojectname toDoProjectName} ��� r  8?��� m  8;�� ���  � o      �3�3 0 todoprojectid toDoProjectId� ��� Z  @i���2�1� l @G��0�/� > @G��� o  @C�.�. 0 todoproject toDoProject� m  CF�-
�- 
msng�0  �/  � k  Je�� ��� r  JY��� c  JU��� n  JQ��� 1  MQ�,
�, 
pnam� o  JM�+�+ 0 todoproject toDoProject� m  QT�*
�* 
utf8� o      �)�) "0 todoprojectname toDoProjectName� ��(� r  Ze��� n  Za��� 1  ]a�'
�' 
ID  � o  Z]�&�& 0 todoproject toDoProject� o      �%�% 0 todoprojectid toDoProjectId�(  �2  �1  � ��� l jj�$�#�"�$  �#  �"  � ��� r  jq��� m  jm�� ���  � o      �!�! 0 todoareaname toDoAreaName� ��� l rr� ���   �  �  � ��� r  r���� n r|��� I  s|���� 0 dateisoformat dateISOformat� ��� n  sx��� 1  tx�
� 
actd� o  st�� 0 todo toDo�  �  �  f  rs� o      ��  0 todoactivation toDoActivation� ��� r  ����� n ����� I  ������ 0 timeisoformat timeISOformat� ��� n  ����� 1  ���
� 
actd� o  ���� 0 todo toDo�  �  �  f  ��� o      �� (0 todoactivationtime toDoActivationTime� ��� r  ����� n  ����� 1  ���
� 
ID  � o  ���� 0 todo toDo� o      �� 0 todoid toDoId� ��� r  ����� n ����� I  ������ 0 dateisoformat dateISOformat� ��� n  ����� 1  ���
� 
cmpd� o  ���
�
 0 todo toDo�  �  �  f  ��� o      �	�	  0 todocompletion toDoCompletion� ��� r  ����� n ����� I  ������ 0 timeisoformat timeISOformat� ��� n  ����� 1  ���
� 
cmpd� o  ���� 0 todo toDo�  �  �  f  ��� o      �� (0 todocompletiontime toDoCompletionTime� ��� r  ����� n ����� I  ������ 0 dateisoformat dateISOformat� �� � n  ����� 1  ����
�� 
cred� o  ������ 0 todo toDo�   �  �  f  ��� o      ���� 0 todocreation toDoCreation� ��� r  ����� n ����� I  ��������� 0 timeisoformat timeISOformat� ���� n  ����� 1  ����
�� 
cred� o  ������ 0 todo toDo��  ��  �  f  ��� o      ���� $0 todocreationtime toDoCreationTime� ��� r  ����� n ����� I  ��������� "0 escapetexttocsv escapeTextToCsv� ���� n ����� I  ��������� 0 	trim_line  � ��� n ����� I  ��������� $0 formatemptyvalue formatEmptyValue� ���� c  ����� n  ����� 1  ����
�� 
note� o  ������ 0 todo toDo� m  ����
�� 
utf8��  ��  �  f  ��� ��� m  ��   �   � �� m  ������ ��  ��  �  f  ����  ��  �  f  ��� o      ���� 0 	todonotes 	toDoNotes�  l ����������  ��  ��    l ����������  ��  ��    l ����	
��  	b\ write toDoName & "," & toDoStatus & "," & toDoTags & "," & toDoCancellation & "," & toDoDue & "," & toDoModification & "," & toDoContact & "," & toDoProjectName & "," & toDoProjectId & "," & toDoAreaName & "," & toDoActivation & "," & toDoId & "," & toDoCompletion & "," & toDoCreation & "," & toDoNotes & "," & toDoComplete & linefeed to todoFile   
 ��   w r i t e   t o D o N a m e   &   " , "   &   t o D o S t a t u s   &   " , "   &   t o D o T a g s   &   " , "   &   t o D o C a n c e l l a t i o n   &   " , "   &   t o D o D u e   &   " , "   &   t o D o M o d i f i c a t i o n   &   " , "   &   t o D o C o n t a c t   &   " , "   &   t o D o P r o j e c t N a m e   &   " , "   &   t o D o P r o j e c t I d   &   " , "   &   t o D o A r e a N a m e   &   " , "   &   t o D o A c t i v a t i o n   &   " , "   &   t o D o I d   &   " , "   &   t o D o C o m p l e t i o n   &   " , "   &   t o D o C r e a t i o n   &   " , "   &   t o D o N o t e s   &   " , "   &   t o D o C o m p l e t e   &   l i n e f e e d   t o   t o d o F i l e  l ����������  ��  ��    I �X��
�� .rdwrwritnull���     **** b  �N b  �J b  �F b  �B b  �> b  �: b  �6 b  �2 !  b  �."#" b  �*$%$ b  �&&'& b  �"()( b  �*+* b  �,-, b  �./. b  �010 b  �232 b  �
454 b  �676 b  �898 b  ��:;: m  ��<< �== ^ < i t e m > < p a r e n t > 0 < / p a r e n t > < o r d e r > 0 < / o r d e r > < t i t l e >; o  ������ 0 todoname toDoName9 m  �>> �??  < / t i t l e > < t a g >7 o  ���� 0 todotags toDoTags5 m  	@@ �AA  < / t a g > < f o l d e r >3 o  
���� "0 todoprojectname toDoProjectName1 m  BB �CC � < / f o l d e r > < c o n t e x t > < / c o n t e x t > < g o a l > < / g o a l > < l o c a t i o n > < / l o c a t i o n > < s t a r t d a t e >/ o  ����  0 todoactivation toDoActivation- m  DD �EE . < / s t a r t d a t e > < s t a r t t i m e >+ o  ���� (0 todoactivationtime toDoActivationTime) m  !FF �GG * < / s t a r t t i m e > < d u e d a t e >' o  "%���� 0 tododue toDoDue% m  &)HH �II n < / d u e d a t e > < d u e d a t e m o d i f i e r > 0 < / d u e d a t e m o d i f i e r > < d u e t i m e ># o  *-���� 0 tododuetime toDoDueTime! m  .1JJ �KK * < / d u e t i m e > < c o m p l e t e d > o  25����  0 todocompletion toDoCompletion m  69LL �MM � < / c o m p l e t e d > < r e p e a t > N o n e < / r e p e a t > < r e p e a t f r o m > 0 < / r e p e a t f r o m > < p r i o r i t y > L o w < / p r i o r i t y > < l e n g t h > < / l e n g t h > < t i m e r > 0 < / t i m e r > < s t a t u s > o  :=���� 0 
todostatus 
toDoStatus m  >ANN �OO : < / s t a t u s > < s t a r > 0 < / s t a r > < n o t e > o  BE���� 0 	todonotes 	toDoNotes m  FIPP �QQ  < / n o t e > < / i t e m > 1  JM��
�� 
lnfd ��R��
�� 
refnR o  QT���� 0 todofile todoFile��   STS l YY��������  ��  ��  T UVU l YY��WX��  W m g debug - can use the below counter to exit the todo loop after N iterations for debugging (default 10)	   X �YY �   d e b u g   -   c a n   u s e   t h e   b e l o w   c o u n t e r   t o   e x i t   t h e   t o d o   l o o p   a f t e r   N   i t e r a t i o n s   f o r   d e b u g g i n g   ( d e f a u l t   1 0 ) 	V Z[Z e  Y_\\ n  Y_]^] 1  Z^��
�� 
pALL^ o  YZ���� 0 todo toDo[ _`_ r  `iaba [  `ecdc m  `a���� d l ade����e o  ad���� 0 counter  ��  ��  b o      ���� 0 counter  ` fgf Z  j�hi����h = jqjkj l jml����l o  jm���� 0 counter  ��  ��  k m  mp���� �i k  t�mm non r  t}pqp [  tyrsr m  tu���� s l uxt����t o  ux���� 0 filecounter fileCounter��  ��  q o      ���� 0 filecounter fileCountero uvu Z  ~�wx����w = ~�yzy l ~�{����{ o  ~����� 0 filecounter fileCounter��  ��  z m  ������ x  S  ����  ��  v |}| I ����~
�� .rdwrwritnull���     ****~ b  ����� m  ���� ���  < / x m l >� 1  ����
�� 
lnfd �����
�� 
refn� o  ������ 0 todofile todoFile��  } ��� I �������
�� .rdwrclosnull���     ****� o  ������ 0 todofile todoFile��  � ��� r  ����� b  ����� b  ����� b  ����� o  ������ "0 todofilepattern todoFilePattern� m  ���� ���   � o  ������ 0 filecounter fileCounter� m  ���� ���  . x m l� o      ���� 0 todofilepath todoFilePath� ��� r  ����� l �������� I ������
�� .rdwropenshor       file� 4  �����
�� 
file� o  ������ 0 todofilepath todoFilePath� �����
�� 
perm� m  ����
�� boovtrue��  ��  ��  � o      ���� 0 todofile todoFile� ��� I ������
�� .rdwrseofnull���     ****� o  ������ 0 todofile todoFile� �����
�� 
set2� m  ������  ��  � ��� I ������
�� .rdwrwritnull���     ****� b  ����� m  ���� ���: < x m l > < t i t l e > T o o d l e d o   : :   t o - d o   l i s t < / t i t l e > < l i n k > h t t p : / / w w w . t o o d l e d o . c o m / < / l i n k > < t o o d l e d o v e r s i o n > 6 < / t o o d l e d o v e r s i o n > < d e s c r i p t i o n > Y o u r   t o - d o   l i s t < / d e s c r i p t i o n >� 1  ����
�� 
lnfd� �����
�� 
refn� o  ������ 0 todofile todoFile��  � ���� r  ����� m  ������  � o      ���� 0 counter  ��  ��  ��  g ���� l ����������  ��  ��  ��  �� 0 todo toDo � 2  u z��
�� 
tstk � ��� l ����������  ��  ��  � ��� I �����
�� .rdwrwritnull���     ****� b  ����� m  ���� ���  < / x m l >� 1  ����
�� 
lnfd� �����
�� 
refn� o   ���� 0 todofile todoFile��  � ��� I �����
�� .rdwrclosnull���     ****� o  ���� 0 todofile todoFile��  � ��� l ��������  ��  ��  � ��� l ����  � !  repeat with pr in projects   � ��� 6   r e p e a t   w i t h   p r   i n   p r o j e c t s� ��� l �~���~  � ^ X set prName to my escapeTextToCsv(my trim_line(my formatEmptyValue(name of pr), " ", 2))   � ��� �   s e t   p r N a m e   t o   m y   e s c a p e T e x t T o C s v ( m y   t r i m _ l i n e ( m y   f o r m a t E m p t y V a l u e ( n a m e   o f   p r ) ,   "   " ,   2 ) )� ��� l �}���}  � 8 2 set prStatus to my formatEmptyValue(status of pr)   � ��� d   s e t   p r S t a t u s   t o   m y   f o r m a t E m p t y V a l u e ( s t a t u s   o f   p r )� ��� l �|���|  � M G set prTags to my escapeTextToCsv(my formatEmptyValue(tag names of pr))   � ��� �   s e t   p r T a g s   t o   m y   e s c a p e T e x t T o C s v ( m y   f o r m a t E m p t y V a l u e ( t a g   n a m e s   o f   p r ) )� ��� l �{���{  � F @ set prCancellation to my dateISOformat(cancellation date of pr)   � ��� �   s e t   p r C a n c e l l a t i o n   t o   m y   d a t e I S O f o r m a t ( c a n c e l l a t i o n   d a t e   o f   p r )� ��� l �z���z  � 4 . set prDue to my dateISOformat(due date of pr)   � ��� \   s e t   p r D u e   t o   m y   d a t e I S O f o r m a t ( d u e   d a t e   o f   p r )� ��� l �y���y  � F @ set prModification to my dateISOformat(modification date of pr)   � ��� �   s e t   p r M o d i f i c a t i o n   t o   m y   d a t e I S O f o r m a t ( m o d i f i c a t i o n   d a t e   o f   p r )� ��� l �x���x  � : 4 set prContact to my formatEmptyValue(contact of pr)   � ��� h   s e t   p r C o n t a c t   t o   m y   f o r m a t E m p t y V a l u e ( c o n t a c t   o f   p r )� ��� l �w�v�u�w  �v  �u  � ��� l �t���t  �   set prAreaName to ""   � ��� *   s e t   p r A r e a N a m e   t o   " "� ��� l �s�r�q�s  �r  �q  � ��� l �p���p  � B < set prActivation to my dateISOformat(activation date of pr)   � ��� x   s e t   p r A c t i v a t i o n   t o   m y   d a t e I S O f o r m a t ( a c t i v a t i o n   d a t e   o f   p r )� ��� l �o���o  �   set prId to id of pr   � ��� *   s e t   p r I d   t o   i d   o f   p r� ��� l �n���n  � B < set prCompletion to my dateISOformat(completion date of pr)   � �   x   s e t   p r C o m p l e t i o n   t o   m y   d a t e I S O f o r m a t ( c o m p l e t i o n   d a t e   o f   p r )�  l �m�m   > 8 set prCreation to my dateISOformat(creation date of pr)    � p   s e t   p r C r e a t i o n   t o   m y   d a t e I S O f o r m a t ( c r e a t i o n   d a t e   o f   p r )  l �l	�l   ` Z set prNotes to my escapeTextToCsv(my trim_line(my formatEmptyValue(notes of pr), " ", 2))   	 �

 �   s e t   p r N o t e s   t o   m y   e s c a p e T e x t T o C s v ( m y   t r i m _ l i n e ( m y   f o r m a t E m p t y V a l u e ( n o t e s   o f   p r ) ,   "   " ,   2 ) )  l �k�j�i�k  �j  �i    l �h�h   write prName & "," & prStatus & "," & prTags & "," & prCancellation & "," & prDue & "," & prModification & "," & prContact & "," & prAreaName & "," & prActivation & "," & prId & "," & prCompletion & "," & prCreation & "," & prNotes & linefeed to projectFile    �   w r i t e   p r N a m e   &   " , "   &   p r S t a t u s   &   " , "   &   p r T a g s   &   " , "   &   p r C a n c e l l a t i o n   &   " , "   &   p r D u e   &   " , "   &   p r M o d i f i c a t i o n   &   " , "   &   p r C o n t a c t   &   " , "   &   p r A r e a N a m e   &   " , "   &   p r A c t i v a t i o n   &   " , "   &   p r I d   &   " , "   &   p r C o m p l e t i o n   &   " , "   &   p r C r e a t i o n   &   " , "   &   p r N o t e s   &   l i n e f e e d   t o   p r o j e c t F i l e  l �g�f�e�g  �f  �e    l �d�d    	 debug --    �    d e b u g   - -  l �c�c    get properties of pr    � ( g e t   p r o p e r t i e s   o f   p r �b l �a �a     end repeat     �!!    e n d   r e p e a t�b   � m   ` c""�                                                                                  Thgs  alis    N  Macintosh HD               В;>H+  ��
Things.app                                                     �!��_Q        ����  	                Applications    В-.      �C1    ��  %Macintosh HD:Applications: Things.app    
 T h i n g s . a p p    M a c i n t o s h   H D  Applications/Things.app   / ��  ��  ��   � #$# l     �`�_�^�`  �_  �^  $ %&% i     '(' I      �])�\�] $0 formatemptyvalue formatEmptyValue) *�[* o      �Z�Z 0 thevalue theValue�[  �\  ( k     ++ ,-, Z     ./�Y�X. =    010 o     �W�W 0 thevalue theValue1 m    �V
�V 
msng/ r    	232 m    44 �55  3 o      �U�U 0 thevalue theValue�Y  �X  - 6�T6 L    77 o    �S�S 0 thevalue theValue�T  & 898 l     �R�Q�P�R  �Q  �P  9 :;: i    <=< I      �O>�N�O 0 dateisoformat dateISOformat> ?�M? o      �L�L 0 thedate theDate�M  �N  = k     R@@ ABA Z     OCD�KEC =    FGF o     �J�J 0 thedate theDateG m    �I
�I 
msngD r    	HIH m    JJ �KK  I o      �H�H 0 thedate theDate�K  E k    OLL MNM r    OPO n    QRQ 7   �GST
�G 
ctxtS m    �F�F��T m    �E�E��R l   U�D�CU b    VWV m    XX �YY  0 0 0 0W l   Z�B�AZ n    [\[ 1    �@
�@ 
year\ o    �?�? 0 thedate theDate�B  �A  �D  �C  P o      �>�> 0 y  N ]^] r    1_`_ n    /aba 7  % /�=cd
�= 
ctxtc m   ) +�<�<��d m   , .�;�;��b l   %e�:�9e b    %fgf m    hh �ii  0 0g l   $j�8�7j c    $klk l   "m�6�5m n    "non m     "�4
�4 
mntho o     �3�3 0 thedate theDate�6  �5  l m   " #�2
�2 
long�8  �7  �:  �9  ` o      �1�1 0 m  ^ pqp r   2 Crsr n   2 Atut 7  7 A�0vw
�0 
ctxtv m   ; =�/�/��w m   > @�.�.��u l  2 7x�-�,x b   2 7yzy m   2 3{{ �||  0 0z l  3 6}�+�*} n   3 6~~ 1   4 6�)
�) 
day  o   3 4�(�( 0 thedate theDate�+  �*  �-  �,  s o      �'�' 0 d  q ��� l  D D�&���&  � % set t to time string of theDate   � ��� > s e t   t   t o   t i m e   s t r i n g   o f   t h e D a t e� ��� l  D D�%���%  � 4 .set theDate to y & "-" & m & "-" & d & " " & t   � ��� \ s e t   t h e D a t e   t o   y   &   " - "   &   m   &   " - "   &   d   &   "   "   &   t� ��$� r   D O��� b   D M��� b   D K��� b   D I��� b   D G��� o   D E�#�# 0 y  � m   E F�� ���  -� o   G H�"�" 0 m  � m   I J�� ���  -� o   K L�!�! 0 d  � o      � �  0 thedate theDate�$  B ��� L   P R�� o   P Q�� 0 thedate theDate�  ; ��� l     ����  �  �  � ��� i    ��� I      ���� 0 timeisoformat timeISOformat� ��� o      �� 0 thedate theDate�  �  � k     �� ��� Z     ����� =    ��� o     �� 0 thedate theDate� m    �
� 
msng� r    	��� m    �� ���  � o      �� 0 t  �  � r    ��� n    ��� 1    �
� 
tstr� o    �� 0 thedate theDate� o      �� 0 t  � ��� L    �� o    �� 0 t  �  � ��� l     ����  �  �  � ��� i    ��� I      �
��	�
 "0 escapetexttocsv escapeTextToCsv� ��� o      �� 0 thetext theText�  �	  � k     �� ��� l     ����  � , & replace all single quotes with double   � ��� L   r e p l a c e   a l l   s i n g l e   q u o t e s   w i t h   d o u b l e� ��� l     ����  � * $ wrap all strings with double quotes   � ��� H   w r a p   a l l   s t r i n g s   w i t h   d o u b l e   q u o t e s� ��� l     ����  � A ; set the result to the replace_chars(theText, "\"", "\"\"")   � ��� v   s e t   t h e   r e s u l t   t o   t h e   r e p l a c e _ c h a r s ( t h e T e x t ,   " \ " " ,   " \ " \ " " )� ��� r     ��� l    ���� I     ��� � 0 escapestring escapeString� ���� o    ���� 0 thetext theText��  �   �  �  � l     ������ 1      ��
�� 
rslt��  ��  � ��� l  	 	������  � ) # set result to "\"" & result & "\""   � ��� F   s e t   r e s u l t   t o   " \ " "   &   r e s u l t   &   " \ " "� ���� L   	 �� 1   	 ��
�� 
rslt��  � ��� l     ��������  ��  ��  � ��� i    ��� I      ������� 0 replace_chars  � ��� o      ���� 0 	this_text  � ��� o      ���� 0 search_string  � ���� o      ���� 0 replacement_string  ��  ��  � k      �� ��� r     ��� l    ������ o     ���� 0 search_string  ��  ��  � n     ��� 1    ��
�� 
txdl� 1    ��
�� 
ascr� ��� r    ��� n    	��� 2    	��
�� 
citm� o    ���� 0 	this_text  � l     ������ o      ���� 0 	item_list  ��  ��  � ��� r    ��� l   ������ o    ���� 0 replacement_string  ��  ��  � n     ��� 1    ��
�� 
txdl� 1    ��
�� 
ascr� ��� r       c     l   ���� o    ���� 0 	item_list  ��  ��   m    ��
�� 
TEXT o      ���� 0 	this_text  �  r     m    		 �

   n      1    ��
�� 
txdl 1    ��
�� 
ascr �� L      o    ���� 0 	this_text  ��  �  l     ��������  ��  ��    i     I      ������ 0 escapestring escapeString �� o      ���� 0 toescape toEscape��  ��   k     9  r     
 I     ������ 0 replacechars replaceChars  o    ���� 0 toescape toEscape   m    !! �""  "  #��# m    $$ �%%  & q u o t ;��  ��   o      ���� 0 res   &'& r    ()( I    ��*���� 0 replacechars replaceChars* +,+ o    ���� 0 res  , -.- m    // �00  '. 1��1 m    22 �33  & a p o s ;��  ��  ) o      ���� 0 res  ' 454 r     676 I    ��8���� 0 replacechars replaceChars8 9:9 o    ���� 0 res  : ;<; m    == �>>  &< ?��? m    @@ �AA 
 & a m p ;��  ��  7 o      ���� 0 res  5 BCB r   ! +DED I   ! )��F���� 0 replacechars replaceCharsF GHG o   " #���� 0 res  H IJI m   # $KK �LL  >J M��M m   $ %NN �OO  & g t ;��  ��  E o      ���� 0 res  C PQP r   , 6RSR I   , 4��T���� 0 replacechars replaceCharsT UVU o   - .���� 0 res  V WXW m   . /YY �ZZ  <X [��[ m   / 0\\ �]]  & l t ;��  ��  S o      ���� 0 res  Q ^��^ L   7 9__ o   7 8���� 0 res  ��   `a` l     ��������  ��  ��  a bcb i    ded I      ��f���� 0 replacechars replaceCharsf ghg o      ���� 0 	this_text  h iji o      ���� 0 search_string  j k��k o      ���� 0 replacement_string  ��  ��  e k      ll mnm r     opo l    q����q o     ���� 0 search_string  ��  ��  p n     rsr 1    ��
�� 
txdls 1    ��
�� 
ascrn tut r    vwv n    	xyx 2    	��
�� 
citmy o    ���� 0 	this_text  w l     z����z o      ���� 0 	item_list  ��  ��  u {|{ r    }~} l   ���� o    ���� 0 replacement_string  ��  ��  ~ n     ��� 1    ��
�� 
txdl� 1    ��
�� 
ascr| ��� r    ��� c    ��� l   ������ o    ���� 0 	item_list  ��  ��  � m    ��
�� 
TEXT� o      ���� 0 	this_text  � ��� r    ��� m    �� ���  � n     ��� 1    ��
�� 
txdl� 1    ��
�� 
ascr� ���� L     �� o    ���� 0 	this_text  ��  c ��� l     ��������  ��  ��  � ���� i    ��� I      ������� 0 	trim_line  � ��� o      ���� 0 	this_text  � ��� o      ���� 0 
trim_chars  � ���� o      ���� 0 trim_indicator  ��  ��  � k     {�� ��� l     ������  � ' ! 0 = beginning, 1 = end, 2 = both   � ��� B   0   =   b e g i n n i n g ,   1   =   e n d ,   2   =   b o t h� ��� r     ��� l    ������ n     ��� 1    ��
�� 
leng� l    ������ o     ���� 0 
trim_chars  ��  ��  ��  ��  � o      ���� 0 x  � ��� l   ������  �   TRIM BEGINNING   � ���    T R I M   B E G I N N I N G� ��� Z    >������ E   ��� J    
�� ��� m    �~�~  � ��}� m    �|�| �}  � l  
 ��{�z� o   
 �y�y 0 trim_indicator  �{  �z  � V    :��� Q    5���� r    +��� c    )��� n    '��� 7   '�x��
�x 
cha � l   #��w�v� [    #��� o     !�u�u 0 x  � m   ! "�t�t �w  �v  � m   $ &�s�s��� o    �r�r 0 	this_text  � m   ' (�q
�q 
TEXT� o      �p�p 0 	this_text  � R      �o�n�m
�o .ascrerr ****      � ****�n  �m  � k   3 5�� ��� l  3 3�l���l  � 8 2 the text contains nothing but the trim characters   � ��� d   t h e   t e x t   c o n t a i n s   n o t h i n g   b u t   t h e   t r i m   c h a r a c t e r s� ��k� L   3 5�� m   3 4�� ���  �k  � C   ��� o    �j�j 0 	this_text  � l   ��i�h� o    �g�g 0 
trim_chars  �i  �h  ��  �  � ��� l  ? ?�f���f  �   TRIM ENDING   � ���    T R I M   E N D I N G� ��� Z   ? x���e�d� E  ? E��� J   ? C�� ��� m   ? @�c�c � ��b� m   @ A�a�a �b  � l  C D��`�_� o   C D�^�^ 0 trim_indicator  �`  �_  � V   H t��� Q   P o���� r   S e��� c   S c��� n   S a��� 7  T a�]��
�] 
cha � m   X Z�\�\ � d   [ `�� l  \ _��[�Z� [   \ _��� o   \ ]�Y�Y 0 x  � m   ] ^�X�X �[  �Z  � o   S T�W�W 0 	this_text  � m   a b�V
�V 
TEXT� o      �U�U 0 	this_text  � R      �T�S�R
�T .ascrerr ****      � ****�S  �R  � k   m o�� ��� l  m m�Q���Q  � 8 2 the text contains nothing but the trim characters   � ��� d   t h e   t e x t   c o n t a i n s   n o t h i n g   b u t   t h e   t r i m   c h a r a c t e r s�  �P  L   m o m   m n �  �P  � D   L O o   L M�O�O 0 	this_text   l  M N�N�M o   M N�L�L 0 
trim_chars  �N  �M  �e  �d  � �K L   y { o   y z�J�J 0 	this_text  �K  ��       �I	
�I  	 	�H�G�F�E�D�C�B�A�@�H $0 formatemptyvalue formatEmptyValue�G 0 dateisoformat dateISOformat�F 0 timeisoformat timeISOformat�E "0 escapetexttocsv escapeTextToCsv�D 0 replace_chars  �C 0 escapestring escapeString�B 0 replacechars replaceChars�A 0 	trim_line  
�@ .aevtoappnull  �   � ****
 �?(�>�=�<�? $0 formatemptyvalue formatEmptyValue�> �;�;   �:�: 0 thevalue theValue�=   �9�9 0 thevalue theValue �84
�8 
msng�< ��  �E�Y hO� �7=�6�5�4�7 0 dateisoformat dateISOformat�6 �3�3   �2�2 0 thedate theDate�5   �1�0�/�.�1 0 thedate theDate�0 0 y  �/ 0 m  �. 0 d   �-JX�,�+�*h�)�(�'{�&��
�- 
msng
�, 
year
�+ 
ctxt�*��
�) 
mnth
�( 
long�'��
�& 
day �4 S��  �E�Y E��,%[�\[Z�\Zi2E�O��,�&%[�\[Z�\Zi2E�O��,%[�\[Z�\Zi2E�O��%�%�%�%E�O� �%��$�#�"�% 0 timeisoformat timeISOformat�$ �!�!   � �  0 thedate theDate�#   ��� 0 thedate theDate� 0 t   ���
� 
msng
� 
tstr�" ��  �E�Y ��,E�O� ������ "0 escapetexttocsv escapeTextToCsv� ��   �� 0 thetext theText�   �� 0 thetext theText ��� 0 escapestring escapeString
� 
rslt� *�k+  E�O�E ���� �� 0 replace_chars  � �!� !  ���� 0 	this_text  � 0 search_string  � 0 replacement_string  �   �
�	���
 0 	this_text  �	 0 search_string  � 0 replacement_string  � 0 	item_list    ����	
� 
ascr
� 
txdl
� 
citm
� 
TEXT� !���,FO��-E�O���,FO��&E�O���,FO� ��� "#��� 0 escapestring escapeString� ��$�� $  ���� 0 toescape toEscape�   " ������ 0 toescape toEscape�� 0 res  # !$��/2=@KNY\�� 0 replacechars replaceChars�� :*���m+ E�O*���m+ E�O*���m+ E�O*���m+ E�O*���m+ E�O� ��e����%&���� 0 replacechars replaceChars�� ��'�� '  �������� 0 	this_text  �� 0 search_string  �� 0 replacement_string  ��  % ���������� 0 	this_text  �� 0 search_string  �� 0 replacement_string  �� 0 	item_list  & ���������
�� 
ascr
�� 
txdl
�� 
citm
�� 
TEXT�� !���,FO��-E�O���,FO��&E�O���,FO� �������()���� 0 	trim_line  �� ��*�� *  �������� 0 	this_text  �� 0 
trim_chars  �� 0 trim_indicator  ��  ( ���������� 0 	this_text  �� 0 
trim_chars  �� 0 trim_indicator  �� 0 x  ) �����������
�� 
leng
�� 
cha 
�� 
TEXT��  ��  �� |��,E�Ojllv� 0 *h�� �[�\[Z�k\Zi2�&E�W 	X  �[OY��Y hOkllv� 1 +h�� �[�\[Zk\Z�k'2�&E�W 	X  �[OY��Y hO� ��+����,-��
�� .aevtoappnull  �   � ****+ k    ..  w//  �00  �11  �22  �33  �����  ��  ��  , ���� 0 todo toDo- ^�������� ����� ��� � ����� ��������������� �������"����������������������������������������������������������������������������������������� ��<>@BDFHJLNP�����������
�� afdrdesk
�� 
rtyp
�� 
utxt
�� .earsffdralis        afdr
�� .misccurdldt    ��� null�� 0 dateisoformat dateISOformat�� 0 timeisoformat timeISOformat�� 0 replace_chars  �� "0 todofilepattern todoFilePattern�� 0 todofilepath todoFilePath
�� 
file
�� 
perm
�� .rdwropenshor       file�� 0 todofile todoFile
�� 
set2
�� .rdwrseofnull���     ****
�� 
lnfd
�� 
refn
�� .rdwrwritnull���     ****�� 0 counter  �� 0 filecounter fileCounter
�� 
tstk
�� 
kocl
�� 
cobj
�� .corecnte****       ****
�� 
pnam�� $0 formatemptyvalue formatEmptyValue�� 0 	trim_line  �� "0 escapetexttocsv escapeTextToCsv�� 0 todoname toDoName
�� 
tdst�� 0 
todostatus 
toDoStatus
�� 
tnam�� 0 todotags toDoTags
�� 
cncd�� $0 todocancellation toDoCancellation�� ,0 todocancellationtime toDoCancellationTime
�� 
dued�� 0 tododue toDoDue�� 0 tododuetime toDoDueTime
�� 
modd�� $0 todomodification toDoModification�� ,0 todomodificationtime toDoModificationTime
�� 
tspt�� 0 todoproject toDoProject�� "0 todoprojectname toDoProjectName�� 0 todoprojectid toDoProjectId
�� 
msng
�� 
utf8
�� 
ID  �� 0 todoareaname toDoAreaName
�� 
actd��  0 todoactivation toDoActivation�� (0 todoactivationtime toDoActivationTime�� 0 todoid toDoId
�� 
cmpd��  0 todocompletion toDoCompletion�� (0 todocompletiontime toDoCompletionTime
�� 
cred�� 0 todocreation toDoCreation�� $0 todocreationtime toDoCreationTime
�� 
note�� 0 	todonotes 	toDoNotes
�� 
pALL�� �
�� .rdwrclosnull���     ****�����l �%**j k+ %�%***j k+ ��m+ %E�O��%E�O*��/a el E` O_ a jl Oa _ %a _ l Oa �jE` OjE` O�*a -[a a l kh  )))�a  ,�&k+ !a "lm+ #k+ $E` %O)�a &,k+ !E` 'O))�a (,k+ !k+ $E` )O)�a *,k+ E` +O)�a *,k+ E` ,O)�a -,k+ E` .O)�a -,k+ E` /O)�a 0,k+ E` 1O)�a 0,k+ E` 2O�a 3,E` 4Oa 5E` 6Oa 7E` 8O_ 4a 9  _ 4a  ,a :&E` 6O_ 4a ;,E` 8Y hOa <E` =O)�a >,k+ E` ?O)�a >,k+ E` @O�a ;,E` AO)�a B,k+ E` CO)�a B,k+ E` DO)�a E,k+ E` FO)�a E,k+ E` GO)))�a H,a :&k+ !a Ilm+ #k+ $E` JOa K_ %%a L%_ )%a M%_ 6%a N%_ ?%a O%_ @%a P%_ .%a Q%_ /%a R%_ C%a S%_ '%a T%_ J%a U%_ %a _ l O�a V,EOk_ E` O_ a W  {k_ E` O_ l  Y hOa X_ %a _ l O_ j YO�a Z%_ %a [%E�O*��/a el E` O_ a jl Oa \_ %a _ l OjE` Y hOP[OY��Oa ]_ %a _ l O_ j YOPUascr  ��ޭ