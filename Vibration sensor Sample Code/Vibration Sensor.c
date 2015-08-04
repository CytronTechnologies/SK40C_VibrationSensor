//==========================================================================
//	Author					: CYTRON TECHNOLOGIES SDN BHD	
//	Project					: SN-VBR-18010P
//							  Vibration sensor act like a normally open switch, 
//							  when it senses vibration,the terminals touches 
//						      together and create a short.
					  
//==========================================================================

//	include
//==========================================================================
#include <pic.h>

//configuration
//==========================================================================
__CONFIG ( 0x3F32 );		//configuration for the  microcontroller

//	define
//==========================================================================
#define	rs			RB4			//RS pin of the LCD display
#define	e			RB5			//E pin of the LCD display

#define	lcd_data	PORTD		//LCD 8-bit data PORT

#define	vibr		RB0			
#define	SW2			RB1	
#define	LED1		RB6			
#define	buzzer		RB7				

//	function prototype		(every function must have a function prototype)
//==========================================================================
void delay(unsigned long data);			
void send_config(unsigned char data);
void send_char(unsigned char data);
void lcd_goto(unsigned char data);
void lcd_clr(void);
void send_string(const char *s);
void uart_send(unsigned char data);



//	global variable
//==========================================================================

//	main function					(main fucntion of the program)
//==========================================================================
void main()
{
	unsigned long delay_time=5000;

	//set I/O input output
	TRISB = 0b00000011;				//configure PORTB I/O direction
	TRISD = 0b00000000;				//configure PORTD I/O direction
	TRISA = 0b00000111;				//configure PORTA I/O direction
	
	//setup ADC
	ADCON1 = 0b00000110;				//set ADx pin digital I/O
	
	//configure lcd
	send_config(0b00000001);			//clear display at lcd
	send_config(0b00000010);			//lcd return to home 
	send_config(0b00000110);			//entry mode-cursor increase 1
	send_config(0b00001100);			//display on, cursor off and cursor blink off
	send_config(0b00111000);			//function set

	//display startup message	
	lcd_clr();							//clear lcd
	lcd_goto(0);						//set the lcd cursor to location 0
	send_string("VIBR. SENSOR");		//display "VIBR. SENSOR"

	LED1=0;								//OFF LED1
	buzzer=0;							//OFF buzzer
	
	while(1)							//Infinite loop
	{
		while(vibr==0)
		{
			while (vibr == 1);
			lcd_goto(20);
			send_string("Buzzer ON ");
			buzzer=1;
			
			delay(500000);
			buzzer=0;
			lcd_goto(20);
			send_string("Buzzer OFF ");
		}	
	}
}

//	functions
//==========================================================================
void delay(unsigned long data)			//delay function, the delay time
{										//depend on the given value
	for( ;data>0;data--);
}

void send_config(unsigned char data)	//send lcd configuration 
{
	rs=0;								//set lcd to configuration mode
	lcd_data=data;						//lcd data port = data
	e=1;								//pulse e to confirm the data
	delay(50);
	e=0;
	delay(50);
}

void send_char(unsigned char data)		//send lcd character
{
 	rs=1;								//set lcd to display mode
	lcd_data=data;						//lcd data port = data
	e=1;								//pulse e to confirm the data
	delay(10);
	e=0;
	delay(10);
}

void lcd_goto(unsigned char data)		//set the location of the lcd cursor
{										//if the given value is (0-15) the 
 	if(data<16)							//cursor will be at the upper line
	{									//if the given value is (20-35) the 
	 	send_config(0x80+data);			//cursor will be at the lower line
	}									//location of the lcd cursor(2X16):
	else								// -----------------------------------------------------
	{									// | |00|01|02|03|04|05|06|07|08|09|10|11|12|13|14|15| |
	 	data=data-20;					// | |20|21|22|23|24|25|26|27|28|29|30|31|32|33|34|35| |
		send_config(0xc0+data);			// -----------------------------------------------------	
	}
}

void lcd_clr(void)						//clear the lcd
{
 	send_config(0x01);
	delay(600);	
}

void send_string(const char *s)			//send a string to display in the lcd
{          
  	while (s && *s)send_char (*s++);
}



