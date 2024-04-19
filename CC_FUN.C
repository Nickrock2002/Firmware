//********************************************************* 
/*  文件名：CC_fun.C
*    驱动FUN
*/
//*********************************************************
#include	"SYSCFG.h"
#include	 "CCC_io.h"
#include	 "CCC_data.h"
//**********************************************************
//宏定义****************************************************
#define 	unchar     	unsigned char 
#define 	unint       unsigned int
#define  	unlong 		unsigned long


/*-------------------------------------------------
 * 函数名称：WDT_INITIAL
 * 功能：	   初始化设置看门狗1S时间复位
 * 相关寄存器：
 * 1、INTCON 
 * 2、OPTION
 * 3、WDTCON
 -------------------------------------------------*/
void WDT_INITIAL (void) 
{
  
	CLRWDT();  				//清看门狗
//SA=0;     				//时钟分频分给WDT
	WDTCON = 0B00001010;	//WDTPS=0101=1:1024,PS=000=1:1
					 		//定时时间=(1024*1)/32000=32ms
}
//************************

/*-------------------------------------------------
 *  函数名: GET_ADC_DATA
 *	功能：  读取通道ADC值
 *  输入：  adcChannel 通道序号
 *  输出：  INT类型AD值(单次采样无滤波)
 --------------------------------------------------*/
unint GET_ADC_DATA (unchar adcChannel) 
{ 
	ADCON0 &= 0B00001111;        				   
    ADCON0 |= adcChannel<<5; 				// Enable ADC0 data // When 4 only ADC1 data was captured //重新加载通道值
	DelayUs(40);                        	//廷时等待电压稳定 Tst >10us
	NOP();
    NOP();
    NOP();
    NOP();
	GO = 1;             					//启动ADC 
    NOP();
    NOP();
	while(GO);    							//等待ADC转换完成

    return  (unint)(ADRESH<<8|ADRESL);      //整合12位AD值
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
    ADCON0 |= AN_CH<<3; 				//重新加载通道值
	DelayUs(40);                        	//廷时等待电压稳定 Tst >10us
	ADCON0 = ADCON0|0x02;             					//启动ADC 
    NOP();
    NOP();
    for(i=0; i<10; i++) //连续采样10次
  	{
		while(ADCON0&0x02);    							//等待ADC转换完成
    
	 	adc_data =  0B00001111 & ADRESH;
	 	adc_data <<=8;         
	 	adc_data |= ADRESL;      //12Bit ADC值整合	
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