/*
 * wheel.h
 *
 *  Created on: 2024年10月1日
 *      Author: Zh319
 */

#ifndef BSP_WHEEL_H_
#define BSP_WHEEL_H_
#include "zf_common_headfile.h"
//电机频率
#define WHEEL_FRE 25000

//设置轮子 切换编号可以交换左右轮
#define WHEEL_LEFT 1    //左轮编号
#define WHEEL_RIGH 0    //右轮编号

//PWM比较值最大值
#define WHEEL_MAX 9000




//轮初始化
void wheel_init(void);
//设置轮速  最大为正负WHEEL_MAX
void wheel_ctrl(uint8 wheel_num,int speed);


int _limit_int(int min,int target,int max);



#endif /* BSP_WHEEL_H_ */
