//Deviec:FT62F08X
//-----------------------Variable---------------------------------
		_f_1ms		EQU		66H
		_f_10ms		EQU		71H
		_f_1s		EQU		71H
		_f_1ma		EQU		71H
		_f_2ma		EQU		71H
		_f_3ma		EQU		71H
		_f_4ma		EQU		71H
		_f_led1		EQU		71H
		_f_led2		EQU		70H
		_f_led3		EQU		70H
		_f_led4		EQU		70H
		_f_sleep		EQU		70H
		_f_ledoff		EQU		70H
		_f_conduction		EQU		70H
		_f_ledlevel		EQU		70H
		_f_key1		EQU		70H
		_f_key2		EQU		66H
		_f_io		EQU		66H
		_f_dc		EQU		65H
		_fb_dc		EQU		65H
		_fb_ntc		EQU		65H
		_f_ntc		EQU		65H
		_f_cds		EQU		65H
		_f_kfin		EQU		65H
		_fb_kfin		EQU		65H
		_fl_kfin		EQU		65H
		_f_nop		EQU		64H
		_f_delay2s		EQU		64H
		_f_delay3m		EQU		64H
		_f_np3m		EQU		64H
		_f_xd		EQU		64H
		_f_wled		EQU		64H
		_f_dcfast		EQU		64H
		_f_rled		EQU		64H
		_f_on		EQU		63H
		_f_key1s		EQU		63H
		_f_key1and2		EQU		63H
		_f_key1l		EQU		63H
		_f_readeep		EQU		63H
		_f_test		EQU		63H
		_sleep_ok_f		EQU		63H
		_f_push		EQU		63H
		_f_buz		EQU		62H
		_f_one		EQU		62H
		_f_pwm		EQU		62H
		_f_hh		EQU		62H
		_f_off		EQU		62H
		_adcData		EQU		3EH
		_adcDatabuf		EQU		3CH
		_theVoltage		EQU		3AH
		_adc0Data		EQU		38H
		_adc0Databuf		EQU		36H
		_the0Voltage		EQU		34H
		_r_adbuf		EQU		32H
		_r_adbtbuf		EQU		30H
		_r_adbttimes		EQU		61H
		_r_50mstime		EQU		60H
		_r_adtimes		EQU		5FH
		_r_mode		EQU		5EH
		_r_modeS		EQU		5DH
		_r_test		EQU		5CH
		_r_keyst		EQU		5BH
		_r_keycvt		EQU		5AH
		_r_key		EQU		59H
		_r_ontime		EQU		2EH
		_r_1stime		EQU		2CH
		_r_1ms		EQU		58H
		_r_dc		EQU		2AH
		_r_ntc		EQU		28H
		_r_kfin		EQU		B5H
		_rl_kfin		EQU		B3H
		_r_delay2s		EQU		B1H
		_r_delay2sh		EQU		AFH
		_r_delay3m		EQU		ADH
		_r_xdtime		EQU		ABH
		_r_bufpwm		EQU		57H
		_r_vef		EQU		56H
		_r_spwm		EQU		55H
		_r_buzzer		EQU		26H
		_PORTA_IN		EQU		54H
		_sleep_count		EQU		53H
		_r_onkey		EQU		24H
		_bat_ch_in_and_out_max_data		EQU		A9H
		_led_count		EQU		52H
		_led_times		EQU		51H
		_led_on_count		EQU		A7H
		_ch_full_led_count		EQU		A5H
		_r_buztime		EQU		22H
		_lvd_count		EQU		50H
		_lvd_off_count		EQU		4FH
		_int_count		EQU		4EH
		_ch_in_count		EQU		4DH
		_number		EQU		4CH
		_led_dis_buf		EQU		4BH
		_this_dis_bat_data		EQU		4AH
		_tig_dis_bat_data		EQU		49H
		_led_ram		EQU		A0H
		_led_com_count		EQU		48H
		_first_count		EQU		47H
		_r_ledlevel		EQU		46H
		_r_ledlevelbuf		EQU		45H
		_r_ledleveldelay		EQU		44H
		_stop_count		EQU		43H
		_EEReadData		EQU		42H
		_f_2t		EQU		62H
		_f_pwmno		EQU		62H
		_f_aderr		EQU		62H
		_r_levelbuf		EQU		A3H
		_r_adval1		EQU		41H
		_r_leveldelay		EQU		20H
		_r_pwmt		EQU		40H
