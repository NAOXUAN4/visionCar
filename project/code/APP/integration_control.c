#include "Ourcode_headfile.h"


uint8 state_now;
volatile float move_angle;

void inte_control_init(void)
{
    state_now = -1;
    move_angle = 0.0;
}

void inte_control(void)
{
    switch(state_now){
    case STATE_QUICKRUN:ctrl_QUICKRUN(); break;
    case STATE_INFO:ctrl_INFO(); break;
    case STATE_CAMERAONLY:ctrl_CAMERAONLY(); break;
    default: break;
    }
}


/*
 * 与UI_xxx不同的是这里是更高层级的控制，UI_xxx只负责图像刷新
 */
int left_speed,righ_speed;
void ctrl_QUICKRUN()
{

    eight_all_in_one(BinaryImg_CDM);
    wheel_ctrl(WHEEL_RIGH,2000);
    wheel_ctrl(WHEEL_LEFT,2000);
    move_angle = turn_out(0.4,7.5);
    UI_Update(state_now);

//    steer_MoveAngle(move_angle);
 /*   steer_MoveAngle(20);
    //system_delay_ms(100);
    steer_MoveAngle(-20);
    //system_delay_ms(100);
    steer_MoveAngle(-20);
    //system_delay_ms(100);
    steer_MoveAngle(20);
    //system_delay_ms(100);
    UI_Update(state_now);
    eight_all_in_one(BinaryImg_CDM);
    wheel_ctrl(WHEEL_RIGH,2000);
    wheel_ctrl(WHEEL_LEFT,2000);
    */
}

void ctrl_INFO()
{
    UI_Update(state_now);
    //int left_speed,righ_speed;
    wheel_ctrl(WHEEL_RIGH,2000);
    wheel_ctrl(WHEEL_LEFT,2000);
    left_speed = encoder_get(ENCODER_LEFT);
    righ_speed = encoder_get(ENCODER_RIGH);


}

void ctrl_CAMERAONLY()
{
    UI_Update(state_now);
    eight_all_in_one(BinaryImg_CDM);

}


