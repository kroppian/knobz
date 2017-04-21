
#define F_CPU 16000000UL

#include <avr/io.h>
#include <util/delay.h>
#include <avr/interrupt.h>
#include "libuart.h"

#define CHANNEL_0 0
#define CHANNEL_1 (1 << MUX0)
#define CHANNEL_2 (1 << MUX1)
#define CHANNEL_3 (1 << MUX0) | (1 << MUX1)
#define CHANNEL_4 (1 << MUX2)
#define CHANNEL_5 (1 << MUX2) | (1 << MUX0)
#define ADMUX_DEFAULT (1 << REFS0) | (1 << ADLAR)

volatile unsigned char receivedByte;

int main()
{

  DDRB |= 1 << PINB1;

  for(int j = 0; j < 4; j++){
    PORTB ^= 1 << PINB1;
    _delay_ms(300);
  }

  // 1. baud rate
  // 2. async dub speed
  // 3. data bit size 
  // 4. parity 
  // 5. stop bits
  // 6. Usart interupt 
  initialize_uart(9600, 0, 8, NONE, 1, TRUE);


  // Enable a prescaler (based on the internal/external clock)
  // Has to be between 16000000/50000 (320) and 16000000/200000 (80). 50000 and 200000 
  // come from the datasheet 
  ADCSRA |= (1 << ADPS0) | (1 << ADPS1) | (1 << ADPS2);
 
  // Set the reference voltage source
  ADMUX |= ADMUX_DEFAULT;

  ADCSRA |= (1 << ADIE);
  ADCSRA |= (1 << ADEN);

  sei();

  // Turn on the ADC filter
  ADCSRA |= (1 << ADSC);
   

  while(1)
  {
  }
}


ISR(ADC_vect){

  int myNum = ADCH;

  switch(ADMUX){
    case (ADMUX_DEFAULT | CHANNEL_0): 
      // Switch to next channel
      ADMUX = ADMUX_DEFAULT | CHANNEL_1;
      // Open packet
      uart_send(0x0F);  
      // Send current levels
      uart_send(myNum); 
      break;
    case (ADMUX_DEFAULT | CHANNEL_1): 
      // Switch to next channel
      ADMUX = ADMUX_DEFAULT | CHANNEL_2;
      // Send current levels
      uart_send(myNum);  
      break;
    case (ADMUX_DEFAULT | CHANNEL_2): 
      // Switch to next channel
      ADMUX = ADMUX_DEFAULT | CHANNEL_3;
      // Send current levels
      uart_send(myNum);  
      break;
    case (ADMUX_DEFAULT | CHANNEL_3): 
      // Switch to next channel
      ADMUX = ADMUX_DEFAULT | CHANNEL_4;
      // Send current levels
      uart_send(myNum);  
      break;
    case (ADMUX_DEFAULT | CHANNEL_4): 
      // Switch to next channel
      ADMUX = ADMUX_DEFAULT | CHANNEL_5;
      // Send current levels
      uart_send(myNum);  
      break;
    case (ADMUX_DEFAULT | CHANNEL_5): 
      // Switch to first channel
      ADMUX = ADMUX_DEFAULT | CHANNEL_0;
      // Send current levels
      uart_send(myNum);  
      // Close packet
      uart_send(0xF0);  
      break;
    default:
      // error handling
      uart_send(0xFF);  
      uart_send(ADMUX);  
      break;

  }

  // Turn on the ADC filter
  ADCSRA |= (1 << ADSC);
    
}

