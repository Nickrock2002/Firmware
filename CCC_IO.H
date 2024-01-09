//********************************************************* 
/* 	文件名：CC_io.H
*		功能：  定义IO功能
*  	 IC:     FT60F11x SOP16                 
*   	说明：  
*		
**                      FT60F11x  SOP16 
*                         ----------------
*  VDD--------- -|1(VDD)  (VSS)16|------------VSS     
*  NC------------|2(PA7)   (PA0)15|------------NC 
*  NC------------|3(PA6)   (PA1)14|------------NC
*  NC------------|4(PA5)   (PA2)13|------------NC
*  DemoPort  ---|5(PA4)   (PA3)12|------------NC
*  NC------------|6(PC5)   (PC0)11|------------NC
*  NC------------|7(PC4)   (PC1)10|------------NC
*  NC------------|8(PC3)   (PC2)09|------------NC
*/
//******************************************************

#define SW1				PC5		
#define SW2				PC4	
#define SW3				PB2	
#define SW4				PB3	
#define SW5				PC3	
#define SW6				PB4	
#define SW7				PC7	
#define SW8				PC6	

#define LED1_out				LATB1
#define LED2_out				LATD3
#define LED3_out				LATD2
#define LED4_out				LATD1
#define LED5_out				LATD5

#define PWM1_out			PC0
//#define PWM2_out			PC1
#define BUZ_out				LATD4
#define EN_out					PA5	
#define DC_out				LATA7
#define DC_outm				TRISA7	




//******************************************************
/*
*                  FT60F011A  SOP8 
*                 ----------------
*  VDD----------|1(VDD)    (GND)8|------------GND     
*  DemoPort----|2(PA2)    (PA4)7|----DemoPortOut 
*  NC------------|3(PA1)    (PA5)6|-------------NC
*  NC------------|4(PA3)    (PA0)5|-------------NC
*			      ----------------
*                  FT60F023  SOP16 
*                 ----------------
*  NC------------|1(PA1)   (PA0)16|------------NC     
*  NC------------|2(PA7)   (PA2)15|------------NC 
*  DemoPortIn----|3(PA6)   (PA4)14|---DemoPortOut
*  VDD-----------|4(VDD)   (GND)13|-----------GND
*  NC------------|5(PC7)   (PC0)12|------------NC
*  NC------------|6(PC6)   (PC1)11|------------NC
*  NC------------|7(PC5)   (PC2)10|------------NC
*  NC------------|8(PC4)   (PC3)09|------------NC
*			      ----------------

*                  FT61F023  SOP16 
*                 ----------------
*  VDD-----------|1(VDD)   (VSS)16|-----------GND     
*  NC------------|2(PA7)   (PA0)15|------------NC 
*  NC------------|3(PA6)   (PA1)14|------------NC
*  NC------------|4(PA5)   (PA2)13|------------NC
*  DemoPortIn----|5(PC3)   (PA3)12|---DemoPortOut
*  NC------------|6(PC2)   (PC0)11|------------NC
*  NC------------|7(PA4)   (PC1)10|------------NC
*  NC------------|8(PC5)   (PC4)09|------------NC
*			      ----------------

* Memory: Flash 1KX14b, EEPROM 128X8b, SRAM 64X8b
*                  FT62F21X SOP8 
*                ----------------
*  D ------------|1(PA4)  (PA3)8 |-------------NC 
*  NC------------|2(TKCAP)(PA0)7 |-------------NC
*  NC------------|3(VDD)	(PA1)6 |-------------NC 
*  NC------------|4(VSS)  (PA2)5 |-------------DemoPortIn
*			     ----------------
*/