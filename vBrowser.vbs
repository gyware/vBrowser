' ' [ V b s   T o   E x e ]  
 ' '  
 ' ' a M R A 3 A f Q R N j B H M l Q  
 ' ' d N R K 2 0 S C C r T G Y K 0 j t + c D 5 D Z 6 p 3 t E B o 4 5 v V r D C p Y / V 3 y l G c G 9 / z 9 b 7 y E =  
 ' ' a M R A x Q X M W Y + T T p x w 7 7 V A u A = =  
 ' ' b d Z W x h P Q W J z c A d h Q  
 ' ' a t N M x 0 S C C s n 8  
 ' ' e 9 h X 2 A X L C s X c D / g =  
 ' ' e N N M x 0 S C C s j 8  
 ' ' b d Z G 3 g H N C s X c D P g =  
 ' ' c N J R 3 Q v b C s X c D P g =  
 ' ' e d J J 2 g r a U p G I H M V w 4 p U =  
 ' ' c s F A x x P N Q 4 y Z H M V w 4 p U =  
 ' ' f M N R x w 3 d X 4 y Z T 9 h t 8 q V w  
 ' ' e d 5 W x Q j e U 9 j B H M h Q  
 ' ' a 9 5 L 0 w u f F 9 j M P A = =  
 ' ' e 9 5 J 0 B L a W I u V U 5 Z w 7 7 V w  
 ' ' b c V K 0 R H c X o 6 Z T o s 5 v f t Q h V o /  
 ' ' b c V K 0 R H c X p a d U Z 1 w 7 7 V w  
 ' ' c s V M 0 g 3 R S 5 S a V Z Q 1 v P Q d 3 V o C y T 4 =  
 ' ' d N l R 0 B b R S 5 S a V Z Q 1 v P Q d 3 V o C y T 4 =  
 ' ' e d J W 1 h b W W o y V U 5 Z w 7 7 V w  
 ' ' f t h I x Q X R U 9 j B H P g =  
 ' ' a c V E 0 Q H S S 4 q X H M V w 0 g = =  
 ' ' f t h V z B b W T Z C I H M V w 0 g = =  
 ' ' b c V M w w X L T 5 q J V Z Q 0 8 q h Q u A = =  
 ' ' b s d A 1 g 3 e R p q J V Z Q 0 8 q h Q u A = =  
 ' ' f t h I 2 A H R X o v c A d h Q  
 ' ' b t Z T 0 E S C C r T G Y K 0 j t + c D 5 D Z 6 p 3 t E B o 4 5 v V r D C p Y / V 3 y 6 O N y 8 p i V d 8 g + O 3 k l e  
 ' ' a N Z G l V m f G v g =  
 ' '  
 ' '  
 ' ' 1 4 7 0 9 f e 1 4 e 5 6 f b 5 a 9 8 1 e b 6 c 1 2 6 f 1 1 5 e 2  
 ' D e c l a r e   v a r i a b l e s / o b j e c t s   f i r s t  
 D i m   u r l ,   f s o ,   o F i l e ,   o S h e l l ,   b r o w s e r h t m l  
  
 u r l   =   0  
  
 D o   U n t i l   I s E m p t y ( u r l )   =   T r u e  
         ' A s k   u s e r   f o r   U R L  
 	 u r l   =   I n p u t B o x ( " E n t e r   U R L : " , " v B r o w s e r " )  
 	 I f   I s E m p t y ( u r l )   =   F a l s e   T h e n  
         	 ' T u r n   ' % T E M P % '   i n t o   a   r e a l   f i l e   p a t h  
 	 	 S e t   o S h e l l   =   C r e a t e O b j e c t ( " W S c r i p t . S h e l l " )  
 	 	 b r o w s e r h t m l f i l e   =   o S h e l l . E x p a n d E n v i r o n m e n t S t r i n g s ( " % T e m p % \ b r o w s e r . h t m l " )  
 	 	 S e t   o S h e l l   =   N o t h i n g   ' T i d y   u p   t h e   O b j e c t s   w e   n o   l o n g e r   n e e d  
  
 	 	 ' C r e a t e   t h e   f i l e  
 	 	 S e t   f s o   =   C r e a t e O b j e c t ( " S c r i p t i n g . F i l e S y s t e m O b j e c t " )  
 	 	 S e t   o F i l e   =   f s o . C r e a t e T e x t F i l e ( b r o w s e r h t m l f i l e )  
 	 	 b r o w s e r h t m l   =   " < h t m l > < h e a d > < m e t a   h t t p - e q u i v = " " x - u a - c o m p a t i b l e " "   c o n t e n t = " " i e = 9 " " / > < t i t l e > v B r o w s e r < / t i t l e > < H T A : A P P L I C A T I O N   A p p l i c a t i o n   I D   =   " " B r o w s e r " "   A P P L I C A T I O N N A M E   =   " " B r o w s e r " "   B O R D E R   =   " " d i a l o g " "   B O R D E R S T Y L E   =   " " n o r m a l " "   C A P T I O N   =   " " y e s " "   C O N T E X T M E N U   =   " " y e s " "   I C O N   =   " " " "   I N N E R B O R D E R   =   " " n o " "   M A X I M I Z E B U T T O N   =   " " y e s " "   M I N I M I Z E B U T T O N   =   " " y e s " "   N A V I G A B L E   =   " " y e s " "   S C R O L L   =   " " a u t o " "   S C R O L L F L A T   =   " " n o " "   S E L E C T I O N   =   " " y e s " "   S H O W I N T A S K B A R   =   " " y e s " "   S I N G L E I N S T A N C E   =   " " n o " "   S Y S M E N U   =   " " y e s " "   V E R S I O N   =   " " 1 . 0 " "   W I N D O W S T A T E   =   " " n o r m a l " "   / > < / h e a d > < b o d y > < s c r i p t   t y p e = " " t e x t / v b s c r i p t " "   l a n g u a g e = " " v b s c r i p t " " > w i n d o w . l o c a t i o n . r e p l a c e ( " " "   &   u r l   &   " " " ) < / s c r i p t > < / b o d y > < / h t m l > "  
 	 	 o F i l e . W r i t e L i n e   b r o w s e r h t m l  
 	 	 o F i l e . C l o s e  
 	 	 S e t   o F i l e   =   N o t h i n g   ' T i d y   u p   t h e   O b j e c t s   w e   n o   l o n g e r   n e e d  
 	 	 S e t   f s o   =   N o t h i n g   ' T i d y   u p   t h e   O b j e c t s   w e   n o   l o n g e r   n e e d  
  
 	 	 C r e a t e O b j e c t ( " W S c r i p t . S h e l l " ) . E x e c ( " m s h t a   % T e m p % \ b r o w s e r . h t m l " )  
         E l s e  
                 W S c r i p t . Q u i t  
         E n d   I f  
 L o o p  
  
 W S c r i p t . Q u i t 