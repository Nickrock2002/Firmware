//********************************************************* 
/*  文件名：CC_app.c
*		功能： 消毒灯 
*   IC:    FT60F11x SOP16
*/
//*********************************************************
#include	"SYSCFG.h"
#include	 "CCC_io.h"
#include	 "CCC_data.h"
//*********************************************************
//***********************宏定义*****************************
#define  unchar     unsigned char 
#define  unint        unsigned int
#define  unlong     unsigned long

void app10(void); 
void app11(void);
void app20(void);  
void app30(void);
 
void app40(void);
void app80(void);	

/*-------------------------------------------------
 *  函数名:  app 
 *	功能：  app
 *  输入：  无
 *  输出：  无
 --------------------------------------------------*/
void app(void)
{  

	if(f_on ==1)
    {
 
        
    //    app20();

        app11();
    //    app30();
        if(f_1s ==1)
        {
            f_1s =0;
            f_sleep =0;
 //           app10();
            PB5 =~PB5;
		if(f_conduction==1)         //check if electrodes are conducting
		{ 
			r_ontime --;    		//Decrement treatment timer if electrodes are conducting
		}
			if(r_ontime ==0)
			{
				f_on =0;
				f_sleep =1;
			}
		}

    }
    else
    {

        LED1_out =0;
		LED2_out =0;
		LED3_out =0;
		LED4_out =0;   
        LED5_out =0;   
    } 
    if(f_off==0)
    {
         app40();
    }       
   
    
}
void appbt(void)
{
    adcData = GET_ADC_DATA(1); 					//通道0 AD值
	theVoltage = (unlong)adcData*2*1000/4096;	//电压放大1000倍	
	r_test =5;         
    r_adbtbuf = r_adbtbuf +theVoltage;     
    r_adbttimes ++;
    if(r_adbttimes >16)
    {
        r_adbttimes =0;
        r_adbtbuf = (r_adbtbuf /16);
        if(r_adbtbuf <910)
        {
            r_vef =0;
        }
        else if(r_adbtbuf <950)
        {
            r_vef =1;
        }
        else if(r_adbtbuf <1000)
        {
            r_vef =2;
        }
        else if(r_adbtbuf <1050)
        {
            r_vef =3;
        }
        else
        {
            r_vef =4;
        }
        if(r_adbtbuf < batlow_EQU)
        {
//            r_offdelay ++;
//            if(r_offdelay >=10)
//            {
//                r_offdelay =0;
				f_on =0;
				f_sleep =1;
				r_adbtbuf =0;
//            }
        }
//        else
//        {
//            r_offdelay =0;
//            f_on =1;
//            f_sleep =0;
//        }
        
    }
}
void app10(void)
{
	//adc0Data, adc0Databuf, adc0Data variables used for ADC0
    adc0Data = GET_ADC_DATA(0); 					//通道0 AD值
    the0Voltage = (unlong)adc0Data*2*1000/4096;	//电压放大1000倍	
	r_test =5; 
    f_aderr =0;  
    if((adc0Databuf > adc0Data)&&((adc0Databuf -adc0Data) >100))
    {
        f_aderr =1;
        adc0Databuf =adc0Data;
    }
    if((adc0Data > adc0Databuf)&&((adc0Data -adc0Databuf) >100))
	{
        f_aderr =1;
        adc0Databuf =adc0Data;
    }
	//if(f_aderr ==0)      //f_aderr==0 was never satisfied which did not allowed r_adbuf to update
   // {
		r_adbuf = r_adbuf +the0Voltage;     
		r_adtimes ++;
   // }
    if(r_adtimes >32)
    {
        r_adtimes =0;
        r_adbuf = (r_adbuf /32);
        r_test =6;

        if(r_adbuf < level1_EQU)
 		{
    		r_ledlevel =0;
             
        }       
        else if(r_adbuf < level2_EQU)
        {
            r_ledlevel =1;    
            
            
        }        

        else if(r_adbuf <( level3_EQU+r_vef*100))
        {
            r_ledlevel =2;
        }
       else if(r_adbuf < (level4_EQU+r_vef*100))
        {
            r_ledlevel =3;
            
        }        
//        else if(r_adbuf < level5_EQU)
//        {
//            r_ledlevel =4;
//        }
        else 
        {
            r_ledlevel = 0;   //When Thumb-wheel is not at maximum position disable yellow LED's and  stop internal Timer
            
        }
//        r_ledlevel =2;
//        r_adbuf =0;
    }
}
void app11(void)
{
     r_50mstime ++;
     if(r_50mstime <51)
     {
         LED1_out =0;
		LED2_out =0;
		LED3_out =0;
		LED4_out =0;
        LED5_out =0; 
        app10();            // Check electrodes conduction all the time
         f_push = ~f_push;
         if(f_push ==1)
         {
			TIM2CNTRH =0B00000000;//TIM2计数器
			TIM2CNTRL =0B00000000;            
            T2CEN =1;
            DelayUs(200); 
            DelayUs(200);  
//            DelayUs(200);   
           // app10();     //Default code was alterned // app10() - LED indicators were not updated when electrodes were not conducting
            
         }
         else
         {
//            app10();
            T2CEN =0;
            PA5=0;
            PA6 =0;      
            
         }
     }
      else if(r_50mstime <52)
      {
         
            T2CEN =0;  
            PA5=0;
            PA6 =0;             
            app30();
      }
     
     else if(r_50mstime <66) 
     {
        f_pwm =1;
        f_pwmno =0;
        r_pwmt =0;

//        if((r_ledlevel !=r_ledlevelbuf)&&(f_ledlevel ==0))
//        {
//            r_ledleveldelay =0;
//            f_ledlevel =1;
//        }
//        if(f_ledlevel ==1)
//        {
//			r_ledleveldelay ++;
//            if(r_ledleveldelay >250)
//            {
//                r_ledlevelbuf = r_ledlevel ;
//                f_ledlevel =0;
//                r_ledleveldelay =0;
//            }
//        }
//-----------------------------------------------
        if(((r_ledlevelbuf -r_ledlevel) ==1)||((r_ledlevel -r_ledlevelbuf)==1))
        {
            r_leveldelay ++;
            if(r_leveldelay >=50)
            {
                r_ledlevelbuf =r_ledlevel;
            }
        }
        else
        {
            r_leveldelay =0;
            r_ledlevelbuf =r_ledlevel;
        }
        r_ledlevelbuf =r_ledlevel;
//---------------------------------------------------
         if(f_ledoff ==1)
         {
            LED5_out =1; 
			if(r_ledlevelbuf==1)
			{             
            LED1_out =1;
            LED2_out =1;
            f_conduction=1;               //Enable conduction flag
			}
			else if(r_ledlevelbuf ==2)
			{        
            LED1_out =1;        
            LED2_out =1;
            f_conduction=1;               //Enable conduction flag
			}
			else if(r_ledlevelbuf ==3)
			{  
            LED1_out =1;        
            LED2_out =1;  
            f_conduction=1;                //Enable conduction flag 
			}
			else if(r_ledlevelbuf ==4)
			{
            LED1_out =1;        
            LED2_out =1;     
            f_conduction=1;                 //Enable conduction flag         
			}
            else
            {
            LED1_out =0;        
            LED2_out =0;  
            f_conduction=0;                  //Disable conduction flag        
          // LED3_out =0;            
          // LED4_out =0;
            }   
        }
     }
     else 
     {   
        T1CEN=0;   
//        TIM1CCER1 =0B00000000;
		f_pwm =0;
        if(f_ledoff ==1)
        {
            f_ledoff =0;
        }
        else
        {
            f_ledoff =1;
        }
         f_one = ~f_one;
         if(f_hh ==1)
         {
			if(f_one ==1)
			{
				RC0 =1;
                RA1 =1;
				RA0 =0;
			}
			else
			{  
				RC0 =0;
                RA1 =0;
				RA0 =1;          
			}
         }
         else
         {			
             RC0 =0;
             RA1 =0;
             RA0 =1;
         }
         f_push = 0;            
            LED1_out =0;
			LED2_out =0;
			LED3_out =0;
			LED4_out =0;   
			LED5_out =0;   
         r_50mstime =0;  
         appbt();     
     }
}

