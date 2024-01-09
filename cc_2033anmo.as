opt subtitle "HI-TECH Software Omniscient Code Generator (PRO mode) build 10920"

opt pagewidth 120

	opt pm

	processor	16F1938
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
indf1	equ	1
pc	equ	2
pcl	equ	2
status	equ	3
fsr0l	equ	4
fsr0h	equ	5
fsr1l	equ	6
fsr1h	equ	7
bsr	equ	8
wreg	equ	9
intcon	equ	11
c	equ	1
z	equ	0
pclath	equ	10
	FNCALL	_main,_POWER_INITIAL
	FNCALL	_main,_TIMER0_INITIAL
	FNCALL	_main,_Time2Initial
	FNCALL	_main,_Time4Initial
	FNCALL	_main,_ADC_INITIAL
	FNCALL	_main,_app
	FNCALL	_main,_key
	FNCALL	_app,_app11
	FNCALL	_app,_app40
	FNCALL	_app11,_DelayUs
	FNCALL	_app11,_app10
	FNCALL	_app11,_app30
	FNCALL	_app11,_appbt
	FNCALL	_app10,_GET_ADC_DATA
	FNCALL	_app10,___lmul
	FNCALL	_app10,___wmul
	FNCALL	_appbt,_GET_ADC_DATA
	FNCALL	_appbt,___lmul
	FNCALL	_app30,_DelayUs
	FNCALL	_GET_ADC_DATA,_DelayUs
	FNCALL	_key,_readkey
	FNCALL	_key,_readmode
	FNROOT	_main
	FNCALL	intlevel1,_ISR
	global	intlevel1
	FNROOT	intlevel1
	global	_ad3nop
	global	_ad3nop_absaddr
_ad3nop_absaddr	set	0x3
	global	_ad3nop
	global	_ad3nop_absaddr
_ad3nop_absaddr	set	0x3
psect	strings,class=STRING,delta=2
global __pstrings
__pstrings:
psect	_ad3nop_text,class=CODE,delta=2
global __p_ad3nop_text
__p_ad3nop_text:
psect	strings
psect	_ad3nop_text
_ad3nop:
psect	strings
psect	_ad3nop_text
psect	strings
psect	_ad3nop_text
	retlw	0
	global	_adcData
	global	_adcDatabuf
	global	_r_1stime
	global	_r_adbtbuf
	global	_r_adbuf
	global	_r_buztime
	global	_r_buzzer
	global	_r_dc
	global	_r_delay2s
	global	_r_kfin
	global	_r_leveldelay
	global	_r_ntc
	global	_r_onkey
	global	_r_ontime
	global	_rl_kfin
	global	_theVoltage
	global	_EEReadData
	global	_PORTA_IN
	global	_ch_in_count
	global	_first_count
	global	_int_count
	global	_led_com_count
	global	_led_count
	global	_led_dis_buf
	global	_led_times
	global	_lvd_count
	global	_lvd_off_count
	global	_number
	global	_r_1ms
	global	_r_50mstime
	global	_r_adbttimes
	global	_r_adtimes
	global	_r_adval1
	global	_r_bufpwm
	global	_r_key
	global	_r_keycvt
	global	_r_keyst
	global	_r_ledlevel
	global	_r_ledlevelbuf
	global	_r_ledleveldelay
	global	_r_mode
	global	_r_modeS
	global	_r_pwmt
	global	_r_spwm
	global	_r_test
	global	_r_vef
	global	_sleep_count
	global	_stop_count
	global	_this_dis_bat_data
	global	_tig_dis_bat_data
	global	_f_1ms
	global	_f_2t
	global	_f_aderr
	global	_f_buz
	global	_f_cds
	global	_f_dc
	global	_f_dcfast
	global	_f_delay2s
	global	_f_delay3m
	global	_f_hh
	global	_f_io
	global	_f_key1and2
	global	_f_key1l
	global	_f_key1s
	global	_f_kfin
	global	_f_nop
	global	_f_np3m
	global	_f_ntc
	global	_f_off
	global	_f_on
	global	_f_one
	global	_f_push
	global	_f_pwm
	global	_f_pwmno
	global	_f_readeep
	global	_f_rled
	global	_f_test
	global	_f_wled
	global	_f_xd
	global	_fb_dc
	global	_fb_kfin
	global	_fb_ntc
	global	_fl_kfin
	global	_sleep_ok_f
	global	_f_10ms
	global	_f_1ma
	global	_f_1s
	global	_f_2ma
	global	_f_3ma
	global	_f_4ma
	global	_f_key1
	global	_f_key2
	global	_f_led1
	global	_f_led2
	global	_f_led3
	global	_f_led4
	global	_f_ledlevel
	global	_f_ledoff
	global	_f_sleep
	global	_led_ram
	global	_bat_ch_in_and_out_max_data
	global	_ch_full_led_count
	global	_led_on_count
	global	_r_delay2sh
	global	_r_delay3m
	global	_r_levelbuf
	global	_r_xdtime
	global	_ADDLY
psect	strings
psect	_ad3nop_text
_ADDLY	set	31
	global	_INTCON
psect	strings
psect	_ad3nop_text
_INTCON	set	11
	global	_PORTA
psect	strings
psect	_ad3nop_text
_PORTA	set	12
	global	_PORTB
psect	strings
psect	_ad3nop_text
_PORTB	set	13
	global	_PORTC
psect	strings
psect	_ad3nop_text
_PORTC	set	14
	global	_PORTD
psect	strings
psect	_ad3nop_text
_PORTD	set	15
	global	_PA0
psect	strings
psect	_ad3nop_text
_PA0	set	96
	global	_PA1
psect	strings
psect	_ad3nop_text
_PA1	set	97
	global	_PA5
psect	strings
psect	_ad3nop_text
_PA5	set	101
	global	_PA6
psect	strings
psect	_ad3nop_text
_PA6	set	102
	global	_PA7
psect	strings
psect	_ad3nop_text
_PA7	set	103
	global	_PB2
psect	strings
psect	_ad3nop_text
_PB2	set	106
	global	_PB3
psect	strings
psect	_ad3nop_text
_PB3	set	107
	global	_PB4
psect	strings
psect	_ad3nop_text
_PB4	set	108
	global	_PB5
psect	strings
psect	_ad3nop_text
_PB5	set	109
	global	_PC0
psect	strings
psect	_ad3nop_text
_PC0	set	112
	global	_PC3
psect	strings
psect	_ad3nop_text
_PC3	set	115
	global	_PC4
psect	strings
psect	_ad3nop_text
_PC4	set	116
	global	_PC5
psect	strings
psect	_ad3nop_text
_PC5	set	117
	global	_PC6
psect	strings
psect	_ad3nop_text
_PC6	set	118
	global	_PC7
psect	strings
psect	_ad3nop_text
_PC7	set	119
	global	_RA0
psect	strings
psect	_ad3nop_text
_RA0	set	96
	global	_RA1
psect	strings
psect	_ad3nop_text
_RA1	set	97
	global	_RC0
psect	strings
psect	_ad3nop_text
_RC0	set	112
	global	_ADCON0
psect	strings
psect	_ad3nop_text
_ADCON0	set	157
	global	_ADCON1
psect	strings
psect	_ad3nop_text
_ADCON1	set	158
	global	_ADCON2
psect	strings
psect	_ad3nop_text
_ADCON2	set	159
	global	_ADRESH
psect	strings
psect	_ad3nop_text
_ADRESH	set	156
	global	_ADRESL
psect	strings
psect	_ad3nop_text
_ADRESL	set	155
	global	_CKOCON
psect	strings
psect	_ad3nop_text
_CKOCON	set	149
	global	_OSCCON
psect	strings
psect	_ad3nop_text
_OSCCON	set	153
	global	_PCKEN
psect	strings
psect	_ad3nop_text
_PCKEN	set	154
	global	_TRISA
psect	strings
psect	_ad3nop_text
_TRISA	set	140
	global	_TRISB
psect	strings
psect	_ad3nop_text
_TRISB	set	141
	global	_TRISC
psect	strings
psect	_ad3nop_text
_TRISC	set	142
	global	_TRISD
psect	strings
psect	_ad3nop_text
_TRISD	set	143
	global	_ADCAL
psect	strings
psect	_ad3nop_text
_ADCAL	set	1259
	global	_ADON
psect	strings
psect	_ad3nop_text
_ADON	set	1256
	global	_GO
psect	strings
psect	_ad3nop_text
_GO	set	1257
	global	_TRISA7
psect	strings
psect	_ad3nop_text
_TRISA7	set	1127
	global	_PSRC0
psect	strings
psect	_ad3nop_text
_PSRC0	set	282
	global	_PSRC1
psect	strings
psect	_ad3nop_text
_PSRC1	set	283
	global	_TIM4ARR
psect	strings
psect	_ad3nop_text
_TIM4ARR	set	279
	global	_TIM4CNTR
psect	strings
psect	_ad3nop_text
_TIM4CNTR	set	277
	global	_TIM4CR1
psect	strings
psect	_ad3nop_text
_TIM4CR1	set	273
	global	_TIM4EGR
psect	strings
psect	_ad3nop_text
_TIM4EGR	set	276
	global	_TIM4IER
psect	strings
psect	_ad3nop_text
_TIM4IER	set	274
	global	_TIM4PSCR
psect	strings
psect	_ad3nop_text
_TIM4PSCR	set	278
	global	_TIM4SR
psect	strings
psect	_ad3nop_text
_TIM4SR	set	275
	global	_LATA7
psect	strings
psect	_ad3nop_text
_LATA7	set	2151
	global	_LATB1
psect	strings
psect	_ad3nop_text
_LATB1	set	2153
	global	_LATD1
psect	strings
psect	_ad3nop_text
_LATD1	set	2169
	global	_LATD2
psect	strings
psect	_ad3nop_text
_LATD2	set	2170
	global	_LATD3
psect	strings
psect	_ad3nop_text
_LATD3	set	2171
	global	_LATD4
psect	strings
psect	_ad3nop_text
_LATD4	set	2172
	global	_LATD5
psect	strings
psect	_ad3nop_text
_LATD5	set	2173
	global	_T4UIE
psect	strings
psect	_ad3nop_text
_T4UIE	set	2192
	global	_T4UIF
psect	strings
psect	_ad3nop_text
_T4UIF	set	2200
	global	_ANSELA
psect	strings
psect	_ad3nop_text
_ANSELA	set	407
	global	_PSINK0
psect	strings
psect	_ad3nop_text
_PSINK0	set	410
	global	_PSINK1
psect	strings
psect	_ad3nop_text
_PSINK1	set	411
	global	_PSINK2
psect	strings
psect	_ad3nop_text
_PSINK2	set	412
	global	_PSINK3
psect	strings
psect	_ad3nop_text
_PSINK3	set	413
	global	_WPUA
psect	strings
psect	_ad3nop_text
_WPUA	set	396
	global	_WPUB
psect	strings
psect	_ad3nop_text
_WPUB	set	397
	global	_WPUC
psect	strings
psect	_ad3nop_text
_WPUC	set	398
	global	_WPUD
psect	strings
psect	_ad3nop_text
_WPUD	set	399
	global	_TIM1CCER1
psect	strings
psect	_ad3nop_text
_TIM1CCER1	set	541
	global	_WPDA
psect	strings
psect	_ad3nop_text
_WPDA	set	524
	global	_WPDB
psect	strings
psect	_ad3nop_text
_WPDB	set	525
	global	_WPDC
psect	strings
psect	_ad3nop_text
_WPDC	set	526
	global	_WPDD
psect	strings
psect	_ad3nop_text
_WPDD	set	527
	global	_T1CEN
psect	strings
psect	_ad3nop_text
_T1CEN	set	4232
	global	_TIM2CCR3H
psect	strings
psect	_ad3nop_text
_TIM2CCR3H	set	670
	global	_TIM2CCR3L
psect	strings
psect	_ad3nop_text
_TIM2CCR3L	set	671
	global	_TCKSRC
psect	strings
psect	_ad3nop_text
_TCKSRC	set	799
	global	_TIM2ARRH
psect	strings
psect	_ad3nop_text
_TIM2ARRH	set	793
	global	_TIM2ARRL
psect	strings
psect	_ad3nop_text
_TIM2ARRL	set	794
	global	_TIM2CCER1
psect	strings
psect	_ad3nop_text
_TIM2CCER1	set	788
	global	_TIM2CCER2
psect	strings
psect	_ad3nop_text
_TIM2CCER2	set	789
	global	_TIM2CCMR1
psect	strings
psect	_ad3nop_text
_TIM2CCMR1	set	785
	global	_TIM2CCMR2
psect	strings
psect	_ad3nop_text
_TIM2CCMR2	set	786
	global	_TIM2CCMR3
psect	strings
psect	_ad3nop_text
_TIM2CCMR3	set	787
	global	_TIM2CCR1H
psect	strings
psect	_ad3nop_text
_TIM2CCR1H	set	795
	global	_TIM2CCR1L
psect	strings
psect	_ad3nop_text
_TIM2CCR1L	set	796
	global	_TIM2CCR2H
psect	strings
psect	_ad3nop_text
_TIM2CCR2H	set	797
	global	_TIM2CCR2L
psect	strings
psect	_ad3nop_text
_TIM2CCR2L	set	798
	global	_TIM2CNTRH
psect	strings
psect	_ad3nop_text
_TIM2CNTRH	set	790
	global	_TIM2CNTRL
psect	strings
psect	_ad3nop_text
_TIM2CNTRL	set	791
	global	_TIM2CR1
psect	strings
psect	_ad3nop_text
_TIM2CR1	set	780
	global	_TIM2EGR
psect	strings
psect	_ad3nop_text
_TIM2EGR	set	784
	global	_TIM2IER
psect	strings
psect	_ad3nop_text
_TIM2IER	set	781
	global	_TIM2SR1
psect	strings
psect	_ad3nop_text
_TIM2SR1	set	782
	global	_TIM2SR2
psect	strings
psect	_ad3nop_text
_TIM2SR2	set	783
	global	_T2CEN
psect	strings
psect	_ad3nop_text
_T2CEN	set	6240
	global	_ADCMPH
psect	strings
psect	_ad3nop_text
_ADCMPH	set	1051
	global	_ADCON3
psect	strings
psect	_ad3nop_text
_ADCON3	set	1050
psect	strings
psect	_ad3nop_text
psect	strings
psect	_ad3nop_text
	file	"cc_2033anmo.as"
psect	strings
psect	_ad3nop_text
	line	#
psect cinit,class=CODE,delta=2
global start_initialization
start_initialization:

psect	bitbssCOMMON,class=COMMON,bit,space=1
global __pbitbssCOMMON
__pbitbssCOMMON:
_f_10ms:
       ds      1

_f_1ma:
       ds      1

_f_1s:
       ds      1

_f_2ma:
       ds      1

_f_3ma:
       ds      1

_f_4ma:
       ds      1

_f_key1:
       ds      1

_f_key2:
       ds      1

_f_led1:
       ds      1

_f_led2:
       ds      1

_f_led3:
       ds      1

_f_led4:
       ds      1

_f_ledlevel:
       ds      1

_f_ledoff:
       ds      1

_f_sleep:
       ds      1

psect	bitbssBANK0,class=BANK0,bit,space=1
global __pbitbssBANK0
__pbitbssBANK0:
_f_1ms:
       ds      1

_f_2t:
       ds      1

_f_aderr:
       ds      1

_f_buz:
       ds      1

_f_cds:
       ds      1

_f_dc:
       ds      1

_f_dcfast:
       ds      1

_f_delay2s:
       ds      1

_f_delay3m:
       ds      1

_f_hh:
       ds      1

_f_io:
       ds      1

_f_key1and2:
       ds      1

_f_key1l:
       ds      1

_f_key1s:
       ds      1

_f_kfin:
       ds      1

_f_nop:
       ds      1

_f_np3m:
       ds      1

_f_ntc:
       ds      1

_f_off:
       ds      1

_f_on:
       ds      1

_f_one:
       ds      1

_f_push:
       ds      1

_f_pwm:
       ds      1

_f_pwmno:
       ds      1

_f_readeep:
       ds      1

_f_rled:
       ds      1

_f_test:
       ds      1

_f_wled:
       ds      1

_f_xd:
       ds      1

_fb_dc:
       ds      1

_fb_kfin:
       ds      1

_fb_ntc:
       ds      1

_fl_kfin:
       ds      1

_sleep_ok_f:
       ds      1

psect	bssBANK0,class=BANK0,space=1
global __pbssBANK0
__pbssBANK0:
_adcData:
       ds      2

_adcDatabuf:
       ds      2

_r_1stime:
       ds      2

_r_adbtbuf:
       ds      2

_r_adbuf:
       ds      2

_r_buztime:
       ds      2

_r_buzzer:
       ds      2

_r_dc:
       ds      2

_r_delay2s:
       ds      2

_r_kfin:
       ds      2

_r_leveldelay:
       ds      2

_r_ntc:
       ds      2

_r_onkey:
       ds      2

_r_ontime:
       ds      2

_rl_kfin:
       ds      2

_theVoltage:
       ds      2

_EEReadData:
       ds      1

_PORTA_IN:
       ds      1

_ch_in_count:
       ds      1

_first_count:
       ds      1

_int_count:
       ds      1

_led_com_count:
       ds      1

_led_count:
       ds      1

_led_dis_buf:
       ds      1

_led_times:
       ds      1

_lvd_count:
       ds      1

_lvd_off_count:
       ds      1

_number:
       ds      1

_r_1ms:
       ds      1

_r_50mstime:
       ds      1

_r_adbttimes:
       ds      1

_r_adtimes:
       ds      1

_r_adval1:
       ds      1

_r_bufpwm:
       ds      1

_r_key:
       ds      1

_r_keycvt:
       ds      1

_r_keyst:
       ds      1

