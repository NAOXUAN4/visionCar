#include "timer.h"
#include "Ourcode_headfile.h"/*
 * timer.c
 *
 *  Created on: 2024Äê10ÔÂ6ÈÕ
 *      Author: Zh319
 */

void steertimer_init(void)
{
    timer_init(TIM_3, TIMER_MS);
    pit_init(TIM3_PIT, 800);
}
