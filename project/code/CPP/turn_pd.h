/*
 * turn_pd.h
 *
 *  Created on: 2024��10��4��
 *      Author: Zh319
 */

#ifndef BSP_TURN_PD_H_
#define BSP_TURN_PD_H_
#include "zf_common_headfile.h"

#define k_pd 0.02
#define PMAX 1

extern float turn_out(float p_basic,float d);
extern float error_last;

#endif /* BSP_TURN_PD_H_ */
