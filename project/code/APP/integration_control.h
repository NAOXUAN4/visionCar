#ifndef __INTEGRATION_CONTROL_H__
#define __INTEGRATION_CONTROL_H__



extern uint8 state_now;   //����Ҫ�㲥��ϵͳ״̬
extern int left_speed,righ_speed;
extern float move_angle;

void inte_control_init(void);
void inte_control(void);



void ctrl_QUICKRUN(void);
void ctrl_INFO(void);
void ctrl_CAMERAONLY(void);



#endif
