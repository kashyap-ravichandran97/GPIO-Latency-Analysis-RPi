#include <stdio.h>
#include <wiringPi.h>

// LED Pin - wiringPi pin 0 is BCM_GPIO 17.

#define LED     0

int main (void)
{
  printf ("Raspberry Pi - Gertboard Blink\n") ;

  wiringPiSetup () ;

  pinMode (LED, OUTPUT) ;
  int i;
  for (;;)
  {
    digitalWrite (LED, 1) ;     // On
    //delay (10) ;               // mS
    for(i=0;i<0;i++);
    digitalWrite (LED, 0) ;     // Off
    for(i=0;i<0;i++);
    //delay (500) ;
  }
  return 0 ;
}
