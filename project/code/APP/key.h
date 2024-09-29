#ifndef _KEY_H_
#define _KWY_H_

#include "zf_common_headfile.h"

#define KEY1  gpio_get_level(A0)
#define KEY2  gpio_get_level(C3)
#define KEY3  gpio_get_level(A2)
#define KEY4  gpio_get_level(A1)
#define KEY5  gpio_get_level(A3)
#define KEY6  gpio_get_level(B10)
#define KEY7  gpio_get_level(C1)



#define KEY0_PRES               1       //KEY1
#define KEY1_PRES               2       //KEY2
#define KEY_UP_PRES             3       //KEY3
#define KEY_LEFT_PRES           4       //KEY4
#define KEY_DOWN_PRES           5       //KEY5
#define KEY_RIGHT_PRES          6       //KEY6
#define KEY_MIDDLE_PRES         7       //KEY7





int KEY_Scan(int mode);   //按键扫描函数
void KEY_Init(void );                     //=====按键初始化
void key_control(void);  //按键调参
#endif
