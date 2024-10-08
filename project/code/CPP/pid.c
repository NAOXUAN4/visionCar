
#include "Ourcode_headfile.h"
#include "pid.h"

float error_last1;
float pwm_out(float p,float d)
{
     float pwm_out1;
     float error;
     //speed = (encoder_get(1)+encoder_get(0))/2;
     error=-angle_Err;
     pwm_out1 = p*error+d*(error-error_last1);
     if(pwm_out1>2000)pwm_out1 = 2000;
     if(pwm_out1<-2000)pwm_out1 = -2000;
     error_last1 = error;
     return pwm_out1;
}
