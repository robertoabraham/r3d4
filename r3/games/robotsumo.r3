| robot sumo
| PHREDA 2021
^r3/lib/gui.r3
^r3/lib/3d.r3
^r3/lib/rand.r3
^r3/lib/vsprite.r3
^r3/util/arr16.r3

#drawrobot $1F879CB4 $1F846EC5 $34FC6EC5 $34FF9CB5 | ...
$8888880C $CE579AD4 $CE546CE5 $E3CC6CE5 $E3CF9AD5 $8888880C $E07F81F4 $E2E085B5
$207885B5 $235781F5
#colorobot $FF00000C $EEC86164 $F8D4ADC5 $894ADC5 $13146345 $8888880C 0

#robots 0 0 | dynamic array of robots
#fx 0 0 | fx

#xcam 0 #ycam 0 #zcam 10.0

#FRICTION	0.8

#robottime
#robotout

:r.01 rand 0.001 mod ;
:r.1 rand 1.0 mod ;
:r.8 rand 8.0 mod ;

:3dop project3d op ;
:3dline project3d line ;

:star | r --
	0 over 0 3dop
	0 ( 1.0 <?
		0.05 + dup pick2 1 >> polar 0 3dline
		0.05 + dup pick2 polar 0 3dline
		) 2drop ;

:explo
	>b
	mpush
	-1 b> +!
	b@+ 0? ( ; ) drop
	b@+ b@+ 0 mtransi
	0.1 b> +!
	$ff0000 'ink !
	b@ star
	mpop ;

:+hit | x y exp --
	'explo 'fx p!+ >a
	a!+ swap a!+ a!+ 1 a! ;

| color x y rot vel vx vy
:sumorobot | adr --
	mpush
	>b
	b@+ 8 << $c or 'colorobot !
	b@+ b@+ 0 mtransi
	b@+ mrotzi
	'drawrobot 3dvsprite
	mpop ;
	;

:+robot | r x y color --
	'sumorobot 'robots p!+ >b
	b!+	| color
	swap b!+ b!+ | x y
	b!+	0 b!+	| rotz vel 	; motor!!
	0 b!+ 0 b!+  | vx vy 	; physics!!
	0 b!+		| velrot
	;

:+rot | ang nro --
	'robots p.nro 32 + ! ;
:+vel | vel nro  --
	'robots p.nro 20 + ! ;

#prevtime
#dtime

:limitpos | --
	b@+
	6.0 >? ( 6.0 b> 4 - ! b> 12 + dup @ neg swap ! )
	-6.0 <? ( -6.0 b> 4 - !  b> 12 + dup @ neg swap ! )
	drop ;

:lost
|	exit
	;

:domove | adr -- adr
	|.... motor add to velocity
	dup 16 + >b	| ang vel
	b@+ b@+ dtime 10 */	| adjust delta time, framerate indepedient
	polar swap
	b> @ + b!+ | dy
	b> @ + b!+ | dx
	b> dup @ dtime 10 */ swap 16 - +! | rotation

	|.... velocity add to position
	-8 b+
	b@ FRICTION *. dup b!+ dtime 10 */ b> 20 - +!
	b@ FRICTION *. dup b!+ dtime 10 */ b> 20 - +!

	|.... check limits
	dup 8 + >b limitpos limitpos

	dup 8 + >b b@+ dup *. b@+ dup *. +
	25.0 >? ( lost ) drop
	;

:checkcollision | p1 p2 -- p1 p2
	over 8 + @ over 8 + @ - dup *. | (x1-x2)^2
	pick2 12 + @ pick2 12 + @ - dup *. +
	1.0 >=? ( drop ; ) sqrt. 1.0 swap -
	>a
	over 8 + @ over 8 + @ -
	pick2 12 + @ pick2 12 + @ -
	atan2 sincos swap				| p1 p2 si co
	|..... change pos
	dup a> *. pick4 8 + +! dup a> *. neg pick3 8 + +!
	over a> *. pick4 12 + +! over a> *. neg pick3 12 + +!
	|.... change vel
	dup a> *. pick4 24 + +! dup a> *. neg pick3 24 + +!
	over a> *. pick4 28 + +! over a> *. neg pick3 28 + +!
	2drop
	over 8 + @ over 8 + @ + 1 >>
	pick2 12 + @ pick2 12 + @ + 1 >>
	10 +hit
;

:steptime
	msec dup prevtime - 'dtime ! 'prevtime !
	'domove 'robots p.mapv
	'checkcollision 'robots p.map2
	;

:testlooser | adr -- adr
	dup 8 + >b
	b@+ dup *. b@+ dup *. +
	4.8 dup *. <? ( drop ; ) drop
	dup 'robots p.nnow 1 + 'robotout !
	;

:robotwin? | -- win
	0 'robotout !
	'testlooser 'robots p.mapv
	robotout
	;

:drawback
	0 4.8 0 project3d op
	0 ( 1.0 <? 0.02 +
		dup 4.8 polar 0 project3d pline
		) drop
	$222222 'ink !
	poli
	;

:showvars |
	dup 4 + >b
	b@+ 'ink !
	b@+ "x:%f " print
	b@+ "y:%f " print
	b@+ "r:%f " print
	b@+ "v:%f " print
	b@+ "vx:%f " print
	b@+ "vy:%f " print cr
	;

:main
	cls gui home
	" ROBOT SUMO " $ff0f0f bprint cr
	$ff00 'ink !
|	'showvars 'robots p.mapv

	omode
	xcam ycam zcam mtrans

	steptime
	drawback
	'robots p.draw
	'fx p.draw

	robotwin? 1? ( exit ) drop

	key
	<f1> =? ( r.1 r.1 r.1 rand +robot )

	<up> =? ( 0.01 0 +vel )
	<dn> =? ( -0.01 0 +vel )
	>up< =? ( 0 0 +vel ) >dn< =? ( 0 0 +vel )
	<le> =? ( 0.01 0 +rot )
	<ri> =? ( -0.01 0 +rot )
	>le< =? ( 0 0 +rot ) >ri< =? ( 0 0 +rot )

	<w> =? ( 0.01 1 +vel )
	<s> =? ( -0.01 1 +vel )
	>w< =? ( 0 1 +vel ) >s< =? ( 0 1 +vel )
	<a> =? ( 0.01 1 +rot )
	<d> =? ( -0.01 1 +rot )
	>a< =? ( 0 1 +rot ) >d< =? ( 0 1 +rot )

	>esc< =? ( exit )
	drop
	acursor ;

#score1 0
#score2 0

:play
	msec 'prevtime !
	0 'robottime !
	'robots p.clear
	-0.25 2.0 0 $ff0000 +robot
	0.25 -2.0 0 $ff +robot
	'main onshow
	robotout
	1 =? ( 1 'score1 +! )
	2 =? ( 1 'score2 +! )
	drop ;


:menu
	cls home
	cls gui home
	" ROBOT SUMO " $ff0f0f bprint cr
	cr
	cr
	$ff0000 'ink !
	score1 "robot 1: %d " print cr
	$ff 'ink !
	score2 "robot 2: %d " print cr
	key
	<f1> =? ( play )
	>esc< =? ( exit )
	drop
	acursor
	;

:memory
	mark
	32 'robots p.ini
	1024 'fx p.ini
	-0.25 2.0 0 $ff0000 +robot
	0.25 -2.0 0 $ff +robot
	;

|<<<< BOOT <<<<
: memory 'menu onshow ;