
//***********************宏定义*****************************
#define unchar	unsigned char 
#define unint	unsigned int
#define unlong	unsigned long
#define	uchar	unsigned char
#define uint	unsigned int
//************************数定义****************************
void POWER_INITIAL(void);

void TIMER0_INITIAL (void);
void PWM1_INITIAL (void); 
void Time2Initial(void);
void Time1Initial(void);
void Time4Initial(void);
void interrupt ISR(void);
void WDT_INITIAL(void);
uchar DelayMs(unsigned char Time);
void DelayUs(unsigned int Time);
unchar EEPROMread(unchar EEAddr);
void EEPROMwrite(unchar EEAddr,unchar Data);
void app(void);
void key(void);
void sleep(void);
void ADC_INITIAL(void);
unint GET_ADC_DATA (unchar adcChannel); 
//char Time DelayUs(unsigned char Time);


//************************常量定义**************************


#define 		SYS_OFF_COUNT_DATA_EQU				1800

#define 		Time_3m_DATA_EQU						12000		//*100ms
#define 		NTC_10MINS_DATA_EQU						6000
#define			xdtime_DATA_EQU							1200

//Updated level_EQU values to enable conduction after thumbwheel rotation to max position
#define 		level1_EQU										310//50
#define 		level2_EQU										1200//500//300//200
//#define 		level3_EQU										800//400
//#define 		level4_EQU										1000//800
#define 		level3_EQU										1500//700//300//400
#define 		level4_EQU										1500//1200//700//800
//#define 		level2_EQU										200
//#define 		level3_EQU										300
//#define 		level4_EQU										500
#define 		level5_EQU										1500
#define 		batlow_EQU										900//850
//************************变量定义**************************

volatile bit    f_1ms	=0;
volatile bit    f_10ms	=0;
volatile bit    f_1s	=0;
volatile bit    f_1ma	=0;
volatile bit    f_2ma	=0;
volatile bit    f_3ma	=0;
volatile bit    f_4ma	=0;
volatile bit    f_led1	=0;
volatile bit    f_led2	=0;
volatile bit    f_led3	=0;
volatile bit    f_led4	=0;
volatile bit    f_sleep	=0;
volatile bit    f_ledoff	=0;
volatile bit    f_conduction	=0;  // Declaration of flag to determine electrodes are conducting signal or not
volatile bit    f_ledlevel	=0;
volatile bit    f_key1	=0;
volatile bit    f_key2	=0;
volatile bit    f_io	=0;
volatile bit    f_dc	=0;
volatile bit    fb_dc	=0;
volatile bit    fb_ntc	=0;
volatile bit    f_ntc	=0;
volatile bit    f_cds	=0;
volatile bit    f_kfin	=0;
volatile bit    fb_kfin	=0;
volatile bit    fl_kfin	=0;
volatile bit    f_nop	=0;
volatile bit    f_delay2s	=0;
volatile bit    f_delay3m	=0;
volatile bit    f_np3m=0;
volatile bit    f_xd=0;
volatile bit    f_wled=0;
volatile bit    f_dcfast=0;
volatile bit    f_rled=0;
volatile bit    f_on=0;
volatile bit    f_key1s=0;
volatile bit    f_key1and2=0;
volatile bit    f_key1l=0;
volatile bit    f_readeep=0;
volatile bit    f_test=0;
volatile bit    sleep_ok_f	=0;
volatile bit    f_push=0;
volatile bit    f_buz=0;
volatile bit	f_one =0;
volatile bit	f_pwm=0;
volatile bit	f_hh=0;
volatile bit	f_off=0;
volatile uint	adcData=0;        // Variable declaration for ADC1
volatile uint	adcDatabuf=0;     // Variable declaration for ADC1
volatile uint	theVoltage=0;     // Variable declaration for ADC1
volatile uint	adc0Data=0;       // Variable declaration for ADC0 
volatile uint	adc0Databuf=0;	  // Variable declaration for ADC0 
volatile uint	the0Voltage=0;	  // Variable declaration for ADC0 
volatile uint	r_adbuf=0;
volatile uint	r_adbtbuf =0;
volatile uchar	r_adbttimes	=0;
volatile uchar	r_50mstime	=0;
volatile uchar	r_adtimes	=0;


volatile uchar	r_mode	=0;
volatile uchar	r_modeS	=0;
volatile uchar	r_test	=0;
volatile uchar	r_keyst	=0;
volatile uchar	r_keycvt	=0;
volatile uchar	r_key	=0;
volatile uint	r_ontime	=0;
volatile uint	r_1stime	=0;
volatile uchar	r_1ms	=0;
volatile uint	r_dc	=0;
volatile uint	r_ntc	=0;
volatile uint	r_kfin	=0;
volatile uint	rl_kfin	=0;
volatile uint	r_delay2s	=0;
volatile uint	r_delay2sh	=0;
volatile uint	r_delay3m	=0;
volatile uint	r_xdtime	=0;
volatile uchar	r_bufpwm	=0;
volatile uchar	r_vef	=0;
volatile uchar	r_spwm	=0;
volatile uint 	r_buzzer =0;
volatile uchar	PORTA_IN	=0;
volatile uchar	sleep_count	=0;
volatile uint	r_onkey	=0;
volatile uint	bat_ch_in_and_out_max_data	=0;


volatile uchar	led_count	=0;
volatile uchar	led_times	=0;
volatile uint	led_on_count	=0,ch_full_led_count	=0;

volatile uint		r_buztime =0;

volatile uchar	lvd_count	=0;
volatile uchar	lvd_off_count	=0;

volatile uchar	int_count	=0;
volatile uchar	ch_in_count	=0;


volatile uchar	number	=0;
volatile uchar	led_dis_buf	=0;
volatile uchar	this_dis_bat_data	=0;
volatile uchar	tig_dis_bat_data	=0;
//volatile uchar	r_ledlevel	=0;
//volatile uchar	r_ledlevelbuf	=0;

volatile uchar	led_ram[3]	=0;
volatile uchar	led_com_count	=0;


volatile uchar	first_count	=0;
volatile uchar	r_ledlevel =0;
volatile uchar	r_ledlevelbuf =0;
volatile uchar	r_ledleveldelay =0;
volatile uchar	stop_count	=0;


volatile  unchar EEReadData; 

volatile bit    f_2t=0;
volatile bit    f_pwmno=0;
volatile bit	f_aderr =0;
volatile uint	r_levelbuf=0;
volatile uchar	r_adval1	=0;
volatile uint	r_leveldelay =0;
volatile uchar	r_pwmt	=0;

//volatile uint	r_offdelay =0;