#include "stm32f4xx.h"
#include <string.h>
#include <stdio.h>
void Logic_and()
{
char Msg[100];
	 char *ptr;
	sprintf(Msg,"Logic Function : AND\n");
	 ptr = Msg ;
   while(*ptr != '\0'){
      ITM_SendChar(*ptr);
      ++ptr;
   }
	 sprintf(Msg,"X0\tX1\tX2\tY\n");
	 ptr = Msg ;
   while(*ptr != '\0'){
      ITM_SendChar(*ptr);
      ++ptr;
   }
}

void Logic_or()
{
char Msg[100];
	 char *ptr;
	sprintf(Msg,"Logic Function : OR\n");
	 ptr = Msg ;
   while(*ptr != '\0'){
      ITM_SendChar(*ptr);
      ++ptr;
   }
	 sprintf(Msg,"X0\tX1\tX2\tY\n");
	 ptr = Msg ;
   while(*ptr != '\0'){
      ITM_SendChar(*ptr);
      ++ptr;
   }
}

void Logic_not()
{
char Msg[100];
	 char *ptr;
	sprintf(Msg,"Logic Function : NOT\n");
	 ptr = Msg ;
   while(*ptr != '\0'){
      ITM_SendChar(*ptr);
      ++ptr;
   }
	 sprintf(Msg,"X0\tX1\tY\n");
	 ptr = Msg ;
   while(*ptr != '\0'){
      ITM_SendChar(*ptr);
      ++ptr;
   }
}

void Logic_nand()
{
char Msg[100];
	 char *ptr;
	sprintf(Msg,"Logic Function : NAND\n");
	 ptr = Msg ;
   while(*ptr != '\0'){
      ITM_SendChar(*ptr);
      ++ptr;
   }
	 sprintf(Msg,"X0\tX1\tX2\tY\n");
	 ptr = Msg ;
   while(*ptr != '\0'){
      ITM_SendChar(*ptr);
      ++ptr;
   }
}

void Logic_nor()
{
char Msg[100];
	 char *ptr;
	sprintf(Msg,"Logic Function : NOR\n");
	 ptr = Msg ;
   while(*ptr != '\0'){
      ITM_SendChar(*ptr);
      ++ptr;
   }
	 sprintf(Msg,"X0\tX1\tX2\tY\n");
	 ptr = Msg ;
   while(*ptr != '\0'){
      ITM_SendChar(*ptr);
      ++ptr;
   }
}

void Logic_xor()
{
char Msg[100];
	 char *ptr;
	sprintf(Msg,"Logic Function : XOR\n");
	 ptr = Msg ;
   while(*ptr != '\0'){
      ITM_SendChar(*ptr);
      ++ptr;
   }
	 sprintf(Msg,"X0\tX1\tX2\tY\n");
	 ptr = Msg ;
   while(*ptr != '\0'){
      ITM_SendChar(*ptr);
      ++ptr;
   }
}

void Logic_xnor()
{
char Msg[100];
	 char *ptr;
	sprintf(Msg,"Logic Function : XNOR\n");
	 ptr = Msg ;
   while(*ptr != '\0'){
      ITM_SendChar(*ptr);
      ++ptr;
   }
	 sprintf(Msg,"X0\tX1\tX2\tY\n");
	 ptr = Msg ;
   while(*ptr != '\0'){
      ITM_SendChar(*ptr);
      ++ptr;
   }
}


void printMsg(const int a)
{
	 char Msg[100];
	 char *ptr;

	 //Printing the first parameter
	 sprintf(Msg, "%i\t", a);
	 ptr = Msg ;
   while(*ptr != '\0')
	 {
      ITM_SendChar(*ptr);
      ++ptr;
   }
	 
}

void printSpace()
{
char Msg[100];
	 char *ptr;
	sprintf(Msg,"\n");
	 ptr = Msg ;
   while(*ptr != '\0'){
      ITM_SendChar(*ptr);
      ++ptr;
   }
}

