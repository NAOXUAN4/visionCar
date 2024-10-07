#include "wheel.h"
#include "My_Math.h"
//#define _limit(a, b, c) ((a) > (b) ? ((a) < (c) ? (a) : (c)) : (b))

 //�ֳ�ʼ��
void wheel_init(void)
{
    //����
    gpio_init(D12, GPO, 1, GPIO_PIN_CONFIG);
    pwm_init(TIM4_PWM_MAP1_CH2_D13, WHEEL_FRE, 0);
    //����
    gpio_init(D15, GPO, 0, GPIO_PIN_CONFIG);
    pwm_init(TIM4_PWM_MAP1_CH3_D14, WHEEL_FRE, 0);


}
//�ڲ����������ձ�ſ��Ƶ��
static void wheel_pwm_out(uint8 wheel_num,int speed)

{
    speed =_limit((0),(speed), (PWM_DUTY_MAX));

    if(wheel_num)
    {
        pwm_set_duty(TIM4_PWM_MAP1_CH2_D13, speed);
    }
    else
    {
        pwm_set_duty(TIM4_PWM_MAP1_CH3_D14,  speed);
    }
}




/*��������
 * wheel_num�����ӱ�� WHEEL_LEFT WHEEL_RIGH
 * speed����Χ��    -WHEEL_MAX  ~ +WHEEL_MAX
 */
void wheel_ctrl(uint8 wheel_num,int speed)
{
    switch(wheel_num)
    {
        case WHEEL_LEFT:
            wheel_pwm_out(WHEEL_LEFT,speed);
        break;
        case WHEEL_RIGH:
            wheel_pwm_out(WHEEL_RIGH,speed);
        break;
    }

}/*
 * wheel.c
 *
 *  Created on: 2024��10��1��
 *      Author: Zh319
 */


