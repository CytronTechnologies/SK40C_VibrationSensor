opt subtitle "HI-TECH Software Omniscient Code Generator (Lite mode) build 6738"

opt pagewidth 120

	opt lm

	processor	16F877A
clrc	macro
	bcf	3,0
	endm
clrz	macro
	bcf	3,2
	endm
setc	macro
	bsf	3,0
	endm
setz	macro
	bsf	3,2
	endm
skipc	macro
	btfss	3,0
	endm
skipz	macro
	btfss	3,2
	endm
skipnc	macro
	btfsc	3,0
	endm
skipnz	macro
	btfsc	3,2
	endm
indf	equ	0
indf0	equ	0
pc	equ	2
pcl	equ	2
status	equ	3
fsr	equ	4
fsr0	equ	4
c	equ	1
z	equ	0
pclath	equ	10
# 16 "C:\Users\Cytron-Jogi\Desktop\Vinration sensor\Vibration Sensor.c"
	psect config,class=CONFIG,delta=2 ;#
# 16 "C:\Users\Cytron-Jogi\Desktop\Vinration sensor\Vibration Sensor.c"
	dw 0x3F32 ;#
	FNCALL	_main,_send_config
	FNCALL	_main,_lcd_clr
	FNCALL	_main,_lcd_goto
	FNCALL	_main,_send_string
	FNCALL	_main,_delay
	FNCALL	_send_string,_send_char
	FNCALL	_lcd_goto,_send_config
	FNCALL	_lcd_clr,_send_config
	FNCALL	_lcd_clr,_delay
	FNCALL	_send_char,_delay
	FNCALL	_send_config,_delay
	FNROOT	_main
	global	_PORTD
psect	text156,local,class=CODE,delta=2
global __ptext156
__ptext156:
_PORTD	set	8
	global	_RB0
_RB0	set	48
	global	_RB4
_RB4	set	52
	global	_RB5
_RB5	set	53
	global	_RB6
_RB6	set	54
	global	_RB7
_RB7	set	55
	global	_ADCON1
_ADCON1	set	159
	global	_TRISA
_TRISA	set	133
	global	_TRISB
_TRISB	set	134
	global	_TRISD
_TRISD	set	136
psect	strings,class=STRING,delta=2
global __pstrings
__pstrings:
;	global	stringdir,stringtab,__stringbase
stringtab:
;	String table - string pointers are 1 byte each
stringcode:stringdir:
movlw high(stringdir)
movwf pclath
movf fsr,w
incf fsr
	addwf pc
__stringbase:
	retlw	0
psect	strings
	
STR_1:	
	retlw	86	;'V'
	retlw	73	;'I'
	retlw	66	;'B'
	retlw	82	;'R'
	retlw	46	;'.'
	retlw	32	;' '
	retlw	83	;'S'
	retlw	69	;'E'
	retlw	78	;'N'
	retlw	83	;'S'
	retlw	79	;'O'
	retlw	82	;'R'
	retlw	0
psect	strings
	
STR_3:	
	retlw	66	;'B'
	retlw	117	;'u'
	retlw	122	;'z'
	retlw	122	;'z'
	retlw	101	;'e'
	retlw	114	;'r'
	retlw	32	;' '
	retlw	79	;'O'
	retlw	70	;'F'
	retlw	70	;'F'
	retlw	32	;' '
	retlw	0
psect	strings
	
STR_2:	
	retlw	66	;'B'
	retlw	117	;'u'
	retlw	122	;'z'
	retlw	122	;'z'
	retlw	101	;'e'
	retlw	114	;'r'
	retlw	32	;' '
	retlw	79	;'O'
	retlw	78	;'N'
	retlw	32	;' '
	retlw	0
psect	strings
	file	"vibration sensor.as"
	line	#
psect cinit,class=CODE,delta=2
global start_initialization
start_initialization:

psect cinit,class=CODE,delta=2
global end_of_initialization

;End of C runtime variable initialization code

