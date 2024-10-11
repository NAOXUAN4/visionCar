#include "turn_pd.h"
#include "Ourcode_headfile.h"
/*
 * turn_pd.c
 *
 *  Created on: 2024年10月4日
 *      Author: Zh319
 */
float error_last;

float turn_out(float p_basic,float d)
{
    float error,turn_out_res,turn_Pout,turn_Dout,p;
    error = -angle_Err;
    //直道拐弯需要更大的p,k在h文件里改
    p = p_basic+error*error*k_pd;
    p = _limit((0),(p), (PMAX));
    turn_Pout = p*error;
    turn_Dout = d*(error-error_last);
    error_last = error;
    turn_out_res = turn_Dout+turn_Pout;
    if(turn_out_res<5&&turn_out_res>-5){turn_out_res = 0;}
    tft180_show_float(65,85, turn_out_res, 2, 3);
    return turn_out_res;
}
