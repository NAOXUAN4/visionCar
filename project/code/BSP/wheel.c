#include "wheel.h"
#include "My_Math.h"
//#define _limit(a, b, c) ((a) > (b) ? ((a) < (c) ? (a) : (c)) : (b))

 //轮初始化
void wheel_init(void)
{
    //左轮
    gpio_init(D12, GPO, 1, GPIO_PIN_CONFIG);
    pwm_init(TIM4_PWM_MAP1_CH2_D13, WHEEL_FRE, 0);
    //右轮
    gpio_init(D15, GPO, 0, GPIO_PIN_CONFIG);
    pwm_init(TIM4_PWM_MAP1_CH3_D14, WHEEL_FRE, 0);


}
//内部函数，按照编号控制电机
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




/*设置轮速
 * wheel_num：轮子编号 WHEEL_LEFT WHEEL_RIGH
 * speed：范围：    -WHEEL_MAX  ~ +WHEEL_MAX
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
 *  Created on: 2024年10月1日
 *      Author: Zh319
 */


