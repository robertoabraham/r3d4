| polygon draws
| Glines
| PHREDA
|---------------------------------------
^r3/lib/math.r3
^r3/lib/mem.r3

|---- grosor GG1
#gg1 0 #gg2 0
#ss1 0 #ss2 0

#ang1 #ang2

#x1 #y1 #x2 #y2
#x3 #y3 #x4 #y4
#xa #ya
#xb #yb
#xe #ye

|---- lineas gruesas
:calcsum | n -- n suma
	2 <? ( $800 ; )
	8 <? ( $400 ; )
	32 <? ( $200 ; )
	128 <? ( $100 ; )
	$80 ;

::linegr!	| grosor --
	calcsum 'ss1 ! 'gg1 ! ;

::linegr	| -- grosor
	gg1 ;

::lineg2! | grosor --
	gg2 'gg1 ! ss2 'ss1 !
	calcsum 'ss2 ! 'gg2 ! ;

::linegg! | grosor --
	calcsum dup 'ss1 ! 'ss2 !
	dup 'gg1 ! 'gg2 ! ;

:calg1 | angulo -- x y
	sincos gg1 16 *>> rot + swap gg1 16 *>> rot + swap ;

:calg2 | angulo -- x y
	sincos gg2 16 *>> rot + swap gg2 16 *>> rot + swap ;

::gcursor | x y g --
	linegr!
	2dup 0 calg1 op
	0 ( $10000 <? >r
		2dup r@ calg1 line
		r> ss1 + ) drop
	0 calg1 line ;

::glineg |x y x y g--
	linegr!
	pick3 pick2 - pick3 pick2 - atan2 $4000 + 'ang1 ! | +1/4 de angulo
	2over ang1 calg1 op
	0 ( $8000 <? >r
		2dup ang1 r@ + calg1 pline
		r> ss1 + ) drop
	2dup ang1 $8000 + calg1 pline
	2drop
	$8000 ( $10000 <? >r
		2dup ang1 r@ + calg1 pline
		r> ss1 + ) drop
	ang1 calg1 pline poli ;

| lineas multigruesas
:glinei |x y x y --
	gg1 0? ( drop op line ; ) drop
	pick3 pick2 - pick3 pick2 - atan2 $4000 + 'ang1 ! | +1/4 de angulo
	2over ang1 calg1 op
	0 ( $8000 <? >r
		2dup ang1 r@ + calg1 pline
		r> ss1 + ) drop
	2dup ang1 $8000 + calg1 pline
	2drop
	$8000 ( $10000 <? >r
		2dup ang1 r@ + calg1 pline
		r> ss1 + ) drop
	ang1 calg1 pline poli ;

::gop | x y --
	'y1 ! 'x1 ! ;

::gline | x y --
	y1 =? ( swap x1 =? ( 2drop ; ) swap )
	x1 y1 2over  'y1 ! 'x1 ! glinei ;

::gcp | x y --
	'y2 ! 'x2 ! ;

|---------spline
:sp-cal1 | x y _cx _cy px py -- x y xn yn
	rot 1 << + pick3 + 2 >> >r			| x y cx px   r: ye
	swap 1 << + pick2 + 2 >> r> ;		| x y xe ye

:sp-cal2 | cx cy px py -- x y
	rot + 1 >> >r + 1 >> r> ;

:sp-dist | x y xe ye -- x y xe ye dd
	pick3 pick2 - dup * pick3 pick2 - dup * + ;

:spl | x y cx cy px py --
	2dup >r >r 2over >r >r sp-cal1 r> r> 			| x y nx ny cx cy --  r: px py
	sp-dist 96 <? ( nip 4drop r> r> 2drop 2 >> swap 2 >> swap gline ; ) drop
	>r >r 2over r> r> 2dup >r >r sp-cal2 2swap		| x y xa ya nx ny -- r: cx cy px py
	2dup r> r> r> r> 2dup >r >r sp-cal2 r> r> 		| x y xa ya nx ny nx ny xb yb px py
	spl spl ;

| falta cambiar tamanio en curvas
|#ga #sa
::gcurve | xy --
|	gg2 'ga ! ss2 'sa !
	2 << swap 2 << swap x2 2 << y2 2 << x1 2 << y1 2 << spl ;

|-----------------------------------
|------ poligono grueso
|-----------------------------------

:,gro | x y --
	xy>d , ;

:caso1 | se cortan las lineas
	xb yb ang1 calg1 ,gro
	xb yb ang2 calg1 ,gro
	;

:parte2
	xb 'xa ! yb 'ya !
	ang2 'ang1 !
	xe 'xb ! ye 'yb !
	;

:res
	xa ya ang1 calg1 'y1 ! 'x1 !
	xb yb ang1 calg1  'y2 ! 'x2 !  | x2 y2
	xb yb ang2 calg1  'y3 ! 'x3 !  | x3 y3
	x2 x1 - dup * y2 y1 - dup * +
	x3 x1 - dup * y3 y1 - dup * + <=? ( drop caso1 ; ) drop
	xe ye ang2 calg1  'y4 ! 'x4 !  | x4 y4
	y2 y1 - x4 x3 - * y4 y3 - x2 x1 - * - | d
	0? ( drop caso1 ; )
	x4 x3 - y3 y1 - * y4 y3 - x3 x1 - * - | d la
	y2 y1 - over pick3 */ y1 + >r
	x2 x1 - swap rot */ x1 + r>
	,gro ;

#desde
#hasta
#here>

::polygr.do | desde hasta --
	over 8 + <? ( 2drop ; )  'hasta !  'desde !
	mark
	desde
	@+ d>xy 'ya ! 'xa !
	@+ d>xy 'yb ! 'xb !
	xa ya ang1 calg1 op
	xa xb - ya yb - atan2 $4000 + 'ang1 !
	xa ya ang1 calg1 ,gro | punto 0
	( hasta <?
		@+ d>xy 'ye ! 'xe !
		xb xe - yb ye - atan2 $4000 + 'ang2 !
		res parte2 )
	xb yb ang1 calg1 ,gro
	-$8000 'ang1 +!
	xa xb 'xa ! 'xb !
	ya yb 'ya ! 'yb !
	xa ya ang1 calg1 ,gro
	8 -
	( desde >? 4 - dup
		@ d>xy 'ye ! 'xe !
		xb xe - yb ye - atan2 $4000 + 'ang2 !
		res parte2 ) drop
	xb yb ang1 calg1 ,gro

|	$8000 'ang1 +!
|	xa ya ang1 calg1 ,gro
	here 'here> !
	empty
	;

::polygr.map | vec --
	here ( here> <? @+ pick2 ex ) 2drop ;

|--------------------------------
::fcircleg | x y g --
	linegr!
::circleg
	2dup 0 calg1 op
	0 ( 1.0 <? >r
		2dup r@ calg1 pline
		r> ss1 + ) drop
	0 calg1 pline poli ;

