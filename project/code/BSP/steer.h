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
<<<<<<< Updated upstream
#define STEER_RIGHT  666.0f//60��ת
#define STEER_MID    729.0f  //82.5
#define STEER_LEFT   791.0f//105��ת

#define ANGLE_LEFT 60.0f
#define ANGLE_RIGHT 105.0f
#define ANGLE_MID 82.5f
=======
#define STEER_RIGHT  652.0f//55��ת
#define STEER_MID    736.0f  //85
#define STEER_LEFT   819.0f//115��ת

#define ANGLE_LEFT 55.0f
#define ANGLE_RIGHT 115.0f
#define ANGLE_MID 85.0f
>>>>>>> Stashed changes

extern float angle_now;

float _limit_AG(float min, float value, float max);
void steer_init(void);
void steer_SetAngle(float angle);
void steer_MoveAngle(float move_angle);

#endif /* BSP_STEER_H_ */
