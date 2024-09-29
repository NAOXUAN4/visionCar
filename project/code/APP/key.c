/*
 * key.c
 *
 *  Created on: 2022年7月12日
 *      Author: 86159
 */

#include "zf_driver_delay.h"
#include "zf_common_headfile.h"
#include "Ourcode_headfile.h"
void KEY_Init(void)
{
    //-------------------------------------------------------------------------------------------------------------------
    //  @brief      GPIO初始化
    //  @param      pin         选择的引脚 (可选择范围由 common.h 内GPIO_PIN_enum枚举值确定)
    //  @param      dir         引脚的方向   输出：GPO   输入：GPI
    //  @param      dat         引脚初始化时设置的电平状态，输出时有效 0：低电平 1：高电平
    //  @param      pinconf     引脚配置（可设置参数由zf_gpio.h文件内GPIOSPEED_enum与GPIOMODE_enum枚举值确定，多个条件使用 | 相或）
    //  @return     void
    //  Sample usage:           gpio_init(D0, GPO, 1, GPIO_PIN_CONFIG);//D0初始化为GPIO功能、输出模式、输出高电平、速度100MHZ 推挽输出
    //-------------------------------------------------------------------------------------------------------------------


    //gpio_init(A0, GPI, 1, GPIO_INT_CONFIG);   有问题
    gpio_init(C3, GPI, 1, GPIO_INT_CONFIG); //ok
    gpio_init(A1, GPI, 1, GPIO_INT_CONFIG);//ok
    gpio_init(A2, GPI, 1, GPIO_INT_CONFIG);//ok
    gpio_init(A3, GPI, 1, GPIO_INT_CONFIG);//ok
    gpio_init(B10, GPI, 1, GPIO_INT_CONFIG);//ok
    gpio_init(C1, GPI, 1, GPIO_INT_CONFIG);



}

//按键处理函数
//返回按键值
//mode:0,不支持连续按;1,支持连续按;
//返回值：
//0，没有任何按键按下
//KEY0_PRES，KEY0按下
//KEY1_PRES，KEY1按下
//WKUP_PRES，WK_UP按下
//注意此函数有响应优先级,KEY0>KEY1>WK_UP!!
int KEY_Scan(int mode)
{
    static int key_up=1;//按键按松开标志
    if(mode)key_up=1;  //支持连按
    if(key_up&&(KEY2==0||KEY3==0||KEY4==0||KEY5==0||KEY6==0 || KEY7==0))
    {
        //tft180_full(RGB565_GREEN);
        //system_delay(10000);//去抖动10ms
        key_up=0;

             //if(KEY1==0)return KEY0_PRES;  else
         if(KEY2==0)return KEY1_PRES;
        else if(KEY3==0)return KEY_UP_PRES;
        else if(KEY4==0)return KEY_LEFT_PRES;
        else if(KEY5==0)return KEY_DOWN_PRES;
        else if(KEY6==0)return KEY_RIGHT_PRES;
        else if(KEY7==0)return KEY_MIDDLE_PRES;
    }

    //else if(KEY1==1&&KEY2==1&&KEY3==1&&KEY4==1&&KEY5==1&&KEY6==1&&KEY7==1)key_up=1;//删除这段可长按
    return 0;// 无按键按下
}

void key_control(void)
{
//    if ( KEY_Scan(1) == 1)
//        {
//
//            system_delay_us(20000);
//            while ( KEY_Scan(1) == 1);
//            system_delay_us(20000);
//            //UI_cursor_active(1);
//
//
//
//        }
    if ( KEY_Scan(1) == 2)
            {
                //tft180_full(RGB565_BLUE);
                system_delay_us(20000);
                while ( KEY_Scan(1) == 2);
                system_delay_us(20000);
                UI_cursor_active(2);



            }

    if ( KEY_Scan(1) == 3)
        {
            //tft180_full(RGB565_GREEN);
            system_delay_us(20000);
            while ( KEY_Scan(1) == 3);
            system_delay_us(20000);
            UI_cursor_active(3);

        }
    if ( KEY_Scan(1) == 4)
            {

                //tft180_full(RGB565_RED);
                system_delay_us(20000);
                while ( KEY_Scan(1) == 4);
                system_delay_us(20000);
                UI_cursor_active(4);



            }
    if ( KEY_Scan(1) == 5)
                {

                    //tft180_full(RGB565_BLACK);
                    system_delay_us(20000);
                    while ( KEY_Scan(1) == 5);
                    system_delay_us(20000);
                    UI_cursor_active(5);


                }
    if ( KEY_Scan(1) == 6)
                    {

                        tft180_full(RGB565_BROWN);
                        system_delay_us(20000);
                        while ( KEY_Scan(1) == 6);
                        system_delay_us(20000);
                        //UI_cursor_active(6);

                    }
    if ( KEY_Scan(1) == 7)
                        {

                            tft180_full(RGB565_PINK);
                            system_delay_us(20000);
                            while ( KEY_Scan(1) == 7);
                            system_delay_us(20000);
                            //UI_cursor_active(KEY_RIGHT_PRES);

                        }


}









