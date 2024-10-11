#include "beep.h"/*
 * beep.c
 *
 *  Created on: 2024Äê10ÔÂ3ÈÕ
 *      Author: Zh319
 */
void beep_init(void)
{
    gpio_init(BEEP_PIN, GPO, 0, GPO_PUSH_PULL);
}

void beep_MakeSound(int count)
{
    int i;
    for(i=count;i>0;i--)
    {
        gpio_set_level(BEEP_PIN, 1);
        system_delay_ms (100);
        gpio_set_level(BEEP_PIN, 0);
    }
}
