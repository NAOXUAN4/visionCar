/*
 * turn_pd.h
 *
 *  Created on: 2024Äê10ÔÂ4ÈÕ
 *      Author: Zh319
 */

#ifndef BSP_TURN_PD_H_
#define BSP_TURN_PD_H_
#include "zf_common_headfile.h"

#define k_pd 0.048//0.032
#define PMAX 1

float fab(float a);
float limitatiion(float b,float c);
extern float turn_out(float p_basic,float d);
extern float error_last;

#endif /* BSP_TURN_PD_H_ */
