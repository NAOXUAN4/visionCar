#ifndef __INTEGRATION_CONTROL_H__
#define __INTEGRATION_CONTROL_H__



extern uint8 state_now;   //定义要广播的系统状态


void inte_control_init(void);
void inte_control(void);



void ctrl_QUICKRUN(void);
void ctrl_INFO(void);
void ctrl_CAMERAONLY(void);



#endif
