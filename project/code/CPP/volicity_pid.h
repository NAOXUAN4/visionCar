/*
 * volicity_pid.h
 *
 *  Created on: 2024Äê10ÔÂ5ÈÕ
 *      Author: Zh319
 */

#ifndef CPP_VOLICITY_PID_H_
#define CPP_VOLICITY_PID_H_
#include "zf_common_headfile.h"

extern struct valuepid{
    float p;
    float i;
    float d;
    float error;
    float error_last;
    float error_pre;
    float volicity_out;
}pidL,pidR;
extern struct valuepid pidL;
extern struct valuepid pidR;

#define STRAITSPEED 200
#define CURVESPEED1 164
#define CURVESPEED2 236
#define CROSSSPEED  180

void PIDL_init();
void PIDR_init();
float volicity_Lget(struct valuepid L,float expect_speed);
float volicity_Rget(struct valuepid R,float expect_speed);

#endif /* CPP_VOLICITY_PID_H_ */
