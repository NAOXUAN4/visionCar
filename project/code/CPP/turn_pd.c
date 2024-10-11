#include "turn_pd.h"
#include "Ourcode_headfile.h"
/*
 * turn_pd.c
 *
 *  Created on: 2024年10月4日
 *      Author: Zh319
 */
float error_last;

float fab(float a)
{
    if(a<0) a = -a;
    return a;
}

float limitation(float b,float c)
{
    if(b>c) b = c;
    return b;
}

float turn_out(float p_basic,float d)
{
    float error,error1,turn_out_res,turn_Pout,turn_Dout,p;
    error = -angle_Err;
    //直道拐弯需要更大的p,k在h文件里改
    error1=fab(error);
    p = p_basic+error1*error1*k_pd;
    p = limitation(p,1.5);
    turn_Pout = p*error;
    turn_Dout = d*(error-error_last);
    error_last = error;
    turn_out_res = turn_Dout+turn_Pout;
<<<<<<< Updated upstream
    //tft180_show_float(65,85, turn_out, 2, 3);
=======
    if(turn_out_res>30)turn_out_res = 30;
    if(turn_out_res<-30)turn_out_res = -30;
    //if(turn_out_res<5&&turn_out_res>-5){turn_out_res = 0;}
    tft180_show_float(65,85, turn_out_res, 2, 3);
>>>>>>> Stashed changes
    return turn_out_res;
}