end_of_initialization:
clrf status
ljmp _main	;jump to C main() function
psect	cstackCOMMON,class=COMMON,space=1
global __pcstackCOMMON
__pcstackCOMMON:
	global	?_send_config
?_send_config:	; 0 bytes @ 0x0
	global	?_lcd_clr
?_lcd_clr:	; 0 bytes @ 0x0
	global	?_lcd_goto
?_lcd_goto:	; 0 bytes @ 0x0
	global	?_send_string
?_send_string:	; 0 bytes @ 0x0
	global	?_delay
?_delay:	; 0 bytes @ 0x0
	global	?_main
?_main:	; 0 bytes @ 0x0
	global	?_send_char
?_send_char:	; 0 bytes @ 0x0
	global	delay@data
delay@data:	; 4 bytes @ 0x0
	ds	4
	global	??_delay
??_delay:	; 0 bytes @ 0x4
	ds	4
	global	??_send_config
??_send_config:	; 0 bytes @ 0x8
	global	??_send_char
??_send_char:	; 0 bytes @ 0x8
	global	send_config@data
send_config@data:	; 1 bytes @ 0x8
	global	send_char@data
send_char@data:	; 1 bytes @ 0x8
	ds	1
	global	??_lcd_clr
??_lcd_clr:	; 0 bytes @ 0x9
	global	??_lcd_goto
??_lcd_goto:	; 0 bytes @ 0x9
	global	??_send_string
??_send_string:	; 0 bytes @ 0x9
	ds	1
	global	lcd_goto@data
lcd_goto@data:	; 1 bytes @ 0xA
	global	send_string@s
send_string@s:	; 1 bytes @ 0xA
	ds	1
	global	??_main
??_main:	; 0 bytes @ 0xB
psect	cstackBANK0,class=BANK0,space=1
global __pcstackBANK0
__pcstackBANK0:
	global	main@delay_time
main@delay_time:	; 4 bytes @ 0x0
	ds	4
;;Data sizes: Strings 36, constant 0, data 0, bss 0, persistent 0 stack 0
;;Auto spaces:   Size  Autos    Used
;; COMMON          14     11      11
;; BANK0           80      4       4
;; BANK1           80      0       0
;; BANK3           96      0       0
;; BANK2           96      0       0

;;
;; Pointer list with targets:

;; send_string@s	PTR const unsigned char  size(1) Largest target is 13
;;		 -> STR_3(CODE[12]), STR_2(CODE[11]), STR_1(CODE[13]), 
;;


;;
;; Critical Paths under _main in COMMON
;;
;;   _main->_lcd_goto
;;   _main->_send_string
;;   _send_string->_send_char
;;   _lcd_goto->_send_config
;;   _lcd_clr->_send_config
;;   _send_char->_delay
;;   _send_config->_delay
;;
;; Critical Paths under _main in BANK0
;;
;;   None.
;;
;; Critical Paths under _main in BANK1
;;
;;   None.
;;
;; Critical Paths under _main in BANK3
;;
;;   None.
;;
;; Critical Paths under _main in BANK2
;;
;;   None.

;;
;;Main: autosize = 0, tempsize = 0, incstack = 0, save=0
;;

