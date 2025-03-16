#include <taurus/stdlib.h>
#include <taurus/gpio.h>

void main() {
  int i;
  GPIO_set_pin_mode (GPIO_22, OUT);
  GPIO_set_pin_mode (GPIO_23, OUT);
  GPIO_set_pin_mode (GPIO_24, OUT);

  GPIO_write_pin (GPIO_23, HIGH);
  GPIO_write_pin (GPIO_24, HIGH);
  
  printf ("\nLED Toggle\n");
  
  while (1) {
    GPIO_write_pin (GPIO_22, HIGH);
    printf ("LED is ON\n");
    for(i = 0; i < 0x800000; i++); // Delay

    GPIO_write_pin (GPIO_22, LOW);
    printf ("LED is OFF\n");

    for (i = 0; i < 0x800000; i++); // Delay
  }
}