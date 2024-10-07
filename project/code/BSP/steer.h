/*
 * steer.h
 *
 *  Created on: 2024��10��3��
 *      Author: Zh319
 */

#ifndef BSP_STEER_H_
#define BSP_STEER_H_
#include "zf_common_headfile.h"

#define STEER_PIN    TIM2_PWM_MAP1_CH1_A15
#define STEER_RIGHT  625//45��ת
#define STEER_MID    729  //82.5
#define STEER_LEFT   833//120��ת

extern float angle_now;

void steer_init(void);
void steer_SetAngle(float angle);
void steer_MoveAngle(float move_angle);

#endif /* BSP_STEER_H_ */
