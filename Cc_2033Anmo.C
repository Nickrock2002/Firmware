//Project: Cc_2033Anmo.prj
// Device: FT61F08X
// Memory: Flash 8KX14b, EEPROM 256X8b, SRAM 1KX8b
// Author: 
//Company: 
//Version:
//   Date: 
//===========================================================
//===========================================================
#include	"SYSCFG.h"
#include	 "CCC_io.h"
#include	 "CCC_data.h"


//===========================================================
//Variable definition
//===========================================================

//===========================================================
//Funtion name��interrupt ISR
//parameters����
//returned value����
//===========================================================

//===========================================================
//Funtion name��main
//parameters����
//returned value����
//===========================================================
main()
{	
    POWER_INITIAL();		//ϵͳ��ʼ��
	TIMER0_INITIAL();
    Time2Initial();        
//    Time1Initial();  
    
    Time4Initial();
    ADC_INITIAL();
 //   PWM1_INITIAL ();    
	f_sleep =1;
 
    f_on =1;
    DC_out =1;      
    
	while(1)
	{	

	 	CLRWDT(); 		   //�忴�Ź�
        if(f_1ms ==1)                                                                                                                
        {
			f_1ms =0;
			r_1stime ++;
            if(r_1stime >1000)
            {                                                                                                                                                                                                                
                r_1stime =0;
                f_1s =1;
            }
            app();
            
            key();
        }  
	}
    
}
//===========================================================