;;
;;Call Graph Tables:
;;
;; ---------------------------------------------------------------------------------
;; (Depth) Function   	        Calls       Base Space   Used Autos Params    Refs
;; ---------------------------------------------------------------------------------
;; (0) _main                                                 4     4      0     515
;;                                              0 BANK0      4     4      0
;;                        _send_config
;;                            _lcd_clr
;;                           _lcd_goto
;;                        _send_string
;;                              _delay
;; ---------------------------------------------------------------------------------
;; (1) _send_string                                          2     2      0     134
;;                                              9 COMMON     2     2      0
;;                          _send_char
;; ---------------------------------------------------------------------------------
;; (1) _lcd_goto                                             2     2      0     156
;;                                              9 COMMON     2     2      0
;;                        _send_config
;; ---------------------------------------------------------------------------------
;; (1) _lcd_clr                                              0     0      0     112
;;                        _send_config
;;                              _delay
;; ---------------------------------------------------------------------------------
;; (2) _send_char                                            1     1      0      67
;;                                              8 COMMON     1     1      0
;;                              _delay
;; ---------------------------------------------------------------------------------
;; (2) _send_config                                          1     1      0      67
;;                                              8 COMMON     1     1      0
;;                              _delay
;; ---------------------------------------------------------------------------------
;; (1) _delay                                                8     4      4      45
;;                                              0 COMMON     8     4      4
;; ---------------------------------------------------------------------------------
;; Estimated maximum stack depth 2
;; ---------------------------------------------------------------------------------

;; Call Graph Graphs:

;; _main (ROOT)
;;   _send_config
;;     _delay
;;   _lcd_clr
;;     _send_config
;;       _delay
;;     _delay
;;   _lcd_goto
;;     _send_config
;;       _delay
;;   _send_string
;;     _send_char
;;       _delay
;;   _delay
;;

;; Address spaces:

;;Name               Size   Autos  Total    Cost      Usage
;;BITCOMMON            E      0       0       0        0.0%
;;EEDATA             100      0       0       0        0.0%
;;NULL                 0      0       0       0        0.0%
;;CODE                 0      0       0       0        0.0%
;;COMMON               E      B       B       1       78.6%
;;BITSFR0              0      0       0       1        0.0%
;;SFR0                 0      0       0       1        0.0%
;;BITSFR1              0      0       0       2        0.0%
;;SFR1                 0      0       0       2        0.0%
;;STACK                0      0       3       2        0.0%
;;ABS                  0      0       0       3        0.0%
;;BITBANK0            50      0       0       4        0.0%
;;BITSFR3              0      0       0       4        0.0%
;;SFR3                 0      0       0       4        0.0%
;;BANK0               50      4       4       5        5.0%
;;BITSFR2              0      0       0       5        0.0%
;;SFR2                 0      0       0       5        0.0%
;;BITBANK1            50      0       0       6        0.0%
;;BANK1               50      0       0       7        0.0%
;;BITBANK3            60      0       0       8        0.0%
;;BANK3               60      0       0       9        0.0%
;;BITBANK2            60      0       0      10        0.0%
;;BANK2               60      0       0      11        0.0%
;;DATA                 0      0       0      12        0.0%

	global	_main
psect	maintext,global,class=CODE,delta=2
global __pmaintext
__pmaintext:

;; *************** function _main *****************
;; Defined at:
;;		line 48 in file "C:\Users\Cytron-Jogi\Desktop\Vinration sensor\Vibration Sensor.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;  delay_time      4    0[BANK0 ] unsigned long 
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, fsr0l, fsr0h, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 17F/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       0       0       0       0
;;      Locals:         0       4       0       0       0
;;      Temps:          0       0       0       0       0
;;      Totals:         0       4       0       0       0
;;Total ram usage:        4 bytes
;; Hardware stack levels required when called:    3
;; This function calls:
;;		_send_config
;;		_lcd_clr
;;		_lcd_goto
;;		_send_string
;;		_delay
;; This function is called by:
;;		Startup code after reset
;; This function uses a non-reentrant model
;;
psect	maintext
	file	"C:\Users\Cytron-Jogi\Desktop\Vinration sensor\Vibration Sensor.c"
	line	48
	global	__size_of_main
	__size_of_main	equ	__end_of_main-_main
	
_main:	
	opt	stack 5
; Regs used in _main: [wreg-fsr0h+status,2+status,0+pclath+cstack]
	line	49
	
l1908:	
;Vibration Sensor.c: 49: unsigned long delay_time=5000;
	movlw	0
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(main@delay_time+3)
	movlw	0
	movwf	(main@delay_time+2)
	movlw	013h
	movwf	(main@delay_time+1)
	movlw	088h
	movwf	(main@delay_time)

	line	52
