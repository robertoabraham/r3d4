| frobots
| PHREDA 2021

|MEM $fffff

^r3/lib/gui.r3
^r3/lib/input.r3
^r3/lib/fontj.r3
^r3/lib/3d.r3
^r3/lib/rand.r3
^r3/util/arr16.r3

^r3/editor/simple-edit.r3

^./r3ivm.r3
^./r3itok.r3
^./r3iprint.r3

#spad * 256

#robots 0 0


#xcam 0 #ycam 0 #zcam 50.0
#objetos 0 0	| finarray iniarray

|----- draw cube -----
:3dop project3d op ;
:3dline project3d line ;

:drawboxz | z --
	-0.5 -0.5 pick2 3dop
	0.5 -0.5 pick2 3dline 0.5 0.5 pick2 3dline
	-0.5 0.5 pick2 3dline -0.5 -0.5 rot 3dline ;

:drawlinez | x1 x2 --
	2dup -0.5 3dop 0.5 3dline ;

:drawcube |
	-0.5 drawboxz 0.5 drawboxz
	-0.5 -0.5 drawlinez 0.5 -0.5 drawlinez
	0.5 0.5 drawlinez -0.5 0.5 drawlinez ;

:drawbox
	0 drawboxz ;

:drawtank
	-0.5 -0.5 0 3dop
	0.5 -0.5 0 3dline 0.5 0.5 0 3dline
	-0.5 0.5 0 3dline -0.5 -0.5 0 3dline
	-0.2 -0.2 0 3dop
	0.2 -0.2 0 3dline 0.0 0.9 0 3dline
	-0.2 -0.2 0 3dline ;

:drawshoot
	-0.1 -0.1 0 3dop
	0.1 -0.1 0 3dline 0.1 0.1 0 3dline
	-0.1 0.1 0 3dline -0.1 -0.1 0 3dline ;


|-----------------------
:v+ b@+ b> 28 - +! ;

|----------- Disparo
:disparo | adr --
	>b
	mpush
	-1 b> +!
	b@+ 0? ( ; ) drop
	b@+ b@+ b@+ mtransi
|	b@+ mrotxi b@+ mrotyi b@+ mrotzi | no rota balas
	12 b+
	v+ v+ v+
	$ffffff 'ink !
	drawshoot
	mpop ;

:+disparo | vel ang x y --
	'disparo 'objetos p!+ >a
	$ff a!+
	0 swap rot a!+ a!+ a!+	| position
	0 0 0 a!+ a!+ a!+	| rotation
	swap polar
	0 swap rot a!+ a!+ a!+	| vpos
	;

|----------------------------------

:motor	b> 24 + @ swap polar b> 8 + +! b> 4 + +! ;
:turn   b> 24 + +! ;

:IOrobot
	code 256 + 8 + @	| first var in code
	$1 and? ( 0.001 turn )
	$2 and? ( -0.001 turn )
	$4 and? ( 0.02 motor )
	$8 and? ( -0.02 motor )
	$10 and? ( 0.2 b> 24 + @ b> 4 + @+ swap @ +disparo )
	$f and code 256 + 8 +  !
	;

:coderobot | adr --
	>b
	b@+ dup vm@ ip code + vmstep code - 'ip ! vm!
	IOrobot
	mpush
	b@+ 'ink !
	b@+ b@+ b@+ mtransi
	|b@+ mrotxi b@+ mrotyi	| no rotate in x and y
	8 b+
	b@+ mrotzi
	drawtank
	mpop ;

:+robot | x y color "code" --
	'coderobot 'objetos p!+ >a
	$fff vmcpu	| create CPU
	dup a!+		| vm
	swap vmload | load CODE
	a!+
	swap a!+ a!+ 0 a!+	| position
	0 0 0 a!+ a!+ a!+	| rotation
	0 0 0 a!+ a!+ a!+ | vpos
	0 0 0 a!+ a!+ a!+ | vrot
	;

|----------------------------------
:error!
	drop ;

|-- crobots words
:xturn | degree --
	;

:xscan | resolution -- res
	;

:xcannon | range --
	;
:xdrive | speed --
	;
:xdamage | -- dam
	;
:xspeed | -- spe
	;
:xxyloc | -- x y
	;

|------
:xbye
	exit ;

|#wsys "BYE" "shoot" "turn" "adv" "stop"
#wsysdic $23EA6 |$34A70C35 $D76CEF $22977 $D35C31 0
0
#xsys 'xbye |'xshoot 'xturn 'xadv 'xstop

|-------------------
:runscr
	cls home gui
	$ff00 'ink !
	"frobots" print cr

	omode
	xcam ycam zcam mtrans
	'objetos p.draw

	key
	>esc< =? ( exit )
	drop

	acursor ;

:modrun
	mark
	'wsysdic syswor!
	'xsys vecsys!
	100 'objetos p.ini
	-5.0 -5.0 $ff00 "r3/r3arena/code/test1.r3i" +robot
	-5.0 5.0 $ff0000 "r3/r3arena/code/test2.r3i" +robot
	5.0 -5.0 $ff "r3/r3arena/code/test3.r3i" +robot
|	5.0 5.0 $ff00ff "r3/r3arena/code/test2.r3i" +robot
	'runscr onshow
	empty
	;

|-------------------
:modedit
	"r3/r3arena/code/scratch.r3i" edload
	edrun
	edsave
	;

|-------------------
| robots
| code/name,color,type,
#nr>	| cursor
#nrp	| first
#nrc	| cnt per page


:addr
	"Tito" 'robots p!+ >a
	0 a!+ 0 a!+ 0 a!+	| position
	0 0 0 a!+ a!+ a!+	| rotation
	;

:delr
 	nr> 'robots p.nro 'robots p.del
	nr> 'robots  p.cnt 0? ( 2drop ; )
	1 - clamp0 min 'nr> !
	;

:drawinlist | n -- n
	'robots p.cnt >=? ( ; )
	nr> =? ( $ffffff 'ink ! )
|	dup "%d. " print
	dup 'robots p.nro
	@+ " %s " print
	@+ "%h " print
	@+ "%h " print
	@ "%h " print
	nr> =? ( "< " print $ff00 'ink ! )
	cr
	;

:upr
	nr> 1 - 0 max
	nrp <? ( dup 'nrp ! )
	'nr> !
	;
:dnr
	nr> 1 + 'robots p.cnt 1 - clamp0 min
	nrc nrp + 1 - >=? ( dup nrc - 1 + 'nrp ! )
	'nr> !
	;
:menu
	cls home gui
	$ffff 'ink !
	nr> " FRobots - %d robots" print cr
	cr
	$202020 'ink ! 0 2 40 over nrc + backfill
	0 2 gotoxy $ff00 'ink !
	0 ( nrc <? nrp + drawinlist nrp - 1 + ) drop

	0 rows 1 - gotoxy
	$ffffff 'ink !
	"F1-Add " print
	"F2-Edit " print
	"F3-Del " print
|	"F4-Debug" print
	"F5-Run" print cr
	key
	<up> =? ( upr )
	<dn> =? ( dnr )
	<f1> =? ( addr )
	<f2> =? ( modedit )
	<f3> =? ( delr )
|	<f4> =? ( debug )
	<f5> =? ( modrun )
	>esc< =? ( exit )
	drop
	acursor ;

:modmenu
	0 'nrp !
	rows 16 - 'nrc !
	'menu onShow ;

: |<<< BOOT <<<
	fontj2
	mark
| 32 robots
	32 'robots p.ini
| editor
	1 2 40 25 edwin
	edram
| menu
	modmenu
	;
