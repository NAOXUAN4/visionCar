#include "steer.h"
#include "Ourcode_headfile.h"
float angle_now;

float _limit_AG(float min, float value, float max)
{
    if(value < min) return min;
    if(value > max) return max;
    return value;
}

void steer_init(void)
{
    pwm_init(STEER_PIN, 50, STEER_MID);
    angle_now = ANGLE_MID;
}

void steer_SetAngle(float angle)
{
    uint32 steer_set;
    steer_set = 500*(angle/180.0f+1.0f);
    steer_set =_limit_AG((STEER_RIGHT),(steer_set), (STEER_LEFT));
    angle = _limit_AG(ANGLE_LEFT, angle, ANGLE_RIGHT);
    angle_now = angle;
    pwm_set_duty(STEER_PIN,steer_set);
}

void steer_MoveAngle(float move_angle)
{
//为负数右转，正左转
    //angle_err偏右为正，左转；偏左为负，右转
    steer_SetAngle(angle_now + move_angle);
}
