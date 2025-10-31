#include "stm8s.h"

void simple_delay(volatile uint32_t n)
{
    while (n--)
    {
    }
}

#define BLINK_DELAY 5000L


void main(void)
{

    GPIO_Init(GPIOD, GPIO_PIN_4, GPIO_MODE_OUT_PP_LOW_FAST);

    while (1)
    {
        GPIO_WriteReverse(GPIOD, GPIO_PIN_4);
        simple_delay(BLINK_DELAY);
    }
}