;Vibration Sensor.c: 52: TRISB = 0b00000011;
	movlw	(03h)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(134)^080h	;volatile
	line	53
	
l1910:	
;Vibration Sensor.c: 53: TRISD = 0b00000000;
	clrf	(136)^080h	;volatile
	line	54
	
l1912:	
;Vibration Sensor.c: 54: TRISA = 0b00000111;
	movlw	(07h)
	movwf	(133)^080h	;volatile
	line	57
	
l1914:	
;Vibration Sensor.c: 57: ADCON1 = 0b00000110;
	movlw	(06h)
	movwf	(159)^080h	;volatile
	line	60
	
l1916:	
;Vibration Sensor.c: 60: send_config(0b00000001);
	movlw	(01h)
	fcall	_send_config
	line	61
	
l1918:	
;Vibration Sensor.c: 61: send_config(0b00000010);
	movlw	(02h)
	fcall	_send_config
	line	62
	
l1920:	
;Vibration Sensor.c: 62: send_config(0b00000110);
	movlw	(06h)
	fcall	_send_config
	line	63
	
l1922:	
;Vibration Sensor.c: 63: send_config(0b00001100);
	movlw	(0Ch)
	fcall	_send_config
	line	64
	
l1924:	
;Vibration Sensor.c: 64: send_config(0b00111000);
	movlw	(038h)
	fcall	_send_config
	line	67
	
l1926:	
;Vibration Sensor.c: 67: lcd_clr();
	fcall	_lcd_clr
	line	68
	
l1928:	
;Vibration Sensor.c: 68: lcd_goto(0);
	movlw	(0)
	fcall	_lcd_goto
	line	69
	
l1930:	
;Vibration Sensor.c: 69: send_string("VIBR. SENSOR");
	movlw	((STR_1-__stringbase))&0ffh
	fcall	_send_string
	line	71
	
l1932:	
;Vibration Sensor.c: 71: RB6=0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(54/8),(54)&7
	line	72
	
l1934:	
;Vibration Sensor.c: 72: RB7=0;
	bcf	(55/8),(55)&7
	goto	l1950
	line	74
;Vibration Sensor.c: 74: while(1)
	
l569:	
	line	76
