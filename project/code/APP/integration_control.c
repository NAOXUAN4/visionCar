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
    //int l,r;
//    float left_speed1,right_speed1;
//    left_speed1 = volicity_Lget(pidL,30);
//    right_speed1 = volicity_Rget(pidR,30);
//    tft180_show_float(0,0,right_speed1,4,2);
//    tft180_show_float(40,0,left_speed1,4,2);
//    wheel_ctrl(WHEEL_LEFT,(int)left_speed1);
//    wheel_ctrl(WHEEL_RIGH,(int)right_speed1);
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
int left_speed=2300,righ_speed=2300;//2100，p0.52,d1.12
int a=0,i=0,j=0;
float turnP=0.5,turnD=1.40;//0.5,1.38,2300 0.5,1.22,2100
//int i=0,j=0,a=0;
uint8 flag = 0;
//uint8 flag1 = 0;
void ctrl_INFO()
{
    //float left_speed,righ_speed;
//    int add_left=0,add_right=0;
    //do{
    eight_all_in_one(BinaryImg_CDM);
    //跑的不稳用
    //if(road_state == 4){i++;if(i == 5){i = 0;j++;}}
    //if(i == 1){beep_MakeSound(1,100);left_speed = 1000;righ_speed = 1000;}
    //if(j == 2||j === 4){left_speed = 1500;righ_speed == 1500;}
    //跑的稳用
//    if(road_state == 4){beep_MakeSound(1,500);i++;left_speed = 1000;righ_speed = 1000;}
//    if(i == 2||i == 4){left_speed = 1500;righ_speed = 1500;}
    //十字岔路蜂鸣器响，根据速度改变帧数和蜂鸣器鸣叫时间
    if(road_state == 4){flag = 1;if(i == 0){beep_MakeSound(1,300);}}
    i+= flag;
    if(i==30){i=0;flag =0;}

    //if(i==1){beep_MakeSound(1, 100);}
    //if(road_state == 4){beep_MakeSound(1, 100);}
    //if(i==5){i=0;beep_MakeSound(1, 100);}
    //斑马线停车，根据速度改变加速度
    if(road_state == 5){a = -320;}
    //if(road_state == 5){wheel_ctrl(WHEEL_LEFT, 0);wheel_ctrl(WHEEL_RIGH, 0);}
    //beep_MakeSound(1);
//    if(angle_Err>20){add_right = 2;}
//    if(angle_Err<-20){add_left = 2;}
//    left_speed = volicity_Lget(pidL,25+add_left);
//    righ_speed = volicity_Rget(pidR,25+add_right);
//    wheel_ctrl(WHEEL_RIGH,left_speed);
//    wheel_ctrl(WHEEL_LEFT,righ_speed);
//    wheel_ctrl(WHEEL_LEFT, left_speed);
//    wheel_ctrl(WHEEL_RIGH, righ_speed);
    //直道小车加速
//    if(road_state == 1){a=10;if(left_speed>3000){left_speed=3000;}if(righ_speed>3000){righ_speed = 3000;}}
//    if(road_state!=1&&road_state!=5){a = 0;left_speed=1800;righ_speed=1800;}
    //if(is_obs){flag1=1;j+=flag1;left_speed=1200;righ_speed=1200;turnP = 0.83;turnD = 0.5;}
    //if(j==10){flag1=0;j=0;left_speed = 2000;righ_speed = 2000;turnP = 0.535;turnD = 0.85;}
    move_angle = turn_out(turnP,turnD);//0.65，0.55，1500//0.535，0.85，1800
    //if(move_angle<5&&move_angle>-5){move_angle = 0;}
//    if(move_angle > 20){move_angle = 20;}
//    if(move_angle < -20){move_angle = -20;}
//    steer_MoveAngle(move_angle);
    //steer_SetAngle(move_angle+85);
    left_speed+=a;
    righ_speed+=a;
    wheel_ctrl(WHEEL_LEFT, left_speed+a);
    wheel_ctrl(WHEEL_RIGH, righ_speed+a);
    UI_Update(state_now);
    //}while(road_state!=5);


}

void ctrl_CAMERAONLY()
{
    UI_Update(state_now);
    eight_all_in_one(BinaryImg_CDM);

}


