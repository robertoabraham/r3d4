|SCR 640 480|MEM 65535#w7 $101b#w1E $403a#w46 0:w47 0 'w46 ! ( w46 0? DROP UPDATE DUP EX REDRAW ) 2DROP 0 'w46 ! ;:w48 1 'w46 ! ;#w54 495090497:w55 w54 3141592621 * 1 + DUP 'w54 ! ;#w76 * 64:w77 'w76 63 + 0 OVER C! 1 - ;:w78 -? ( DROP $2d OVER C! ; ) DROP 1 + ;:w79 DUP ABS -? ( 2DROP "-9223372036854775808" ; ) w77 SWAP ( 10 /MOD $30 + PICK2 C! SWAP 1 - SWAP 1? ) DROP SWAP w78 ;:w7A w77 SWAP ( DUP $1 AND $30 + PICK2 C! SWAP 1 - SWAP 1 >>> 1? ) DROP 1 + ;:w7B w77 SWAP ( DUP $f AND $30 + $39 >? ( 7 + ) PICK2 C! SWAP 1 - SWAP 4 >>> 1? ) DROP 1 + ;:w7C w77 SWAP ( DUP $7 AND $30 + PICK2 C! SWAP 1 - SWAP 3 >>> 1? ) DROP 1 + ;:w7D w77 OVER $ffff AND 10000 16 *>> 10000 + ( 10 /MOD $30 + PICK2 C! SWAP 1 - SWAP 1? ) DROP 1 + $2e OVER C! 1 - OVER ABS 16 >> ( 10 /MOD $30 + PICK2 C! SWAP 1 - SWAP 1? ) DROP SWAP w78 ;#w80 0#w81 * 512#w82 'w81:w83 w80 0? ( MEM DUP 'w80 ! NIP ) w82 !+ 'w82 ! ;:w84 w82 'w81 =? ( DROP MEM 'w80 ! ; ) 4 - DUP 'w82 ! @ 'w80 ! ;:w89 w80 C!+ 'w80 ! ;:w8B w80 SWAP ( C@+ 1? ROT C!+ SWAP ) 2DROP 'w80 ! ;:w8C w80 SWAP ( C@+ $ff AND 32 >? ROT C!+ SWAP ) 2DROP 'w80 ! ;:w8D w80 SWAP ( C@+ 1? 10 =? ( 3 + ) 13 =? ( 2DROP 'w80 ! ; ) ROT C!+ SWAP ) 2DROP 'w80 ! ;:w93 0 w89 ;:w96 ;:w97 ;:w98 SWAP w7A w8B ;:w99 SWAP 0? ( DROP ; ) w8B ;:w9A SWAP w79 w8B ;:w9B $25 w89 ;:w9C SWAP w7D w8B ;:w9D SWAP 0? ( DROP ; ) w8C ;:w9E SWAP w7B w8B ;:w9F SWAP 16 >> w79 w8B ;:wA0 SWAP $ffff AND w79 w8B ;:wA1 SWAP w89 ;:wA2 SWAP 0? ( DROP ; ) w8D ;:wA3 ;:wA4 13 w89 ;:wA5 SWAP w7C w8B ;#wA6 w96 w97 w98 w99 w9A w9B w9C w9D w9E w9F wA0 wA1 wA2 wA3 wA4 wA5:wA7 $25 <>? ( w89 ; ) DROP C@+ $f AND 2 << 'wA6 + @ EX ;:wA8 ( C@+ 1? wA7 ) 2DROP ;:wA9 w83 w80 4096 + OVER =? ( 4096 + ) DUP 'w80 ! >R wA8 w93 w84 R> ;#w115 0#w116 0#w117 0#w118 0:w11A VFRAME w115 DUP 32 << OR SW SH * 1 >> QFILL ;:w11B SW * + 2 << VFRAME + ;#w144 ( $00 $aa $00 $82 $00 $82 $00 $82 $00 $aa $00 $00 $00 $00 $10 $38 $7c $fe $7c $38 $10 $00 $00 $00 $55 $aa $55 $aa $55 $aa $55 $aa $55 $aa $55 $aa $00 $a0 $a0 $e0 $a0 $ae $04 $04 $04 $04 $00 $00 $00 $e0 $80 $c0 $80 $8e $08 $0c $08 $08 $00 $00 $00 $60 $80 $80 $80 $6c $0a $0c $0a $0a $00 $00 $00 $80 $80 $80 $80 $ee $08 $0c $08 $08 $00 $00 $00 $18 $24 $24 $18 $00 $00 $00 $00 $00 $00 $00 $00 $00 $10 $10 $7c $10 $10 $00 $7c $00 $00 $00 $00 $c0 $a0 $a0 $a0 $a8 $08 $08 $08 $0e $00 $00 $00 $88 $88 $50 $50 $2e $04 $04 $04 $04 $00 $00 $10 $10 $10 $10 $10 $f0 $00 $00 $00 $00 $00 $00 $00 $00 $00 $00 $00 $f0 $10 $10 $10 $10 $10 $10 $00 $00 $00 $00 $00 $1f $10 $10 $10 $10 $10 $10 $10 $10 $10 $10 $10 $1f $00 $00 $00 $00 $00 $00 $10 $10 $10 $10 $10 $ff $10 $10 $10 $10 $10 $10 $00 $00 $00 $00 $00 $00 $00 $00 $00 $00 $00 $00 $00 $00 $ff $00 $00 $00 $00 $00 $00 $00 $00 $00 $00 $00 $00 $00 $00 $ff $00 $00 $00 $00 $00 $00 $00 $00 $00 $00 $00 $00 $00 $00 $ff $00 $00 $00 $00 $00 $00 $00 $00 $00 $00 $00 $00 $00 $00 $ff $10 $10 $10 $10 $10 $1f $10 $10 $10 $10 $10 $10 $10 $10 $10 $10 $10 $f0 $10 $10 $10 $10 $10 $10 $10 $10 $10 $10 $10 $ff $00 $00 $00 $00 $00 $00 $00 $00 $00 $00 $00 $ff $10 $10 $10 $10 $10 $10 $10 $10 $10 $10 $10 $10 $10 $10 $10 $10 $10 $10 $00 $00 $00 $0e $30 $c0 $30 $0e $00 $fe $00 $00 $00 $00 $00 $e0 $18 $06 $18 $e0 $00 $fe $00 $00 $00 $00 $00 $00 $fe $44 $44 $44 $44 $44 $00 $00 $00 $00 $04 $04 $7e $08 $10 $7e $20 $20 $00 $00 $00 $1c $22 $20 $70 $20 $20 $20 $62 $dc $00 $00 $00 $00 $00 $00 $00 $18 $00 $00 $00 $00 $00 $00 $00 $00 $00 $00 $00 $00 $00 $00 $00 $00 $00 $00 $00 $10 $10 $10 $10 $10 $10 $10 $00 $10 $00 $00 $00 $24 $24 $24 $00 $00 $00 $00 $00 $00 $00 $00 $00 $00 $24 $24 $7e $24 $7e $24 $24 $00 $00 $00 $00 $10 $3c $50 $50 $38 $14 $14 $78 $10 $00 $00 $00 $22 $52 $24 $08 $08 $10 $24 $2a $44 $00 $00 $00 $00 $00 $30 $48 $48 $30 $4a $44 $3a $00 $00 $00 $10 $10 $10 $00 $00 $00 $00 $00 $00 $00 $00 $00 $04 $08 $08 $10 $10 $10 $08 $08 $04 $00 $00 $00 $20 $10 $10 $08 $08 $08 $10 $10 $20 $00 $00 $00 $24 $18 $7e $18 $24 $00 $00 $00 $00 $00 $00 $00 $00 $00 $10 $10 $7c $10 $10 $00 $00 $00 $00 $00 $00 $00 $00 $00 $00 $00 $00 $38 $30 $40 $00 $00 $00 $00 $00 $00 $7c $00 $00 $00 $00 $00 $00 $00 $00 $00 $00 $00 $00 $00 $00 $10 $38 $10 $00 $00 $02 $02 $04 $08 $10 $20 $40 $80 $80 $00 $00 $00 $18 $24 $42 $42 $42 $42 $42 $24 $18 $00 $00 $00 $10 $30 $50 $10 $10 $10 $10 $10 $7c $00 $00 $00 $3c $42 $42 $02 $04 $18 $20 $40 $7e $00 $00 $00 $7e $02 $04 $08 $1c $02 $02 $42 $3c $00 $00 $00 $04 $0c $14 $24 $44 $44 $7e $04 $04 $00 $00 $00 $7e $40 $40 $5c $62 $02 $02 $42 $3c $00 $00 $00 $1c $20 $40 $40 $5c $62 $42 $42 $3c $00 $00 $00 $7e $02 $04 $08 $08 $10 $10 $20 $20 $00 $00 $00 $3c $42 $42 $42 $3c $42 $42 $42 $3c $00 $00 $00 $3c $42 $42 $46 $3a $02 $02 $04 $38 $00 $00 $00 $00 $00 $10 $38 $10 $00 $00 $10 $38 $10 $00 $00 $00 $00 $10 $38 $10 $00 $00 $38 $30 $40 $00 $00 $02 $04 $08 $10 $20 $10 $08 $04 $02 $00 $00 $00 $00 $00 $00 $7e $00 $00 $7e $00 $00 $00 $00 $00 $40 $20 $10 $08 $04 $08 $10 $20 $40 $00 $00 $00 $3c $42 $42 $02 $04 $08 $08 $00 $08 $00 $00 $00 $3c $42 $42 $4e $52 $56 $4a $40 $3c $00 $00 $00 $18 $24 $42 $42 $42 $7e $42 $42 $42 $00 $00 $00 $78 $44 $42 $44 $78 $44 $42 $44 $78 $00 $00 $00 $3c $42 $40 $40 $40 $40 $40 $42 $3c $00 $00 $00 $78 $44 $42 $42 $42 $42 $42 $44 $78 $00 $00 $00 $7e $40 $40 $40 $78 $40 $40 $40 $7e $00 $00 $00 $7e $40 $40 $40 $78 $40 $40 $40 $40 $00 $00 $00 $3c $42 $40 $40 $40 $4e $42 $46 $3a $00 $00 $00 $42 $42 $42 $42 $7e $42 $42 $42 $42 $00 $00 $00 $7c $10 $10 $10 $10 $10 $10 $10 $7c $00 $00 $00 $1f $04 $04 $04 $04 $04 $04 $44 $38 $00 $00 $00 $42 $44 $48 $50 $60 $50 $48 $44 $42 $00 $00 $00 $40 $40 $40 $40 $40 $40 $40 $40 $7e $00 $00 $00 $82 $82 $c6 $aa $92 $92 $82 $82 $82 $00 $00 $00 $42 $42 $62 $52 $4a $46 $42 $42 $42 $00 $00 $00 $3c $42 $42 $42 $42 $42 $42 $42 $3c $00 $00 $00 $7c $42 $42 $42 $7c $40 $40 $40 $40 $00 $00 $00 $3c $42 $42 $42 $42 $42 $52 $4a $3c $02 $00 $00 $7c $42 $42 $42 $7c $50 $48 $44 $42 $00 $00 $00 $3c $42 $40 $40 $3c $02 $02 $42 $3c $00 $00 $00 $fe $10 $10 $10 $10 $10 $10 $10 $10 $00 $00 $00 $42 $42 $42 $42 $42 $42 $42 $42 $3c $00 $00 $00 $82 $82 $44 $44 $44 $28 $28 $28 $10 $00 $00 $00 $82 $82 $82 $82 $92 $92 $92 $aa $44 $00 $00 $00 $82 $82 $44 $28 $10 $28 $44 $82 $82 $00 $00 $00 $82 $82 $44 $28 $10 $10 $10 $10 $10 $00 $00 $00 $7e $02 $04 $08 $10 $20 $40 $40 $7e $00 $00 $00 $3c $20 $20 $20 $20 $20 $20 $20 $3c $00 $00 $00 $80 $80 $40 $20 $10 $08 $04 $02 $02 $00 $00 $00 $78 $08 $08 $08 $08 $08 $08 $08 $78 $00 $00 $00 $10 $28 $44 $00 $00 $00 $00 $00 $00 $00 $00 $00 $00 $00 $00 $00 $00 $00 $00 $00 $00 $fe $00 $10 $08 $00 $00 $00 $00 $00 $00 $00 $00 $00 $00 $00 $00 $00 $00 $3c $02 $3e $42 $46 $3a $00 $00 $00 $40 $40 $40 $5c $62 $42 $42 $62 $5c $00 $00 $00 $00 $00 $00 $3c $42 $40 $40 $42 $3c $00 $00 $00 $02 $02 $02 $3a $46 $42 $42 $46 $3a $00 $00 $00 $00 $00 $00 $3c $42 $7e $40 $42 $3c $00 $00 $00 $1c $22 $20 $20 $7c $20 $20 $20 $20 $00 $00 $00 $00 $00 $00 $3a $44 $44 $38 $40 $3c $42 $3c $00 $40 $40 $40 $5c $62 $42 $42 $42 $42 $00 $00 $00 $00 $10 $00 $30 $10 $10 $10 $10 $7c $00 $00 $00 $00 $04 $00 $0c $04 $04 $04 $04 $44 $44 $38 $00 $40 $40 $40 $44 $48 $70 $48 $44 $42 $00 $00 $00 $30 $10 $10 $10 $10 $10 $10 $10 $7c $00 $00 $00 $00 $00 $00 $ec $92 $92 $92 $92 $82 $00 $00 $00 $00 $00 $00 $5c $62 $42 $42 $42 $42 $00 $00 $00 $00 $00 $00 $3c $42 $42 $42 $42 $3c $00 $00 $00 $00 $00 $00 $5c $62 $42 $62 $5c $40 $40 $40 $00 $00 $00 $00 $3a $46 $42 $46 $3a $02 $02 $02 $00 $00 $00 $00 $5c $22 $20 $20 $20 $20 $00 $00 $00 $00 $00 $00 $3c $42 $30 $0c $42 $3c $00 $00 $00 $00 $20 $20 $7c $20 $20 $20 $22 $1c $00 $00 $00 $00 $00 $00 $44 $44 $44 $44 $44 $3a $00 $00 $00 $00 $00 $00 $44 $44 $44 $28 $28 $10 $00 $00 $00 $00 $00 $00 $82 $82 $92 $92 $aa $44 $00 $00 $00 $00 $00 $00 $42 $24 $18 $18 $24 $42 $00 $00 $00 $00 $00 $00 $42 $42 $42 $46 $3a $02 $42 $3c $00 $00 $00 $00 $7e $04 $08 $10 $20 $7e $00 $00 $00 $0e $10 $10 $08 $30 $08 $10 $10 $0e $00 $00 $00 $10 $10 $10 $10 $10 $10 $10 $10 $10 $00 $00 $00 $70 $08 $08 $10 $0c $10 $08 $08 $70 $00 $00 $00 $24 $54 $48 $00 $00 $00 $00 $00 $00 $00 $00 $00 $00 $00 $00 $00 $00 $00 $00 $00 $00 $00 $00 $00 $10 $00 $10 $10 $10 $10 $10 $10 $10 $00 $00 $00 $10 $38 $54 $50 $50 $54 $38 $10 $00 $00 $00 $00 $1c $22 $20 $70 $20 $20 $20 $62 $dc $00 $00 $00 $00 $00 $42 $3c $24 $24 $3c $42 $00 $00 $00 $00 $82 $82 $44 $28 $7c $10 $7c $10 $10 $00 $00 $00 $10 $10 $10 $10 $00 $10 $10 $10 $10 $00 $00 $18 $24 $20 $18 $24 $24 $18 $04 $24 $18 $00 $00 $24 $24 $00 $00 $00 $00 $00 $00 $00 $00 $00 $00 $38 $44 $92 $aa $a2 $aa $92 $44 $38 $00 $00 $00 $00 $38 $04 $3c $44 $3c $00 $7c $00 $00 $00 $00 $00 $00 $12 $24 $48 $90 $48 $24 $12 $00 $00 $00 $00 $00 $00 $00 $00 $7e $02 $02 $02 $00 $00 $00 $00 $00 $00 $00 $00 $3c $00 $00 $00 $00 $00 $00 $38 $44 $92 $aa $aa $b2 $aa $44 $38 $00 $00 $00 $00 $7e $00 $00 $00 $00 $00 $00 $00 $00 $00 $00 $00 $18 $24 $24 $18 $00 $00 $00 $00 $00 $00 $00 $00 $00 $10 $10 $7c $10 $10 $00 $7c $00 $00 $00 $30 $48 $08 $30 $40 $78 $00 $00 $00 $00 $00 $00 $30 $48 $10 $08 $48 $30 $00 $00 $00 $00 $00 $00 $08 $10 $00 $00 $00 $00 $00 $00 $00 $00 $00 $00 $00 $00 $00 $00 $42 $42 $42 $42 $66 $5a $40 $00 $00 $3e $74 $74 $74 $34 $14 $14 $14 $14 $00 $00 $00 $00 $00 $00 $00 $18 $00 $00 $00 $00 $00 $00 $00 $00 $00 $00 $00 $00 $00 $00 $00 $00 $08 $18 $20 $60 $20 $20 $20 $70 $00 $00 $00 $00 $00 $00 $00 $30 $48 $48 $30 $00 $78 $00 $00 $00 $00 $00 $00 $00 $90 $48 $24 $12 $24 $48 $90 $00 $00 $00 $40 $c0 $40 $40 $42 $e6 $0a $12 $1a $06 $00 $00 $40 $c0 $40 $40 $4c $f2 $02 $0c $10 $1e $00 $00 $60 $90 $20 $10 $92 $66 $0a $12 $1a $06 $00 $00 $00 $10 $00 $10 $10 $20 $40 $42 $42 $3c $00 $00 $10 $08 $00 $18 $24 $42 $42 $7e $42 $42 $00 $00 $ff $ff $ff $ff $ff $ff $ff $ff $ff $ff $ff $ff $00 $10 $00 $10 $10 $10 $10 $10 $10 $10 $00 $00 $00 $10 $38 $54 $50 $50 $54 $38 $10 $00 $00 $00 $00 $1c $22 $20 $70 $20 $20 $20 $62 $dc $00 $00 $00 $00 $00 $42 $3c $24 $24 $3c $42 $00 $00 $00 $00 $82 $82 $44 $28 $7c $10 $7c $10 $10 $00 $00 $00 $10 $10 $10 $10 $00 $10 $10 $10 $10 $00 $00 $18 $24 $20 $18 $24 $24 $18 $04 $24 $18 $00 $00 $24 $24 $00 $00 $00 $00 $00 $00 $00 $00 $00 $00 $38 $44 $92 $aa $a2 $aa $92 $44 $38 $00 $00 $00 $00 $38 $04 $3c $44 $3c $00 $7c $00 $00 $00 $00 $00 $00 $12 $24 $48 $90 $48 $24 $12 $00 $00 $00 $00 $00 $00 $00 $00 $7e $02 $02 $02 $00 $00 $00 $00 $00 $00 $00 $00 $3c $00 $00 $00 $00 $00 $00 $38 $44 $92 $aa $aa $b2 $aa $44 $38 $00 $00 $00 $00 $7e $00 $00 $00 $00 $00 $00 $00 $00 $00 $00 $00 $18 $24 $24 $18 $00 $00 $00 $00 $00 $00 $00 $00 $00 $10 $10 $7c $10 $10 $00 $7c $00 $00 $00 $30 $48 $08 $30 $40 $78 $00 $00 $00 $00 $00 $00 $30 $48 $10 $08 $48 $30 $00 $00 $00 $00 $00 $00 $08 $10 $00 $00 $00 $00 $00 $00 $00 $00 $00 $00 $00 $00 $00 $00 $42 $42 $42 $42 $66 $5a $40 $00 $00 $3e $74 $74 $74 $34 $14 $14 $14 $14 $00 $00 $00 $00 $00 $00 $00 $18 $00 $00 $00 $00 $00 $00 $00 $00 $00 $00 $00 $00 $00 $00 $00 $00 $08 $18 $20 $60 $20 $20 $20 $70 $00 $00 $00 $00 $00 $00 $00 $30 $48 $48 $30 $00 $78 $00 $00 $00 $00 $00 $00 $00 $90 $48 $24 $12 $24 $48 $90 $00 $00 $00 $40 $c0 $40 $40 $42 $e6 $0a $12 $1a $06 $00 $00 $40 $c0 $40 $40 $4c $f2 $02 $0c $10 $1e $00 $00 $60 $90 $20 $10 $92 $66 $0a $12 $1a $06 $00 $00 $00 $10 $00 $10 $10 $20 $40 $42 $42 $3c $00 $00 $10 $08 $00 $18 $24 $42 $42 $7e $42 $42 $00 $00 $08 $10 $00 $18 $24 $42 $42 $7e $42 $42 $00 $00 $18 $24 $00 $18 $24 $42 $42 $7e $42 $42 $00 $00 $32 $4c $00 $18 $24 $42 $42 $7e $42 $42 $00 $00 $24 $24 $00 $18 $24 $42 $42 $7e $42 $42 $00 $00 $18 $24 $18 $18 $24 $42 $42 $7e $42 $42 $00 $00 $00 $6e $90 $90 $90 $9c $f0 $90 $90 $9e $00 $00 $00 $3c $42 $40 $40 $40 $40 $40 $42 $3c $08 $10 $10 $08 $00 $7e $40 $40 $78 $40 $40 $7e $00 $00 $08 $10 $00 $7e $40 $40 $78 $40 $40 $7e $00 $00 $18 $24 $00 $7e $40 $40 $78 $40 $40 $7e $00 $00 $24 $24 $00 $7e $40 $40 $78 $40 $40 $7e $00 $00 $20 $10 $00 $7c $10 $10 $10 $10 $10 $7c $00 $00 $08 $10 $00 $7c $10 $10 $10 $10 $10 $7c $00 $00 $18 $24 $00 $7c $10 $10 $10 $10 $10 $7c $00 $00 $44 $44 $00 $7c $10 $10 $10 $10 $10 $7c $00 $00 $00 $78 $44 $42 $42 $e2 $42 $42 $44 $78 $00 $00 $64 $98 $00 $82 $c2 $a2 $92 $8a $86 $82 $00 $00 $20 $10 $00 $7c $82 $82 $82 $82 $82 $7c $00 $00 $08 $10 $00 $7c $82 $82 $82 $82 $82 $7c $00 $00 $18 $24 $00 $7c $82 $82 $82 $82 $82 $7c $00 $00 $64 $98 $00 $7c $82 $82 $82 $82 $82 $7c $00 $00 $44 $44 $00 $7c $82 $82 $82 $82 $82 $7c $00 $00 $00 $00 $00 $42 $24 $18 $18 $24 $42 $00 $00 $00 $02 $3c $46 $4a $4a $52 $52 $52 $62 $3c $40 $00 $20 $10 $00 $42 $42 $42 $42 $42 $42 $3c $00 $00 $08 $10 $00 $42 $42 $42 $42 $42 $42 $3c $00 $00 $18 $24 $00 $42 $42 $42 $42 $42 $42 $3c $00 $00 $24 $24 $00 $42 $42 $42 $42 $42 $42 $3c $00 $00 $08 $10 $00 $44 $44 $28 $10 $10 $10 $10 $00 $00 $00 $40 $7c $42 $42 $42 $7c $40 $40 $40 $00 $00 $00 $38 $44 $44 $48 $50 $4c $42 $42 $5c $00 $00 $00 $10 $08 $00 $3c $02 $3e $42 $46 $3a $00 $00 $00 $04 $08 $00 $3c $02 $3e $42 $46 $3a $00 $00 $00 $18 $24 $00 $3c $02 $3e $42 $46 $3a $00 $00 $00 $32 $4c $00 $3c $02 $3e $42 $46 $3a $00 $00 $00 $24 $24 $00 $3c $02 $3e $42 $46 $3a $00 $00 $18 $24 $18 $00 $3c $02 $3e $42 $46 $3a $00 $00 $00 $00 $00 $00 $6c $12 $7c $90 $92 $6c $00 $00 $00 $00 $00 $00 $3c $42 $40 $40 $42 $3c $08 $10 $00 $10 $08 $00 $3c $42 $7e $40 $42 $3c $00 $00 $00 $08 $10 $00 $3c $42 $7e $40 $42 $3c $00 $00 $00 $18 $24 $00 $3c $42 $7e $40 $42 $3c $00 $00 $00 $24 $24 $00 $3c $42 $7e $40 $42 $3c $00 $00 $00 $20 $10 $00 $30 $10 $10 $10 $10 $7c $00 $00 $00 $10 $20 $00 $30 $10 $10 $10 $10 $7c $00 $00 $00 $30 $48 $00 $30 $10 $10 $10 $10 $7c $00 $00 $00 $48 $48 $00 $30 $10 $10 $10 $10 $7c $00 $00 $24 $18 $28 $04 $3c $42 $42 $42 $42 $3c $00 $00 $00 $32 $4c $00 $5c $62 $42 $42 $42 $42 $00 $00 $00 $20 $10 $00 $3c $42 $42 $42 $42 $3c $00 $00 $00 $08 $10 $00 $3c $42 $42 $42 $42 $3c $00 $00 $00 $18 $24 $00 $3c $42 $42 $42 $42 $3c $00 $00 $00 $32 $4c $00 $3c $42 $42 $42 $42 $3c $00 $00 $00 $24 $24 $00 $3c $42 $42 $42 $42 $3c $00 $00 $00 $00 $10 $10 $00 $7c $00 $10 $10 $00 $00 $00 $00 $00 $00 $02 $3c $46 $4a $52 $62 $3c $40 $00 $00 $20 $10 $00 $44 $44 $44 $44 $44 $3a $00 $00 $00 $08 $10 $00 $44 $44 $44 $44 $44 $3a $00 $00 $00 $18 $24 $00 $44 $44 $44 $44 $44 $3a $00 $00 $00 $28 $28 $00 $44 $44 $44 $44 $44 $3a $00 $00 $00 $08 $10 $00 $42 $42 $42 $46 $3a $02 $42 $3c $00 $00 $40 $40 $5c $62 $42 $42 $62 $5c $40 $40 $00 $24 $24 $00 $42 $42 $42 $46 $3a $02 $42 $3c ):w145 NA? ( 4 A+ ; ) INK A!+ ;:w146 w116 w117 w11B >A 3 << DUP 1 >> + 'w144 + SW 8 - 2 << SWAP 12 ( 1? 1 - SWAP C@+ $80 ( 1? OVER w145 1 >> ) 2DROP PICK2 A+ SWAP ) SW 2 << DUP 1 << + 2 << 32 - NEG A+ 3DROP ;:w147 8 NIP ;#w150 12#w155 'w146#w156 'w147:w15B $ff AND DUP w155 EX w156 EX 'w116 +! ;:w15E w150 'w117 +! 0 'w116 ! ;:w164 0 'w116 ! 0 'w117 ! ;:w165 ( C@+ 1? w15B ) 2DROP ;:w166 wA9 w165 ;:w172 w55 SW MOD ABS 16 << w55 SH MOD ABS 16 << ;:w173 w55 15.0 MOD w55 15.0 MOD ;#w174 16 * 128:w175 'w174 >A $ff00 A!+ 2SWAP SWAP A!+ A!+ SWAP A!+ A!+ ;:w177 w11A w164 $ff00 'INK ! " r" w166 OVER w79 w166 w15E "hit <f1> !!" w166 w15E w15E w174 $5a5a5a5a5a5a 32 *>> "%h" w166 w15E w15E w15E KEY w7 =? ( w48 ) w1E =? ( w172 w173 w175 ) DROP ;:w178 w83 ;: w178 3 'w177 w47 ;