//		___wmul@product		EQU		76H
//		___wmul@multiplier		EQU		72H
//		___wmul@multiplicand		EQU		74H
//		___lmul@product		EQU		7AH
//		___lmul@multiplier		EQU		72H
//		___lmul@multiplicand		EQU		76H
//		GET_ADC_DATA@adcChannel		EQU		79H
//		GET_ADC_DATA@adcChannel		EQU		79H
//		GET_ADC_DATA@adcChannel		EQU		79H
//		DelayUs@a		EQU		74H
//		DelayUs@Time		EQU		72H
//-----------------------Variable END---------------------------------

		ORG		0000H
		MOVLP 	0H 			//0000 	0180
		LJUMP 	2FH 			//0001 	382F
		ORG		0003H
		NOP 					//0003 	1000
		BSR 	7EH, 0H 			//0004 	247E
		MOVLP 	0H 			//0005 	0180

		//;CC_INT.C: 854: if(T4UIE && T4UIF)
		MOVLB 	2H 			//0006 	1022
		BTSC 	12H, 0H 		//0007 	2812
		BTSS 	13H, 0H 		//0008 	2C13
		LJUMP 	2DH 			//0009 	382D

		//;CC_INT.C: 855: {
		//;CC_INT.C: 856: T4UIF = 1;
		BSR 	13H, 0H 			//000A 	2413

		//;CC_INT.C: 857: r_1ms ++;
		MOVLB 	0H 			//000B 	1020
		INCR 	58H, 1H 		//000C 	1AD8

		//;CC_INT.C: 858: if(r_1ms >29)
		LDWI 	1EH 			//000D 	001E
		SUBWR 	58H, 0H 		//000E 	1258
		BTSS 	3H, 0H 			//000F 	2C03
		LJUMP 	13H 			//0010 	3813

		//;CC_INT.C: 859: {
		//;CC_INT.C: 861: f_1ms =1;
		BSR 	66H, 2H 			//0011 	2566

		//;CC_INT.C: 862: r_1ms =0;
		CLRF 	58H 			//0012 	11D8

		//;CC_INT.C: 863: }
		//;CC_INT.C: 864: if(f_buz ==1)
		BTSS 	62H, 7H 		//0013 	2FE2
		LJUMP 	25H 			//0014 	3825

		//;CC_INT.C: 865: {
		//;CC_INT.C: 866: if(++r_buztime >7)
		INCR 	22H, 1H 		//0015 	1AA2
		BTSC 	3H, 2H 			//0016 	2903
		INCR 	23H, 1H 		//0017 	1AA3
		LDWI 	0H 			//0018 	0000
		SUBWR 	23H, 0H 		//0019 	1223
		LDWI 	8H 			//001A 	0008
		BTSC 	3H, 2H 			//001B 	2903
		SUBWR 	22H, 0H 		//001C 	1222
		BTSS 	3H, 0H 			//001D 	2C03
		LJUMP 	27H 			//001E 	3827

		//;CC_INT.C: 867: {
		//;CC_INT.C: 868: r_buztime =0;
		CLRF 	22H 			//001F 	11A2
		CLRF 	23H 			//0020 	11A3

		//;CC_INT.C: 869: LATD4 =~LATD4;
		LDWI 	10H 			//0021 	0010
		MOVLB 	2H 			//0022 	1022
		XORWR 	FH, 1H 		//0023 	168F
		LJUMP 	27H 			//0024 	3827

		//;CC_INT.C: 872: else
		//;CC_INT.C: 873: {
		//;CC_INT.C: 874: LATD4 =0;
		MOVLB 	2H 			//0025 	1022
		BCR 	FH, 4H 			//0026 	220F

		//;CC_INT.C: 875: }
		//;CC_INT.C: 876: if(f_pwm ==1)
		MOVLB 	0H 			//0027 	1020
		BTSS 	62H, 5H 		//0028 	2EE2
		LJUMP 	2DH 			//0029 	382D

		//;CC_INT.C: 877: {
		//;CC_INT.C: 886: PC0 =0 ;
		BCR 	EH, 0H 			//002A 	200E

		//;CC_INT.C: 887: PA1 =0;
		BCR 	CH, 1H 			//002B 	208C

		//;CC_INT.C: 888: PA0 = 0;
		BCR 	CH, 0H 			//002C 	200C
		BCR 	7EH, 0H 			//002D 	207E
		RETI 					//002E 	1009
		MOVLP 	0H 			//002F 	0180
		LJUMP 	31H 			//0030 	3831
		CLRF 	70H 			//0031 	11F0
		CLRF 	71H 			//0032 	11F1
		MOVLB 	0H 			//0033 	1020
		LDWI 	20H 			//0034 	0020
		CLRF 	62H 			//0035 	11E2
		CLRF 	63H 			//0036 	11E3
		CLRF 	64H 			//0037 	11E4
		CLRF 	65H 			//0038 	11E5
		CLRF 	66H 			//0039 	11E6
		STR 	4H 			//003A 	1084
		LDWI 	0H 			//003B 	0000
		STR 	5H 			//003C 	1085
		LDWI 	42H 			//003D 	0042
		MOVLP 	4H 			//003E 	0184
		LCALL 	40AH 			//003F 	340A
		MOVLP 	0H 			//0040 	0180
		LDWI 	A0H 			//0041 	00A0
		STR 	4H 			//0042 	1084
		LDWI 	0H 			//0043 	0000
		STR 	5H 			//0044 	1085
		LDWI 	17H 			//0045 	0017
		MOVLP 	4H 			//0046 	0184
		LCALL 	40AH 			//0047 	340A
		MOVLP 	0H 			//0048 	0180
		BCR 	7EH, 0H 			//0049 	207E
		MOVLB 	0H 			//004A 	1020
		LJUMP 	4CH 			//004B 	384C

		//;Cc_2033Anmo.C: 32: POWER_INITIAL();
		LCALL 	89H 			//004C 	3089
		MOVLP 	0H 			//004D 	0180

		//;Cc_2033Anmo.C: 33: TIMER0_INITIAL();
		LCALL 	B8H 			//004E 	30B8
		MOVLP 	0H 			//004F 	0180

		//;Cc_2033Anmo.C: 34: Time2Initial();
		LCALL 	B9H 			//0050 	30B9
		MOVLP 	0H 			//0051 	0180

		//;Cc_2033Anmo.C: 37: Time4Initial();
		LCALL 	DFH 			//0052 	30DF
		MOVLP 	0H 			//0053 	0180

		//;Cc_2033Anmo.C: 38: ADC_INITIAL();
		LCALL 	72H 			//0054 	3072
		MOVLP 	0H 			//0055 	0180

		//;Cc_2033Anmo.C: 40: f_sleep =1;
		BSR 	70H, 4H 			//0056 	2670

		//;Cc_2033Anmo.C: 42: f_on =1;
		MOVLB 	0H 			//0057 	1020
		BSR 	63H, 7H 			//0058 	27E3

		//;Cc_2033Anmo.C: 43: LATA7 =1;
		MOVLB 	2H 			//0059 	1022
		BSR 	CH, 7H 			//005A 	278C

		//;Cc_2033Anmo.C: 45: while(1)
		CLRWDT 			//005B 	1064

		//;Cc_2033Anmo.C: 49: if(f_1ms ==1)
		MOVLB 	0H 			//005C 	1020
		BTSS 	66H, 2H 		//005D 	2D66
		LJUMP 	5BH 			//005E 	385B

		//;Cc_2033Anmo.C: 50: {
		//;Cc_2033Anmo.C: 51: f_1ms =0;
		BCR 	66H, 2H 			//005F 	2166

		//;Cc_2033Anmo.C: 52: r_1stime ++;
		INCR 	2CH, 1H 		//0060 	1AAC
		BTSC 	3H, 2H 			//0061 	2903
		INCR 	2DH, 1H 		//0062 	1AAD

		//;Cc_2033Anmo.C: 53: if(r_1stime >1000)
		LDWI 	3H 			//0063 	0003
		SUBWR 	2DH, 0H 		//0064 	122D
		LDWI 	E9H 			//0065 	00E9
		BTSC 	3H, 2H 			//0066 	2903
		SUBWR 	2CH, 0H 		//0067 	122C
		BTSS 	3H, 0H 			//0068 	2C03
		LJUMP 	6DH 			//0069 	386D

		//;Cc_2033Anmo.C: 54: {
		//;Cc_2033Anmo.C: 55: r_1stime =0;
		CLRF 	2CH 			//006A 	11AC
		CLRF 	2DH 			//006B 	11AD

		//;Cc_2033Anmo.C: 56: f_1s =1;
		BSR 	71H, 5H 			//006C 	26F1

		//;Cc_2033Anmo.C: 57: }
		//;Cc_2033Anmo.C: 58: app();
		LCALL 	F0H 			//006D 	30F0
		MOVLP 	0H 			//006E 	0180

		//;Cc_2033Anmo.C: 60: key();
		LCALL 	290H 			//006F 	3290
		MOVLP 	0H 			//0070 	0180
		LJUMP 	5BH 			//0071 	385B

		//;CC_INT.C: 629: ANSELA = 0B00000011;
		LDWI 	3H 			//0072 	0003
		MOVLB 	3H 			//0073 	1023
		STR 	17H 			//0074 	1097

		//;CC_INT.C: 631: ADCON1 = 0B10010100;
		LDWI 	94H 			//0075 	0094
		MOVLB 	1H 			//0076 	1021
		STR 	1EH 			//0077 	109E

		//;CC_INT.C: 658: ADCON0 = 0B00000000;
		CLRF 	1DH 			//0078 	119D

		//;CC_INT.C: 690: ADCON2 = 0B01000000;
		LDWI 	40H 			//0079 	0040
		STR 	1FH 			//007A 	109F

		//;CC_INT.C: 718: ADCON3 = 0B00000000;
		MOVLB 	8H 			//007B 	1028
		CLRF 	1AH 			//007C 	119A

		//;CC_INT.C: 745: ADDLY = 0B00000000;
		MOVLB 	0H 			//007D 	1020
		CLRF 	1FH 			//007E 	119F

		//;CC_INT.C: 750: ADCMPH = 0B00000000;
		MOVLB 	8H 			//007F 	1028
		CLRF 	1BH 			//0080 	119B

		//;CC_INT.C: 753: ADCAL=1;
		MOVLB 	1H 			//0081 	1021
		BSR 	1DH, 3H 			//0082 	259D

		//;CC_INT.C: 754: __nop();
		NOP 					//0083 	1000

		//;CC_INT.C: 755: while(ADCAL);
		MOVLB 	1H 			//0084 	1021
		BTSC 	1DH, 3H 		//0085 	299D
		LJUMP 	84H 			//0086 	3884

		//;CC_INT.C: 757: ADON=1;
		BSR 	1DH, 0H 			//0087 	241D
		RET 					//0088 	1008

		//;CC_INT.C: 18: OSCCON = 0B01110001;
		LDWI 	71H 			//0089 	0071
		MOVLB 	1H 			//008A 	1021
		STR 	19H 			//008B 	1099

		//;CC_INT.C: 25: INTCON = 0;
		CLRF 	BH 			//008C 	118B

		//;CC_INT.C: 26: PCKEN |=0B00000001;
		BSR 	1AH, 0H 			//008D 	241A

		//;CC_INT.C: 29: PORTA = 0B00000000;
		MOVLB 	0H 			//008E 	1020
		CLRF 	CH 			//008F 	118C

		//;CC_INT.C: 30: TRISA = 0B00000000;
		MOVLB 	1H 			//0090 	1021
		CLRF 	CH 			//0091 	118C

		//;CC_INT.C: 31: PORTB = 0B00000000;
		MOVLB 	0H 			//0092 	1020
		CLRF 	DH 			//0093 	118D

		//;CC_INT.C: 32: TRISB = 0B10011100;
		LDWI 	9CH 			//0094 	009C
		MOVLB 	1H 			//0095 	1021
		STR 	DH 			//0096 	108D

		//;CC_INT.C: 33: PORTC = 0B00000000;
		MOVLB 	0H 			//0097 	1020
		CLRF 	EH 			//0098 	118E

		//;CC_INT.C: 34: TRISC = 0B11111010;
		LDWI 	FAH 			//0099 	00FA
		MOVLB 	1H 			//009A 	1021
		STR 	EH 			//009B 	108E

		//;CC_INT.C: 35: PORTD = 0B00000000;
		MOVLB 	0H 			//009C 	1020
		CLRF 	FH 			//009D 	118F

		//;CC_INT.C: 36: TRISD = 0B00000000;
		MOVLB 	1H 			//009E 	1021
		CLRF 	FH 			//009F 	118F

		//;CC_INT.C: 38: WPUA = 0B00000000;
		MOVLB 	3H 			//00A0 	1023
		CLRF 	CH 			//00A1 	118C

		//;CC_INT.C: 39: WPUB = 0B00011100;
		LDWI 	1CH 			//00A2 	001C
		STR 	DH 			//00A3 	108D

		//;CC_INT.C: 40: WPUC = 0B11111000;
		LDWI 	F8H 			//00A4 	00F8
		STR 	EH 			//00A5 	108E

		//;CC_INT.C: 41: WPUD = 0B00000000;
		CLRF 	FH 			//00A6 	118F

		//;CC_INT.C: 43: WPDA = 0B00000000;
		MOVLB 	4H 			//00A7 	1024
		CLRF 	CH 			//00A8 	118C

		//;CC_INT.C: 44: WPDB = 0B00000000;
		CLRF 	DH 			//00A9 	118D

		//;CC_INT.C: 45: WPDC = 0B00000000;
		CLRF 	EH 			//00AA 	118E

		//;CC_INT.C: 46: WPDD = 0B00000000;
		CLRF 	FH 			//00AB 	118F

		//;CC_INT.C: 48: PSRC0 = 0B11111111;
		LDWI 	FFH 			//00AC 	00FF
		MOVLB 	2H 			//00AD 	1022
		STR 	1AH 			//00AE 	109A

		//;CC_INT.C: 52: PSRC1 = 0B11111111;
		STR 	1BH 			//00AF 	109B

		//;CC_INT.C: 56: PSINK0 = 0B11111111;
		MOVLB 	3H 			//00B0 	1023
		STR 	1AH 			//00B1 	109A

		//;CC_INT.C: 57: PSINK1 = 0B11111111;
		STR 	1BH 			//00B2 	109B

		//;CC_INT.C: 58: PSINK2 = 0B11111111;
		STR 	1CH 			//00B3 	109C

		//;CC_INT.C: 59: PSINK3 = 0B11111111;
		STR 	1DH 			//00B4 	109D

		//;CC_INT.C: 61: ANSELA = 0B00000011;
		LDWI 	3H 			//00B5 	0003
		STR 	17H 			//00B6 	1097
		RET 					//00B7 	1008
		RET 					//00B8 	1008

		//;CC_INT.C: 393: PCKEN |=0B00000100;
		MOVLB 	1H 			//00B9 	1021
		BSR 	1AH, 2H 			//00BA 	251A

		//;CC_INT.C: 394: CKOCON=0B00100000;
		LDWI 	20H 			//00BB 	0020
		STR 	15H 			//00BC 	1095

		//;CC_INT.C: 395: TCKSRC=0B00110000;
		LDWI 	30H 			//00BD 	0030
		MOVLB 	6H 			//00BE 	1026
		STR 	1FH 			//00BF 	109F

		//;CC_INT.C: 420: TIM2CR1 =0B10000101;
		LDWI 	85H 			//00C0 	0085
		STR 	CH 			//00C1 	108C

		//;CC_INT.C: 453: TIM2IER =0B00000000;
		CLRF 	DH 			//00C2 	118D

		//;CC_INT.C: 479: TIM2SR1 =0B00000000;
		CLRF 	EH 			//00C3 	118E

		//;CC_INT.C: 511: TIM2SR2 =0B00000000;
		CLRF 	FH 			//00C4 	118F

		//;CC_INT.C: 513: TIM2EGR =0B00000000;
		CLRF 	10H 			//00C5 	1190

		//;CC_INT.C: 542: TIM2CCMR1 =0B01101000;
		LDWI 	68H 			//00C6 	0068
		STR 	11H 			//00C7 	1091

		//;CC_INT.C: 577: TIM2CCMR2 =0B00000000;;
		CLRF 	12H 			//00C8 	1192

		//;CC_INT.C: 579: TIM2CCMR3 =0B00000000;
		CLRF 	13H 			//00C9 	1193

		//;CC_INT.C: 581: TIM2CCER1 =0B00110011;
		LDWI 	33H 			//00CA 	0033
		STR 	14H 			//00CB 	1094

		//;CC_INT.C: 606: TIM2CCER2 =0B00000000;
		CLRF 	15H 			//00CC 	1195

		//;CC_INT.C: 608: TIM2CNTRH =0B00000000;
		CLRF 	16H 			//00CD 	1196

		//;CC_INT.C: 609: TIM2CNTRL =0B00000000;
		CLRF 	17H 			//00CE 	1197

		//;CC_INT.C: 612: TIM2ARRH =0x08;
		LDWI 	8H 			//00CF 	0008
		STR 	19H 			//00D0 	1099

		//;CC_INT.C: 613: TIM2ARRL =0x32;
		LDWI 	32H 			//00D1 	0032
		STR 	1AH 			//00D2 	109A

		//;CC_INT.C: 616: TIM2CCR1H =0x04;
		LDWI 	4H 			//00D3 	0004
		STR 	1BH 			//00D4 	109B

		//;CC_INT.C: 617: TIM2CCR1L =0x19;
		LDWI 	19H 			//00D5 	0019
		STR 	1CH 			//00D6 	109C

		//;CC_INT.C: 619: TIM2CCR2H =0x04;
		LDWI 	4H 			//00D7 	0004
		STR 	1DH 			//00D8 	109D

		//;CC_INT.C: 620: TIM2CCR2L =0x19;
		LDWI 	19H 			//00D9 	0019
		STR 	1EH 			//00DA 	109E

		//;CC_INT.C: 622: TIM2CCR3H =0B00000000;
		MOVLB 	5H 			//00DB 	1025
		CLRF 	1EH 			//00DC 	119E

		//;CC_INT.C: 623: TIM2CCR3L =0B00000000;
		CLRF 	1FH 			//00DD 	119F
		RET 					//00DE 	1008

		//;CC_INT.C: 780: PCKEN |=0B00001000;
		MOVLB 	1H 			//00DF 	1021
		BSR 	1AH, 3H 			//00E0 	259A

		//;CC_INT.C: 784: TIM4CR1 =0B00000101;
		LDWI 	5H 			//00E1 	0005
		MOVLB 	2H 			//00E2 	1022
		STR 	11H 			//00E3 	1091

		//;CC_INT.C: 815: TIM4IER =0B00000001;
		LDWI 	1H 			//00E4 	0001
		STR 	12H 			//00E5 	1092

		//;CC_INT.C: 818: TIM4SR =0B00000000;
		CLRF 	13H 			//00E6 	1193

		//;CC_INT.C: 827: TIM4EGR =0B00000000;
		CLRF 	14H 			//00E7 	1194

		//;CC_INT.C: 832: TIM4CNTR=0;
		CLRF 	15H 			//00E8 	1195

		//;CC_INT.C: 834: TIM4PSCR=0B00000100;
		LDWI 	4H 			//00E9 	0004
		STR 	16H 			//00EA 	1096

		//;CC_INT.C: 839: TIM4ARR =32;
		LDWI 	20H 			//00EB 	0020
		STR 	17H 			//00EC 	1097

		//;CC_INT.C: 843: INTCON |= 0B11000000;
		LDWI 	C0H 			//00ED 	00C0
		IORWR 	BH, 1H 		//00EE 	148B
		RET 					//00EF 	1008

		//;CC_APP.c: 33: if(f_on ==1)
		BTSS 	63H, 7H 		//00F0 	2FE3
		LJUMP 	108H 			//00F1 	3908

		//;CC_APP.c: 34: {
		//;CC_APP.c: 39: app11();
		LCALL 	10EH 			//00F2 	310E
		MOVLP 	0H 			//00F3 	0180

		//;CC_APP.c: 41: if(f_1s ==1)
		BTSS 	71H, 5H 		//00F4 	2EF1
		LJUMP 	10AH 			//00F5 	390A

		//;CC_APP.c: 42: {
		//;CC_APP.c: 43: f_1s =0;
		BCR 	71H, 5H 			//00F6 	22F1

		//;CC_APP.c: 44: f_sleep =0;
		BCR 	70H, 4H 			//00F7 	2270

		//;CC_APP.c: 46: PB5 =~PB5;
		LDWI 	20H 			//00F8 	0020
		MOVLB 	0H 			//00F9 	1020
		XORWR 	DH, 1H 		//00FA 	168D

		//;CC_APP.c: 48: if(f_conduction==1){
		BTSS 	70H, 2H 		//00FB 	2D70
		LJUMP 	101H 			//00FC 	3901

		//;CC_APP.c: 49: r_ontime --;
		LDWI 	1H 			//00FD 	0001
		SUBWR 	2EH, 1H 		//00FE 	12AE
		LDWI 	0H 			//00FF 	0000
		SUBWFB 	2FH, 1H 		//0100 	0BAF

		//;CC_APP.c: 50: }
		//;CC_APP.c: 51: if(r_ontime ==0)
		LDR 	2EH, 0H 			//0101 	182E
		IORWR 	2FH, 0H 		//0102 	142F
		BTSS 	3H, 2H 			//0103 	2D03
		LJUMP 	10AH 			//0104 	390A

		//;CC_APP.c: 52: {
		//;CC_APP.c: 53: f_on =0;
		BCR 	63H, 7H 			//0105 	23E3

		//;CC_APP.c: 54: f_sleep =1;
		BSR 	70H, 4H 			//0106 	2670
		LJUMP 	10AH 			//0107 	390A

		//;CC_APP.c: 59: else
		//;CC_APP.c: 60: {
		//;CC_APP.c: 62: LATB1 =0;
		//;CC_APP.c: 63: LATD3 =0;
		//;CC_APP.c: 64: LATD2 =0;
		//;CC_APP.c: 65: LATD1 =0;
		//;CC_APP.c: 66: LATD5 =0;
		LCALL 	3D8H 			//0108 	33D8
		MOVLP 	0H 			//0109 	0180

		//;CC_APP.c: 67: }
		//;CC_APP.c: 68: if(f_off==0)
		MOVLB 	0H 			//010A 	1020
		BTSC 	62H, 3H 		//010B 	29E2
		RET 					//010C 	1008

		//;CC_APP.c: 69: {
		//;CC_APP.c: 70: app40();
		LJUMP 	3F7H 			//010D 	3BF7

		//;CC_APP.c: 192: r_50mstime ++;
		INCR 	60H, 1H 		//010E 	1AE0

		//;CC_APP.c: 194: if(r_50mstime <51)
		LDWI 	33H 			//010F 	0033
		SUBWR 	60H, 0H 		//0110 	1260
		BTSC 	3H, 0H 			//0111 	2803
		LJUMP 	12AH 			//0112 	392A

		//;CC_APP.c: 195: {
		//;CC_APP.c: 198: LATB1 =0;
		//;CC_APP.c: 199: LATD3 =0;
		//;CC_APP.c: 200: LATD2 =0;
		//;CC_APP.c: 201: LATD1 =0;
		//;CC_APP.c: 202: LATD5 =0;
		LCALL 	3D8H 			//0113 	33D8
		MOVLP 	0H 			//0114 	0180

		//;CC_APP.c: 204: app10();
		LCALL 	1A4H 			//0115 	31A4
		MOVLP 	0H 			//0116 	0180

		//;CC_APP.c: 205: f_push = ~f_push;
		LDWI 	1H 			//0117 	0001
		XORWR 	63H, 1H 		//0118 	16E3

		//;CC_APP.c: 206: if(f_push ==1)
		BTSS 	63H, 0H 		//0119 	2C63
		LJUMP 	128H 			//011A 	3928

		//;CC_APP.c: 207: {
		//;CC_APP.c: 208: TIM2CNTRH =0B00000000;
		MOVLB 	6H 			//011B 	1026
		CLRF 	16H 			//011C 	1196

		//;CC_APP.c: 209: TIM2CNTRL =0B00000000;
		CLRF 	17H 			//011D 	1197

		//;CC_APP.c: 210: T2CEN =1;
		BSR 	CH, 0H 			//011E 	240C

		//;CC_APP.c: 211: DelayUs(200);
		LDWI 	C8H 			//011F 	00C8
		STR 	72H 			//0120 	10F2
		CLRF 	73H 			//0121 	11F3
		LCALL 	195H 			//0122 	3195
		MOVLP 	0H 			//0123 	0180

		//;CC_APP.c: 212: DelayUs(200);
		LDWI 	C8H 			//0124 	00C8
		STR 	72H 			//0125 	10F2
		CLRF 	73H 			//0126 	11F3
		LJUMP 	195H 			//0127 	3995

		//;CC_APP.c: 216: }
		//;CC_APP.c: 217: else
		//;CC_APP.c: 218: {
		//;CC_APP.c: 220: T2CEN =0;
		//;CC_APP.c: 221: PA5=0;
		//;CC_APP.c: 222: PA6 =0;
		LCALL 	3EDH 			//0128 	33ED
		RET 					//0129 	1008

		//;CC_APP.c: 226: else if(r_50mstime <52)
		LDWI 	34H 			//012A 	0034
		SUBWR 	60H, 0H 		//012B 	1260
		BTSC 	3H, 0H 			//012C 	2803
		LJUMP 	131H 			//012D 	3931

		//;CC_APP.c: 227: {
		//;CC_APP.c: 229: T2CEN =0;
		//;CC_APP.c: 230: PA5=0;
		//;CC_APP.c: 231: PA6 =0;
		LCALL 	3EDH 			//012E 	33ED
		MOVLP 	0H 			//012F 	0180

		//;CC_APP.c: 232: app30();
		LJUMP 	316H 			//0130 	3B16

		//;CC_APP.c: 233: }
		//;CC_APP.c: 235: else if(r_50mstime <66)
		LDWI 	42H 			//0131 	0042
		SUBWR 	60H, 0H 		//0132 	1260
		BTSC 	3H, 0H 			//0133 	2803
		LJUMP 	17AH 			//0134 	397A

		//;CC_APP.c: 236: {
		//;CC_APP.c: 237: f_pwm =1;
		BSR 	62H, 5H 			//0135 	26E2

		//;CC_APP.c: 238: f_pwmno =0;
		BCR 	62H, 1H 			//0136 	20E2

		//;CC_APP.c: 239: r_pwmt =0;
		CLRF 	40H 			//0137 	11C0

		//;CC_APP.c: 257: if(((r_ledlevelbuf -r_ledlevel) ==1)||((r_ledlevel -r_ledlevelbuf)==1))
		LDR 	45H, 0H 			//0138 	1845
		STR 	6BH 			//0139 	10EB
		CLRF 	6CH 			//013A 	11EC
		LDR 	6CH, 0H 			//013B 	186C
		STR 	6EH 			//013C 	10EE
		LDR 	46H, 0H 			//013D 	1846
		LCALL 	3E6H 			//013E 	33E6
		MOVLP 	0H 			//013F 	0180
		BTSC 	3H, 2H 			//0140 	2903
		LJUMP 	14CH 			//0141 	394C
		LDR 	46H, 0H 			//0142 	1846
		STR 	6BH 			//0143 	10EB
		CLRF 	6CH 			//0144 	11EC
		LDR 	6CH, 0H 			//0145 	186C
		STR 	6EH 			//0146 	10EE
		LDR 	45H, 0H 			//0147 	1845
		LCALL 	3E6H 			//0148 	33E6
		MOVLP 	0H 			//0149 	0180
		BTSS 	3H, 2H 			//014A 	2D03
		LJUMP 	157H 			//014B 	3957

		//;CC_APP.c: 258: {
		//;CC_APP.c: 259: r_leveldelay ++;
		INCR 	20H, 1H 		//014C 	1AA0
		BTSC 	3H, 2H 			//014D 	2903
		INCR 	21H, 1H 		//014E 	1AA1

		//;CC_APP.c: 260: if(r_leveldelay >=50)
		LDWI 	0H 			//014F 	0000
		SUBWR 	21H, 0H 		//0150 	1221
		LDWI 	32H 			//0151 	0032
		BTSC 	3H, 2H 			//0152 	2903
		SUBWR 	20H, 0H 		//0153 	1220
		BTSC 	3H, 0H 			//0154 	2803
		LJUMP 	159H 			//0155 	3959
		LJUMP 	15BH 			//0156 	395B

		//;CC_APP.c: 265: else
		//;CC_APP.c: 266: {
		//;CC_APP.c: 267: r_leveldelay =0;
		CLRF 	20H 			//0157 	11A0
		CLRF 	21H 			//0158 	11A1

		//;CC_APP.c: 261: {
		//;CC_APP.c: 262: r_ledlevelbuf =r_ledlevel;
		LDR 	46H, 0H 			//0159 	1846
		STR 	45H 			//015A 	10C5

		//;CC_APP.c: 269: }
		//;CC_APP.c: 270: r_ledlevelbuf =r_ledlevel;
		LDR 	46H, 0H 			//015B 	1846
		STR 	45H 			//015C 	10C5

		//;CC_APP.c: 272: if(f_ledoff ==1)
		BTSS 	70H, 3H 		//015D 	2DF0
		RET 					//015E 	1008

		//;CC_APP.c: 273: {
		//;CC_APP.c: 274: LATD5 =1;
		MOVLB 	2H 			//015F 	1022
		BSR 	FH, 5H 			//0160 	268F

		//;CC_APP.c: 275: if(r_ledlevelbuf==1)
		MOVLB 	0H 			//0161 	1020
		DECRSZ 	45H, 0H 		//0162 	1B45
		LJUMP 	169H 			//0163 	3969

		//;CC_APP.c: 276: {
		//;CC_APP.c: 278: LATB1 =1;
		MOVLB 	2H 			//0164 	1022
		BSR 	DH, 1H 			//0165 	248D

		//;CC_APP.c: 279: LATD3 =1;
		BSR 	FH, 3H 			//0166 	258F

		//;CC_APP.c: 280: f_conduction=1;
		BSR 	70H, 2H 			//0167 	2570

		//;CC_APP.c: 284: }
		RET 					//0168 	1008

		//;CC_APP.c: 285: else if(r_ledlevelbuf ==2)
		LDWI 	2H 			//0169 	0002
		XORWR 	45H, 0H 		//016A 	1645
		BTSC 	3H, 2H 			//016B 	2903
		LJUMP 	164H 			//016C 	3964

		//;CC_APP.c: 292: else if(r_ledlevelbuf ==3)
		LDWI 	3H 			//016D 	0003
		XORWR 	45H, 0H 		//016E 	1645
		BTSC 	3H, 2H 			//016F 	2903
		LJUMP 	164H 			//0170 	3964

		//;CC_APP.c: 300: else if(r_ledlevelbuf ==4)
		LDWI 	4H 			//0171 	0004
		XORWR 	45H, 0H 		//0172 	1645
		BTSC 	3H, 2H 			//0173 	2903
		LJUMP 	164H 			//0174 	3964

		//;CC_APP.c: 307: else
		//;CC_APP.c: 308: {
		//;CC_APP.c: 309: LATB1 =0;
		MOVLB 	2H 			//0175 	1022
		BCR 	DH, 1H 			//0176 	208D

		//;CC_APP.c: 310: LATD3 =0;
		BCR 	FH, 3H 			//0177 	218F

		//;CC_APP.c: 311: f_conduction=0;
		BCR 	70H, 2H 			//0178 	2170
		RET 					//0179 	1008

		//;CC_APP.c: 320: else
		//;CC_APP.c: 321: {
		//;CC_APP.c: 322: T1CEN=0;
		MOVLB 	4H 			//017A 	1024
		BCR 	11H, 0H 			//017B 	2011

		//;CC_APP.c: 324: f_pwm =0;
		MOVLB 	0H 			//017C 	1020
		BCR 	62H, 5H 			//017D 	22E2

		//;CC_APP.c: 325: if(f_ledoff ==1)
		BTSS 	70H, 3H 		//017E 	2DF0
		LJUMP 	182H 			//017F 	3982

		//;CC_APP.c: 326: {
		//;CC_APP.c: 327: f_ledoff =0;
		BCR 	70H, 3H 			//0180 	21F0

		//;CC_APP.c: 328: }
		LJUMP 	183H 			//0181 	3983

		//;CC_APP.c: 329: else
		//;CC_APP.c: 330: {
		//;CC_APP.c: 331: f_ledoff =1;
		BSR 	70H, 3H 			//0182 	25F0

		//;CC_APP.c: 332: }
		//;CC_APP.c: 333: f_one = ~f_one;
		LDWI 	40H 			//0183 	0040
		XORWR 	62H, 1H 		//0184 	16E2

		//;CC_APP.c: 334: if(f_hh ==1)
		BTSC 	62H, 4H 		//0185 	2A62

		//;CC_APP.c: 335: {
		//;CC_APP.c: 336: if(f_one ==1)
		BTSS 	62H, 6H 		//0186 	2F62
		LJUMP 	18CH 			//0187 	398C

		//;CC_APP.c: 337: {
		//;CC_APP.c: 338: RC0 =1;
		BSR 	EH, 0H 			//0188 	240E

		//;CC_APP.c: 339: RA1 =1;
		BSR 	CH, 1H 			//0189 	248C

		//;CC_APP.c: 340: RA0 =0;
		BCR 	CH, 0H 			//018A 	200C

		//;CC_APP.c: 341: }
		LJUMP 	18FH 			//018B 	398F

		//;CC_APP.c: 342: else
		//;CC_APP.c: 343: {
		//;CC_APP.c: 344: RC0 =0;
		BCR 	EH, 0H 			//018C 	200E

		//;CC_APP.c: 345: RA1 =0;
		BCR 	CH, 1H 			//018D 	208C

		//;CC_APP.c: 346: RA0 =1;
		BSR 	CH, 0H 			//018E 	240C

		//;CC_APP.c: 354: }
		//;CC_APP.c: 355: f_push = 0;
		BCR 	63H, 0H 			//018F 	2063

		//;CC_APP.c: 356: LATB1 =0;
		//;CC_APP.c: 357: LATD3 =0;
		//;CC_APP.c: 358: LATD2 =0;
		//;CC_APP.c: 359: LATD1 =0;
		//;CC_APP.c: 360: LATD5 =0;
		LCALL 	3D8H 			//0190 	33D8
		MOVLP 	0H 			//0191 	0180

		//;CC_APP.c: 361: r_50mstime =0;
		MOVLB 	0H 			//0192 	1020
		CLRF 	60H 			//0193 	11E0

		//;CC_APP.c: 362: appbt();
		LJUMP 	33CH 			//0194 	3B3C

		//;CC_FUN.C: 58: unsigned int a;
		//;CC_FUN.C: 59: for(a=0;a<Time;a++)
		CLRF 	74H 			//0195 	11F4
		CLRF 	75H 			//0196 	11F5
		LDR 	73H, 0H 			//0197 	1873
		SUBWR 	75H, 0H 		//0198 	1275
		BTSS 	3H, 2H 			//0199 	2D03
		LJUMP 	19DH 			//019A 	399D
		LDR 	72H, 0H 			//019B 	1872
		SUBWR 	74H, 0H 		//019C 	1274
		BTSC 	3H, 0H 			//019D 	2803
		RET 					//019E 	1008

		//;CC_FUN.C: 60: {
		//;CC_FUN.C: 61: __nop();
		NOP 					//019F 	1000
		INCR 	74H, 1H 		//01A0 	1AF4
		BTSC 	3H, 2H 			//01A1 	2903
		INCR 	75H, 1H 		//01A2 	1AF5
		LJUMP 	197H 			//01A3 	3997

		//;CC_APP.c: 129: adc0Data = GET_ADC_DATA(0);
		LDWI 	0H 			//01A4 	0000
		LCALL 	248H 			//01A5 	3248
		MOVLP 	0H 			//01A6 	0180
		LDR 	77H, 0H 			//01A7 	1877
		MOVLB 	0H 			//01A8 	1020
		STR 	39H 			//01A9 	10B9
		LDR 	76H, 0H 			//01AA 	1876
		STR 	38H 			//01AB 	10B8

		//;CC_APP.c: 130: the0Voltage = (unsigned long)adc0Data*2*1000/4096;
		LDR 	38H, 0H 			//01AC 	1838
		STR 	72H 			//01AD 	10F2
		LDR 	39H, 0H 			//01AE 	1839
		LCALL 	3BEH 			//01AF 	33BE
		MOVLP 	0H 			//01B0 	0180
		LCALL 	26BH 			//01B1 	326B
		MOVLP 	0H 			//01B2 	0180
		LDR 	72H, 0H 			//01B3 	1872
		STR 	67H 			//01B4 	10E7
		LDR 	73H, 0H 			//01B5 	1873
		STR 	68H 			//01B6 	10E8
		LDR 	74H, 0H 			//01B7 	1874
		STR 	69H 			//01B8 	10E9
		LDR 	75H, 0H 			//01B9 	1875
		STR 	6AH 			//01BA 	10EA
		LDWI 	CH 			//01BB 	000C
		LSRF 	6AH, 1H 		//01BC 	06EA
		RRR 	69H, 1H 			//01BD 	1CE9
		RRR 	68H, 1H 			//01BE 	1CE8
		RRR 	67H, 1H 			//01BF 	1CE7
		DECRSZ 	9H, 1H 		//01C0 	1B89
		LJUMP 	1BCH 			//01C1 	39BC
		LDR 	68H, 0H 			//01C2 	1868
		STR 	35H 			//01C3 	10B5
		LDR 	67H, 0H 			//01C4 	1867
		STR 	34H 			//01C5 	10B4

		//;CC_APP.c: 131: r_test =5;
		LDWI 	5H 			//01C6 	0005
		STR 	5CH 			//01C7 	10DC

		//;CC_APP.c: 132: f_aderr =0;
		BCR 	62H, 0H 			//01C8 	2062

		//;CC_APP.c: 133: if((adc0Databuf > adc0Data)&&((adc0Databuf -adc0Data) >100))
		LDR 	37H, 0H 			//01C9 	1837
		SUBWR 	39H, 0H 		//01CA 	1239
		BTSS 	3H, 2H 			//01CB 	2D03
		LJUMP 	1CFH 			//01CC 	39CF
		LDR 	36H, 0H 			//01CD 	1836
		SUBWR 	38H, 0H 		//01CE 	1238
		BTSC 	3H, 0H 			//01CF 	2803
		LJUMP 	1E1H 			//01D0 	39E1
		LDR 	38H, 0H 			//01D1 	1838
		SUBWR 	36H, 0H 		//01D2 	1236
		STR 	67H 			//01D3 	10E7
		LDR 	39H, 0H 			//01D4 	1839
		SUBWFB 	37H, 0H 		//01D5 	0B37
		LCALL 	3F3H 			//01D6 	33F3
		MOVLP 	0H 			//01D7 	0180
		BTSC 	3H, 2H 			//01D8 	2903
		SUBWR 	67H, 0H 		//01D9 	1267
		BTSS 	3H, 0H 			//01DA 	2C03
		LJUMP 	1E1H 			//01DB 	39E1

		//;CC_APP.c: 134: {
		//;CC_APP.c: 135: f_aderr =1;
		BSR 	62H, 0H 			//01DC 	2462

		//;CC_APP.c: 136: adcDatabuf =adcData;
		LDR 	3FH, 0H 			//01DD 	183F
		STR 	3DH 			//01DE 	10BD
		LDR 	3EH, 0H 			//01DF 	183E
		STR 	3CH 			//01E0 	10BC

		//;CC_APP.c: 137: }
		//;CC_APP.c: 138: if((adc0Data > adc0Databuf)&&((adc0Data -adc0Databuf) >100))
		LDR 	39H, 0H 			//01E1 	1839
		SUBWR 	37H, 0H 		//01E2 	1237
		BTSS 	3H, 2H 			//01E3 	2D03
		LJUMP 	1E7H 			//01E4 	39E7
		LDR 	38H, 0H 			//01E5 	1838
		SUBWR 	36H, 0H 		//01E6 	1236
		BTSC 	3H, 0H 			//01E7 	2803
		LJUMP 	1F9H 			//01E8 	39F9
		LDR 	36H, 0H 			//01E9 	1836
		SUBWR 	38H, 0H 		//01EA 	1238
		STR 	67H 			//01EB 	10E7
		LDR 	37H, 0H 			//01EC 	1837
		SUBWFB 	39H, 0H 		//01ED 	0B39
		LCALL 	3F3H 			//01EE 	33F3
		MOVLP 	0H 			//01EF 	0180
		BTSC 	3H, 2H 			//01F0 	2903
		SUBWR 	67H, 0H 		//01F1 	1267
		BTSS 	3H, 0H 			//01F2 	2C03
		LJUMP 	1F9H 			//01F3 	39F9

		//;CC_APP.c: 139: {
		//;CC_APP.c: 140: f_aderr =1;
		BSR 	62H, 0H 			//01F4 	2462

		//;CC_APP.c: 141: adc0Databuf =adc0Data;
		LDR 	39H, 0H 			//01F5 	1839
		STR 	37H 			//01F6 	10B7
		LDR 	38H, 0H 			//01F7 	1838
		STR 	36H 			//01F8 	10B6

		//;CC_APP.c: 142: }
		//;CC_APP.c: 145: r_adbuf = r_adbuf +the0Voltage;
		LDR 	34H, 0H 			//01F9 	1834
		ADDWR 	32H, 1H 		//01FA 	17B2
		LDR 	35H, 0H 			//01FB 	1835
		ADDWFC 	33H, 1H 		//01FC 	0DB3

		//;CC_APP.c: 146: r_adtimes ++;
		INCR 	5FH, 1H 		//01FD 	1ADF

		//;CC_APP.c: 148: if(r_adtimes >32)
		LDWI 	21H 			//01FE 	0021
		SUBWR 	5FH, 0H 		//01FF 	125F
		BTSS 	3H, 0H 			//0200 	2C03
		RET 					//0201 	1008

		//;CC_APP.c: 149: {
		//;CC_APP.c: 150: r_adtimes =0;
		CLRF 	5FH 			//0202 	11DF

		//;CC_APP.c: 151: r_adbuf = (r_adbuf /32);
		LDWI 	5H 			//0203 	0005
		LSRF 	33H, 1H 		//0204 	06B3
		RRR 	32H, 1H 			//0205 	1CB2
		DECRSZ 	9H, 1H 		//0206 	1B89
		LJUMP 	204H 			//0207 	3A04

		//;CC_APP.c: 152: r_test =6;
		LDWI 	6H 			//0208 	0006
		STR 	5CH 			//0209 	10DC

		//;CC_APP.c: 154: if(r_adbuf < 310)
		LDWI 	1H 			//020A 	0001
		SUBWR 	33H, 0H 		//020B 	1233
		LDWI 	36H 			//020C 	0036
		BTSC 	3H, 2H 			//020D 	2903
		SUBWR 	32H, 0H 		//020E 	1232
		BTSC 	3H, 0H 			//020F 	2803
		LJUMP 	213H 			//0210 	3A13

		//;CC_APP.c: 155: {
		//;CC_APP.c: 156: r_ledlevel =0;
		CLRF 	46H 			//0211 	11C6

		//;CC_APP.c: 159: }
		RET 					//0212 	1008

		//;CC_APP.c: 160: else if(r_adbuf < 1200)
		LDWI 	4H 			//0213 	0004
		SUBWR 	33H, 0H 		//0214 	1233
		LDWI 	B0H 			//0215 	00B0
		BTSC 	3H, 2H 			//0216 	2903
		SUBWR 	32H, 0H 		//0217 	1232
		BTSC 	3H, 0H 			//0218 	2803
		LJUMP 	21DH 			//0219 	3A1D

		//;CC_APP.c: 161: {
		//;CC_APP.c: 162: r_ledlevel =1;
		LDWI 	1H 			//021A 	0001
		STR 	46H 			//021B 	10C6

		//;CC_APP.c: 164: }
		RET 					//021C 	1008

		//;CC_APP.c: 166: else if(r_adbuf <( 1500+r_vef*100))
		LCALL 	3DFH 			//021D 	33DF
		MOVLP 	0H 			//021E 	0180
		LCALL 	233H 			//021F 	3233
		MOVLP 	0H 			//0220 	0180
		LCALL 	3CCH 			//0221 	33CC
		MOVLP 	0H 			//0222 	0180
		BTSC 	3H, 0H 			//0223 	2803
		LJUMP 	228H 			//0224 	3A28

		//;CC_APP.c: 167: {
		//;CC_APP.c: 168: r_ledlevel =2;
		LDWI 	2H 			//0225 	0002
		STR 	46H 			//0226 	10C6

		//;CC_APP.c: 170: }
		RET 					//0227 	1008

		//;CC_APP.c: 171: else if(r_adbuf < (1500+r_vef*100))
		LCALL 	3DFH 			//0228 	33DF
		MOVLP 	0H 			//0229 	0180
		LCALL 	233H 			//022A 	3233
		MOVLP 	0H 			//022B 	0180
		LCALL 	3CCH 			//022C 	33CC
		MOVLP 	0H 			//022D 	0180
		BTSC 	3H, 0H 			//022E 	2803
		LJUMP 	211H 			//022F 	3A11

		//;CC_APP.c: 172: {
		//;CC_APP.c: 173: r_ledlevel =3;
		LDWI 	3H 			//0230 	0003
		STR 	46H 			//0231 	10C6

		//;CC_APP.c: 175: }
		RET 					//0232 	1008
		CLRF 	76H 			//0233 	11F6
		CLRF 	77H 			//0234 	11F7
		BTSS 	72H, 0H 		//0235 	2C72
		LJUMP 	23BH 			//0236 	3A3B
		LDR 	74H, 0H 			//0237 	1874
		ADDWR 	76H, 1H 		//0238 	17F6
		LDR 	75H, 0H 			//0239 	1875
		ADDWFC 	77H, 1H 		//023A 	0DF7
		LSLF 	74H, 1H 		//023B 	05F4
		RLR 	75H, 1H 			//023C 	1DF5
		LSRF 	73H, 1H 		//023D 	06F3
		RRR 	72H, 1H 			//023E 	1CF2
		LDR 	72H, 0H 			//023F 	1872
		IORWR 	73H, 0H 		//0240 	1473
		BTSS 	3H, 2H 			//0241 	2D03
		LJUMP 	235H 			//0242 	3A35
		LDR 	77H, 0H 			//0243 	1877
		STR 	73H 			//0244 	10F3
		LDR 	76H, 0H 			//0245 	1876
		STR 	72H 			//0246 	10F2
		RET 					//0247 	1008
		STR 	79H 			//0248 	10F9

		//;CC_FUN.C: 42: ADCON0 &= 0B00001111;
		LDWI 	FH 			//0249 	000F
		MOVLB 	1H 			//024A 	1021
		ANDWR 	1DH, 1H 		//024B 	159D

		//;CC_FUN.C: 43: ADCON0 |= adcChannel<<5;
		LDR 	79H, 0H 			//024C 	1879
		STR 	78H 			//024D 	10F8
		LDWI 	4H 			//024E 	0004
		LSLF 	78H, 1H 		//024F 	05F8
		ADDWI 	FFH 			//0250 	0EFF
		BTSS 	3H, 2H 			//0251 	2D03
		LJUMP 	24FH 			//0252 	3A4F
		LSLF 	78H, 0H 		//0253 	0578
		IORWR 	1DH, 1H 		//0254 	149D

		//;CC_FUN.C: 44: DelayUs(40);
		LDWI 	28H 			//0255 	0028
		STR 	72H 			//0256 	10F2
		CLRF 	73H 			//0257 	11F3
		LCALL 	195H 			//0258 	3195
		MOVLP 	0H 			//0259 	0180

		//;CC_FUN.C: 45: __nop();
		NOP 					//025A 	1000

		//;CC_FUN.C: 46: __nop();
		NOP 					//025B 	1000

		//;CC_FUN.C: 47: __nop();
		NOP 					//025C 	1000

		//;CC_FUN.C: 48: __nop();
		NOP 					//025D 	1000

		//;CC_FUN.C: 49: GO = 1;
		MOVLB 	1H 			//025E 	1021
		BSR 	1DH, 1H 			//025F 	249D

		//;CC_FUN.C: 50: __nop();
		NOP 					//0260 	1000

		//;CC_FUN.C: 51: __nop();
		NOP 					//0261 	1000

		//;CC_FUN.C: 52: while(GO);
		MOVLB 	1H 			//0262 	1021
		BTSC 	1DH, 1H 		//0263 	289D
		LJUMP 	262H 			//0264 	3A62

		//;CC_FUN.C: 54: return (unsigned int)(ADRESH<<8|ADRESL);
		LDR 	1CH, 0H 			//0265 	181C
		STR 	77H 			//0266 	10F7
		CLRF 	76H 			//0267 	11F6
		LDR 	1BH, 0H 			//0268 	181B
		IORWR 	76H, 1H 		//0269 	14F6
		RET 					//026A 	1008
		CLRF 	7AH 			//026B 	11FA
		CLRF 	7BH 			//026C 	11FB
		CLRF 	7CH 			//026D 	11FC
		CLRF 	7DH 			//026E 	11FD
		BTSS 	72H, 0H 		//026F 	2C72
		LJUMP 	279H 			//0270 	3A79
		LDR 	76H, 0H 			//0271 	1876
		ADDWR 	7AH, 1H 		//0272 	17FA
		LDR 	77H, 0H 			//0273 	1877
		ADDWFC 	7BH, 1H 		//0274 	0DFB
		LDR 	78H, 0H 			//0275 	1878
		ADDWFC 	7CH, 1H 		//0276 	0DFC
		LDR 	79H, 0H 			//0277 	1879
		ADDWFC 	7DH, 1H 		//0278 	0DFD
		LSLF 	76H, 1H 		//0279 	05F6
		RLR 	77H, 1H 			//027A 	1DF7
		RLR 	78H, 1H 			//027B 	1DF8
		RLR 	79H, 1H 			//027C 	1DF9
		LSRF 	75H, 1H 		//027D 	06F5
		RRR 	74H, 1H 			//027E 	1CF4
		RRR 	73H, 1H 			//027F 	1CF3
		RRR 	72H, 1H 			//0280 	1CF2
		LDR 	75H, 0H 			//0281 	1875
		IORWR 	74H, 0H 		//0282 	1474
		IORWR 	73H, 0H 		//0283 	1473
		IORWR 	72H, 0H 		//0284 	1472
		BTSS 	3H, 2H 			//0285 	2D03
		LJUMP 	26FH 			//0286 	3A6F
		LDR 	7DH, 0H 			//0287 	187D
		STR 	75H 			//0288 	10F5
		LDR 	7CH, 0H 			//0289 	187C
		STR 	74H 			//028A 	10F4
		LDR 	7BH, 0H 			//028B 	187B
		STR 	73H 			//028C 	10F3
		LDR 	7AH, 0H 			//028D 	187A
		STR 	72H 			//028E 	10F2
		RET 					//028F 	1008

		//;CC_KEY.C: 32: readkey();
		LCALL 	29AH 			//0290 	329A
		MOVLP 	0H 			//0291 	0180

		//;CC_KEY.C: 33: readmode();
		LCALL 	2BFH 			//0292 	32BF
		MOVLP 	0H 			//0293 	0180

		//;CC_KEY.C: 34: if(PB4 ==1)
		BTSS 	DH, 4H 			//0294 	2E0D
		LJUMP 	298H 			//0295 	3A98

		//;CC_KEY.C: 35: {
		//;CC_KEY.C: 36: f_hh =0;
		BCR 	62H, 4H 			//0296 	2262

		//;CC_KEY.C: 37: }
		RET 					//0297 	1008

		//;CC_KEY.C: 38: else
		//;CC_KEY.C: 39: {
		//;CC_KEY.C: 40: f_hh =1;
		BSR 	62H, 4H 			//0298 	2662
		RET 					//0299 	1008

		//;CC_KEY.C: 46: r_keyst =0;
		MOVLB 	0H 			//029A 	1020
		CLRF 	5BH 			//029B 	11DB

		//;CC_KEY.C: 47: if(PC5 == 0)
		BTSC 	EH, 5H 			//029C 	2A8E
		LJUMP 	2A0H 			//029D 	3AA0

		//;CC_KEY.C: 48: {
		//;CC_KEY.C: 49: r_keyst = r_keyst ^ 0x01;
		LDWI 	1H 			//029E 	0001
		XORWR 	5BH, 1H 		//029F 	16DB

		//;CC_KEY.C: 50: }
		//;CC_KEY.C: 51: if(PC4 == 0)
		BTSC 	EH, 4H 			//02A0 	2A0E
		LJUMP 	2A4H 			//02A1 	3AA4

		//;CC_KEY.C: 52: {
		//;CC_KEY.C: 53: r_keyst = r_keyst ^ 0x02;
		LDWI 	2H 			//02A2 	0002
		XORWR 	5BH, 1H 		//02A3 	16DB

		//;CC_KEY.C: 54: }
		//;CC_KEY.C: 55: if(PB2 == 0)
		BTSC 	DH, 2H 			//02A4 	290D
		LJUMP 	2A8H 			//02A5 	3AA8

		//;CC_KEY.C: 56: {
		//;CC_KEY.C: 57: r_keyst = r_keyst ^ 0x04;
		LDWI 	4H 			//02A6 	0004
		XORWR 	5BH, 1H 		//02A7 	16DB

		//;CC_KEY.C: 58: }
		//;CC_KEY.C: 59: if(PB3 == 0)
		BTSC 	DH, 3H 			//02A8 	298D
		LJUMP 	2ACH 			//02A9 	3AAC

		//;CC_KEY.C: 60: {
		//;CC_KEY.C: 61: r_keyst = r_keyst ^ 0x08;
		LDWI 	8H 			//02AA 	0008
		XORWR 	5BH, 1H 		//02AB 	16DB

		//;CC_KEY.C: 62: }
		//;CC_KEY.C: 63: if(PC3 == 0)
		BTSC 	EH, 3H 			//02AC 	298E
		LJUMP 	2B0H 			//02AD 	3AB0

		//;CC_KEY.C: 64: {
		//;CC_KEY.C: 65: r_keyst = r_keyst ^ 0x10;
		LDWI 	10H 			//02AE 	0010
		XORWR 	5BH, 1H 		//02AF 	16DB

		//;CC_KEY.C: 66: }
		//;CC_KEY.C: 67: if(PB4 == 0)
		BTSC 	DH, 4H 			//02B0 	2A0D
		LJUMP 	2B4H 			//02B1 	3AB4

		//;CC_KEY.C: 68: {
		//;CC_KEY.C: 69: r_keyst = r_keyst ^ 0x20;
		LDWI 	20H 			//02B2 	0020
		XORWR 	5BH, 1H 		//02B3 	16DB

		//;CC_KEY.C: 70: }
		//;CC_KEY.C: 71: if(PC7 == 0)
		BTSC 	EH, 7H 			//02B4 	2B8E
		LJUMP 	2B8H 			//02B5 	3AB8

		//;CC_KEY.C: 72: {
		//;CC_KEY.C: 73: r_keyst = r_keyst ^ 0x40;
		LDWI 	40H 			//02B6 	0040
		XORWR 	5BH, 1H 		//02B7 	16DB

		//;CC_KEY.C: 74: }
		//;CC_KEY.C: 75: if(PC6 == 0)
		BTSC 	EH, 6H 			//02B8 	2B0E
		LJUMP 	2BCH 			//02B9 	3ABC

		//;CC_KEY.C: 76: {
		//;CC_KEY.C: 77: r_keyst = r_keyst ^ 0x80;
		LDWI 	80H 			//02BA 	0080
		XORWR 	5BH, 1H 		//02BB 	16DB

		//;CC_KEY.C: 78: }
		//;CC_KEY.C: 79: r_test =1;
		LDWI 	1H 			//02BC 	0001
		STR 	5CH 			//02BD 	10DC
		RET 					//02BE 	1008

		//;CC_KEY.C: 84: if(r_keyst != r_keycvt)
		LDR 	5BH, 0H 			//02BF 	185B
		XORWR 	5AH, 0H 		//02C0 	165A
		BTSC 	3H, 2H 			//02C1 	2903
		RET 					//02C2 	1008

		//;CC_KEY.C: 85: {
		//;CC_KEY.C: 86: r_key++;
		INCR 	59H, 1H 		//02C3 	1AD9

		//;CC_KEY.C: 87: if(r_key >10)
		LDWI 	BH 			//02C4 	000B
		SUBWR 	59H, 0H 		//02C5 	1259
		BTSS 	3H, 0H 			//02C6 	2C03
		RET 					//02C7 	1008

		//;CC_KEY.C: 88: {
		//;CC_KEY.C: 89: r_key =0;
		CLRF 	59H 			//02C8 	11D9

		//;CC_KEY.C: 90: r_keycvt = r_keyst;
		LDR 	5BH, 0H 			//02C9 	185B
		STR 	5AH 			//02CA 	10DA

		//;CC_KEY.C: 91: f_hh =0;
		BCR 	62H, 4H 			//02CB 	2262

		//;CC_KEY.C: 93: if(r_keycvt & 0x01)
		BTSS 	5AH, 0H 		//02CC 	2C5A
		LJUMP 	2D2H 			//02CD 	3AD2

		//;CC_KEY.C: 94: {
		//;CC_KEY.C: 95: r_ontime =150;
		LDWI 	96H 			//02CE 	0096
		STR 	2EH 			//02CF 	10AE
		CLRF 	2FH 			//02D0 	11AF

		//;CC_KEY.C: 96: }
		LJUMP 	2EAH 			//02D1 	3AEA

		//;CC_KEY.C: 97: else if(r_keycvt & 0x02)
		BTSS 	5AH, 1H 		//02D2 	2CDA
		LJUMP 	2D8H 			//02D3 	3AD8

		//;CC_KEY.C: 98: {
		//;CC_KEY.C: 99: r_ontime =300;
		LDWI 	2CH 			//02D4 	002C
		STR 	2EH 			//02D5 	10AE
		LDWI 	1H 			//02D6 	0001
		LJUMP 	2E9H 			//02D7 	3AE9

		//;CC_KEY.C: 100: }
		//;CC_KEY.C: 101: else if(r_keycvt & 0x04)
		BTSS 	5AH, 2H 		//02D8 	2D5A
		LJUMP 	2DEH 			//02D9 	3ADE

		//;CC_KEY.C: 102: {
		//;CC_KEY.C: 103: r_ontime =600;
		LDWI 	58H 			//02DA 	0058
		STR 	2EH 			//02DB 	10AE
		LDWI 	2H 			//02DC 	0002
		LJUMP 	2E9H 			//02DD 	3AE9

		//;CC_KEY.C: 104: }
		//;CC_KEY.C: 105: else if(r_keycvt & 0x08)
		BTSS 	5AH, 3H 		//02DE 	2DDA
		LJUMP 	2E4H 			//02DF 	3AE4

		//;CC_KEY.C: 106: {
		//;CC_KEY.C: 107: r_ontime =1200;
		LDWI 	B0H 			//02E0 	00B0
		STR 	2EH 			//02E1 	10AE
		LDWI 	4H 			//02E2 	0004
		LJUMP 	2E9H 			//02E3 	3AE9

		//;CC_KEY.C: 109: }
		//;CC_KEY.C: 110: else if(r_keycvt & 0x10)
		BTSS 	5AH, 4H 		//02E4 	2E5A
		LJUMP 	2EAH 			//02E5 	3AEA

		//;CC_KEY.C: 111: {
		//;CC_KEY.C: 112: r_ontime =3600;
		LDWI 	10H 			//02E6 	0010
		STR 	2EH 			//02E7 	10AE
		LDWI 	EH 			//02E8 	000E
		STR 	2FH 			//02E9 	10AF

		//;CC_KEY.C: 113: }
		//;CC_KEY.C: 117: }
		//;CC_KEY.C: 118: r_keycvt = r_keyst;
		LDR 	5BH, 0H 			//02EA 	185B
		STR 	5AH 			//02EB 	10DA

		//;CC_KEY.C: 119: r_keycvt = r_keycvt &&0xC0;
		CLRF 	72H 			//02EC 	11F2
		LDR 	5AH, 0H 			//02ED 	185A
		BTSC 	3H, 2H 			//02EE 	2903
		LJUMP 	2F2H 			//02EF 	3AF2
		CLRF 	72H 			//02F0 	11F2
		INCR 	72H, 1H 		//02F1 	1AF2
		LDR 	72H, 0H 			//02F2 	1872
		STR 	5AH 			//02F3 	10DA

		//;CC_KEY.C: 120: if(r_keycvt== 0x80)
		LDWI 	80H 			//02F4 	0080
		XORWR 	5AH, 0H 		//02F5 	165A
		BTSS 	3H, 2H 			//02F6 	2D03
		LJUMP 	2FBH 			//02F7 	3AFB

		//;CC_KEY.C: 121: {
		//;CC_KEY.C: 122: f_4ma =1;
		BSR 	71H, 1H 			//02F8 	24F1

		//;CC_KEY.C: 123: f_3ma =0;
		BCR 	71H, 2H 			//02F9 	2171
		LJUMP 	301H 			//02FA 	3B01

		//;CC_KEY.C: 126: }
		//;CC_KEY.C: 125: f_1ma =0;
		//;CC_KEY.C: 124: f_2ma =0;
		//;CC_KEY.C: 127: else if(r_keycvt== 0x40)
		LDWI 	40H 			//02FB 	0040
		XORWR 	5AH, 0H 		//02FC 	165A
		BTSS 	3H, 2H 			//02FD 	2D03
		LJUMP 	303H 			//02FE 	3B03

		//;CC_KEY.C: 128: {
		//;CC_KEY.C: 129: f_4ma =0;
		BCR 	71H, 1H 			//02FF 	20F1

		//;CC_KEY.C: 130: f_3ma =1;
		BSR 	71H, 2H 			//0300 	2571

		//;CC_KEY.C: 131: f_2ma =0;
		BCR 	71H, 3H 			//0301 	21F1
		LJUMP 	309H 			//0302 	3B09

		//;CC_KEY.C: 133: }
		//;CC_KEY.C: 132: f_1ma =0;
		//;CC_KEY.C: 134: else if(r_keycvt== 0x00)
		LDR 	5AH, 0H 			//0303 	185A
		BTSS 	3H, 2H 			//0304 	2D03
		LJUMP 	30BH 			//0305 	3B0B

		//;CC_KEY.C: 135: {
		//;CC_KEY.C: 136: f_4ma =0;
		BCR 	71H, 1H 			//0306 	20F1

		//;CC_KEY.C: 137: f_3ma =0;
		BCR 	71H, 2H 			//0307 	2171

		//;CC_KEY.C: 138: f_2ma =1;
		BSR 	71H, 3H 			//0308 	25F1

		//;CC_KEY.C: 139: f_1ma =0;
		BCR 	71H, 4H 			//0309 	2271

		//;CC_KEY.C: 140: }
		LJUMP 	313H 			//030A 	3B13

		//;CC_KEY.C: 141: else if(r_keycvt== 0xC0)
		LDWI 	C0H 			//030B 	00C0
		XORWR 	5AH, 0H 		//030C 	165A
		BTSS 	3H, 2H 			//030D 	2D03
		LJUMP 	313H 			//030E 	3B13

		//;CC_KEY.C: 142: {
		//;CC_KEY.C: 143: f_4ma =0;
		BCR 	71H, 1H 			//030F 	20F1

		//;CC_KEY.C: 144: f_3ma =0;
		BCR 	71H, 2H 			//0310 	2171

		//;CC_KEY.C: 145: f_2ma =0;
		BCR 	71H, 3H 			//0311 	21F1

		//;CC_KEY.C: 146: f_1ma =1;
		BSR 	71H, 4H 			//0312 	2671

		//;CC_KEY.C: 147: }
		//;CC_KEY.C: 148: r_keycvt = r_keyst;
		LDR 	5BH, 0H 			//0313 	185B
		STR 	5AH 			//0314 	10DA
		RET 					//0315 	1008

		//;CC_APP.c: 405: r_onkey ++;
		INCR 	24H, 1H 		//0316 	1AA4
		BTSC 	3H, 2H 			//0317 	2903
		INCR 	25H, 1H 		//0318 	1AA5

		//;CC_APP.c: 406: if(r_onkey <5)
		LDWI 	0H 			//0319 	0000
		SUBWR 	25H, 0H 		//031A 	1225
		LDWI 	5H 			//031B 	0005
		BTSC 	3H, 2H 			//031C 	2903
		SUBWR 	24H, 0H 		//031D 	1224
		BTSC 	3H, 0H 			//031E 	2803
		LJUMP 	325H 			//031F 	3B25

		//;CC_APP.c: 407: {
		//;CC_APP.c: 408: TRISA7 =0;
		MOVLB 	1H 			//0320 	1021
		BCR 	CH, 7H 			//0321 	238C

		//;CC_APP.c: 409: LATA7 =1;
		MOVLB 	2H 			//0322 	1022
		BSR 	CH, 7H 			//0323 	278C

		//;CC_APP.c: 410: }
		RET 					//0324 	1008

		//;CC_APP.c: 411: else
		//;CC_APP.c: 412: {
		//;CC_APP.c: 413: r_onkey =0;
		CLRF 	24H 			//0325 	11A4
		CLRF 	25H 			//0326 	11A5

		//;CC_APP.c: 414: __nop();
		NOP 					//0327 	1000

		//;CC_APP.c: 415: TRISA7 =1;
		MOVLB 	1H 			//0328 	1021
		BSR 	CH, 7H 			//0329 	278C

		//;CC_APP.c: 416: DelayUs(100);
		LDWI 	64H 			//032A 	0064
		STR 	72H 			//032B 	10F2
		CLRF 	73H 			//032C 	11F3
		LCALL 	195H 			//032D 	3195
		MOVLP 	0H 			//032E 	0180

		//;CC_APP.c: 417: f_off =0;
		MOVLB 	0H 			//032F 	1020
		BCR 	62H, 3H 			//0330 	21E2

		//;CC_APP.c: 418: if(PA7 ==0)
		BTSC 	CH, 7H 			//0331 	2B8C
		LJUMP 	320H 			//0332 	3B20

		//;CC_APP.c: 419: {
		//;CC_APP.c: 420: TRISA7 =0;
		MOVLB 	1H 			//0333 	1021
		BCR 	CH, 7H 			//0334 	238C

		//;CC_APP.c: 421: LATA7 =0;
		MOVLB 	2H 			//0335 	1022
		BCR 	CH, 7H 			//0336 	238C

		//;CC_APP.c: 423: f_on =0;
		MOVLB 	0H 			//0337 	1020
		BCR 	63H, 7H 			//0338 	23E3

		//;CC_APP.c: 424: LATD4 =0;
		//;CC_APP.c: 425: r_buzzer = 0;
		//;CC_APP.c: 426: f_buz =0;
		//;CC_APP.c: 427: LATA7 =0;
		//;CC_APP.c: 428: INTCON = 0B00000000;
		//;CC_APP.c: 429: ANSELA = 0B00000000;
		//;CC_APP.c: 430: T2CEN =0;
		//;CC_APP.c: 431: TIM2CCER1 =0B00000000;
		//;CC_APP.c: 432: T1CEN =0;
		//;CC_APP.c: 433: TIM1CCER1 =0B00000000;
		//;CC_APP.c: 434: f_on =0;
		//;CC_APP.c: 435: PA5=0;
		//;CC_APP.c: 436: PA6 =0;
		//;CC_APP.c: 437: PC0 = 0;
		//;CC_APP.c: 438: PA1 =0;
		//;CC_APP.c: 439: PA0 =0;
		LCALL 	3A5H 			//0339 	33A5
		SLEEP 					//033A 	1063

		//;CC_APP.c: 442: }
		RET 					//033B 	1008

		//;CC_APP.c: 77: adcData = GET_ADC_DATA(1);
		LDWI 	1H 			//033C 	0001
		LCALL 	248H 			//033D 	3248
		MOVLP 	0H 			//033E 	0180
		LDR 	77H, 0H 			//033F 	1877
		MOVLB 	0H 			//0340 	1020
		STR 	3FH 			//0341 	10BF
		LDR 	76H, 0H 			//0342 	1876
		STR 	3EH 			//0343 	10BE

		//;CC_APP.c: 78: theVoltage = (unsigned long)adcData*2*1000/4096;
		LDR 	3EH, 0H 			//0344 	183E
		STR 	72H 			//0345 	10F2
		LDR 	3FH, 0H 			//0346 	183F
		LCALL 	3BEH 			//0347 	33BE
		MOVLP 	0H 			//0348 	0180
		LCALL 	26BH 			//0349 	326B
		MOVLP 	0H 			//034A 	0180
		LDR 	72H, 0H 			//034B 	1872
		STR 	67H 			//034C 	10E7
		LDR 	73H, 0H 			//034D 	1873
		STR 	68H 			//034E 	10E8
		LDR 	74H, 0H 			//034F 	1874
		STR 	69H 			//0350 	10E9
		LDR 	75H, 0H 			//0351 	1875
		STR 	6AH 			//0352 	10EA
		LDWI 	CH 			//0353 	000C
		LSRF 	6AH, 1H 		//0354 	06EA
		RRR 	69H, 1H 			//0355 	1CE9
		RRR 	68H, 1H 			//0356 	1CE8
		RRR 	67H, 1H 			//0357 	1CE7
		DECRSZ 	9H, 1H 		//0358 	1B89
		LJUMP 	354H 			//0359 	3B54
		LDR 	68H, 0H 			//035A 	1868
		STR 	3BH 			//035B 	10BB
		LDR 	67H, 0H 			//035C 	1867
		STR 	3AH 			//035D 	10BA

		//;CC_APP.c: 79: r_test =5;
		LDWI 	5H 			//035E 	0005
		STR 	5CH 			//035F 	10DC

		//;CC_APP.c: 80: r_adbtbuf = r_adbtbuf +theVoltage;
		LDR 	3AH, 0H 			//0360 	183A
		ADDWR 	30H, 1H 		//0361 	17B0
		LDR 	3BH, 0H 			//0362 	183B
		ADDWFC 	31H, 1H 		//0363 	0DB1

		//;CC_APP.c: 81: r_adbttimes ++;
		INCR 	61H, 1H 		//0364 	1AE1

		//;CC_APP.c: 82: if(r_adbttimes >16)
		LDWI 	11H 			//0365 	0011
		SUBWR 	61H, 0H 		//0366 	1261
		BTSS 	3H, 0H 			//0367 	2C03
		RET 					//0368 	1008

		//;CC_APP.c: 83: {
		//;CC_APP.c: 84: r_adbttimes =0;
		CLRF 	61H 			//0369 	11E1

		//;CC_APP.c: 85: r_adbtbuf = (r_adbtbuf /16);
		SWAPR 	30H, 1H 		//036A 	1EB0
		SWAPR 	31H, 1H 		//036B 	1EB1
		LDWI 	FH 			//036C 	000F
		ANDWR 	30H, 1H 		//036D 	15B0
		LDR 	31H, 0H 			//036E 	1831
		ANDWI 	F0H 			//036F 	09F0
		IORWR 	30H, 1H 		//0370 	14B0
		LDWI 	FH 			//0371 	000F
		ANDWR 	31H, 1H 		//0372 	15B1

		//;CC_APP.c: 86: if(r_adbtbuf <910)
		LDWI 	3H 			//0373 	0003
		SUBWR 	31H, 0H 		//0374 	1231
		LDWI 	8EH 			//0375 	008E
		BTSC 	3H, 2H 			//0376 	2903
		SUBWR 	30H, 0H 		//0377 	1230
		BTSC 	3H, 0H 			//0378 	2803
		LJUMP 	37CH 			//0379 	3B7C

		//;CC_APP.c: 87: {
		//;CC_APP.c: 88: r_vef =0;
		CLRF 	56H 			//037A 	11D6

		//;CC_APP.c: 89: }
		LJUMP 	399H 			//037B 	3B99

		//;CC_APP.c: 90: else if(r_adbtbuf <950)
		LDWI 	3H 			//037C 	0003
		SUBWR 	31H, 0H 		//037D 	1231
		LDWI 	B6H 			//037E 	00B6
		BTSC 	3H, 2H 			//037F 	2903
		SUBWR 	30H, 0H 		//0380 	1230
		BTSC 	3H, 0H 			//0381 	2803
		LJUMP 	385H 			//0382 	3B85

		//;CC_APP.c: 91: {
		//;CC_APP.c: 92: r_vef =1;
		LDWI 	1H 			//0383 	0001
		LJUMP 	398H 			//0384 	3B98

		//;CC_APP.c: 93: }
		//;CC_APP.c: 94: else if(r_adbtbuf <1000)
		LDWI 	3H 			//0385 	0003
		SUBWR 	31H, 0H 		//0386 	1231
		LDWI 	E8H 			//0387 	00E8
		BTSC 	3H, 2H 			//0388 	2903
		SUBWR 	30H, 0H 		//0389 	1230
		BTSC 	3H, 0H 			//038A 	2803
		LJUMP 	38EH 			//038B 	3B8E

		//;CC_APP.c: 95: {
		//;CC_APP.c: 96: r_vef =2;
		LDWI 	2H 			//038C 	0002
		LJUMP 	398H 			//038D 	3B98

		//;CC_APP.c: 97: }
		//;CC_APP.c: 98: else if(r_adbtbuf <1050)
		LDWI 	4H 			//038E 	0004
		SUBWR 	31H, 0H 		//038F 	1231
		LDWI 	1AH 			//0390 	001A
		BTSC 	3H, 2H 			//0391 	2903
		SUBWR 	30H, 0H 		//0392 	1230
		BTSC 	3H, 0H 			//0393 	2803
		LJUMP 	397H 			//0394 	3B97

		//;CC_APP.c: 99: {
		//;CC_APP.c: 100: r_vef =3;
		LDWI 	3H 			//0395 	0003
		LJUMP 	398H 			//0396 	3B98

		//;CC_APP.c: 101: }
		//;CC_APP.c: 102: else
		//;CC_APP.c: 103: {
		//;CC_APP.c: 104: r_vef =4;
		LDWI 	4H 			//0397 	0004
		STR 	56H 			//0398 	10D6

		//;CC_APP.c: 105: }
		//;CC_APP.c: 106: if(r_adbtbuf < 900)
		LDWI 	3H 			//0399 	0003
		SUBWR 	31H, 0H 		//039A 	1231
		LDWI 	84H 			//039B 	0084
		BTSC 	3H, 2H 			//039C 	2903
		SUBWR 	30H, 0H 		//039D 	1230
		BTSC 	3H, 0H 			//039E 	2803
		RET 					//039F 	1008

		//;CC_APP.c: 107: {
		//;CC_APP.c: 112: f_on =0;
		BCR 	63H, 7H 			//03A0 	23E3

		//;CC_APP.c: 113: f_sleep =1;
		BSR 	70H, 4H 			//03A1 	2670

		//;CC_APP.c: 114: r_adbtbuf =0;
		CLRF 	30H 			//03A2 	11B0
		CLRF 	31H 			//03A3 	11B1
		RET 					//03A4 	1008
		MOVLB 	2H 			//03A5 	1022
		BCR 	FH, 4H 			//03A6 	220F
		MOVLB 	0H 			//03A7 	1020
		CLRF 	26H 			//03A8 	11A6
		CLRF 	27H 			//03A9 	11A7
		BCR 	62H, 7H 			//03AA 	23E2
		MOVLB 	2H 			//03AB 	1022
		BCR 	CH, 7H 			//03AC 	238C
		CLRF 	BH 			//03AD 	118B
		MOVLB 	3H 			//03AE 	1023
		CLRF 	17H 			//03AF 	1197
		MOVLB 	6H 			//03B0 	1026
		BCR 	CH, 0H 			//03B1 	200C
		CLRF 	14H 			//03B2 	1194
		MOVLB 	4H 			//03B3 	1024
		BCR 	11H, 0H 			//03B4 	2011
		CLRF 	1DH 			//03B5 	119D
		MOVLB 	0H 			//03B6 	1020
		BCR 	63H, 7H 			//03B7 	23E3
		BCR 	CH, 5H 			//03B8 	228C
		BCR 	CH, 6H 			//03B9 	230C
		BCR 	EH, 0H 			//03BA 	200E
		BCR 	CH, 1H 			//03BB 	208C
		BCR 	CH, 0H 			//03BC 	200C
		RET 					//03BD 	1008
		STR 	73H 			//03BE 	10F3
		LDWI 	3H 			//03BF 	0003
		CLRF 	74H 			//03C0 	11F4
		CLRF 	75H 			//03C1 	11F5
		LSLF 	72H, 1H 		//03C2 	05F2
		RLR 	73H, 1H 			//03C3 	1DF3
		RLR 	74H, 1H 			//03C4 	1DF4
		RLR 	75H, 1H 			//03C5 	1DF5
		CLRF 	79H 			//03C6 	11F9
		CLRF 	78H 			//03C7 	11F8
		STR 	77H 			//03C8 	10F7
		LDWI 	E8H 			//03C9 	00E8
		STR 	76H 			//03CA 	10F6
		RET 					//03CB 	1008
		LDR 	72H, 0H 			//03CC 	1872
		ADDWI 	DCH 			//03CD 	0EDC
		STR 	67H 			//03CE 	10E7
		LDWI 	5H 			//03CF 	0005
		ADDWFC 	73H, 0H 		//03D0 	0D73
		STR 	68H 			//03D1 	10E8
		SUBWR 	33H, 0H 		//03D2 	1233
		BTSS 	3H, 2H 			//03D3 	2D03
		RET 					//03D4 	1008
		LDR 	67H, 0H 			//03D5 	1867
		SUBWR 	32H, 0H 		//03D6 	1232
		RET 					//03D7 	1008
		MOVLB 	2H 			//03D8 	1022
		BCR 	DH, 1H 			//03D9 	208D
		BCR 	FH, 3H 			//03DA 	218F
		BCR 	FH, 2H 			//03DB 	210F
		BCR 	FH, 1H 			//03DC 	208F
		BCR 	FH, 5H 			//03DD 	228F
		RET 					//03DE 	1008
		LDR 	56H, 0H 			//03DF 	1856
		STR 	72H 			//03E0 	10F2
		LDWI 	64H 			//03E1 	0064
		CLRF 	73H 			//03E2 	11F3
		STR 	74H 			//03E3 	10F4
		CLRF 	75H 			//03E4 	11F5
		RET 					//03E5 	1008
		SUBWR 	6BH, 0H 		//03E6 	126B
		STR 	6DH 			//03E7 	10ED
		BTSS 	3H, 0H 			//03E8 	2C03
		DECR 	6EH, 1H 		//03E9 	13EE
		DECR 	6DH, 0H 		//03EA 	136D
		IORWR 	6EH, 0H 		//03EB 	146E
		RET 					//03EC 	1008
		MOVLB 	6H 			//03ED 	1026
		BCR 	CH, 0H 			//03EE 	200C
		MOVLB 	0H 			//03EF 	1020
		BCR 	CH, 5H 			//03F0 	228C
		BCR 	CH, 6H 			//03F1 	230C
		RET 					//03F2 	1008
		STR 	68H 			//03F3 	10E8
		LDWI 	0H 			//03F4 	0000
		SUBWR 	68H, 0H 		//03F5 	1268
		RETW 	65H 			//03F6 	0465

		//;CC_APP.c: 368: if(f_on==0)
		BTSC 	63H, 7H 		//03F7 	2BE3
		RET 					//03F8 	1008

		//;CC_APP.c: 369: {
		//;CC_APP.c: 370: r_buzzer ++;
		INCR 	26H, 1H 		//03F9 	1AA6
		BTSC 	3H, 2H 			//03FA 	2903
		INCR 	27H, 1H 		//03FB 	1AA7

		//;CC_APP.c: 371: if(r_buzzer >200)
		LDWI 	0H 			//03FC 	0000
		SUBWR 	27H, 0H 		//03FD 	1227
		LDWI 	C9H 			//03FE 	00C9
		BTSC 	3H, 2H 			//03FF 	2903
		SUBWR 	26H, 0H 		//0400 	1226
		BTSS 	3H, 0H 			//0401 	2C03
		LJUMP 	408H 			//0402 	3C08

		//;CC_APP.c: 372: {
		//;CC_APP.c: 373: LATD4 =0;
		//;CC_APP.c: 374: r_buzzer = 0;
		//;CC_APP.c: 375: f_buz =0;
		//;CC_APP.c: 376: LATA7 =0;
		//;CC_APP.c: 377: INTCON = 0B00000000;
		//;CC_APP.c: 378: ANSELA = 0B00000000;
		//;CC_APP.c: 379: T2CEN =0;
		//;CC_APP.c: 380: TIM2CCER1 =0B00000000;
		//;CC_APP.c: 381: T1CEN =0;
		//;CC_APP.c: 382: TIM1CCER1 =0B00000000;
		//;CC_APP.c: 383: f_on =0;
		//;CC_APP.c: 384: PA5=0;
		//;CC_APP.c: 385: PA6 =0;
		//;CC_APP.c: 386: PC0 = 0;
		//;CC_APP.c: 387: PA1 =0;
		//;CC_APP.c: 388: PA0 =0;
		LCALL 	3A5H 			//0403 	33A5
		MOVLP 	0H 			//0404 	0180

		//;CC_APP.c: 389: LATB1 =0;
		//;CC_APP.c: 390: LATD3 =0;
		//;CC_APP.c: 391: LATD2 =0;
		//;CC_APP.c: 392: LATD1 =0;
		//;CC_APP.c: 393: LATD5 =0;
		LCALL 	3D8H 			//0405 	33D8
		SLEEP 					//0406 	1063

		//;CC_APP.c: 396: }
		RET 					//0407 	1008

		//;CC_APP.c: 397: else
		//;CC_APP.c: 398: {
		//;CC_APP.c: 399: f_buz =1;
		BSR 	62H, 7H 			//0408 	27E2
		RET 					//0409 	1008
		CLRWDT 			//040A 	1064
		ORG		040BH
		CLRF 	0H 			//040B 	1180
		ADDFSR 	0H, 1H 		//040C 	0101
		DECRSZ 	9H, 1H 		//040D 	1B89
		LJUMP 	40BH 			//040E 	3C0B
		RETW 	0H 			//040F 	0400
			END