_r_ledlevel:
       ds      1

_r_ledlevelbuf:
       ds      1

_r_ledleveldelay:
       ds      1

_r_mode:
       ds      1

_r_modeS:
       ds      1

_r_pwmt:
       ds      1

_r_spwm:
       ds      1

_r_test:
       ds      1

_r_vef:
       ds      1

_sleep_count:
       ds      1

_stop_count:
       ds      1

_this_dis_bat_data:
       ds      1

_tig_dis_bat_data:
       ds      1

psect	bssBANK1,class=BANK1,space=1
global __pbssBANK1
__pbssBANK1:
_led_ram:
       ds      3

_bat_ch_in_and_out_max_data:
       ds      2

_ch_full_led_count:
       ds      2

_led_on_count:
       ds      2

_r_delay2sh:
       ds      2

_r_delay3m:
       ds      2

_r_levelbuf:
       ds      2

_r_xdtime:
       ds      2

psect clrtext,class=CODE,delta=2
global clear_ram
;	Called with FSR0 containing the base address, and
;	WREG with the size to clear
clear_ram:
	clrwdt			;clear the watchdog before getting into this loop
clrloop:
	clrf	indf0		;clear RAM location pointed to by FSR
	addfsr	0,1
	decfsz wreg		;Have we reached the end of clearing yet?
	goto clrloop	;have we reached the end yet?
	retlw	0		;all done for this memory range, return
; Clear objects allocated to BITCOMMON
psect cinit,class=CODE,delta=2
	global __pbitbssCOMMON
	clrf	((__pbitbssCOMMON/8)+0)&07Fh
	clrf	((__pbitbssCOMMON/8)+1)&07Fh
; Clear objects allocated to BITBANK0
psect cinit,class=CODE,delta=2
	global __pbitbssBANK0
	clrf	((__pbitbssBANK0/8)+0)&07Fh
	clrf	((__pbitbssBANK0/8)+1)&07Fh
	clrf	((__pbitbssBANK0/8)+2)&07Fh
	clrf	((__pbitbssBANK0/8)+3)&07Fh
	clrf	((__pbitbssBANK0/8)+4)&07Fh
; Clear objects allocated to BANK0
psect cinit,class=CODE,delta=2
	global __pbssBANK0
	movlw	low(__pbssBANK0)
	movwf	fsr0l
	movlw	high(__pbssBANK0)
	movwf	fsr0h
	movlw	042h
	fcall	clear_ram
; Clear objects allocated to BANK1
psect cinit,class=CODE,delta=2
	global __pbssBANK1
	movlw	low(__pbssBANK1)
	movwf	fsr0l
	movlw	high(__pbssBANK1)
	movwf	fsr0h
	movlw	011h
	fcall	clear_ram
psect cinit,class=CODE,delta=2
global end_of_initialization

;End of C runtime variable initialization code

end_of_initialization:
movlb 0
ljmp _main	;jump to C main() function
psect	cstackCOMMON,class=COMMON,space=1
global __pcstackCOMMON
__pcstackCOMMON:
	global	?_POWER_INITIAL
?_POWER_INITIAL:	; 0 bytes @ 0x0
	global	??_POWER_INITIAL
??_POWER_INITIAL:	; 0 bytes @ 0x0
	global	?_TIMER0_INITIAL
?_TIMER0_INITIAL:	; 0 bytes @ 0x0
	global	??_TIMER0_INITIAL
??_TIMER0_INITIAL:	; 0 bytes @ 0x0
	global	?_Time2Initial
?_Time2Initial:	; 0 bytes @ 0x0
	global	??_Time2Initial
??_Time2Initial:	; 0 bytes @ 0x0
	global	?_Time4Initial
?_Time4Initial:	; 0 bytes @ 0x0
	global	??_Time4Initial
??_Time4Initial:	; 0 bytes @ 0x0
	global	?_ADC_INITIAL
?_ADC_INITIAL:	; 0 bytes @ 0x0
	global	??_ADC_INITIAL
??_ADC_INITIAL:	; 0 bytes @ 0x0
	global	?_app
?_app:	; 0 bytes @ 0x0
	global	?_key
?_key:	; 0 bytes @ 0x0
	global	?_DelayUs
?_DelayUs:	; 0 bytes @ 0x0
	global	?_readkey
?_readkey:	; 0 bytes @ 0x0
	global	??_readkey
??_readkey:	; 0 bytes @ 0x0
	global	?_readmode
?_readmode:	; 0 bytes @ 0x0
	global	??_readmode
??_readmode:	; 0 bytes @ 0x0
	global	?_app11
?_app11:	; 0 bytes @ 0x0
	global	?_app40
?_app40:	; 0 bytes @ 0x0
	global	??_app40
??_app40:	; 0 bytes @ 0x0
	global	?_app30
?_app30:	; 0 bytes @ 0x0
	global	?_ISR
?_ISR:	; 0 bytes @ 0x0
	global	??_ISR
??_ISR:	; 0 bytes @ 0x0
	global	?_appbt
?_appbt:	; 0 bytes @ 0x0
	global	?_app10
?_app10:	; 0 bytes @ 0x0
	global	?_main
?_main:	; 2 bytes @ 0x0
	global	?___wmul
?___wmul:	; 2 bytes @ 0x0
	global	?___lmul
?___lmul:	; 4 bytes @ 0x0
	global	_readmode$12662
_readmode$12662:	; 1 bytes @ 0x0
	global	DelayUs@Time
DelayUs@Time:	; 2 bytes @ 0x0
	global	___wmul@multiplier
___wmul@multiplier:	; 2 bytes @ 0x0
	global	___lmul@multiplier
___lmul@multiplier:	; 4 bytes @ 0x0
	ds	1
	global	??_key
??_key:	; 0 bytes @ 0x1
	ds	1
	global	??_DelayUs
??_DelayUs:	; 0 bytes @ 0x2
	global	DelayUs@a
DelayUs@a:	; 2 bytes @ 0x2
	global	___wmul@multiplicand
___wmul@multiplicand:	; 2 bytes @ 0x2
	ds	2
	global	??_app30
??_app30:	; 0 bytes @ 0x4
	global	??___wmul
??___wmul:	; 0 bytes @ 0x4
	global	?_GET_ADC_DATA
?_GET_ADC_DATA:	; 2 bytes @ 0x4
	global	___wmul@product
___wmul@product:	; 2 bytes @ 0x4
	global	___lmul@multiplicand
___lmul@multiplicand:	; 4 bytes @ 0x4
	ds	2
	global	??_GET_ADC_DATA
??_GET_ADC_DATA:	; 0 bytes @ 0x6
	global	GET_ADC_DATA@adcChannel
GET_ADC_DATA@adcChannel:	; 1 bytes @ 0x6
	ds	2
	global	??___lmul
??___lmul:	; 0 bytes @ 0x8
	global	___lmul@product
___lmul@product:	; 4 bytes @ 0x8
	ds	4
	global	??_app
??_app:	; 0 bytes @ 0xC
	global	??_main
??_main:	; 0 bytes @ 0xC
psect	cstackBANK0,class=BANK0,space=1
global __pcstackBANK0
__pcstackBANK0:
	global	??_appbt
??_appbt:	; 0 bytes @ 0x0
	global	??_app10
??_app10:	; 0 bytes @ 0x0
	ds	4
	global	??_app11
??_app11:	; 0 bytes @ 0x4
	ds	4
;;Data sizes: Strings 0, constant 0, data 0, bss 83, persistent 0 stack 0
;;Auto spaces:   Size  Autos    Used
;; COMMON          14     12      14
;; BANK0           80      8      79
;; BANK1           80      0      17
;; BANK2           80      0       0
;; BANK3           80      0       0
;; BANK4           80      0       0
;; BANK5           80      0       0
;; BANK6           80      0       0
;; BANK7           80      0       0
;; BANK8           80      0       0
;; BANK9           80      0       0
;; BANK10          80      0       0
;; BANK11          80      0       0
;; BANK12          48      0       0

;;
;; Pointer list with targets:

;; ?___wmul	unsigned int  size(1) Largest target is 0
;;
;; ?___lmul	unsigned long  size(1) Largest target is 0
;;
;; ?_GET_ADC_DATA	unsigned int  size(1) Largest target is 0
;;


;;
;; Critical Paths under _main in COMMON
;;
;;   _app10->___lmul
;;   _appbt->___lmul
;;   _app30->_DelayUs
;;   _GET_ADC_DATA->_DelayUs
;;   _key->_readmode
;;
;; Critical Paths under _ISR in COMMON
;;
;;   None.
;;
;; Critical Paths under _main in BANK0
;;
;;   _app->_app11
;;   _app11->_app10
;;   _app11->_appbt
;;
;; Critical Paths under _ISR in BANK0
;;
;;   None.
;;
;; Critical Paths under _main in BANK1
;;
;;   None.
;;
;; Critical Paths under _ISR in BANK1
;;
;;   None.
;;
;; Critical Paths under _main in BANK2
;;
;;   None.
;;
;; Critical Paths under _ISR in BANK2
;;
;;   None.
;;
;; Critical Paths under _main in BANK3
;;
;;   None.
;;
;; Critical Paths under _ISR in BANK3
;;
;;   None.
;;
;; Critical Paths under _main in BANK4
;;
;;   None.
;;
;; Critical Paths under _ISR in BANK4
;;
;;   None.
;;
;; Critical Paths under _main in BANK5
;;
;;   None.
;;
;; Critical Paths under _ISR in BANK5
;;
;;   None.
;;
;; Critical Paths under _main in BANK6
;;
;;   None.
;;
;; Critical Paths under _ISR in BANK6
;;
;;   None.
;;
;; Critical Paths under _main in BANK7
;;
;;   None.
;;
;; Critical Paths under _ISR in BANK7
;;
;;   None.
;;
;; Critical Paths under _main in BANK8
;;
;;   None.
;;
;; Critical Paths under _ISR in BANK8
;;
;;   None.
;;
;; Critical Paths under _main in BANK9
;;
;;   None.
;;
;; Critical Paths under _ISR in BANK9
;;
;;   None.
;;
;; Critical Paths under _main in BANK10
;;
;;   None.
;;
;; Critical Paths under _ISR in BANK10
;;
;;   None.
;;
;; Critical Paths under _main in BANK11
;;
;;   None.
;;
;; Critical Paths under _ISR in BANK11
;;
;;   None.
;;
;; Critical Paths under _main in BANK12
;;
;;   None.
;;
;; Critical Paths under _ISR in BANK12
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
;; (0) _main                                                 0     0      0     779
;;                      _POWER_INITIAL
;;                     _TIMER0_INITIAL
;;                       _Time2Initial
;;                       _Time4Initial
;;                        _ADC_INITIAL
;;                                _app
;;                                _key
;; ---------------------------------------------------------------------------------
;; (1) _app                                                  0     0      0     742
;;                              _app11
;;                              _app40
;; ---------------------------------------------------------------------------------
;; (2) _app11                                                4     4      0     742
;;                                              4 BANK0      4     4      0
;;                            _DelayUs
;;                              _app10
;;                              _app30
;;                              _appbt
;; ---------------------------------------------------------------------------------
;; (3) _app10                                                4     4      0     371
;;                                              0 BANK0      4     4      0
;;                       _GET_ADC_DATA
;;                             ___lmul
;;                             ___wmul
;; ---------------------------------------------------------------------------------
;; (3) _appbt                                                4     4      0     235
;;                                              0 BANK0      4     4      0
;;                       _GET_ADC_DATA
;;                             ___lmul
;; ---------------------------------------------------------------------------------
;; (3) _app30                                                0     0      0      68
;;                            _DelayUs
;; ---------------------------------------------------------------------------------
;; (4) _GET_ADC_DATA                                         3     1      2      99
;;                                              4 COMMON     3     1      2
;;                            _DelayUs
;; ---------------------------------------------------------------------------------
;; (5) _DelayUs                                              4     2      2      68
;;                                              0 COMMON     4     2      2
;; ---------------------------------------------------------------------------------
;; (1) _key                                                  0     0      0      37
;;                            _readkey
;;                           _readmode
;; ---------------------------------------------------------------------------------
;; (1) _ADC_INITIAL                                          0     0      0       0
;; ---------------------------------------------------------------------------------
;; (4) ___lmul                                              12     4      8     136
;;                                              0 COMMON    12     4      8
;; ---------------------------------------------------------------------------------
;; (4) ___wmul                                               6     2      4     136
;;                                              0 COMMON     6     2      4
;; ---------------------------------------------------------------------------------
;; (2) _app40                                                0     0      0       0
;; ---------------------------------------------------------------------------------
;; (2) _readmode                                             1     1      0      37
;;                                              0 COMMON     1     1      0
;; ---------------------------------------------------------------------------------
;; (2) _readkey                                              0     0      0       0
;; ---------------------------------------------------------------------------------
;; (1) _Time4Initial                                         0     0      0       0
;; ---------------------------------------------------------------------------------
;; (1) _Time2Initial                                         0     0      0       0
;; ---------------------------------------------------------------------------------
;; (1) _TIMER0_INITIAL                                       0     0      0       0
;; ---------------------------------------------------------------------------------
;; (1) _POWER_INITIAL                                        0     0      0       0
;; ---------------------------------------------------------------------------------
;; Estimated maximum stack depth 5
;; ---------------------------------------------------------------------------------
;; (Depth) Function   	        Calls       Base Space   Used Autos Params    Refs
;; ---------------------------------------------------------------------------------
;; (6) _ISR                                                  0     0      0       0
;; ---------------------------------------------------------------------------------
;; Estimated maximum stack depth 6
;; ---------------------------------------------------------------------------------

;; Call Graph Graphs:

;; _main (ROOT)
;;   _POWER_INITIAL
;;   _TIMER0_INITIAL
;;   _Time2Initial
;;   _Time4Initial
;;   _ADC_INITIAL
;;   _app
;;     _app11
;;       _DelayUs
;;       _app10
;;         _GET_ADC_DATA
;;           _DelayUs
;;         ___lmul
;;         ___wmul
;;       _app30
;;         _DelayUs
;;       _appbt
;;         _GET_ADC_DATA
;;           _DelayUs
;;         ___lmul
;;     _app40
;;   _key
;;     _readkey
;;     _readmode
;;
;; _ISR (ROOT)
;;

;; Address spaces:

;;Name               Size   Autos  Total    Cost      Usage
;;BIGRAM             3F0      0       0       0        0.0%
;;EEDATA             100      0       0       0        0.0%
;;NULL                 0      0       0       0        0.0%
;;CODE                 0      0       0       0        0.0%
;;BITCOMMON            E      0       2       1       14.3%
;;BITSFR0              0      0       0       1        0.0%
;;SFR0                 0      0       0       1        0.0%
;;COMMON               E      C       E       2      100.0%
;;BITSFR1              0      0       0       2        0.0%
;;SFR1                 0      0       0       2        0.0%
;;BITSFR2              0      0       0       3        0.0%
;;SFR2                 0      0       0       3        0.0%
;;STACK                0      0       5       3        0.0%
;;BITBANK0            50      0       5       4        6.3%
;;BITSFR3              0      0       0       4        0.0%
;;SFR3                 0      0       0       4        0.0%
;;BANK0               50      8      4F       5       98.8%
;;BITSFR4              0      0       0       5        0.0%
;;SFR4                 0      0       0       5        0.0%
;;BITBANK1            50      0       0       6        0.0%
;;BITSFR5              0      0       0       6        0.0%
;;SFR5                 0      0       0       6        0.0%
;;BANK1               50      0      11       7       21.3%
;;BITSFR6              0      0       0       7        0.0%
;;SFR6                 0      0       0       7        0.0%
;;BITBANK2            50      0       0       8        0.0%
;;BITSFR7              0      0       0       8        0.0%
;;SFR7                 0      0       0       8        0.0%
;;BANK2               50      0       0       9        0.0%
;;BITSFR8              0      0       0       9        0.0%
;;SFR8                 0      0       0       9        0.0%
;;BITBANK3            50      0       0      10        0.0%
;;BITSFR9              0      0       0      10        0.0%
;;SFR9                 0      0       0      10        0.0%
;;BANK3               50      0       0      11        0.0%
;;BITSFR10             0      0       0      11        0.0%
;;SFR10                0      0       0      11        0.0%
;;BITBANK4            50      0       0      12        0.0%
;;BITSFR11             0      0       0      12        0.0%
;;SFR11                0      0       0      12        0.0%
;;BANK4               50      0       0      13        0.0%
;;BITSFR12             0      0       0      13        0.0%
;;SFR12                0      0       0      13        0.0%
;;BITBANK5            50      0       0      14        0.0%
;;BITSFR13             0      0       0      14        0.0%
;;SFR13                0      0       0      14        0.0%
;;BANK5               50      0       0      15        0.0%
;;BITSFR14             0      0       0      15        0.0%
;;SFR14                0      0       0      15        0.0%
;;BITBANK6            50      0       0      16        0.0%
;;BITSFR15             0      0       0      16        0.0%
;;SFR15                0      0       0      16        0.0%
;;BANK6               50      0       0      17        0.0%
;;BITSFR16             0      0       0      17        0.0%
;;SFR16                0      0       0      17        0.0%
;;BITBANK7            50      0       0      18        0.0%
;;BITSFR17             0      0       0      18        0.0%
;;SFR17                0      0       0      18        0.0%
;;BANK7               50      0       0      19        0.0%
;;BITSFR18             0      0       0      19        0.0%
;;SFR18                0      0       0      19        0.0%
;;BITSFR19             0      0       0      20        0.0%
;;SFR19                0      0       0      20        0.0%
;;ABS                  0      0      6E      20        0.0%
;;BITBANK8            50      0       0      21        0.0%
;;BITSFR20             0      0       0      21        0.0%
;;SFR20                0      0       0      21        0.0%
;;BANK8               50      0       0      22        0.0%
;;BITSFR21             0      0       0      22        0.0%
;;SFR21                0      0       0      22        0.0%
;;BITBANK9            50      0       0      23        0.0%
;;BITSFR22             0      0       0      23        0.0%
;;SFR22                0      0       0      23        0.0%
;;BANK9               50      0       0      24        0.0%
;;BITSFR23             0      0       0      24        0.0%
;;SFR23                0      0       0      24        0.0%
;;BITBANK10           50      0       0      25        0.0%
;;BITSFR24             0      0       0      25        0.0%
;;SFR24                0      0       0      25        0.0%
;;BANK10              50      0       0      26        0.0%
;;BITSFR25             0      0       0      26        0.0%
;;SFR25                0      0       0      26        0.0%
;;BITBANK11           50      0       0      27        0.0%
;;BITSFR26             0      0       0      27        0.0%
;;SFR26                0      0       0      27        0.0%
;;BANK11              50      0       0      28        0.0%
;;BITSFR27             0      0       0      28        0.0%
;;SFR27                0      0       0      28        0.0%
;;BITBANK12           30      0       0      29        0.0%
;;BITSFR28             0      0       0      29        0.0%
;;SFR28                0      0       0      29        0.0%
;;BANK12              30      0       0      30        0.0%
;;BITSFR29             0      0       0      30        0.0%
;;SFR29                0      0       0      30        0.0%
;;BITSFR30             0      0       0      31        0.0%
;;SFR30                0      0       0      31        0.0%
;;DATA                 0      0      73      31        0.0%
;;BITSFR31             0      0       0      32        0.0%
;;SFR31                0      0       0      32        0.0%

	global	_main
