/*
 * beep.h
 *
 *  Created on: 2024Äê10ÔÂ3ÈÕ
 *      Author: Zh319
 */

#ifndef BSP_BEEP_H_
#define BSP_BEEP_H_
#include "zf_common_headfile.h"


#define BEEP_PIN   C13

void beep_init(void);
void beep_MakeSound(int count);

#endif /* BSP_BEEP_H_ */
