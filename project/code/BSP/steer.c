#include "steer.h"
#include "Ourcode_headfile.h"
float angle_now = 82.5;

void steer_init(void)
{
    pwm_init(STEER_PIN, 50, STEER_MID);
}

void steer_SetAngle(float angle)
{
    uint steer_set;
    steer_set = 500*(angle/180+1);
    //steer_set =_limit((STEER_RIGHT),(angle), (STEER_LEFT));
    angle_now = angle;
    pwm_set_duty(STEER_PIN,steer_set);
}

void steer_MoveAngle(float move_angle)
{
//Ϊ������ת������ת
    //angle_errƫ��Ϊ������ת��ƫ��Ϊ������ת
    steer_SetAngle(angle_now+move_angle);
}