void app40(void)
{
  if(f_on==0)
  {
      r_buzzer ++;
      if(r_buzzer >200)
      { 
          BUZ_out =0;
          r_buzzer = 0;
          f_buz =0;
          DC_out =0;
          INTCON = 0B00000000;     
          ANSELA = 0B00000000;
             T2CEN =0;
            TIM2CCER1 =0B00000000;            
            T1CEN =0;
            TIM1CCER1 =0B00000000;
            f_on =0;
            PA5=0;
            PA6 =0;  
            PC0 = 0;
            PA1 =0;
            PA0 =0;            
            LED1_out =0;
			LED2_out =0;
			LED3_out =0;
			LED4_out =0;   
			LED5_out =0;   
                 
		    SLEEP(); 
      }
      else
      {
          f_buz =1;
      }
  }
}
void app30(void)
{
	r_onkey ++;
	if(r_onkey <5)
	{
		DC_outm =0;
		DC_out =1;
	}
	else
	{
		r_onkey =0;
		NOP();
		DC_outm =1;	
		DelayUs(100);    
		f_off =0;
		if(PA7 ==0) 
		{
			DC_outm =0;
			DC_out =0;             
			f_off==1;
			f_on =0;           
            BUZ_out =0;
          r_buzzer = 0;
          f_buz =0;
          DC_out =0;
          INTCON = 0B00000000;     
          ANSELA = 0B00000000;
             T2CEN =0;
            TIM2CCER1 =0B00000000;            
            T1CEN =0;
            TIM1CCER1 =0B00000000;
            f_on =0;
            PA5=0;
            PA6 =0;  
            PC0 = 0;
            PA1 =0;
            PA0 =0;        
		    SLEEP(); 
             
		}
		else
		{
			DC_outm =0;
			DC_out =1;
		}       
	}
}   
  