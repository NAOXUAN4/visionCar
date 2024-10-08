#include "encoder.h"
//ye

void encoder_init(void)
{
    //C7��c6��Ϊ�����źŽ�
    encoder_dir_init(TIM9_ENCOEDER, TIM9_ENCOEDER_MAP3_CH1_D9 ,TIM9_ENCOEDER_MAP3_CH2_D11);
    //e11��e9��Ϊ�����źŽ�
    encoder_dir_init(TIM1_ENCOEDER,  TIM1_ENCOEDER_MAP3_CH1_E9,TIM1_ENCOEDER_MAP3_CH2_E11);
}

//��ȡһ·����ֵ
int encoder_get(uint8 ch)
{
    int cnt;
    if(ch)
    {
        cnt=(ch==ENCODER_LEFT?ENCODER_LEFT_FRONT:ENCODER_RIGH_FRONT)*encoder_get_count (TIM9_ENCOEDER);
        encoder_clear_count (TIM9_ENCOEDER);

    }
    else
    {
        cnt= (ch==ENCODER_LEFT?ENCODER_LEFT_FRONT:ENCODER_RIGH_FRONT)*encoder_get_count (TIM1_ENCOEDER);
        encoder_clear_count (TIM1_ENCOEDER);
    }
    return cnt;
}

float encoder_turn(uint8 ch)
{
    float speed;
    if(ch)
    {
        speed = 0.2*encoder_get(ch)*200;
    }
    else {
        speed = 0.2*encoder_get(0)*200;
    }
    return speed;
}