psect	maintext,global,class=CODE,delta=2
global __pmaintext
__pmaintext:

;; *************** function _main *****************
;; Defined at:
;;		line 31 in file "Cc_2033Anmo.C"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;                  2  2564[COMMON] int 
;; Registers used:
;;		wreg, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 17F/0
;;		On exit  : 1F/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5   BANK6   BANK7   BANK8   BANK9  BANK10  BANK11  BANK12
;;      Params:         0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Locals:         0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Temps:          0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Totals:         0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;Total ram usage:        0 bytes
;; Hardware stack levels required when called:    6
;; This function calls:
;;		_POWER_INITIAL
;;		_TIMER0_INITIAL
;;		_Time2Initial
;;		_Time4Initial
;;		_ADC_INITIAL
;;		_app
;;		_key
;; This function is called by:
;;		Startup code after reset
;; This function uses a non-reentrant model
;;
psect	maintext
	file	"Cc_2033Anmo.C"
	line	31
	global	__size_of_main
	__size_of_main	equ	__end_of_main-_main
	
_main:	
	opt	stack 10
; Regs used in _main: [wreg+status,2+status,0+pclath+cstack]
	line	32
	
l16777:	
;Cc_2033Anmo.C: 32: POWER_INITIAL();
	fcall	_POWER_INITIAL
	line	33
	
l16779:	
;Cc_2033Anmo.C: 33: TIMER0_INITIAL();
	fcall	_TIMER0_INITIAL
	line	34
	
l16781:	
;Cc_2033Anmo.C: 34: Time2Initial();
	fcall	_Time2Initial
	line	37
	
l16783:	
;Cc_2033Anmo.C: 37: Time4Initial();
	fcall	_Time4Initial
	line	38
	
l16785:	
;Cc_2033Anmo.C: 38: ADC_INITIAL();
	fcall	_ADC_INITIAL
	line	40
	
l16787:	
;Cc_2033Anmo.C: 40: f_sleep =1;
	bsf	(_f_sleep/8),(_f_sleep)&7
	line	42
	
l16789:	
;Cc_2033Anmo.C: 42: f_on =1;
	movlb 0	; select bank0
	bsf	(_f_on/8),(_f_on)&7
	line	43
	
l16791:	
;Cc_2033Anmo.C: 43: LATA7 =1;
	movlb 2	; select bank2
	bsf	(2151/8)^0100h,(2151)&7
	line	48
	
l16793:	
# 48 "Cc_2033Anmo.C"
clrwdt ;#
psect	maintext
	line	49
	
l16795:	
;Cc_2033Anmo.C: 49: if(f_1ms ==1)
	movlb 0	; select bank0
	btfss	(_f_1ms/8),(_f_1ms)&7
	goto	u2331
	goto	u2330
u2331:
	goto	l16793
u2330:
	line	51
	
