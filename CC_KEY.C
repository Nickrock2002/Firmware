//********************************************************* 
/*  文件名：CC_key.c
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

void	readmode(void);
void readdc(void);
void readkf(void);
void readcds(void);
void readntc(void);
void readkey(void);
void delaynop(void);
/*-------------------------------------------------
 *  函数名:  key
 *	功能：  key
 *  输入：  无
 *  输出：  无
 --------------------------------------------------*/
 void key(void)
 {

	readkey();
	readmode();
    if(SW6 ==1)
    {
        f_hh =0;
    }
    else
    {
        f_hh =1;
    }
 }

void readkey(void)
{
   	r_keyst	=0;
    if(SW1 == 0)
    {
        r_keyst	= r_keyst ^ 0x01;
    }
    if(SW2 == 0)
    {
        r_keyst	= r_keyst ^ 0x02;
    }
    if(SW3 == 0)
    {
        r_keyst	= r_keyst ^ 0x04;
    }
    if(SW4 == 0)
    {
        r_keyst	= r_keyst ^ 0x08;
    }
    if(SW5 == 0)
    {
        r_keyst	= r_keyst ^ 0x10;
    }
     if(SW6 == 0)
    {
        r_keyst	= r_keyst ^ 0x20;
    }
    if(SW7 == 0)
    {
        r_keyst	= r_keyst ^ 0x40;
    } 
     if(SW8 == 0)
    {
        r_keyst	= r_keyst ^ 0x80;
    }   
    r_test =1;
} 

void	readmode(void)           
 {
	if(r_keyst != r_keycvt)
    {      
		r_key++;
        if(r_key >10)
        {
            r_key =0;
            r_keycvt = r_keyst;
            f_hh =0;
//            r_keycvt = r_keycvt & 0x3f;
            if(r_keycvt & 0x01)
            {
				r_ontime =150;
            }
            else if(r_keycvt & 0x02)
            {
				r_ontime =300;
            }
             else if(r_keycvt & 0x04)
            {
                r_ontime =600;
            }
             else if(r_keycvt & 0x08)
            {
                r_ontime =1200;
                
            }
            else if(r_keycvt &  0x10)
            {
                r_ontime =3600;
            }
            else if(r_keycvt &  0x20)
            {
   //             f_hh =1; 
            }  
			r_keycvt = r_keyst;
            r_keycvt = r_keycvt &&0xC0; 
            if(r_keycvt== 0x80)  
            {
                f_4ma =1;
                f_3ma =0;
                f_2ma =0;
                f_1ma =0;
            } 
            else if(r_keycvt== 0x40)
            {
                f_4ma =0;
                f_3ma =1;
                f_2ma =0;
                f_1ma =0;
            }  
            else if(r_keycvt== 0x00)
            {
                f_4ma =0;
                f_3ma =0;
                f_2ma =1;
                f_1ma =0;
            }  
             else if(r_keycvt== 0xC0)
            {
                f_4ma =0;
                f_3ma =0;
                f_2ma =0;
                f_1ma =1;
            }  
            r_keycvt = r_keyst;                                                                    
        }
    }
    else
	{

    }
 }
  
void delaynop(void)
{
	NOP();
    NOP();
    NOP(); 
}