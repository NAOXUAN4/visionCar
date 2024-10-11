#include "Ourcode_headfile.h"


uint8 state_now;
float move_angle;

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

void ctrl_QUICKRUN()
{
    /*
    int leftpwm,rightpwm;
    eight_all_in_one(BinaryImg_CDM);
    leftpwm = volicity_Lget(pidL);
    rightpwm = volicity_Rget(pidR);
    wheel_ctrl(WHEEL_RIGH,leftpwm);
    wheel_ctrl(WHEEL_LEFT,rightpwm);
    move_angle = turn_out(0.5,0);
    if(move_angle > 20){move_angle = 20;}
    if(move_angle < -20){move_angle = -20;}
    steer_MoveAngle(move_angle);
    UI_Update(state_now);
*/
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
    //float left_speed,righ_speed;
    //int add_left=0,add_right=0;
    eight_all_in_one(BinaryImg_CDM);
    if(road_state == 4){beep_MakeSound(1);}
    //beep_MakeSound(1);
    //if(angle_Err>20){add_right = 2;}
    //if(angle_Err<-20){add_left = 2;}
    //left_speed = volicity_Lget(pidL,25+add_left);
    //righ_speed = volicity_Rget(pidR,25+add_right);
   // wheel_ctrl(WHEEL_RIGH,left_speed);
    //wheel_ctrl(WHEEL_LEFT,righ_speed);
    wheel_ctrl(WHEEL_LEFT, 1700);
    wheel_ctrl(WHEEL_RIGH, 1700);
    move_angle = turn_out(0.8,0);
//    if(move_angle > 20){move_angle = 20;}
//    if(move_angle < -20){move_angle = -20;}
//    steer_MoveAngle(move_angle);
    steer_SetAngle(move_angle+80);
    UI_Update(state_now);


}

void ctrl_CAMERAONLY()
{
    UI_Update(state_now);
    eight_all_in_one(BinaryImg_CDM);

}


