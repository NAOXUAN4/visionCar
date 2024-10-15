/*
 * wheel.h
 *
 *  Created on: 2024��10��1��
 *      Author: Zh319
 */

#ifndef BSP_WHEEL_H_
#define BSP_WHEEL_H_
#include "zf_common_headfile.h"
//���Ƶ��
#define WHEEL_FRE 25000

//�������� �л���ſ��Խ���������
#define WHEEL_LEFT 1    //���ֱ��
#define WHEEL_RIGH 0    //���ֱ��

//PWM�Ƚ�ֵ���ֵ
#define WHEEL_MAX 9000




//�ֳ�ʼ��
void wheel_init(void);
//��������  ���Ϊ����WHEEL_MAX
void wheel_ctrl(uint8 wheel_num,int speed);


int _limit_int(int min,int target,int max);



#endif /* BSP_WHEEL_H_ */
