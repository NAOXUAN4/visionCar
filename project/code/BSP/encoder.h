#ifndef _ENCODER_H_
#define _ENCODER_H_
#include "zf_common_headfile.h"

//�������ҵı��
#define ENCODER_LEFT 0
#define ENCODER_RIGH 1
//����������
#define ENCODER_LEFT_FRONT (-1)
#define ENCODER_RIGH_FRONT (1)

//��ʼ��
void encoder_init(void);
//��ȡһ·��ֵ
int encoder_get(uint8 ch);

#define actual_speed 0.05 //��ÿ��

#endif
