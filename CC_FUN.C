//********************************************************* 
/*  �ļ�����CC_fun.C
*    ����FUN
*/
//*********************************************************
#include	"SYSCFG.h"
#include	 "CCC_io.h"
#include	 "CCC_data.h"
//**********************************************************
//�궨��****************************************************
#define 	unchar     	unsigned char 
#define 	unint       unsigned int
#define  	unlong 		unsigned long


/*-------------------------------------------------
 * �������ƣ�WDT_INITIAL
 * ���ܣ�	   ��ʼ�����ÿ��Ź�1Sʱ�临λ
 * ��ؼĴ�����
 * 1��INTCON 
 * 2��OPTION
 * 3��WDTCON
 -------------------------------------------------*/
void WDT_INITIAL (void) 
{
  
	CLRWDT();  				//�忴�Ź�
//SA=0;     				//ʱ�ӷ�Ƶ�ָ�WDT
	WDTCON = 0B00001010;	//WDTPS=0101=1:1024,PS=000=1:1
					 		//��ʱʱ��=(1024*1)/32000=32ms
}
//************************

/*-------------------------------------------------
 *  ������: GET_ADC_DATA
 *	���ܣ�  ��ȡͨ��ADCֵ
 *  ���룺  adcChannel ͨ�����
 *  �����  INT����ADֵ(���β������˲�)
 --------------------------------------------------*/
unint GET_ADC_DATA (unchar adcChannel) 
{ 
	ADCON0 &= 0B00001111;        				   
    ADCON0 |= adcChannel<<5; 				//���¼���ͨ��ֵ
	DelayUs(40);                        	//͢ʱ�ȴ���ѹ�ȶ� Tst >10us
	NOP();
    NOP();
    NOP();
    NOP();
	GO = 1;             					//����ADC 
    NOP();
    NOP();
	while(GO);    							//�ȴ�ADCת�����

    return  (unint)(ADRESH<<8|ADRESL);      //����12λADֵ
} 
void DelayUs(unsigned int Time)
{
	unsigned int a;
	for(a=0;a<Time;a++)
	{
		NOP();
	}
} 
/*
unint GET_ADC_DATA (unchar AN_CH) 
{ 
    unchar i;
	unchar 	ADCON0Buff; 
	unint  adc_max_data = 0;
	unint  adc_data=0;
    unint	 adc_min_data =0x3ff;
    unint	 adc_buf=0;
	ADCON0 &= 0B00000111;        				   
    ADCON0 |= AN_CH<<3; 				//���¼���ͨ��ֵ
	DelayUs(40);                        	//͢ʱ�ȴ���ѹ�ȶ� Tst >10us
	ADCON0 = ADCON0|0x02;             					//����ADC 
    NOP();
    NOP();
    for(i=0; i<10; i++) //��������10��
  	{
		while(ADCON0&0x02);    							//�ȴ�ADCת�����
    
	 	adc_data =  0B00001111 & ADRESH;
	 	adc_data <<=8;         
	 	adc_data |= ADRESL;      //12Bit ADCֵ����	
        ADCON0 = ADCON0|0x02; 
		if(adc_data	>adc_max_data)
		{
			adc_max_data	=adc_data;
		}  
		if(adc_data	<adc_min_data)
		{
			adc_min_data	=adc_data;
		}	
		adc_buf	=adc_buf+adc_data;    
  	}
	adc_buf	=adc_buf-adc_max_data-adc_min_data;
	adc_data	=adc_buf>>3;
 	return	adc_data;

}  
*/