l16797:	
;Cc_2033Anmo.C: 50: {
;Cc_2033Anmo.C: 51: f_1ms =0;
	bcf	(_f_1ms/8),(_f_1ms)&7
	line	52
	
l16799:	
;Cc_2033Anmo.C: 52: r_1stime ++;
	incf	(_r_1stime),f	;volatile
	skipnz
	incf	(_r_1stime+1),f	;volatile
	line	53
	
l16801:	
;Cc_2033Anmo.C: 53: if(r_1stime >1000)
	movlw	high(03E9h)
	subwf	(_r_1stime+1),w	;volatile
	movlw	low(03E9h)
	skipnz
	subwf	(_r_1stime),w	;volatile
	skipc
	goto	u2341
	goto	u2340
u2341:
	goto	l16807
u2340:
	line	55
	
l16803:	
;Cc_2033Anmo.C: 54: {
;Cc_2033Anmo.C: 55: r_1stime =0;
	clrf	(_r_1stime)	;volatile
	clrf	(_r_1stime+1)	;volatile
	line	56
	
l16805:	
;Cc_2033Anmo.C: 56: f_1s =1;
	bsf	(_f_1s/8),(_f_1s)&7
	line	58
	
l16807:	
;Cc_2033Anmo.C: 57: }
;Cc_2033Anmo.C: 58: app();
	fcall	_app
	line	59
	
l16809:	
;Cc_2033Anmo.C: 59: key();
	fcall	_key
	goto	l16793
	global	start
	ljmp	start
	opt stack 0
psect	maintext
	line	63
GLOBAL	__end_of_main
	__end_of_main:
;; =============== function _main ends ============

	signat	_main,90
	global	_app
psect	text628,local,class=CODE,delta=2
global __ptext628
__ptext628:

;; *************** function _app *****************
;; Defined at:
;;		line 31 in file "CC_APP.C"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 1F/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5   BANK6   BANK7   BANK8   BANK9  BANK10  BANK11  BANK12
;;      Params:         0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Locals:         0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Temps:          0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Totals:         0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;Total ram usage:        0 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    5
;; This function calls:
;;		_app11
;;		_app40
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text628
	file	"CC_APP.C"
	line	31
	global	__size_of_app
	__size_of_app	equ	__end_of_app-_app
	
_app:	
	opt	stack 10
; Regs used in _app: [wreg+status,2+status,0+pclath+cstack]
	line	33
	
l16761:	
;CC_APP.C: 33: if(f_on ==1)
	btfss	(_f_on/8),(_f_on)&7
	goto	u2291
	goto	u2290
u2291:
	goto	l12895
u2290:
	line	39
	
l16763:	
;CC_APP.C: 34: {
;CC_APP.C: 39: app11();
	fcall	_app11
	line	41
	
l16765:	
;CC_APP.C: 41: if(f_1s ==1)
	btfss	(_f_1s/8),(_f_1s)&7
	goto	u2301
	goto	u2300
u2301:
	goto	l12898
u2300:
	line	43
	
l16767:	
;CC_APP.C: 42: {
;CC_APP.C: 43: f_1s =0;
	bcf	(_f_1s/8),(_f_1s)&7
	line	44
;CC_APP.C: 44: f_sleep =0;
	bcf	(_f_sleep/8),(_f_sleep)&7
	line	46
	
l16769:	
;CC_APP.C: 46: PB5 =~PB5;
	movlw	1<<((109)&7)
	movlb 0	; select bank0
	xorwf	((109)/8),f
	line	47
;CC_APP.C: 47: r_ontime --;
	movlw	low(01h)
	subwf	(_r_ontime),f	;volatile
	movlw	high(01h)
	subwfb	(_r_ontime+1),f	;volatile
	line	48
	
l16771:	
;CC_APP.C: 48: if(r_ontime ==0)
	movf	((_r_ontime+1)),w	;volatile
	iorwf	((_r_ontime)),w	;volatile
	skipz
	goto	u2311
	goto	u2310
u2311:
	goto	l12898
u2310:
	line	50
	
l16773:	
;CC_APP.C: 49: {
;CC_APP.C: 50: f_on =0;
	bcf	(_f_on/8),(_f_on)&7
	line	51
;CC_APP.C: 51: f_sleep =1;
	bsf	(_f_sleep/8),(_f_sleep)&7
	goto	l12898
	line	56
	
l12895:	
	line	59
;CC_APP.C: 56: else
;CC_APP.C: 57: {
;CC_APP.C: 59: LATB1 =0;
	movlb 2	; select bank2
	bcf	(2153/8)^0100h,(2153)&7
	line	60
;CC_APP.C: 60: LATD3 =0;
	bcf	(2171/8)^0100h,(2171)&7
	line	61
;CC_APP.C: 61: LATD2 =0;
	bcf	(2170/8)^0100h,(2170)&7
	line	62
;CC_APP.C: 62: LATD1 =0;
	bcf	(2169/8)^0100h,(2169)&7
	line	63
;CC_APP.C: 63: LATD5 =0;
	bcf	(2173/8)^0100h,(2173)&7
	line	64
	
l12898:	
	line	65
;CC_APP.C: 64: }
;CC_APP.C: 65: if(f_off==0)
	movlb 0	; select bank0
	btfsc	(_f_off/8),(_f_off)&7
	goto	u2321
	goto	u2320
u2321:
	goto	l12900
u2320:
	line	67
	
l16775:	
;CC_APP.C: 66: {
;CC_APP.C: 67: app40();
	fcall	_app40
	line	71
	
l12900:	
	return
	opt stack 0
GLOBAL	__end_of_app
	__end_of_app:
;; =============== function _app ends ============

	signat	_app,88
	global	_app11
psect	text629,local,class=CODE,delta=2
global __ptext629
__ptext629:

;; *************** function _app11 *****************
;; Defined at:
;;		line 187 in file "CC_APP.C"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 1F/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5   BANK6   BANK7   BANK8   BANK9  BANK10  BANK11  BANK12
;;      Params:         0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Locals:         0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Temps:          0       4       0       0       0       0       0       0       0       0       0       0       0       0
;;      Totals:         0       4       0       0       0       0       0       0       0       0       0       0       0       0
;;Total ram usage:        4 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    4
;; This function calls:
;;		_DelayUs
;;		_app10
;;		_app30
;;		_appbt
;; This function is called by:
;;		_app
;; This function uses a non-reentrant model
;;
psect	text629
	file	"CC_APP.C"
	line	187
	global	__size_of_app11
	__size_of_app11	equ	__end_of_app11-_app11
	
_app11:	
	opt	stack 10
; Regs used in _app11: [wreg+status,2+status,0+pclath+cstack]
	line	188
	
l16679:	
;CC_APP.C: 188: r_50mstime ++;
	incf	(_r_50mstime),f	;volatile
	line	189
	
l16681:	
;CC_APP.C: 189: if(r_50mstime <51)
	movlw	(033h)
	subwf	(_r_50mstime),w	;volatile
	skipnc
	goto	u2141
	goto	u2140
u2141:
	goto	l16699
u2140:
	line	191
	
l16683:	
;CC_APP.C: 190: {
;CC_APP.C: 191: LATB1 =0;
	movlb 2	; select bank2
	bcf	(2153/8)^0100h,(2153)&7
	line	192
;CC_APP.C: 192: LATD3 =0;
	bcf	(2171/8)^0100h,(2171)&7
	line	193
;CC_APP.C: 193: LATD2 =0;
	bcf	(2170/8)^0100h,(2170)&7
	line	194
;CC_APP.C: 194: LATD1 =0;
	bcf	(2169/8)^0100h,(2169)&7
	line	195
;CC_APP.C: 195: LATD5 =0;
	bcf	(2173/8)^0100h,(2173)&7
	line	196
	
l16685:	
;CC_APP.C: 196: f_push = ~f_push;
	movlw	1<<((_f_push)&7)
	movlb 0	; select bank0
	xorwf	((_f_push)/8),f
	line	197
	
l16687:	
;CC_APP.C: 197: if(f_push ==1)
	btfss	(_f_push/8),(_f_push)&7
	goto	u2151
	goto	u2150
u2151:
	goto	l12932
u2150:
	line	199
	
l16689:	
;CC_APP.C: 198: {
;CC_APP.C: 199: TIM2CNTRH =0B00000000;
	movlb 6	; select bank6
	clrf	(790)^0300h	;volatile
	line	200
;CC_APP.C: 200: TIM2CNTRL =0B00000000;
	clrf	(791)^0300h	;volatile
	line	201
	
l16691:	
;CC_APP.C: 201: T2CEN =1;
	bsf	(6240/8)^0300h,(6240)&7
	line	202
	
l16693:	
;CC_APP.C: 202: DelayUs(200);
	movlw	0C8h
	movwf	(?_DelayUs)
	clrf	(?_DelayUs+1)
	fcall	_DelayUs
	line	203
	
l16695:	
;CC_APP.C: 203: DelayUs(200);
	movlw	0C8h
	movwf	(?_DelayUs)
	clrf	(?_DelayUs+1)
	fcall	_DelayUs
	line	205
	
l16697:	
;CC_APP.C: 205: app10();
	fcall	_app10
	line	207
;CC_APP.C: 207: }
	goto	l12959
	line	208
	
l12932:	
	line	211
;CC_APP.C: 208: else
;CC_APP.C: 209: {
;CC_APP.C: 211: T2CEN =0;
	movlb 6	; select bank6
	bcf	(6240/8)^0300h,(6240)&7
	line	212
;CC_APP.C: 212: PA5=0;
	movlb 0	; select bank0
	bcf	(101/8),(101)&7
	line	213
;CC_APP.C: 213: PA6 =0;
	bcf	(102/8),(102)&7
	goto	l12959
	line	215
	
l12933:	
	line	216
;CC_APP.C: 215: }
;CC_APP.C: 216: }
	goto	l12959
	line	217
	
l16699:	
;CC_APP.C: 217: else if(r_50mstime <52)
	movlw	(034h)
	subwf	(_r_50mstime),w	;volatile
	skipnc
	goto	u2161
	goto	u2160
u2161:
	goto	l16705
u2160:
	line	220
	
l16701:	
;CC_APP.C: 218: {
;CC_APP.C: 220: T2CEN =0;
	movlb 6	; select bank6
	bcf	(6240/8)^0300h,(6240)&7
	line	221
;CC_APP.C: 221: PA5=0;
	movlb 0	; select bank0
	bcf	(101/8),(101)&7
	line	222
;CC_APP.C: 222: PA6 =0;
	bcf	(102/8),(102)&7
	line	223
	
l16703:	
;CC_APP.C: 223: app30();
	fcall	_app30
	line	224
;CC_APP.C: 224: }
	goto	l12959
	line	226
	
l16705:	
;CC_APP.C: 226: else if(r_50mstime <66)
	movlw	(042h)
	subwf	(_r_50mstime),w	;volatile
	skipnc
	goto	u2171
	goto	u2170
u2171:
	goto	l12937
u2170:
	line	228
	
l16707:	
;CC_APP.C: 227: {
;CC_APP.C: 228: f_pwm =1;
	bsf	(_f_pwm/8),(_f_pwm)&7
	line	229
;CC_APP.C: 229: f_pwmno =0;
	bcf	(_f_pwmno/8),(_f_pwmno)&7
	line	230
	
l16709:	
;CC_APP.C: 230: r_pwmt =0;
	clrf	(_r_pwmt)	;volatile
	line	248
	
l16711:	
;CC_APP.C: 248: if(((r_ledlevelbuf -r_ledlevel) ==1)||((r_ledlevel -r_ledlevelbuf)==1))
	movf	(_r_ledlevelbuf),w	;volatile
	movwf	(??_app11+0)+0
	clrf	(??_app11+0)+0+1
	movf	1+(??_app11+0)+0,w
	movwf	(??_app11+2)+0+1
	movf	(_r_ledlevel),w	;volatile
	subwf	0+(??_app11+0)+0,w
	movwf	(??_app11+2)+0
	skipc
	decf	(??_app11+2)+0+1,f
	decf	0+(??_app11+2)+0,w
	iorwf	1+(??_app11+2)+0,w

	skipnz
	goto	u2181
	goto	u2180
u2181:
	goto	l16715
u2180:
	
l16713:	
	movf	(_r_ledlevel),w	;volatile
	movwf	(??_app11+0)+0
	clrf	(??_app11+0)+0+1
	movf	1+(??_app11+0)+0,w
	movwf	(??_app11+2)+0+1
	movf	(_r_ledlevelbuf),w	;volatile
	subwf	0+(??_app11+0)+0,w
	movwf	(??_app11+2)+0
	skipc
	decf	(??_app11+2)+0+1,f
	decf	0+(??_app11+2)+0,w
	iorwf	1+(??_app11+2)+0,w

	skipz
	goto	u2191
	goto	u2190
u2191:
	goto	l16721
u2190:
	line	250
	
l16715:	
;CC_APP.C: 249: {
;CC_APP.C: 250: r_leveldelay ++;
	incf	(_r_leveldelay),f	;volatile
	skipnz
	incf	(_r_leveldelay+1),f	;volatile
	line	251
	
l16717:	
;CC_APP.C: 251: if(r_leveldelay >=50)
	movlw	high(032h)
	subwf	(_r_leveldelay+1),w	;volatile
	movlw	low(032h)
	skipnz
	subwf	(_r_leveldelay),w	;volatile
	skipc
	goto	u2201
	goto	u2200
u2201:
	goto	l16725
u2200:
	line	253
	
l16719:	
;CC_APP.C: 252: {
;CC_APP.C: 253: r_ledlevelbuf =r_ledlevel;
	movf	(_r_ledlevel),w	;volatile
	movwf	(_r_ledlevelbuf)	;volatile
	goto	l16725
	line	258
	
l16721:	
;CC_APP.C: 256: else
;CC_APP.C: 257: {
;CC_APP.C: 258: r_leveldelay =0;
	clrf	(_r_leveldelay)	;volatile
	clrf	(_r_leveldelay+1)	;volatile
	goto	l16719
	line	261
	
l16725:	
;CC_APP.C: 260: }
;CC_APP.C: 261: r_ledlevelbuf =r_ledlevel;
	movf	(_r_ledlevel),w	;volatile
	movwf	(_r_ledlevelbuf)	;volatile
	line	263
	
l16727:	
;CC_APP.C: 263: if(f_ledoff ==1)
	btfss	(_f_ledoff/8),(_f_ledoff)&7
	goto	u2211
	goto	u2210
u2211:
	goto	l12959
u2210:
	line	265
	
l16729:	
;CC_APP.C: 264: {
;CC_APP.C: 265: LATD5 =1;
	movlb 2	; select bank2
	bsf	(2173/8)^0100h,(2173)&7
	line	266
	
l16731:	
;CC_APP.C: 266: if(r_ledlevelbuf==1)
	movlb 0	; select bank0
	decf	(_r_ledlevelbuf),w	;volatile
	skipz
	goto	u2221
	goto	u2220
u2221:
	goto	l16735
u2220:
	line	268
	
l16733:	
;CC_APP.C: 267: {
;CC_APP.C: 268: LATB1 =1;
	movlb 2	; select bank2
	bsf	(2153/8)^0100h,(2153)&7
	line	269
;CC_APP.C: 269: LATD3 =1;
	bsf	(2171/8)^0100h,(2171)&7
	line	270
;CC_APP.C: 270: }
	goto	l12959
	line	271
	
l16735:	
;CC_APP.C: 271: else if(r_ledlevelbuf ==2)
	movf	(_r_ledlevelbuf),w	;volatile
	xorlw	02h&0ffh
	skipz
	goto	u2231
	goto	u2230
u2231:
	goto	l16739
u2230:
	goto	l16733
	line	276
	
l16739:	
;CC_APP.C: 276: else if(r_ledlevelbuf ==3)
	movf	(_r_ledlevelbuf),w	;volatile
	xorlw	03h&0ffh
	skipz
	goto	u2241
	goto	u2240
u2241:
	goto	l16743
u2240:
	goto	l16733
	line	282
	
l16743:	
;CC_APP.C: 282: else if(r_ledlevelbuf ==4)
	movf	(_r_ledlevelbuf),w	;volatile
	xorlw	04h&0ffh
	skipz
	goto	u2251
	goto	u2250
u2251:
	goto	l12933
u2250:
	goto	l16733
	line	295
	
l12937:	
	line	297
;CC_APP.C: 295: else
;CC_APP.C: 296: {
;CC_APP.C: 297: T1CEN=0;
	movlb 4	; select bank4
	bcf	(4232/8)^0200h,(4232)&7
	line	299
;CC_APP.C: 299: f_pwm =0;
	movlb 0	; select bank0
	bcf	(_f_pwm/8),(_f_pwm)&7
	line	300
;CC_APP.C: 300: if(f_ledoff ==1)
	btfss	(_f_ledoff/8),(_f_ledoff)&7
	goto	u2261
	goto	u2260
u2261:
	goto	l12953
u2260:
	line	302
	
l16747:	
;CC_APP.C: 301: {
;CC_APP.C: 302: f_ledoff =0;
	bcf	(_f_ledoff/8),(_f_ledoff)&7
	line	303
;CC_APP.C: 303: }
	goto	l16749
	line	304
	
l12953:	
	line	306
;CC_APP.C: 304: else
;CC_APP.C: 305: {
;CC_APP.C: 306: f_ledoff =1;
	bsf	(_f_ledoff/8),(_f_ledoff)&7
	line	308
	
l16749:	
;CC_APP.C: 307: }
;CC_APP.C: 308: f_one = ~f_one;
	movlw	1<<((_f_one)&7)
	xorwf	((_f_one)/8),f
	line	309
	
l16751:	
;CC_APP.C: 309: if(f_hh ==1)
	btfss	(_f_hh/8),(_f_hh)&7
	goto	u2271
	goto	u2270
u2271:
	goto	l12956
u2270:
	line	311
	
l16753:	
;CC_APP.C: 310: {
;CC_APP.C: 311: if(f_one ==1)
	btfss	(_f_one/8),(_f_one)&7
	goto	u2281
	goto	u2280
u2281:
	goto	l12956
u2280:
	line	313
	
l16755:	
;CC_APP.C: 312: {
;CC_APP.C: 313: RC0 =1;
	bsf	(112/8),(112)&7
	line	314
;CC_APP.C: 314: RA1 =1;
	bsf	(97/8),(97)&7
	line	315
;CC_APP.C: 315: RA0 =0;
	bcf	(96/8),(96)&7
	line	316
;CC_APP.C: 316: }
	goto	l12958
	line	317
	
l12956:	
	line	319
;CC_APP.C: 317: else
;CC_APP.C: 318: {
;CC_APP.C: 319: RC0 =0;
	bcf	(112/8),(112)&7
	line	320
;CC_APP.C: 320: RA1 =0;
	bcf	(97/8),(97)&7
	line	321
;CC_APP.C: 321: RA0 =1;
	bsf	(96/8),(96)&7
	line	329
	
l12958:	
	line	330
;CC_APP.C: 329: }
;CC_APP.C: 330: f_push = 0;
	bcf	(_f_push/8),(_f_push)&7
	line	331
;CC_APP.C: 331: LATB1 =0;
	movlb 2	; select bank2
	bcf	(2153/8)^0100h,(2153)&7
	line	332
;CC_APP.C: 332: LATD3 =0;
	bcf	(2171/8)^0100h,(2171)&7
	line	333
;CC_APP.C: 333: LATD2 =0;
	bcf	(2170/8)^0100h,(2170)&7
	line	334
;CC_APP.C: 334: LATD1 =0;
	bcf	(2169/8)^0100h,(2169)&7
	line	335
;CC_APP.C: 335: LATD5 =0;
	bcf	(2173/8)^0100h,(2173)&7
	line	336
	
l16757:	
;CC_APP.C: 336: r_50mstime =0;
	movlb 0	; select bank0
	clrf	(_r_50mstime)	;volatile
	line	337
	
l16759:	
;CC_APP.C: 337: appbt();
	fcall	_appbt
	line	339
	
l12959:	
	return
	opt stack 0
GLOBAL	__end_of_app11
	__end_of_app11:
;; =============== function _app11 ends ============

	signat	_app11,88
	global	_app10
psect	text630,local,class=CODE,delta=2
global __ptext630
__ptext630:

;; *************** function _app10 *****************
;; Defined at:
;;		line 124 in file "CC_APP.C"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 0/6
;;		On exit  : 1F/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5   BANK6   BANK7   BANK8   BANK9  BANK10  BANK11  BANK12
;;      Params:         0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Locals:         0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Temps:          0       4       0       0       0       0       0       0       0       0       0       0       0       0
;;      Totals:         0       4       0       0       0       0       0       0       0       0       0       0       0       0
;;Total ram usage:        4 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    3
;; This function calls:
;;		_GET_ADC_DATA
;;		___lmul
;;		___wmul
;; This function is called by:
;;		_app11
;; This function uses a non-reentrant model
;;
psect	text630
	file	"CC_APP.C"
	line	124
	global	__size_of_app10
	__size_of_app10	equ	__end_of_app10-_app10
	
_app10:	
	opt	stack 10
; Regs used in _app10: [wreg+status,2+status,0+pclath+cstack]
	line	126
	
l16627:	
;CC_APP.C: 126: adcData = GET_ADC_DATA(0);
	movlw	(0)
	fcall	_GET_ADC_DATA
	movf	(1+(?_GET_ADC_DATA)),w
	movlb 0	; select bank0
	movwf	(_adcData+1)	;volatile
	movf	(0+(?_GET_ADC_DATA)),w
	movwf	(_adcData)	;volatile
	line	127
;CC_APP.C: 127: theVoltage = (unsigned long)adcData*2*1000/4096;
	movf	(_adcData),w	;volatile
	movwf	(?___lmul)
	movf	(_adcData+1),w	;volatile
	movwf	((?___lmul))+1
	clrf	2+((?___lmul))
	clrf	3+((?___lmul))
	lslf	(?___lmul),f
	rlf	(?___lmul+1),f
	rlf	(?___lmul+2),f
	rlf	(?___lmul+3),f
	movlw	0
	movwf	3+(?___lmul)+04h
	movlw	0
	movwf	2+(?___lmul)+04h
	movlw	03h
	movwf	1+(?___lmul)+04h
	movlw	0E8h
	movwf	0+(?___lmul)+04h

	fcall	___lmul
	movf	(0+?___lmul),w
	movwf	(??_app10+0)+0
	movf	(1+?___lmul),w
	movwf	((??_app10+0)+0+1)
	movf	(2+?___lmul),w
	movwf	((??_app10+0)+0+2)
	movf	(3+?___lmul),w
	movwf	((??_app10+0)+0+3)
	movlw	0Ch
u2025:
	lsrf	(??_app10+0)+3,f
	rrf	(??_app10+0)+2,f
	rrf	(??_app10+0)+1,f
	rrf	(??_app10+0)+0,f
u2020:
	decfsz	wreg,f
	goto	u2025
	movf	1+(??_app10+0)+0,w
	movwf	(_theVoltage+1)	;volatile
	movf	0+(??_app10+0)+0,w
	movwf	(_theVoltage)	;volatile
	line	128
	
l16629:	
;CC_APP.C: 128: r_test =5;
	movlw	(05h)
	movwf	(_r_test)	;volatile
	line	129
	
l16631:	
;CC_APP.C: 129: f_aderr =0;
	bcf	(_f_aderr/8),(_f_aderr)&7
	line	130
	
l16633:	
;CC_APP.C: 130: if((adcDatabuf > adcData)&&((adcDatabuf -adcData) >100))
	movf	(_adcDatabuf+1),w	;volatile
	subwf	(_adcData+1),w	;volatile
	skipz
	goto	u2035
	movf	(_adcDatabuf),w	;volatile
	subwf	(_adcData),w	;volatile
u2035:
	skipnc
	goto	u2031
	goto	u2030
u2031:
	goto	l12916
u2030:
	
l16635:	
	movf	(_adcData),w	;volatile
	subwf	(_adcDatabuf),w	;volatile
	movwf	(??_app10+0)+0
	movf	(_adcData+1),w	;volatile
	subwfb	(_adcDatabuf+1),w	;volatile
	movwf	1+(??_app10+0)+0
	movlw	high(065h)
	subwf	1+(??_app10+0)+0,w
	movlw	low(065h)
	skipnz
	subwf	0+(??_app10+0)+0,w
	skipc
	goto	u2041
	goto	u2040
u2041:
	goto	l12916
u2040:
	line	132
	
l16637:	
;CC_APP.C: 131: {
;CC_APP.C: 132: f_aderr =1;
	bsf	(_f_aderr/8),(_f_aderr)&7
	line	133
	
l16639:	
;CC_APP.C: 133: adcDatabuf =adcData;
	movf	(_adcData+1),w	;volatile
	movwf	(_adcDatabuf+1)	;volatile
	movf	(_adcData),w	;volatile
	movwf	(_adcDatabuf)	;volatile
	line	134
	
l12916:	
	line	135
;CC_APP.C: 134: }
;CC_APP.C: 135: if((adcData > adcDatabuf)&&((adcData -adcDatabuf) >100))
	movf	(_adcData+1),w	;volatile
	subwf	(_adcDatabuf+1),w	;volatile
	skipz
	goto	u2055
	movf	(_adcData),w	;volatile
	subwf	(_adcDatabuf),w	;volatile
u2055:
	skipnc
	goto	u2051
	goto	u2050
u2051:
	goto	l16647
u2050:
	
l16641:	
	movf	(_adcDatabuf),w	;volatile
	subwf	(_adcData),w	;volatile
	movwf	(??_app10+0)+0
	movf	(_adcDatabuf+1),w	;volatile
	subwfb	(_adcData+1),w	;volatile
	movwf	1+(??_app10+0)+0
	movlw	high(065h)
	subwf	1+(??_app10+0)+0,w
	movlw	low(065h)
	skipnz
	subwf	0+(??_app10+0)+0,w
	skipc
	goto	u2061
	goto	u2060
u2061:
	goto	l16647
u2060:
	line	137
	
l16643:	
;CC_APP.C: 136: {
;CC_APP.C: 137: f_aderr =1;
	bsf	(_f_aderr/8),(_f_aderr)&7
	line	138
	
l16645:	
;CC_APP.C: 138: adcDatabuf =adcData;
	movf	(_adcData+1),w	;volatile
	movwf	(_adcDatabuf+1)	;volatile
	movf	(_adcData),w	;volatile
	movwf	(_adcDatabuf)	;volatile
	line	140
	
l16647:	
;CC_APP.C: 139: }
;CC_APP.C: 140: if(f_aderr ==0)
	btfsc	(_f_aderr/8),(_f_aderr)&7
	goto	u2071
	goto	u2070
u2071:
	goto	l16653
u2070:
	line	142
	
l16649:	
;CC_APP.C: 141: {
;CC_APP.C: 142: r_adbuf = r_adbuf +theVoltage;
	movf	(_theVoltage),w	;volatile
	addwf	(_r_adbuf),f	;volatile
	movf	(_theVoltage+1),w	;volatile
	addwfc	(_r_adbuf+1),f	;volatile
	line	143
	
l16651:	
;CC_APP.C: 143: r_adtimes ++;
	incf	(_r_adtimes),f	;volatile
	line	145
	
l16653:	
;CC_APP.C: 144: }
;CC_APP.C: 145: if(r_adtimes >32)
	movlw	(021h)
	subwf	(_r_adtimes),w	;volatile
	skipc
	goto	u2081
	goto	u2080
u2081:
	goto	l12928
u2080:
	line	147
	
l16655:	
;CC_APP.C: 146: {
;CC_APP.C: 147: r_adtimes =0;
	clrf	(_r_adtimes)	;volatile
	line	148
	
l16657:	
;CC_APP.C: 148: r_adbuf = (r_adbuf /32);
	movlw	05h
	
u2095:
	lsrf	(_r_adbuf+1),f	;volatile
	rrf	(_r_adbuf),f	;volatile
	decfsz	wreg,f
	goto	u2095
	line	149
	
l16659:	
;CC_APP.C: 149: r_test =6;
	movlw	(06h)
	movwf	(_r_test)	;volatile
	line	151
	
l16661:	
;CC_APP.C: 151: if(r_adbuf < 50)
	movlw	high(032h)
	subwf	(_r_adbuf+1),w	;volatile
	movlw	low(032h)
	skipnz
	subwf	(_r_adbuf),w	;volatile
	skipnc
	goto	u2101
	goto	u2100
u2101:
	goto	l16665
u2100:
	line	153
	
l16663:	
;CC_APP.C: 152: {
;CC_APP.C: 153: r_ledlevel =0;
	clrf	(_r_ledlevel)	;volatile
	line	155
;CC_APP.C: 155: }
	goto	l12928
	line	156
	
l16665:	
;CC_APP.C: 156: else if(r_adbuf < 300)
	movlw	high(012Ch)
	subwf	(_r_adbuf+1),w	;volatile
	movlw	low(012Ch)
	skipnz
	subwf	(_r_adbuf),w	;volatile
	skipnc
	goto	u2111
	goto	u2110
u2111:
	goto	l16669
u2110:
	line	158
	
l16667:	
;CC_APP.C: 157: {
;CC_APP.C: 158: r_ledlevel =1;
	clrf	(_r_ledlevel)	;volatile
	incf	(_r_ledlevel),f	;volatile
	line	161
;CC_APP.C: 161: }
	goto	l12928
	line	163
	
l16669:	
;CC_APP.C: 163: else if(r_adbuf <( 300+r_vef*100))
	movf	(_r_vef),w	;volatile
	movwf	(?___wmul)
	clrf	(?___wmul+1)
	movlw	064h
	movwf	0+(?___wmul)+02h
	clrf	1+(?___wmul)+02h
	fcall	___wmul
	movf	(0+(?___wmul)),w
	addlw	low(012Ch)
	movwf	(??_app10+0)+0
	movlw	high(012Ch)
	addwfc	(1+(?___wmul)),w
	movwf	1+(??_app10+0)+0
	movf	1+(??_app10+0)+0,w
	subwf	(_r_adbuf+1),w	;volatile
	skipz
	goto	u2125
	movf	0+(??_app10+0)+0,w
	subwf	(_r_adbuf),w	;volatile
u2125:
	skipnc
	goto	u2121
	goto	u2120
u2121:
	goto	l16673
u2120:
	line	165
	
l16671:	
;CC_APP.C: 164: {
;CC_APP.C: 165: r_ledlevel =2;
	movlw	(02h)
	movwf	(_r_ledlevel)	;volatile
	line	166
;CC_APP.C: 166: }
	goto	l12928
	line	167
	
l16673:	
;CC_APP.C: 167: else if(r_adbuf < (700+r_vef*100))
	movf	(_r_vef),w	;volatile
	movwf	(?___wmul)
	clrf	(?___wmul+1)
	movlw	064h
	movwf	0+(?___wmul)+02h
	clrf	1+(?___wmul)+02h
	fcall	___wmul
	movf	(0+(?___wmul)),w
	addlw	low(02BCh)
	movwf	(??_app10+0)+0
	movlw	high(02BCh)
	addwfc	(1+(?___wmul)),w
	movwf	1+(??_app10+0)+0
	movf	1+(??_app10+0)+0,w
	subwf	(_r_adbuf+1),w	;volatile
	skipz
	goto	u2135
	movf	0+(??_app10+0)+0,w
	subwf	(_r_adbuf),w	;volatile
u2135:
	skipnc
	goto	u2131
	goto	u2130
u2131:
	goto	l16677
u2130:
	line	169
	
l16675:	
;CC_APP.C: 168: {
;CC_APP.C: 169: r_ledlevel =3;
	movlw	(03h)
	movwf	(_r_ledlevel)	;volatile
	line	171
;CC_APP.C: 171: }
	goto	l12928
	line	178
	
l16677:	
;CC_APP.C: 176: else
;CC_APP.C: 177: {
;CC_APP.C: 178: r_ledlevel =4;
	movlw	(04h)
	movwf	(_r_ledlevel)	;volatile
	line	185
	
l12928:	
	return
	opt stack 0
GLOBAL	__end_of_app10
	__end_of_app10:
;; =============== function _app10 ends ============

	signat	_app10,88
	global	_appbt
psect	text631,local,class=CODE,delta=2
global __ptext631
__ptext631:

;; *************** function _appbt *****************
;; Defined at:
;;		line 73 in file "CC_APP.C"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 1F/0
;;		On exit  : 1F/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5   BANK6   BANK7   BANK8   BANK9  BANK10  BANK11  BANK12
;;      Params:         0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Locals:         0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Temps:          0       4       0       0       0       0       0       0       0       0       0       0       0       0
;;      Totals:         0       4       0       0       0       0       0       0       0       0       0       0       0       0
;;Total ram usage:        4 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    3
;; This function calls:
;;		_GET_ADC_DATA
;;		___lmul
;; This function is called by:
;;		_app11
;; This function uses a non-reentrant model
;;
psect	text631
	file	"CC_APP.C"
	line	73
	global	__size_of_appbt
	__size_of_appbt	equ	__end_of_appbt-_appbt
	
_appbt:	
	opt	stack 10
; Regs used in _appbt: [wreg+status,2+status,0+pclath+cstack]
	line	74
	
l16591:	
;CC_APP.C: 74: adcData = GET_ADC_DATA(1);
	movlw	(01h)
	fcall	_GET_ADC_DATA
	movf	(1+(?_GET_ADC_DATA)),w
	movlb 0	; select bank0
	movwf	(_adcData+1)	;volatile
	movf	(0+(?_GET_ADC_DATA)),w
	movwf	(_adcData)	;volatile
	line	75
;CC_APP.C: 75: theVoltage = (unsigned long)adcData*2*1000/4096;
	movf	(_adcData),w	;volatile
	movwf	(?___lmul)
	movf	(_adcData+1),w	;volatile
	movwf	((?___lmul))+1
	clrf	2+((?___lmul))
	clrf	3+((?___lmul))
	lslf	(?___lmul),f
	rlf	(?___lmul+1),f
	rlf	(?___lmul+2),f
	rlf	(?___lmul+3),f
	movlw	0
	movwf	3+(?___lmul)+04h
	movlw	0
	movwf	2+(?___lmul)+04h
	movlw	03h
	movwf	1+(?___lmul)+04h
	movlw	0E8h
	movwf	0+(?___lmul)+04h

	fcall	___lmul
	movf	(0+?___lmul),w
	movwf	(??_appbt+0)+0
	movf	(1+?___lmul),w
	movwf	((??_appbt+0)+0+1)
	movf	(2+?___lmul),w
	movwf	((??_appbt+0)+0+2)
	movf	(3+?___lmul),w
	movwf	((??_appbt+0)+0+3)
	movlw	0Ch
u1955:
	lsrf	(??_appbt+0)+3,f
	rrf	(??_appbt+0)+2,f
	rrf	(??_appbt+0)+1,f
	rrf	(??_appbt+0)+0,f
u1950:
	decfsz	wreg,f
	goto	u1955
	movf	1+(??_appbt+0)+0,w
	movwf	(_theVoltage+1)	;volatile
	movf	0+(??_appbt+0)+0,w
	movwf	(_theVoltage)	;volatile
	line	76
	
l16593:	
;CC_APP.C: 76: r_test =5;
	movlw	(05h)
	movwf	(_r_test)	;volatile
	line	77
	
l16595:	
;CC_APP.C: 77: r_adbtbuf = r_adbtbuf +theVoltage;
	movf	(_theVoltage),w	;volatile
	addwf	(_r_adbtbuf),f	;volatile
	movf	(_theVoltage+1),w	;volatile
	addwfc	(_r_adbtbuf+1),f	;volatile
	line	78
	
l16597:	
;CC_APP.C: 78: r_adbttimes ++;
	incf	(_r_adbttimes),f	;volatile
	line	79
	
l16599:	
;CC_APP.C: 79: if(r_adbttimes >16)
	movlw	(011h)
	subwf	(_r_adbttimes),w	;volatile
	skipc
	goto	u1961
	goto	u1960
u1961:
	goto	l12913
u1960:
	line	81
	
l16601:	
;CC_APP.C: 80: {
;CC_APP.C: 81: r_adbttimes =0;
	clrf	(_r_adbttimes)	;volatile
	line	82
	
l16603:	
;CC_APP.C: 82: r_adbtbuf = (r_adbtbuf /16);
	swapf	(_r_adbtbuf),f	;volatile
	swapf	(_r_adbtbuf+1),f	;volatile
	movlw	0fh
	andwf	(_r_adbtbuf),f	;volatile
	movf	(_r_adbtbuf+1),w	;volatile
	andlw	0f0h
	iorwf	(_r_adbtbuf),f	;volatile
	movlw	0fh
	andwf	(_r_adbtbuf+1),f	;volatile
	line	83
	
l16605:	
;CC_APP.C: 83: if(r_adbtbuf <910)
	movlw	high(038Eh)
	subwf	(_r_adbtbuf+1),w	;volatile
	movlw	low(038Eh)
	skipnz
	subwf	(_r_adbtbuf),w	;volatile
	skipnc
	goto	u1971
	goto	u1970
u1971:
	goto	l16609
u1970:
	line	85
	
l16607:	
;CC_APP.C: 84: {
;CC_APP.C: 85: r_vef =0;
	clrf	(_r_vef)	;volatile
	line	86
;CC_APP.C: 86: }
	goto	l12905
	line	87
	
l16609:	
;CC_APP.C: 87: else if(r_adbtbuf <950)
	movlw	high(03B6h)
	subwf	(_r_adbtbuf+1),w	;volatile
	movlw	low(03B6h)
	skipnz
	subwf	(_r_adbtbuf),w	;volatile
	skipnc
	goto	u1981
	goto	u1980
u1981:
	goto	l16613
u1980:
	line	89
	
l16611:	
;CC_APP.C: 88: {
;CC_APP.C: 89: r_vef =1;
	clrf	(_r_vef)	;volatile
	incf	(_r_vef),f	;volatile
	line	90
;CC_APP.C: 90: }
	goto	l12905
	line	91
	
l16613:	
;CC_APP.C: 91: else if(r_adbtbuf <1000)
	movlw	high(03E8h)
	subwf	(_r_adbtbuf+1),w	;volatile
	movlw	low(03E8h)
	skipnz
	subwf	(_r_adbtbuf),w	;volatile
	skipnc
	goto	u1991
	goto	u1990
u1991:
	goto	l16617
u1990:
	line	93
	
l16615:	
;CC_APP.C: 92: {
;CC_APP.C: 93: r_vef =2;
	movlw	(02h)
	movwf	(_r_vef)	;volatile
	line	94
;CC_APP.C: 94: }
	goto	l12905
	line	95
	
l16617:	
;CC_APP.C: 95: else if(r_adbtbuf <1050)
	movlw	high(041Ah)
	subwf	(_r_adbtbuf+1),w	;volatile
	movlw	low(041Ah)
	skipnz
	subwf	(_r_adbtbuf),w	;volatile
	skipnc
	goto	u2001
	goto	u2000
u2001:
	goto	l16621
u2000:
	line	97
	
l16619:	
;CC_APP.C: 96: {
;CC_APP.C: 97: r_vef =3;
	movlw	(03h)
	movwf	(_r_vef)	;volatile
	line	98
;CC_APP.C: 98: }
	goto	l12905
	line	101
	
l16621:	
;CC_APP.C: 99: else
;CC_APP.C: 100: {
;CC_APP.C: 101: r_vef =4;
	movlw	(04h)
	movwf	(_r_vef)	;volatile
	line	102
	
l12905:	
	line	103
;CC_APP.C: 102: }
;CC_APP.C: 103: if(r_adbtbuf < 900)
	movlw	high(0384h)
	subwf	(_r_adbtbuf+1),w	;volatile
	movlw	low(0384h)
	skipnz
	subwf	(_r_adbtbuf),w	;volatile
	skipnc
	goto	u2011
	goto	u2010
u2011:
	goto	l12913
u2010:
	line	109
	
l16623:	
;CC_APP.C: 104: {
;CC_APP.C: 109: f_on =0;
	bcf	(_f_on/8),(_f_on)&7
	line	110
;CC_APP.C: 110: f_sleep =1;
	bsf	(_f_sleep/8),(_f_sleep)&7
	line	111
	
l16625:	
;CC_APP.C: 111: r_adbtbuf =0;
	clrf	(_r_adbtbuf)	;volatile
	clrf	(_r_adbtbuf+1)	;volatile
	line	122
	
l12913:	
	return
	opt stack 0
GLOBAL	__end_of_appbt
	__end_of_appbt:
;; =============== function _appbt ends ============

	signat	_appbt,88
	global	_app30
psect	text632,local,class=CODE,delta=2
global __ptext632
__ptext632:

;; *************** function _app30 *****************
;; Defined at:
;;		line 379 in file "CC_APP.C"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 1F/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5   BANK6   BANK7   BANK8   BANK9  BANK10  BANK11  BANK12
;;      Params:         0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Locals:         0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Temps:          0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Totals:         0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;Total ram usage:        0 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    2
;; This function calls:
;;		_DelayUs
;; This function is called by:
;;		_app11
;; This function uses a non-reentrant model
;;
psect	text632
	file	"CC_APP.C"
	line	379
	global	__size_of_app30
	__size_of_app30	equ	__end_of_app30-_app30
	
_app30:	
	opt	stack 11
; Regs used in _app30: [wreg+status,2+status,0+pclath+cstack]
	line	380
	
l16547:	
;CC_APP.C: 380: r_onkey ++;
	incf	(_r_onkey),f	;volatile
	skipnz
	incf	(_r_onkey+1),f	;volatile
	line	381
	
l16549:	
;CC_APP.C: 381: if(r_onkey <5)
	movlw	high(05h)
	subwf	(_r_onkey+1),w	;volatile
	movlw	low(05h)
	skipnz
	subwf	(_r_onkey),w	;volatile
	skipnc
	goto	u1931
	goto	u1930
u1931:
	goto	l16553
u1930:
	line	383
	
l16551:	
;CC_APP.C: 382: {
;CC_APP.C: 383: TRISA7 =0;
	movlb 1	; select bank1
	bcf	(1127/8)^080h,(1127)&7
	line	384
;CC_APP.C: 384: LATA7 =1;
	movlb 2	; select bank2
	bsf	(2151/8)^0100h,(2151)&7
	line	385
;CC_APP.C: 385: }
	goto	l12972
	line	388
	
l16553:	
;CC_APP.C: 386: else
;CC_APP.C: 387: {
;CC_APP.C: 388: r_onkey =0;
	clrf	(_r_onkey)	;volatile
	clrf	(_r_onkey+1)	;volatile
	line	389
	
l16555:	
;CC_APP.C: 389: _nop();
	nop
	line	390
	
l16557:	
;CC_APP.C: 390: TRISA7 =1;
	movlb 1	; select bank1
	bsf	(1127/8)^080h,(1127)&7
	line	391
	
l16559:	
;CC_APP.C: 391: DelayUs(100);
	movlw	064h
	movwf	(?_DelayUs)
	clrf	(?_DelayUs+1)
	fcall	_DelayUs
	line	392
	
l16561:	
;CC_APP.C: 392: f_off =0;
	movlb 0	; select bank0
	bcf	(_f_off/8),(_f_off)&7
	line	393
	
l16563:	
;CC_APP.C: 393: if(PA7 ==0)
	btfsc	(103/8),(103)&7
	goto	u1941
	goto	u1940
u1941:
	goto	l16551
u1940:
	line	395
	
l16565:	
;CC_APP.C: 394: {
;CC_APP.C: 395: TRISA7 =0;
	movlb 1	; select bank1
	bcf	(1127/8)^080h,(1127)&7
	line	396
;CC_APP.C: 396: LATA7 =0;
	movlb 2	; select bank2
	bcf	(2151/8)^0100h,(2151)&7
	line	398
;CC_APP.C: 398: f_on =0;
	movlb 0	; select bank0
	bcf	(_f_on/8),(_f_on)&7
	line	399
;CC_APP.C: 399: LATD4 =0;
	movlb 2	; select bank2
	bcf	(2172/8)^0100h,(2172)&7
	line	400
	
l16567:	
;CC_APP.C: 400: r_buzzer = 0;
	movlb 0	; select bank0
	clrf	(_r_buzzer)	;volatile
	clrf	(_r_buzzer+1)	;volatile
	line	401
	
l16569:	
;CC_APP.C: 401: f_buz =0;
	bcf	(_f_buz/8),(_f_buz)&7
	line	402
	
l16571:	
;CC_APP.C: 402: LATA7 =0;
	movlb 2	; select bank2
	bcf	(2151/8)^0100h,(2151)&7
	line	403
;CC_APP.C: 403: INTCON = 0B00000000;
	clrf	(11)	;volatile
	line	404
;CC_APP.C: 404: ANSELA = 0B00000000;
	movlb 3	; select bank3
	clrf	(407)^0180h	;volatile
	line	405
	
l16573:	
;CC_APP.C: 405: T2CEN =0;
	movlb 6	; select bank6
	bcf	(6240/8)^0300h,(6240)&7
	line	406
;CC_APP.C: 406: TIM2CCER1 =0B00000000;
	clrf	(788)^0300h	;volatile
	line	407
	
l16575:	
;CC_APP.C: 407: T1CEN =0;
	movlb 4	; select bank4
	bcf	(4232/8)^0200h,(4232)&7
	line	408
;CC_APP.C: 408: TIM1CCER1 =0B00000000;
	clrf	(541)^0200h	;volatile
	line	409
	
l16577:	
;CC_APP.C: 409: f_on =0;
	movlb 0	; select bank0
	bcf	(_f_on/8),(_f_on)&7
	line	410
	
l16579:	
;CC_APP.C: 410: PA5=0;
	bcf	(101/8),(101)&7
	line	411
	
l16581:	
;CC_APP.C: 411: PA6 =0;
	bcf	(102/8),(102)&7
	line	412
	
l16583:	
;CC_APP.C: 412: PC0 = 0;
	bcf	(112/8),(112)&7
	line	413
	
l16585:	
;CC_APP.C: 413: PA1 =0;
	bcf	(97/8),(97)&7
	line	414
	
l16587:	
;CC_APP.C: 414: PA0 =0;
	bcf	(96/8),(96)&7
	line	415
	
l16589:	
# 415 "CC_APP.C"
sleep ;#
psect	text632
	line	424
;CC_APP.C: 417: }
	
l12972:	
	return
	opt stack 0
GLOBAL	__end_of_app30
	__end_of_app30:
;; =============== function _app30 ends ============

	signat	_app30,88
	global	_GET_ADC_DATA
psect	text633,local,class=CODE,delta=2
global __ptext633
__ptext633:

;; *************** function _GET_ADC_DATA *****************
;; Defined at:
;;		line 41 in file "CC_FUN.C"
;; Parameters:    Size  Location     Type
;;  adcChannel      1    wreg     unsigned char 
;; Auto vars:     Size  Location     Type
;;  adcChannel      1    6[COMMON] unsigned char 
;; Return value:  Size  Location     Type
;;                  2    4[COMMON] unsigned int 
;; Registers used:
;;		wreg, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 0/6
;;		On exit  : 1F/1
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5   BANK6   BANK7   BANK8   BANK9  BANK10  BANK11  BANK12
;;      Params:         2       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Locals:         1       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Temps:          0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Totals:         3       0       0       0       0       0       0       0       0       0       0       0       0       0
;;Total ram usage:        3 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    2
;; This function calls:
;;		_DelayUs
;; This function is called by:
;;		_appbt
;;		_app10
;; This function uses a non-reentrant model
;;
psect	text633
	file	"CC_FUN.C"
	line	41
	global	__size_of_GET_ADC_DATA
	__size_of_GET_ADC_DATA	equ	__end_of_GET_ADC_DATA-_GET_ADC_DATA
	
_GET_ADC_DATA:	
	opt	stack 10
; Regs used in _GET_ADC_DATA: [wreg+status,2+status,0+pclath+cstack]
;GET_ADC_DATA@adcChannel stored from wreg
	movwf	(GET_ADC_DATA@adcChannel)
	line	42
	
l16525:	
;CC_FUN.C: 42: ADCON0 &= 0B00001111;
	movlw	(0Fh)
	movlb 1	; select bank1
	andwf	(157)^080h,f	;volatile
	line	43
;CC_FUN.C: 43: ADCON0 |= adcChannel<<4;
	swapf	(GET_ADC_DATA@adcChannel),w
	andlw	(0ffh shl 4) & 0ffh
	iorwf	(157)^080h,f	;volatile
	line	44
	
l16527:	
;CC_FUN.C: 44: DelayUs(40);
	movlw	028h
	movwf	(?_DelayUs)
	clrf	(?_DelayUs+1)
	fcall	_DelayUs
	line	45
	
l16529:	
;CC_FUN.C: 45: _nop();
	nop
	line	46
	
l16531:	
;CC_FUN.C: 46: _nop();
	nop
	line	47
	
l16533:	
;CC_FUN.C: 47: _nop();
	nop
	line	48
	
l16535:	
;CC_FUN.C: 48: _nop();
	nop
	line	49
	
l16537:	
;CC_FUN.C: 49: GO = 1;
	movlb 1	; select bank1
	bsf	(1257/8)^080h,(1257)&7
	line	50
	
l16539:	
;CC_FUN.C: 50: _nop();
	nop
	line	51
	
l16541:	
;CC_FUN.C: 51: _nop();
	nop
	line	52
;CC_FUN.C: 52: while(GO);
	
l5128:	
	movlb 1	; select bank1
	btfsc	(1257/8)^080h,(1257)&7
	goto	u1921
	goto	u1920
u1921:
	goto	l5128
u1920:
	line	54
	
l16543:	
;CC_FUN.C: 54: return (unsigned int)(ADRESH<<8|ADRESL);
	movf	(156)^080h,w	;volatile
	movwf	(?_GET_ADC_DATA+1)
	clrf	(?_GET_ADC_DATA)
	movf	(155)^080h,w	;volatile
	iorwf	(?_GET_ADC_DATA),f
	line	55
	
l5131:	
	return
	opt stack 0
GLOBAL	__end_of_GET_ADC_DATA
	__end_of_GET_ADC_DATA:
;; =============== function _GET_ADC_DATA ends ============

	signat	_GET_ADC_DATA,4218
	global	_DelayUs
psect	text634,local,class=CODE,delta=2
global __ptext634
__ptext634:

;; *************** function _DelayUs *****************
;; Defined at:
;;		line 57 in file "CC_FUN.C"
;; Parameters:    Size  Location     Type
;;  Time            2    0[COMMON] unsigned int 
;; Auto vars:     Size  Location     Type
;;  a               2    2[COMMON] unsigned int 
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, status,2, status,0
;; Tracked objects:
;;		On entry : 0/6
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5   BANK6   BANK7   BANK8   BANK9  BANK10  BANK11  BANK12
;;      Params:         2       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Locals:         2       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Temps:          0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Totals:         4       0       0       0       0       0       0       0       0       0       0       0       0       0
;;Total ram usage:        4 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_GET_ADC_DATA
;;		_app11
;;		_app30
;; This function uses a non-reentrant model
;;
psect	text634
	file	"CC_FUN.C"
	line	57
	global	__size_of_DelayUs
	__size_of_DelayUs	equ	__end_of_DelayUs-_DelayUs
	
_DelayUs:	
	opt	stack 10
; Regs used in _DelayUs: [wreg+status,2+status,0]
	line	59
	
l16519:	
;CC_FUN.C: 58: unsigned int a;
;CC_FUN.C: 59: for(a=0;a<Time;a++)
	clrf	(DelayUs@a)
	clrf	(DelayUs@a+1)
	goto	l16523
	line	60
	
l5135:	
	line	61
;CC_FUN.C: 60: {
;CC_FUN.C: 61: _nop();
	nop
	line	59
	
l16521:	
	incf	(DelayUs@a),f
	skipnz
	incf	(DelayUs@a+1),f
	
l16523:	
	movf	(DelayUs@Time+1),w
	subwf	(DelayUs@a+1),w
	skipz
	goto	u1915
	movf	(DelayUs@Time),w
	subwf	(DelayUs@a),w
u1915:
	skipc
	goto	u1911
	goto	u1910
u1911:
	goto	l5135
u1910:
	line	63
	
l5137:	
	return
	opt stack 0
GLOBAL	__end_of_DelayUs
	__end_of_DelayUs:
;; =============== function _DelayUs ends ============

	signat	_DelayUs,4216
	global	_key
psect	text635,local,class=CODE,delta=2
global __ptext635
__ptext635:

;; *************** function _key *****************
;; Defined at:
;;		line 30 in file "CC_KEY.C"
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
;;		On exit  : 1F/0
;;		Unchanged: FFFE0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5   BANK6   BANK7   BANK8   BANK9  BANK10  BANK11  BANK12
;;      Params:         0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Locals:         0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Temps:          0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Totals:         0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;Total ram usage:        0 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    2
;; This function calls:
;;		_readkey
;;		_readmode
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text635
	file	"CC_KEY.C"
	line	30
	global	__size_of_key
	__size_of_key	equ	__end_of_key-_key
	
_key:	
	opt	stack 13
; Regs used in _key: [wreg+status,2+status,0+pclath+cstack]
	line	32
	
l16513:	
;CC_KEY.C: 32: readkey();
	fcall	_readkey
	line	33
;CC_KEY.C: 33: readmode();
	fcall	_readmode
	line	34
	
l16515:	
;CC_KEY.C: 34: if(PB4 ==1)
	btfss	(108/8),(108)&7
	goto	u1901
	goto	u1900
u1901:
	goto	l10274
u1900:
	line	36
	
l16517:	
;CC_KEY.C: 35: {
;CC_KEY.C: 36: f_hh =0;
	bcf	(_f_hh/8),(_f_hh)&7
	line	37
;CC_KEY.C: 37: }
	goto	l10276
	line	38
	
l10274:	
	line	40
;CC_KEY.C: 38: else
;CC_KEY.C: 39: {
;CC_KEY.C: 40: f_hh =1;
	bsf	(_f_hh/8),(_f_hh)&7
	line	42
	
l10276:	
	return
	opt stack 0
GLOBAL	__end_of_key
	__end_of_key:
;; =============== function _key ends ============

	signat	_key,88
	global	_ADC_INITIAL
psect	text636,local,class=CODE,delta=2
global __ptext636
__ptext636:

;; *************** function _ADC_INITIAL *****************
;; Defined at:
;;		line 627 in file "CC_INT.C"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, status,2
;; Tracked objects:
;;		On entry : 17F/2
;;		On exit  : 1F/1
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5   BANK6   BANK7   BANK8   BANK9  BANK10  BANK11  BANK12
;;      Params:         0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Locals:         0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Temps:          0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Totals:         0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;Total ram usage:        0 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text636
	file	"CC_INT.C"
	line	627
	global	__size_of_ADC_INITIAL
	__size_of_ADC_INITIAL	equ	__end_of_ADC_INITIAL-_ADC_INITIAL
	
_ADC_INITIAL:	
	opt	stack 14
; Regs used in _ADC_INITIAL: [wreg+status,2]
	line	629
	
l16503:	
;CC_INT.C: 629: ANSELA = 0B00000011;
	movlw	(03h)
	movlb 3	; select bank3
	movwf	(407)^0180h	;volatile
	line	631
;CC_INT.C: 631: ADCON1 = 0B10010100;
	movlw	(094h)
	movlb 1	; select bank1
	movwf	(158)^080h	;volatile
	line	658
	
l16505:	
;CC_INT.C: 658: ADCON0 = 0B00000000;
	clrf	(157)^080h	;volatile
	line	690
	
l16507:	
;CC_INT.C: 690: ADCON2 = 0B01000000;
	movlw	(040h)
	movwf	(159)^080h	;volatile
	line	718
;CC_INT.C: 718: ADCON3 = 0B00000000;
	movlb 8	; select bank8
	clrf	(1050)^0400h	;volatile
	line	745
;CC_INT.C: 745: ADDLY = 0B00000000;
	movlb 0	; select bank0
	clrf	(31)	;volatile
	line	750
;CC_INT.C: 750: ADCMPH = 0B00000000;
	movlb 8	; select bank8
	clrf	(1051)^0400h	;volatile
	line	753
	
l16509:	
;CC_INT.C: 753: ADCAL=1;
	movlb 1	; select bank1
	bsf	(1259/8)^080h,(1259)&7
	line	754
	
l16511:	
;CC_INT.C: 754: _nop();
	nop
	line	755
;CC_INT.C: 755: while(ADCAL);
	
l7699:	
	movlb 1	; select bank1
	btfsc	(1259/8)^080h,(1259)&7
	goto	u1891
	goto	u1890
u1891:
	goto	l7699
u1890:
	
l7701:	
	line	757
;CC_INT.C: 757: ADON=1;
	bsf	(1256/8)^080h,(1256)&7
	line	758
	
l7702:	
	return
	opt stack 0
GLOBAL	__end_of_ADC_INITIAL
	__end_of_ADC_INITIAL:
;; =============== function _ADC_INITIAL ends ============

	signat	_ADC_INITIAL,88
	global	___lmul
psect	text637,local,class=CODE,delta=2
global __ptext637
__ptext637:

;; *************** function ___lmul *****************
;; Defined at:
;;		line 3 in file "c:\program files (x86)\fmd\fmdide\data\sources\lmul.c"
;; Parameters:    Size  Location     Type
;;  multiplier      4    0[COMMON] unsigned long 
;;  multiplicand    4    4[COMMON] unsigned long 
;; Auto vars:     Size  Location     Type
;;  product         4    8[COMMON] unsigned long 
;; Return value:  Size  Location     Type
;;                  4    0[COMMON] unsigned long 
;; Registers used:
;;		wreg, status,2, status,0
;; Tracked objects:
;;		On entry : 1F/0
;;		On exit  : 1F/0
;;		Unchanged: FFFE0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5   BANK6   BANK7   BANK8   BANK9  BANK10  BANK11  BANK12
;;      Params:         8       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Locals:         4       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Temps:          0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Totals:        12       0       0       0       0       0       0       0       0       0       0       0       0       0
;;Total ram usage:       12 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_appbt
;;		_app10
;; This function uses a non-reentrant model
;;
psect	text637
	file	"c:\program files (x86)\fmd\fmdide\data\sources\lmul.c"
	line	3
	global	__size_of___lmul
	__size_of___lmul	equ	__end_of___lmul-___lmul
	
___lmul:	
	opt	stack 11
; Regs used in ___lmul: [wreg+status,2+status,0]
	line	4
	
l16491:	
	clrf	(___lmul@product)
	clrf	(___lmul@product+1)
	clrf	(___lmul@product+2)
	clrf	(___lmul@product+3)
	line	6
	
l14722:	
	line	7
	btfss	(___lmul@multiplier),(0)&7
	goto	u1871
	goto	u1870
u1871:
	goto	l16495
u1870:
	line	8
	
l16493:	
	movf	(___lmul@multiplicand),w
	addwf	(___lmul@product),f
	movf	(___lmul@multiplicand+1),w
	addwfc	(___lmul@product+1),f
	movf	(___lmul@multiplicand+2),w
	addwfc	(___lmul@product+2),f
	movf	(___lmul@multiplicand+3),w
	addwfc	(___lmul@product+3),f
	line	9
	
l16495:	
	lslf	(___lmul@multiplicand),f
	rlf	(___lmul@multiplicand+1),f
	rlf	(___lmul@multiplicand+2),f
	rlf	(___lmul@multiplicand+3),f
	line	10
	
l16497:	
	lsrf	(___lmul@multiplier+3),f
	rrf	(___lmul@multiplier+2),f
	rrf	(___lmul@multiplier+1),f
	rrf	(___lmul@multiplier),f
	line	11
	movf	(___lmul@multiplier+3),w
	iorwf	(___lmul@multiplier+2),w
	iorwf	(___lmul@multiplier+1),w
	iorwf	(___lmul@multiplier),w
	skipz
	goto	u1881
	goto	u1880
u1881:
	goto	l14722
u1880:
	line	12
	
l16499:	
	movf	(___lmul@product+3),w
	movwf	(?___lmul+3)
	movf	(___lmul@product+2),w
	movwf	(?___lmul+2)
	movf	(___lmul@product+1),w
	movwf	(?___lmul+1)
	movf	(___lmul@product),w
	movwf	(?___lmul)

	line	13
	
l14725:	
	return
	opt stack 0
GLOBAL	__end_of___lmul
	__end_of___lmul:
;; =============== function ___lmul ends ============

	signat	___lmul,8316
	global	___wmul
psect	text638,local,class=CODE,delta=2
global __ptext638
__ptext638:

;; *************** function ___wmul *****************
;; Defined at:
;;		line 3 in file "c:\program files (x86)\fmd\fmdide\data\sources\wmul.c"
;; Parameters:    Size  Location     Type
;;  multiplier      2    0[COMMON] unsigned int 
;;  multiplicand    2    2[COMMON] unsigned int 
;; Auto vars:     Size  Location     Type
;;  product         2    4[COMMON] unsigned int 
;; Return value:  Size  Location     Type
;;                  2    0[COMMON] unsigned int 
;; Registers used:
;;		wreg, status,2, status,0
;; Tracked objects:
;;		On entry : 1F/0
;;		On exit  : 1F/0
;;		Unchanged: FFFE0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5   BANK6   BANK7   BANK8   BANK9  BANK10  BANK11  BANK12
;;      Params:         4       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Locals:         2       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Temps:          0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Totals:         6       0       0       0       0       0       0       0       0       0       0       0       0       0
;;Total ram usage:        6 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_app10
;; This function uses a non-reentrant model
;;
psect	text638
	file	"c:\program files (x86)\fmd\fmdide\data\sources\wmul.c"
	line	3
	global	__size_of___wmul
	__size_of___wmul	equ	__end_of___wmul-___wmul
	
___wmul:	
	opt	stack 11
; Regs used in ___wmul: [wreg+status,2+status,0]
	line	4
	
l16475:	
	clrf	(___wmul@product)
	clrf	(___wmul@product+1)
	line	7
	
l16477:	
	btfss	(___wmul@multiplier),(0)&7
	goto	u1851
	goto	u1850
u1851:
	goto	l16481
u1850:
	line	8
	
l16479:	
	movf	(___wmul@multiplicand),w
	addwf	(___wmul@product),f
	movf	(___wmul@multiplicand+1),w
	addwfc	(___wmul@product+1),f
	line	9
	
l16481:	
	lslf	(___wmul@multiplicand),f
	rlf	(___wmul@multiplicand+1),f
	line	10
	
l16483:	
	lsrf	(___wmul@multiplier+1),f
	rrf	(___wmul@multiplier),f
	line	11
	
l16485:	
	movf	((___wmul@multiplier+1)),w
	iorwf	((___wmul@multiplier)),w
	skipz
	goto	u1861
	goto	u1860
u1861:
	goto	l16477
u1860:
	line	12
	
l16487:	
	movf	(___wmul@product+1),w
	movwf	(?___wmul+1)
	movf	(___wmul@product),w
	movwf	(?___wmul)
	line	13
	
l14650:	
	return
	opt stack 0
GLOBAL	__end_of___wmul
	__end_of___wmul:
;; =============== function ___wmul ends ============

	signat	___wmul,8314
	global	_app40
psect	text639,local,class=CODE,delta=2
global __ptext639
__ptext639:

;; *************** function _app40 *****************
;; Defined at:
;;		line 342 in file "CC_APP.C"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, status,2, status,0
;; Tracked objects:
;;		On entry : 1F/0
;;		On exit  : 0/0
;;		Unchanged: FFE00/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5   BANK6   BANK7   BANK8   BANK9  BANK10  BANK11  BANK12
;;      Params:         0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Locals:         0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Temps:          0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Totals:         0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;Total ram usage:        0 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_app
;; This function uses a non-reentrant model
;;
psect	text639
	file	"CC_APP.C"
	line	342
	global	__size_of_app40
	__size_of_app40	equ	__end_of_app40-_app40
	
_app40:	
	opt	stack 13
; Regs used in _app40: [wreg+status,2+status,0]
	line	343
	
l16433:	
;CC_APP.C: 343: if(f_on==0)
	btfsc	(_f_on/8),(_f_on)&7
	goto	u1831
	goto	u1830
u1831:
	goto	l12965
u1830:
	line	345
	
l16435:	
;CC_APP.C: 344: {
;CC_APP.C: 345: r_buzzer ++;
	incf	(_r_buzzer),f	;volatile
	skipnz
	incf	(_r_buzzer+1),f	;volatile
	line	346
	
l16437:	
;CC_APP.C: 346: if(r_buzzer >200)
	movlw	high(0C9h)
	subwf	(_r_buzzer+1),w	;volatile
	movlw	low(0C9h)
	skipnz
	subwf	(_r_buzzer),w	;volatile
	skipc
	goto	u1841
	goto	u1840
u1841:
	goto	l12963
u1840:
	line	348
	
l16439:	
;CC_APP.C: 347: {
;CC_APP.C: 348: LATD4 =0;
	movlb 2	; select bank2
	bcf	(2172/8)^0100h,(2172)&7
	line	349
	
l16441:	
;CC_APP.C: 349: r_buzzer = 0;
	movlb 0	; select bank0
	clrf	(_r_buzzer)	;volatile
	clrf	(_r_buzzer+1)	;volatile
	line	350
	
l16443:	
;CC_APP.C: 350: f_buz =0;
	bcf	(_f_buz/8),(_f_buz)&7
	line	351
	
l16445:	
;CC_APP.C: 351: LATA7 =0;
	movlb 2	; select bank2
	bcf	(2151/8)^0100h,(2151)&7
	line	352
;CC_APP.C: 352: INTCON = 0B00000000;
	clrf	(11)	;volatile
	line	353
;CC_APP.C: 353: ANSELA = 0B00000000;
	movlb 3	; select bank3
	clrf	(407)^0180h	;volatile
	line	354
	
l16447:	
;CC_APP.C: 354: T2CEN =0;
	movlb 6	; select bank6
	bcf	(6240/8)^0300h,(6240)&7
	line	355
;CC_APP.C: 355: TIM2CCER1 =0B00000000;
	clrf	(788)^0300h	;volatile
	line	356
	
l16449:	
;CC_APP.C: 356: T1CEN =0;
	movlb 4	; select bank4
	bcf	(4232/8)^0200h,(4232)&7
	line	357
;CC_APP.C: 357: TIM1CCER1 =0B00000000;
	clrf	(541)^0200h	;volatile
	line	358
	
l16451:	
;CC_APP.C: 358: f_on =0;
	movlb 0	; select bank0
	bcf	(_f_on/8),(_f_on)&7
	line	359
	
l16453:	
;CC_APP.C: 359: PA5=0;
	bcf	(101/8),(101)&7
	line	360
	
l16455:	
;CC_APP.C: 360: PA6 =0;
	bcf	(102/8),(102)&7
	line	361
	
l16457:	
;CC_APP.C: 361: PC0 = 0;
	bcf	(112/8),(112)&7
	line	362
	
l16459:	
;CC_APP.C: 362: PA1 =0;
	bcf	(97/8),(97)&7
	line	363
	
l16461:	
;CC_APP.C: 363: PA0 =0;
	bcf	(96/8),(96)&7
	line	364
	
l16463:	
;CC_APP.C: 364: LATB1 =0;
	movlb 2	; select bank2
	bcf	(2153/8)^0100h,(2153)&7
	line	365
	
l16465:	
;CC_APP.C: 365: LATD3 =0;
	bcf	(2171/8)^0100h,(2171)&7
	line	366
	
l16467:	
;CC_APP.C: 366: LATD2 =0;
	bcf	(2170/8)^0100h,(2170)&7
	line	367
	
l16469:	
;CC_APP.C: 367: LATD1 =0;
	bcf	(2169/8)^0100h,(2169)&7
	line	368
	
l16471:	
;CC_APP.C: 368: LATD5 =0;
	bcf	(2173/8)^0100h,(2173)&7
	line	370
	
l16473:	
# 370 "CC_APP.C"
sleep ;#
psect	text639
	line	371
;CC_APP.C: 371: }
	goto	l12965
	line	372
	
l12963:	
	line	374
;CC_APP.C: 372: else
;CC_APP.C: 373: {
;CC_APP.C: 374: f_buz =1;
	bsf	(_f_buz/8),(_f_buz)&7
	line	377
	
l12965:	
	return
	opt stack 0
GLOBAL	__end_of_app40
	__end_of_app40:
;; =============== function _app40 ends ============

	signat	_app40,88
	global	_readmode
psect	text640,local,class=CODE,delta=2
global __ptext640
__ptext640:

;; *************** function _readmode *****************
;; Defined at:
;;		line 83 in file "CC_KEY.C"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, status,2, status,0
;; Tracked objects:
;;		On entry : 1F/0
;;		On exit  : 1F/0
;;		Unchanged: FFFE0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5   BANK6   BANK7   BANK8   BANK9  BANK10  BANK11  BANK12
;;      Params:         0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Locals:         1       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Temps:          0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Totals:         1       0       0       0       0       0       0       0       0       0       0       0       0       0
;;Total ram usage:        1 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_key
;; This function uses a non-reentrant model
;;
psect	text640
	file	"CC_KEY.C"
	line	83
	global	__size_of_readmode
	__size_of_readmode	equ	__end_of_readmode-_readmode
	
_readmode:	
	opt	stack 13
; Regs used in _readmode: [wreg+status,2+status,0]
	line	84
	
l16383:	
;CC_KEY.C: 84: if(r_keyst != r_keycvt)
	movf	(_r_keyst),w	;volatile
	xorwf	(_r_keycvt),w	;volatile
	skipnz
	goto	u1711
	goto	u1710
u1711:
	goto	l10313
u1710:
	line	86
	
l16385:	
;CC_KEY.C: 85: {
;CC_KEY.C: 86: r_key++;
	incf	(_r_key),f	;volatile
	line	87
	
l16387:	
;CC_KEY.C: 87: if(r_key >10)
	movlw	(0Bh)
	subwf	(_r_key),w	;volatile
	skipc
	goto	u1721
	goto	u1720
u1721:
	goto	l10313
u1720:
	line	89
	
l16389:	
;CC_KEY.C: 88: {
;CC_KEY.C: 89: r_key =0;
	clrf	(_r_key)	;volatile
	line	90
	
l16391:	
;CC_KEY.C: 90: r_keycvt = r_keyst;
	movf	(_r_keyst),w	;volatile
	movwf	(_r_keycvt)	;volatile
	line	91
	
l16393:	
;CC_KEY.C: 91: f_hh =0;
	bcf	(_f_hh/8),(_f_hh)&7
	line	93
	
l16395:	
;CC_KEY.C: 93: if(r_keycvt & 0x01)
	btfss	(_r_keycvt),(0)&7
	goto	u1731
	goto	u1730
u1731:
	goto	l10292
u1730:
	line	95
	
l16397:	
;CC_KEY.C: 94: {
;CC_KEY.C: 95: r_ontime =150;
	movlw	096h
	movwf	(_r_ontime)	;volatile
	clrf	(_r_ontime+1)	;volatile
	line	96
;CC_KEY.C: 96: }
	goto	l16407
	line	97
	
l10292:	
;CC_KEY.C: 97: else if(r_keycvt & 0x02)
	btfss	(_r_keycvt),(1)&7
	goto	u1741
	goto	u1740
u1741:
	goto	l10294
u1740:
	line	99
	
l16399:	
;CC_KEY.C: 98: {
;CC_KEY.C: 99: r_ontime =300;
	movlw	low(012Ch)
	movwf	(_r_ontime)	;volatile
	movlw	high(012Ch)
	movwf	((_r_ontime))+1	;volatile
	line	100
;CC_KEY.C: 100: }
	goto	l16407
	line	101
	
l10294:	
;CC_KEY.C: 101: else if(r_keycvt & 0x04)
	btfss	(_r_keycvt),(2)&7
	goto	u1751
	goto	u1750
u1751:
	goto	l10296
u1750:
	line	103
	
l16401:	
;CC_KEY.C: 102: {
;CC_KEY.C: 103: r_ontime =600;
	movlw	low(0258h)
	movwf	(_r_ontime)	;volatile
	movlw	high(0258h)
	movwf	((_r_ontime))+1	;volatile
	line	104
;CC_KEY.C: 104: }
	goto	l16407
	line	105
	
l10296:	
;CC_KEY.C: 105: else if(r_keycvt & 0x08)
	btfss	(_r_keycvt),(3)&7
	goto	u1761
	goto	u1760
u1761:
	goto	l10298
u1760:
	line	107
	
l16403:	
;CC_KEY.C: 106: {
;CC_KEY.C: 107: r_ontime =1200;
	movlw	low(04B0h)
	movwf	(_r_ontime)	;volatile
	movlw	high(04B0h)
	movwf	((_r_ontime))+1	;volatile
	line	109
;CC_KEY.C: 109: }
	goto	l16407
	line	110
	
l10298:	
;CC_KEY.C: 110: else if(r_keycvt & 0x10)
	btfss	(_r_keycvt),(4)&7
	goto	u1771
	goto	u1770
u1771:
	goto	l10299
u1770:
	line	112
	
l16405:	
;CC_KEY.C: 111: {
;CC_KEY.C: 112: r_ontime =3600;
	movlw	low(0E10h)
	movwf	(_r_ontime)	;volatile
	movlw	high(0E10h)
	movwf	((_r_ontime))+1	;volatile
	line	113
;CC_KEY.C: 113: }
	goto	l16407
	line	118
	
l10299:	
	
l16407:	
;CC_KEY.C: 117: }
;CC_KEY.C: 118: r_keycvt = r_keyst;
	movf	(_r_keyst),w	;volatile
	movwf	(_r_keycvt)	;volatile
	line	119
	
l16409:	
;CC_KEY.C: 119: r_keycvt = r_keycvt &&0xC0;
	clrf	(_readmode$12662)
	
l16411:	
	movf	(_r_keycvt),w	;volatile
	skipz
	goto	u1780
	goto	l16415
u1780:
	
l16413:	
	clrf	(_readmode$12662)
	incf	(_readmode$12662),f
	
l16415:	
	movf	(_readmode$12662),w
	movwf	(_r_keycvt)	;volatile
	line	120
;CC_KEY.C: 120: if(r_keycvt== 0x80)
	movf	(_r_keycvt),w	;volatile
	xorlw	080h&0ffh
	skipz
	goto	u1791
	goto	u1790
u1791:
	goto	l16419
u1790:
	line	122
	
l16417:	
;CC_KEY.C: 121: {
;CC_KEY.C: 122: f_4ma =1;
	bsf	(_f_4ma/8),(_f_4ma)&7
	line	123
;CC_KEY.C: 123: f_3ma =0;
	bcf	(_f_3ma/8),(_f_3ma)&7
	line	124
;CC_KEY.C: 124: f_2ma =0;
	bcf	(_f_2ma/8),(_f_2ma)&7
	line	125
;CC_KEY.C: 125: f_1ma =0;
	bcf	(_f_1ma/8),(_f_1ma)&7
	line	126
;CC_KEY.C: 126: }
	goto	l16431
	line	127
	
l16419:	
;CC_KEY.C: 127: else if(r_keycvt== 0x40)
	movf	(_r_keycvt),w	;volatile
	xorlw	040h&0ffh
	skipz
	goto	u1801
	goto	u1800
u1801:
	goto	l16423
u1800:
	line	129
	
l16421:	
;CC_KEY.C: 128: {
;CC_KEY.C: 129: f_4ma =0;
	bcf	(_f_4ma/8),(_f_4ma)&7
	line	130
;CC_KEY.C: 130: f_3ma =1;
	bsf	(_f_3ma/8),(_f_3ma)&7
	line	131
;CC_KEY.C: 131: f_2ma =0;
	bcf	(_f_2ma/8),(_f_2ma)&7
	line	132
;CC_KEY.C: 132: f_1ma =0;
	bcf	(_f_1ma/8),(_f_1ma)&7
	line	133
;CC_KEY.C: 133: }
	goto	l16431
	line	134
	
l16423:	
;CC_KEY.C: 134: else if(r_keycvt== 0x00)
	movf	(_r_keycvt),f
	skipz	;volatile
	goto	u1811
	goto	u1810
u1811:
	goto	l16427
u1810:
	line	136
	
l16425:	
;CC_KEY.C: 135: {
;CC_KEY.C: 136: f_4ma =0;
	bcf	(_f_4ma/8),(_f_4ma)&7
	line	137
;CC_KEY.C: 137: f_3ma =0;
	bcf	(_f_3ma/8),(_f_3ma)&7
	line	138
;CC_KEY.C: 138: f_2ma =1;
	bsf	(_f_2ma/8),(_f_2ma)&7
	line	139
;CC_KEY.C: 139: f_1ma =0;
	bcf	(_f_1ma/8),(_f_1ma)&7
	line	140
;CC_KEY.C: 140: }
	goto	l16431
	line	141
	
l16427:	
;CC_KEY.C: 141: else if(r_keycvt== 0xC0)
	movf	(_r_keycvt),w	;volatile
	xorlw	0C0h&0ffh
	skipz
	goto	u1821
	goto	u1820
u1821:
	goto	l10308
u1820:
	line	143
	
l16429:	
;CC_KEY.C: 142: {
;CC_KEY.C: 143: f_4ma =0;
	bcf	(_f_4ma/8),(_f_4ma)&7
	line	144
;CC_KEY.C: 144: f_3ma =0;
	bcf	(_f_3ma/8),(_f_3ma)&7
	line	145
;CC_KEY.C: 145: f_2ma =0;
	bcf	(_f_2ma/8),(_f_2ma)&7
	line	146
;CC_KEY.C: 146: f_1ma =1;
	bsf	(_f_1ma/8),(_f_1ma)&7
	goto	l16431
	line	148
	
l10308:	
	
l16431:	
;CC_KEY.C: 147: }
;CC_KEY.C: 148: r_keycvt = r_keyst;
	movf	(_r_keyst),w	;volatile
	movwf	(_r_keycvt)	;volatile
	line	155
	
l10313:	
	return
	opt stack 0
GLOBAL	__end_of_readmode
	__end_of_readmode:
;; =============== function _readmode ends ============

	signat	_readmode,88
	global	_readkey
psect	text641,local,class=CODE,delta=2
global __ptext641
__ptext641:

;; *************** function _readkey *****************
;; Defined at:
;;		line 45 in file "CC_KEY.C"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, status,2, status,0
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 1F/0
;;		Unchanged: FFFE0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5   BANK6   BANK7   BANK8   BANK9  BANK10  BANK11  BANK12
;;      Params:         0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Locals:         0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Temps:          0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Totals:         0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;Total ram usage:        0 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_key
;; This function uses a non-reentrant model
;;
psect	text641
	file	"CC_KEY.C"
	line	45
	global	__size_of_readkey
	__size_of_readkey	equ	__end_of_readkey-_readkey
	
_readkey:	
	opt	stack 13
; Regs used in _readkey: [wreg+status,2+status,0]
	line	46
	
l16347:	
;CC_KEY.C: 46: r_keyst =0;
	movlb 0	; select bank0
	clrf	(_r_keyst)	;volatile
	line	47
	
l16349:	
;CC_KEY.C: 47: if(PC5 == 0)
	btfsc	(117/8),(117)&7
	goto	u1631
	goto	u1630
u1631:
	goto	l16353
u1630:
	line	49
	
l16351:	
;CC_KEY.C: 48: {
;CC_KEY.C: 49: r_keyst = r_keyst ^ 0x01;
	movlw	(01h)
	xorwf	(_r_keyst),f	;volatile
	line	51
	
l16353:	
;CC_KEY.C: 50: }
;CC_KEY.C: 51: if(PC4 == 0)
	btfsc	(116/8),(116)&7
	goto	u1641
	goto	u1640
u1641:
	goto	l16357
u1640:
	line	53
	
l16355:	
;CC_KEY.C: 52: {
;CC_KEY.C: 53: r_keyst = r_keyst ^ 0x02;
	movlw	(02h)
	xorwf	(_r_keyst),f	;volatile
	line	55
	
l16357:	
;CC_KEY.C: 54: }
;CC_KEY.C: 55: if(PB2 == 0)
	btfsc	(106/8),(106)&7
	goto	u1651
	goto	u1650
u1651:
	goto	l16361
u1650:
	line	57
	
l16359:	
;CC_KEY.C: 56: {
;CC_KEY.C: 57: r_keyst = r_keyst ^ 0x04;
	movlw	(04h)
	xorwf	(_r_keyst),f	;volatile
	line	59
	
l16361:	
;CC_KEY.C: 58: }
;CC_KEY.C: 59: if(PB3 == 0)
	btfsc	(107/8),(107)&7
	goto	u1661
	goto	u1660
u1661:
	goto	l16365
u1660:
	line	61
	
l16363:	
;CC_KEY.C: 60: {
;CC_KEY.C: 61: r_keyst = r_keyst ^ 0x08;
	movlw	(08h)
	xorwf	(_r_keyst),f	;volatile
	line	63
	
l16365:	
;CC_KEY.C: 62: }
;CC_KEY.C: 63: if(PC3 == 0)
	btfsc	(115/8),(115)&7
	goto	u1671
	goto	u1670
u1671:
	goto	l16369
u1670:
	line	65
	
l16367:	
;CC_KEY.C: 64: {
;CC_KEY.C: 65: r_keyst = r_keyst ^ 0x10;
	movlw	(010h)
	xorwf	(_r_keyst),f	;volatile
	line	67
	
l16369:	
;CC_KEY.C: 66: }
;CC_KEY.C: 67: if(PB4 == 0)
	btfsc	(108/8),(108)&7
	goto	u1681
	goto	u1680
u1681:
	goto	l16373
u1680:
	line	69
	
l16371:	
;CC_KEY.C: 68: {
;CC_KEY.C: 69: r_keyst = r_keyst ^ 0x20;
	movlw	(020h)
	xorwf	(_r_keyst),f	;volatile
	line	71
	
l16373:	
;CC_KEY.C: 70: }
;CC_KEY.C: 71: if(PC7 == 0)
	btfsc	(119/8),(119)&7
	goto	u1691
	goto	u1690
u1691:
	goto	l16377
u1690:
	line	73
	
l16375:	
;CC_KEY.C: 72: {
;CC_KEY.C: 73: r_keyst = r_keyst ^ 0x40;
	movlw	(040h)
	xorwf	(_r_keyst),f	;volatile
	line	75
	
l16377:	
;CC_KEY.C: 74: }
;CC_KEY.C: 75: if(PC6 == 0)
	btfsc	(118/8),(118)&7
	goto	u1701
	goto	u1700
u1701:
	goto	l16381
u1700:
	line	77
	
l16379:	
;CC_KEY.C: 76: {
;CC_KEY.C: 77: r_keyst = r_keyst ^ 0x80;
	movlw	(080h)
	xorwf	(_r_keyst),f	;volatile
	line	79
	
l16381:	
;CC_KEY.C: 78: }
;CC_KEY.C: 79: r_test =1;
	clrf	(_r_test)	;volatile
	incf	(_r_test),f	;volatile
	line	80
	
l10287:	
	return
	opt stack 0
GLOBAL	__end_of_readkey
	__end_of_readkey:
;; =============== function _readkey ends ============

	signat	_readkey,88
	global	_Time4Initial
psect	text642,local,class=CODE,delta=2
global __ptext642
__ptext642:

;; *************** function _Time4Initial *****************
;; Defined at:
;;		line 779 in file "CC_INT.C"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, status,2, status,0
;; Tracked objects:
;;		On entry : 17F/5
;;		On exit  : 17F/2
;;		Unchanged: FFE80/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5   BANK6   BANK7   BANK8   BANK9  BANK10  BANK11  BANK12
;;      Params:         0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Locals:         0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Temps:          0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Totals:         0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;Total ram usage:        0 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text642
	file	"CC_INT.C"
	line	779
	global	__size_of_Time4Initial
	__size_of_Time4Initial	equ	__end_of_Time4Initial-_Time4Initial
	
_Time4Initial:	
	opt	stack 14
; Regs used in _Time4Initial: [wreg+status,2+status,0]
	line	780
	
l16307:	
;CC_INT.C: 780: PCKEN |=0B00001000;
	movlb 1	; select bank1
	bsf	(154)^080h+(3/8),(3)&7	;volatile
	line	784
	
l16309:	
;CC_INT.C: 784: TIM4CR1 =0B00000101;
	movlw	(05h)
	movlb 2	; select bank2
	movwf	(273)^0100h	;volatile
	line	815
;CC_INT.C: 815: TIM4IER =0B00000001;
	movlw	(01h)
	movwf	(274)^0100h	;volatile
	line	818
	
l16311:	
;CC_INT.C: 818: TIM4SR =0B00000000;
	clrf	(275)^0100h	;volatile
	line	827
	
l16313:	
;CC_INT.C: 827: TIM4EGR =0B00000000;
	clrf	(276)^0100h	;volatile
	line	832
	
l16315:	
;CC_INT.C: 832: TIM4CNTR=0;
	clrf	(277)^0100h	;volatile
	line	834
	
l16317:	
;CC_INT.C: 834: TIM4PSCR=0B00000100;
	movlw	(04h)
	movwf	(278)^0100h	;volatile
	line	839
	
l16319:	
;CC_INT.C: 839: TIM4ARR =32;
	movlw	(020h)
	movwf	(279)^0100h	;volatile
	line	843
	
l16321:	
;CC_INT.C: 843: INTCON |= 0B11000000;
	movlw	(0C0h)
	iorwf	(11),f	;volatile
	line	844
	
l7708:	
	return
	opt stack 0
GLOBAL	__end_of_Time4Initial
	__end_of_Time4Initial:
;; =============== function _Time4Initial ends ============

	signat	_Time4Initial,88
	global	_Time2Initial
psect	text643,local,class=CODE,delta=2
global __ptext643
__ptext643:

;; *************** function _Time2Initial *****************
;; Defined at:
;;		line 392 in file "CC_INT.C"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, status,2
;; Tracked objects:
;;		On entry : 17F/3
;;		On exit  : 17F/5
;;		Unchanged: FFE80/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5   BANK6   BANK7   BANK8   BANK9  BANK10  BANK11  BANK12
;;      Params:         0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Locals:         0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Temps:          0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Totals:         0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;Total ram usage:        0 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text643
	file	"CC_INT.C"
	line	392
	global	__size_of_Time2Initial
	__size_of_Time2Initial	equ	__end_of_Time2Initial-_Time2Initial
	
_Time2Initial:	
	opt	stack 14
; Regs used in _Time2Initial: [wreg+status,2]
	line	393
	
l16269:	
;CC_INT.C: 393: PCKEN |=0B00000100;
	movlb 1	; select bank1
	bsf	(154)^080h+(2/8),(2)&7	;volatile
	line	394
	
l16271:	
;CC_INT.C: 394: CKOCON=0B00100000;
	movlw	(020h)
	movwf	(149)^080h	;volatile
	line	395
;CC_INT.C: 395: TCKSRC=0B00110000;
	movlw	(030h)
	movlb 6	; select bank6
	movwf	(799)^0300h	;volatile
	line	420
;CC_INT.C: 420: TIM2CR1 =0B10000101;
	movlw	(085h)
	movwf	(780)^0300h	;volatile
	line	453
	
l16273:	
;CC_INT.C: 453: TIM2IER =0B00000000;
	clrf	(781)^0300h	;volatile
	line	479
	
l16275:	
;CC_INT.C: 479: TIM2SR1 =0B00000000;
	clrf	(782)^0300h	;volatile
	line	511
	
l16277:	
;CC_INT.C: 511: TIM2SR2 =0B00000000;
	clrf	(783)^0300h	;volatile
	line	513
	
l16279:	
;CC_INT.C: 513: TIM2EGR =0B00000000;
	clrf	(784)^0300h	;volatile
	line	542
;CC_INT.C: 542: TIM2CCMR1 =0B01101000;
	movlw	(068h)
	movwf	(785)^0300h	;volatile
	line	577
	
l16281:	
;CC_INT.C: 577: TIM2CCMR2 =0B00000000;;
	clrf	(786)^0300h	;volatile
	line	579
	
l16283:	
;CC_INT.C: 579: TIM2CCMR3 =0B00000000;
	clrf	(787)^0300h	;volatile
	line	581
;CC_INT.C: 581: TIM2CCER1 =0B00110011;
	movlw	(033h)
	movwf	(788)^0300h	;volatile
	line	606
	
l16285:	
;CC_INT.C: 606: TIM2CCER2 =0B00000000;
	clrf	(789)^0300h	;volatile
	line	608
	
l16287:	
;CC_INT.C: 608: TIM2CNTRH =0B00000000;
	clrf	(790)^0300h	;volatile
	line	609
	
l16289:	
;CC_INT.C: 609: TIM2CNTRL =0B00000000;
	clrf	(791)^0300h	;volatile
	line	612
	
l16291:	
;CC_INT.C: 612: TIM2ARRH =0x08;
	movlw	(08h)
	movwf	(793)^0300h	;volatile
	line	613
	
l16293:	
;CC_INT.C: 613: TIM2ARRL =0x32;
	movlw	(032h)
	movwf	(794)^0300h	;volatile
	line	616
	
l16295:	
;CC_INT.C: 616: TIM2CCR1H =0x04;
	movlw	(04h)
	movwf	(795)^0300h	;volatile
	line	617
	
l16297:	
;CC_INT.C: 617: TIM2CCR1L =0x19;
	movlw	(019h)
	movwf	(796)^0300h	;volatile
	line	619
	
l16299:	
;CC_INT.C: 619: TIM2CCR2H =0x04;
	movlw	(04h)
	movwf	(797)^0300h	;volatile
	line	620
	
l16301:	
;CC_INT.C: 620: TIM2CCR2L =0x19;
	movlw	(019h)
	movwf	(798)^0300h	;volatile
	line	622
	
l16303:	
;CC_INT.C: 622: TIM2CCR3H =0B00000000;
	movlb 5	; select bank5
	clrf	(670)^0280h	;volatile
	line	623
	
l16305:	
;CC_INT.C: 623: TIM2CCR3L =0B00000000;
	clrf	(671)^0280h	;volatile
	line	624
	
l7696:	
	return
	opt stack 0
GLOBAL	__end_of_Time2Initial
	__end_of_Time2Initial:
;; =============== function _Time2Initial ends ============

	signat	_Time2Initial,88
	global	_TIMER0_INITIAL
psect	text644,local,class=CODE,delta=2
global __ptext644
__ptext644:

;; *************** function _TIMER0_INITIAL *****************
;; Defined at:
;;		line 768 in file "CC_INT.C"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		None
;; Tracked objects:
;;		On entry : 17F/3
;;		On exit  : 17F/3
;;		Unchanged: FFFFFE80/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5   BANK6   BANK7   BANK8   BANK9  BANK10  BANK11  BANK12
;;      Params:         0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Locals:         0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Temps:          0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Totals:         0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;Total ram usage:        0 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text644
	file	"CC_INT.C"
	line	768
	global	__size_of_TIMER0_INITIAL
	__size_of_TIMER0_INITIAL	equ	__end_of_TIMER0_INITIAL-_TIMER0_INITIAL
	
_TIMER0_INITIAL:	
	opt	stack 14
; Regs used in _TIMER0_INITIAL: []
	line	770
	
l7705:	
	return
	opt stack 0
GLOBAL	__end_of_TIMER0_INITIAL
	__end_of_TIMER0_INITIAL:
;; =============== function _TIMER0_INITIAL ends ============

	signat	_TIMER0_INITIAL,88
	global	_POWER_INITIAL
psect	text645,local,class=CODE,delta=2
global __ptext645
__ptext645:

;; *************** function _POWER_INITIAL *****************
;; Defined at:
;;		line 17 in file "CC_INT.C"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, status,2
;; Tracked objects:
;;		On entry : 17F/0
;;		On exit  : 17F/3
;;		Unchanged: FFE80/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5   BANK6   BANK7   BANK8   BANK9  BANK10  BANK11  BANK12
;;      Params:         0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Locals:         0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Temps:          0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Totals:         0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;Total ram usage:        0 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text645
	file	"CC_INT.C"
	line	17
	global	__size_of_POWER_INITIAL
	__size_of_POWER_INITIAL	equ	__end_of_POWER_INITIAL-_POWER_INITIAL
	
_POWER_INITIAL:	
	opt	stack 14
; Regs used in _POWER_INITIAL: [wreg+status,2]
	line	18
	
l16235:	
;CC_INT.C: 18: OSCCON = 0B01110001;
	movlw	(071h)
	movlb 1	; select bank1
	movwf	(153)^080h	;volatile
	line	25
	
l16237:	
;CC_INT.C: 25: INTCON = 0;
	clrf	(11)	;volatile
	line	26
	
l16239:	
;CC_INT.C: 26: PCKEN |=0B00000001;
	bsf	(154)^080h+(0/8),(0)&7	;volatile
	line	29
	
l16241:	
;CC_INT.C: 29: PORTA = 0B00000000;
	movlb 0	; select bank0
	clrf	(12)	;volatile
	line	30
	
l16243:	
;CC_INT.C: 30: TRISA = 0B00000000;
	movlb 1	; select bank1
	clrf	(140)^080h	;volatile
	line	31
	
l16245:	
;CC_INT.C: 31: PORTB = 0B00000000;
	movlb 0	; select bank0
	clrf	(13)	;volatile
	line	32
;CC_INT.C: 32: TRISB = 0B10011100;
	movlw	(09Ch)
	movlb 1	; select bank1
	movwf	(141)^080h	;volatile
	line	33
	
l16247:	
;CC_INT.C: 33: PORTC = 0B00000000;
	movlb 0	; select bank0
	clrf	(14)	;volatile
	line	34
	
l16249:	
;CC_INT.C: 34: TRISC = 0B11111010;
	movlw	(0FAh)
	movlb 1	; select bank1
	movwf	(142)^080h	;volatile
	line	35
;CC_INT.C: 35: PORTD = 0B00000000;
	movlb 0	; select bank0
	clrf	(15)	;volatile
	line	36
;CC_INT.C: 36: TRISD = 0B00000000;
	movlb 1	; select bank1
	clrf	(143)^080h	;volatile
	line	38
;CC_INT.C: 38: WPUA = 0B00000000;
	movlb 3	; select bank3
	clrf	(396)^0180h	;volatile
	line	39
	
l16251:	
;CC_INT.C: 39: WPUB = 0B00011100;
	movlw	(01Ch)
	movwf	(397)^0180h	;volatile
	line	40
	
l16253:	
;CC_INT.C: 40: WPUC = 0B11111000;
	movlw	(0F8h)
	movwf	(398)^0180h	;volatile
	line	41
;CC_INT.C: 41: WPUD = 0B00000000;
	clrf	(399)^0180h	;volatile
	line	43
;CC_INT.C: 43: WPDA = 0B00000000;
	movlb 4	; select bank4
	clrf	(524)^0200h	;volatile
	line	44
;CC_INT.C: 44: WPDB = 0B00000000;
	clrf	(525)^0200h	;volatile
	line	45
;CC_INT.C: 45: WPDC = 0B00000000;
	clrf	(526)^0200h	;volatile
	line	46
;CC_INT.C: 46: WPDD = 0B00000000;
	clrf	(527)^0200h	;volatile
	line	48
	
l16255:	
;CC_INT.C: 48: PSRC0 = 0B11111111;
	movlw	(0FFh)
	movlb 2	; select bank2
	movwf	(282)^0100h	;volatile
	line	52
	
l16257:	
;CC_INT.C: 52: PSRC1 = 0B11111111;
	movlw	(0FFh)
	movwf	(283)^0100h	;volatile
	line	56
	
l16259:	
;CC_INT.C: 56: PSINK0 = 0B11111111;
	movlw	(0FFh)
	movlb 3	; select bank3
	movwf	(410)^0180h	;volatile
	line	57
	
l16261:	
;CC_INT.C: 57: PSINK1 = 0B11111111;
	movlw	(0FFh)
	movwf	(411)^0180h	;volatile
	line	58
	
l16263:	
;CC_INT.C: 58: PSINK2 = 0B11111111;
	movlw	(0FFh)
	movwf	(412)^0180h	;volatile
	line	59
	
l16265:	
;CC_INT.C: 59: PSINK3 = 0B11111111;
	movlw	(0FFh)
	movwf	(413)^0180h	;volatile
	line	61
	
l16267:	
;CC_INT.C: 61: ANSELA = 0B00000011;
	movlw	(03h)
	movwf	(407)^0180h	;volatile
	line	62
	
l7690:	
	return
	opt stack 0
GLOBAL	__end_of_POWER_INITIAL
	__end_of_POWER_INITIAL:
;; =============== function _POWER_INITIAL ends ============

	signat	_POWER_INITIAL,88
	global	_ISR
psect	intentry,class=CODE,delta=2
global __pintentry
__pintentry:

;; *************** function _ISR *****************
;; Defined at:
;;		line 852 in file "CC_INT.C"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, status,2, status,0
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 1D/0
;;		Unchanged: FFFE0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5   BANK6   BANK7   BANK8   BANK9  BANK10  BANK11  BANK12
;;      Params:         0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Locals:         0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Temps:          0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Totals:         0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;Total ram usage:        0 bytes
;; Hardware stack levels used:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		Interrupt level 1
;; This function uses a non-reentrant model
;;
psect	intentry
	file	"CC_INT.C"
	line	852
	global	__size_of_ISR
	__size_of_ISR	equ	__end_of_ISR-_ISR
	
_ISR:	
	opt	stack 10
; Regs used in _ISR: [wreg+status,2+status,0]
psect	intentry
	pagesel	$
	line	854
	
i1l16323:	
;CC_INT.C: 854: if(T4UIE && T4UIF)
	movlb 2	; select bank2
	btfss	(2192/8)^0100h,(2192)&7
	goto	u157_21
	goto	u157_20
u157_21:
	goto	i1l7717
u157_20:
	
i1l16325:	
	btfss	(2200/8)^0100h,(2200)&7
	goto	u158_21
	goto	u158_20
u158_21:
	goto	i1l7717
u158_20:
	line	856
	
i1l16327:	
;CC_INT.C: 855: {
;CC_INT.C: 856: T4UIF = 1;
	bsf	(2200/8)^0100h,(2200)&7
	line	857
	
i1l16329:	
;CC_INT.C: 857: r_1ms ++;
	movlb 0	; select bank0
	incf	(_r_1ms),f	;volatile
	line	858
	
i1l16331:	
;CC_INT.C: 858: if(r_1ms >29)
	movlw	(01Eh)
	subwf	(_r_1ms),w	;volatile
	skipc
	goto	u159_21
	goto	u159_20
u159_21:
	goto	i1l16337
u159_20:
	line	861
	
i1l16333:	
;CC_INT.C: 859: {
;CC_INT.C: 861: f_1ms =1;
	bsf	(_f_1ms/8),(_f_1ms)&7
	line	862
	
i1l16335:	
;CC_INT.C: 862: r_1ms =0;
	clrf	(_r_1ms)	;volatile
	line	864
	
i1l16337:	
;CC_INT.C: 863: }
;CC_INT.C: 864: if(f_buz ==1)
	btfss	(_f_buz/8),(_f_buz)&7
	goto	u160_21
	goto	u160_20
u160_21:
	goto	i1l7713
u160_20:
	line	866
	
i1l16339:	
;CC_INT.C: 865: {
;CC_INT.C: 866: if(++r_buztime >7)
	incf	(_r_buztime),f	;volatile
	skipnz
	incf	(_r_buztime+1),f	;volatile
	movlw	high(08h)
	subwf	((_r_buztime+1)),w	;volatile
	movlw	low(08h)
	skipnz
	subwf	((_r_buztime)),w	;volatile
	skipc
	goto	u161_21
	goto	u161_20
u161_21:
	goto	i1l7715
u161_20:
	line	868
	
i1l16341:	
;CC_INT.C: 867: {
;CC_INT.C: 868: r_buztime =0;
	clrf	(_r_buztime)	;volatile
	clrf	(_r_buztime+1)	;volatile
	line	869
	
i1l16343:	
;CC_INT.C: 869: LATD4 =~LATD4;
	movlw	1<<((2172)&7)
	movlb 2	; select bank2
	xorwf	((2172)/8)^0100h,f
	goto	i1l7715
	line	872
	
i1l7713:	
	line	874
;CC_INT.C: 872: else
;CC_INT.C: 873: {
;CC_INT.C: 874: LATD4 =0;
	movlb 2	; select bank2
	bcf	(2172/8)^0100h,(2172)&7
	line	875
	
i1l7715:	
	line	876
;CC_INT.C: 875: }
;CC_INT.C: 876: if(f_pwm ==1)
	movlb 0	; select bank0
	btfss	(_f_pwm/8),(_f_pwm)&7
	goto	u162_21
	goto	u162_20
u162_21:
	goto	i1l7717
u162_20:
	line	886
	
i1l16345:	
;CC_INT.C: 877: {
;CC_INT.C: 886: PC0 =0 ;
	bcf	(112/8),(112)&7
	line	887
;CC_INT.C: 887: PA1 =0;
	bcf	(97/8),(97)&7
	line	888
;CC_INT.C: 888: PA0 = 0;
	bcf	(96/8),(96)&7
	line	892
	
i1l7717:	
	retfie
	opt stack 0
GLOBAL	__end_of_ISR
	__end_of_ISR:
;; =============== function _ISR ends ============

	signat	_ISR,88
psect	intentry
	global	btemp
	btemp set 07Eh

	DABS	1,126,2	;btemp
	global	wtemp0
	wtemp0 set btemp
	end