;Vibration Sensor.c: 75: {
;Vibration Sensor.c: 76: while(RB0==0)
	goto	l1950
	
l571:	
	line	78
;Vibration Sensor.c: 77: {
;Vibration Sensor.c: 78: while (RB0 == 1);
	goto	l572
	
l573:	
	
l572:	
	btfsc	(48/8),(48)&7
	goto	u2281
	goto	u2280
u2281:
	goto	l572
u2280:
	goto	l1936
	
l574:	
	line	79
	
l1936:	
;Vibration Sensor.c: 79: lcd_goto(20);
	movlw	(014h)
	fcall	_lcd_goto
	line	80
	
l1938:	
;Vibration Sensor.c: 80: send_string("Buzzer ON ");
	movlw	((STR_2-__stringbase))&0ffh
	fcall	_send_string
	line	81
	
l1940:	
;Vibration Sensor.c: 81: RB7=1;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bsf	(55/8),(55)&7
	line	83
	
l1942:	
;Vibration Sensor.c: 83: delay(500000);
	movlw	0
	movwf	(?_delay+3)
	movlw	07h
	movwf	(?_delay+2)
	movlw	0A1h
	movwf	(?_delay+1)
	movlw	020h
	movwf	(?_delay)

	fcall	_delay
	line	84
	
l1944:	
;Vibration Sensor.c: 84: RB7=0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(55/8),(55)&7
	line	85
	
l1946:	
;Vibration Sensor.c: 85: lcd_goto(20);
	movlw	(014h)
	fcall	_lcd_goto
	line	86
	
l1948:	
;Vibration Sensor.c: 86: send_string("Buzzer OFF ");
	movlw	((STR_3-__stringbase))&0ffh
	fcall	_send_string
	goto	l1950
	line	87
	
l570:	
	line	76
	
l1950:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	btfss	(48/8),(48)&7
	goto	u2291
	goto	u2290
u2291:
	goto	l572
u2290:
	goto	l1950
	
l575:	
	goto	l1950
	line	88
	
l576:	
	line	74
	goto	l1950
	
l577:	
	line	89
	
l578:	
	global	start
	ljmp	start
	opt stack 0
GLOBAL	__end_of_main
	__end_of_main:
;; =============== function _main ends ============

	signat	_main,88
	global	_send_string
psect	text157,local,class=CODE,delta=2
global __ptext157
__ptext157:

;; *************** function _send_string *****************
;; Defined at:
;;		line 138 in file "C:\Users\Cytron-Jogi\Desktop\Vinration sensor\Vibration Sensor.c"
;; Parameters:    Size  Location     Type
;;  s               1    wreg     PTR const unsigned char 
;;		 -> STR_3(12), STR_2(11), STR_1(13), 
;; Auto vars:     Size  Location     Type
;;  s               1   10[COMMON] PTR const unsigned char 
;;		 -> STR_3(12), STR_2(11), STR_1(13), 
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, fsr0l, fsr0h, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       0       0       0       0
;;      Locals:         1       0       0       0       0
;;      Temps:          1       0       0       0       0
;;      Totals:         2       0       0       0       0
;;Total ram usage:        2 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    2
;; This function calls:
;;		_send_char
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text157
	file	"C:\Users\Cytron-Jogi\Desktop\Vinration sensor\Vibration Sensor.c"
	line	138
	global	__size_of_send_string
	__size_of_send_string	equ	__end_of_send_string-_send_string
	
_send_string:	
	opt	stack 5
; Regs used in _send_string: [wreg-fsr0h+status,2+status,0+pclath+cstack]
;send_string@s stored from wreg
	movwf	(send_string@s)
	line	139
	
l1898:	
;Vibration Sensor.c: 139: while (s && *s)send_char (*s++);
	goto	l1904
	
l601:	
	
l1900:	
	movf	(send_string@s),w
	movwf	fsr0
	fcall	stringdir
	fcall	_send_char
	
l1902:	
	movlw	(01h)
	movwf	(??_send_string+0)+0
	movf	(??_send_string+0)+0,w
	addwf	(send_string@s),f
	goto	l1904
	
l600:	
	
l1904:	
	movf	(send_string@s),w
	skipz
	goto	u2260
	goto	l605
u2260:
	
l1906:	
	movf	(send_string@s),w
	movwf	fsr0
	fcall	stringdir
	iorlw	0
	skipz
	goto	u2271
	goto	u2270
u2271:
	goto	l1900
u2270:
	goto	l605
	
l603:	
	goto	l605
	
l604:	
	line	140
	
l605:	
	return
	opt stack 0
GLOBAL	__end_of_send_string
	__end_of_send_string:
;; =============== function _send_string ends ============

	signat	_send_string,4216
	global	_lcd_goto
psect	text158,local,class=CODE,delta=2
global __ptext158
__ptext158:

;; *************** function _lcd_goto *****************
;; Defined at:
;;		line 119 in file "C:\Users\Cytron-Jogi\Desktop\Vinration sensor\Vibration Sensor.c"
;; Parameters:    Size  Location     Type
;;  data            1    wreg     unsigned char 
;; Auto vars:     Size  Location     Type
;;  data            1   10[COMMON] unsigned char 
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       0       0       0       0
;;      Locals:         1       0       0       0       0
;;      Temps:          1       0       0       0       0
;;      Totals:         2       0       0       0       0
;;Total ram usage:        2 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    2
;; This function calls:
;;		_send_config
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text158
	file	"C:\Users\Cytron-Jogi\Desktop\Vinration sensor\Vibration Sensor.c"
	line	119
	global	__size_of_lcd_goto
	__size_of_lcd_goto	equ	__end_of_lcd_goto-_lcd_goto
	
_lcd_goto:	
	opt	stack 5
; Regs used in _lcd_goto: [wreg+status,2+status,0+pclath+cstack]
;lcd_goto@data stored from wreg
	movwf	(lcd_goto@data)
	line	120
	
l1890:	
;Vibration Sensor.c: 120: if(data<16)
	movlw	(010h)
	subwf	(lcd_goto@data),w
	skipnc
	goto	u2251
	goto	u2250
u2251:
	goto	l1894
u2250:
	line	122
	
l1892:	
;Vibration Sensor.c: 121: {
;Vibration Sensor.c: 122: send_config(0x80+data);
	movf	(lcd_goto@data),w
	addlw	080h
	fcall	_send_config
	line	123
;Vibration Sensor.c: 123: }
	goto	l594
	line	124
	
l592:	
	line	126
	
l1894:	
;Vibration Sensor.c: 124: else
;Vibration Sensor.c: 125: {
;Vibration Sensor.c: 126: data=data-20;
	movf	(lcd_goto@data),w
	addlw	0ECh
	movwf	(??_lcd_goto+0)+0
	movf	(??_lcd_goto+0)+0,w
	movwf	(lcd_goto@data)
	line	127
	
l1896:	
;Vibration Sensor.c: 127: send_config(0xc0+data);
	movf	(lcd_goto@data),w
	addlw	0C0h
	fcall	_send_config
	goto	l594
	line	128
	
l593:	
	line	129
	
l594:	
	return
	opt stack 0
GLOBAL	__end_of_lcd_goto
	__end_of_lcd_goto:
;; =============== function _lcd_goto ends ============

	signat	_lcd_goto,4216
	global	_lcd_clr
psect	text159,local,class=CODE,delta=2
global __ptext159
__ptext159:

;; *************** function _lcd_clr *****************
;; Defined at:
;;		line 132 in file "C:\Users\Cytron-Jogi\Desktop\Vinration sensor\Vibration Sensor.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       0       0       0       0
;;      Locals:         0       0       0       0       0
;;      Temps:          0       0       0       0       0
;;      Totals:         0       0       0       0       0
;;Total ram usage:        0 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    2
;; This function calls:
;;		_send_config
;;		_delay
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text159
	file	"C:\Users\Cytron-Jogi\Desktop\Vinration sensor\Vibration Sensor.c"
	line	132
	global	__size_of_lcd_clr
	__size_of_lcd_clr	equ	__end_of_lcd_clr-_lcd_clr
	
_lcd_clr:	
	opt	stack 5
; Regs used in _lcd_clr: [wreg+status,2+status,0+pclath+cstack]
	line	133
	
l1888:	
;Vibration Sensor.c: 133: send_config(0x01);
	movlw	(01h)
	fcall	_send_config
	line	134
;Vibration Sensor.c: 134: delay(600);
	movlw	0
	movwf	(?_delay+3)
	movlw	0
	movwf	(?_delay+2)
	movlw	02h
	movwf	(?_delay+1)
	movlw	058h
	movwf	(?_delay)

	fcall	_delay
	line	135
	
l597:	
	return
	opt stack 0
GLOBAL	__end_of_lcd_clr
	__end_of_lcd_clr:
;; =============== function _lcd_clr ends ============

	signat	_lcd_clr,88
	global	_send_char
psect	text160,local,class=CODE,delta=2
global __ptext160
__ptext160:

;; *************** function _send_char *****************
;; Defined at:
;;		line 109 in file "C:\Users\Cytron-Jogi\Desktop\Vinration sensor\Vibration Sensor.c"
;; Parameters:    Size  Location     Type
;;  data            1    wreg     unsigned char 
;; Auto vars:     Size  Location     Type
;;  data            1    8[COMMON] unsigned char 
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       0       0       0       0
;;      Locals:         1       0       0       0       0
;;      Temps:          0       0       0       0       0
;;      Totals:         1       0       0       0       0
;;Total ram usage:        1 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    1
;; This function calls:
;;		_delay
;; This function is called by:
;;		_send_string
;; This function uses a non-reentrant model
;;
psect	text160
	file	"C:\Users\Cytron-Jogi\Desktop\Vinration sensor\Vibration Sensor.c"
	line	109
	global	__size_of_send_char
	__size_of_send_char	equ	__end_of_send_char-_send_char
	
_send_char:	
	opt	stack 5
; Regs used in _send_char: [wreg+status,2+status,0+pclath+cstack]
;send_char@data stored from wreg
	movwf	(send_char@data)
	line	110
	
l1876:	
;Vibration Sensor.c: 110: RB4=1;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bsf	(52/8),(52)&7
	line	111
	
l1878:	
;Vibration Sensor.c: 111: PORTD=data;
	movf	(send_char@data),w
	movwf	(8)	;volatile
	line	112
	
l1880:	
;Vibration Sensor.c: 112: RB5=1;
	bsf	(53/8),(53)&7
	line	113
	
l1882:	
;Vibration Sensor.c: 113: delay(10);
	movlw	0
	movwf	(?_delay+3)
	movlw	0
	movwf	(?_delay+2)
	movlw	0
	movwf	(?_delay+1)
	movlw	0Ah
	movwf	(?_delay)

	fcall	_delay
	line	114
	
l1884:	
;Vibration Sensor.c: 114: RB5=0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(53/8),(53)&7
	line	115
	
l1886:	
;Vibration Sensor.c: 115: delay(10);
	movlw	0
	movwf	(?_delay+3)
	movlw	0
	movwf	(?_delay+2)
	movlw	0
	movwf	(?_delay+1)
	movlw	0Ah
	movwf	(?_delay)

	fcall	_delay
	line	116
	
l589:	
	return
	opt stack 0
GLOBAL	__end_of_send_char
	__end_of_send_char:
;; =============== function _send_char ends ============

	signat	_send_char,4216
	global	_send_config
psect	text161,local,class=CODE,delta=2
global __ptext161
__ptext161:

;; *************** function _send_config *****************
;; Defined at:
;;		line 99 in file "C:\Users\Cytron-Jogi\Desktop\Vinration sensor\Vibration Sensor.c"
;; Parameters:    Size  Location     Type
;;  data            1    wreg     unsigned char 
;; Auto vars:     Size  Location     Type
;;  data            1    8[COMMON] unsigned char 
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       0       0       0       0
;;      Locals:         1       0       0       0       0
;;      Temps:          0       0       0       0       0
;;      Totals:         1       0       0       0       0
;;Total ram usage:        1 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    1
;; This function calls:
;;		_delay
;; This function is called by:
;;		_main
;;		_lcd_goto
;;		_lcd_clr
;; This function uses a non-reentrant model
;;
psect	text161
	file	"C:\Users\Cytron-Jogi\Desktop\Vinration sensor\Vibration Sensor.c"
	line	99
	global	__size_of_send_config
	__size_of_send_config	equ	__end_of_send_config-_send_config
	
_send_config:	
	opt	stack 5
; Regs used in _send_config: [wreg+status,2+status,0+pclath+cstack]
;send_config@data stored from wreg
	movwf	(send_config@data)
	line	100
	
l1864:	
;Vibration Sensor.c: 100: RB4=0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(52/8),(52)&7
	line	101
	
l1866:	
;Vibration Sensor.c: 101: PORTD=data;
	movf	(send_config@data),w
	movwf	(8)	;volatile
	line	102
	
l1868:	
;Vibration Sensor.c: 102: RB5=1;
	bsf	(53/8),(53)&7
	line	103
	
l1870:	
;Vibration Sensor.c: 103: delay(50);
	movlw	0
	movwf	(?_delay+3)
	movlw	0
	movwf	(?_delay+2)
	movlw	0
	movwf	(?_delay+1)
	movlw	032h
	movwf	(?_delay)

	fcall	_delay
	line	104
	
l1872:	
;Vibration Sensor.c: 104: RB5=0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(53/8),(53)&7
	line	105
	
l1874:	
;Vibration Sensor.c: 105: delay(50);
	movlw	0
	movwf	(?_delay+3)
	movlw	0
	movwf	(?_delay+2)
	movlw	0
	movwf	(?_delay+1)
	movlw	032h
	movwf	(?_delay)

	fcall	_delay
	line	106
	
l586:	
	return
	opt stack 0
GLOBAL	__end_of_send_config
	__end_of_send_config:
;; =============== function _send_config ends ============

	signat	_send_config,4216
	global	_delay
psect	text162,local,class=CODE,delta=2
global __ptext162
__ptext162:

;; *************** function _delay *****************
;; Defined at:
;;		line 94 in file "C:\Users\Cytron-Jogi\Desktop\Vinration sensor\Vibration Sensor.c"
;; Parameters:    Size  Location     Type
;;  data            4    0[COMMON] unsigned long 
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         4       0       0       0       0
;;      Locals:         0       0       0       0       0
;;      Temps:          4       0       0       0       0
;;      Totals:         8       0       0       0       0
;;Total ram usage:        8 bytes
;; Hardware stack levels used:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_main
;;		_send_config
;;		_send_char
;;		_lcd_clr
;; This function uses a non-reentrant model
;;
psect	text162
	file	"C:\Users\Cytron-Jogi\Desktop\Vinration sensor\Vibration Sensor.c"
	line	94
	global	__size_of_delay
	__size_of_delay	equ	__end_of_delay-_delay
	
_delay:	
	opt	stack 7
; Regs used in _delay: [wreg]
	line	95
	
l1858:	
;Vibration Sensor.c: 95: for( ;data>0;data--);
	movf	(delay@data+3),w
	iorwf	(delay@data+2),w
	iorwf	(delay@data+1),w
	iorwf	(delay@data),w
	skipz
	goto	u2221
	goto	u2220
u2221:
	goto	l1862
u2220:
	goto	l583
	
l1860:	
	goto	l583
	
l581:	
	
l1862:	
	movlw	01h
	movwf	((??_delay+0)+0)
	movlw	0
	movwf	((??_delay+0)+0+1)
	movlw	0
	movwf	((??_delay+0)+0+2)
	movlw	0
	movwf	((??_delay+0)+0+3)
	movf	0+(??_delay+0)+0,w
	subwf	(delay@data),f
	movf	1+(??_delay+0)+0,w
	skipc
	incfsz	1+(??_delay+0)+0,w
	goto	u2235
	goto	u2236
u2235:
	subwf	(delay@data+1),f
u2236:
	movf	2+(??_delay+0)+0,w
	skipc
	incfsz	2+(??_delay+0)+0,w
	goto	u2237
	goto	u2238
u2237:
	subwf	(delay@data+2),f
u2238:
	movf	3+(??_delay+0)+0,w
	skipc
	incfsz	3+(??_delay+0)+0,w
	goto	u2239
	goto	u2230
u2239:
	subwf	(delay@data+3),f
u2230:

	movf	(delay@data+3),w
	iorwf	(delay@data+2),w
	iorwf	(delay@data+1),w
	iorwf	(delay@data),w
	skipz
	goto	u2241
	goto	u2240
u2241:
	goto	l1862
u2240:
	goto	l583
	
l582:	
	line	96
	
l583:	
	return
	opt stack 0
GLOBAL	__end_of_delay
	__end_of_delay:
;; =============== function _delay ends ============

	signat	_delay,4216
psect	text163,local,class=CODE,delta=2
global __ptext163
__ptext163:
	global	btemp
	btemp set 07Eh

	DABS	1,126,2	;btemp
	global	wtemp0
	wtemp0 set btemp
	end
