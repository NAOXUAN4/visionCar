#include "Ourcode_headfile.h"


uint8 state_now;
void inte_control_init(void)
{
    state_now = -1;
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
 * ��UI_xxx��ͬ���������Ǹ��߲㼶�Ŀ��ƣ�UI_xxxֻ����ͼ��ˢ��
 */
void ctrl_QUICKRUN()
{

}

void ctrl_INFO()
{

}

void ctrl_CAMERAONLY()
{
    UI_Update(state_now);
    eight_all_in_one(BinaryImg_CDM);

}


