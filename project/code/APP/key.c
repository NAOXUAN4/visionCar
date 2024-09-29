/*
 * key.c
 *
 *  Created on: 2022��7��12��
 *      Author: 86159
 */

#include "zf_driver_delay.h"
#include "zf_common_headfile.h"
#include "Ourcode_headfile.h"
void KEY_Init(void)
{
    //-------------------------------------------------------------------------------------------------------------------
    //  @brief      GPIO��ʼ��
    //  @param      pin         ѡ������� (��ѡ��Χ�� common.h ��GPIO_PIN_enumö��ֵȷ��)
    //  @param      dir         ���ŵķ���   �����GPO   ���룺GPI
    //  @param      dat         ���ų�ʼ��ʱ���õĵ�ƽ״̬�����ʱ��Ч 0���͵�ƽ 1���ߵ�ƽ
    //  @param      pinconf     �������ã������ò�����zf_gpio.h�ļ���GPIOSPEED_enum��GPIOMODE_enumö��ֵȷ�����������ʹ�� | ���
    //  @return     void
    //  Sample usage:           gpio_init(D0, GPO, 1, GPIO_PIN_CONFIG);//D0��ʼ��ΪGPIO���ܡ����ģʽ������ߵ�ƽ���ٶ�100MHZ �������
    //-------------------------------------------------------------------------------------------------------------------


    //gpio_init(A0, GPI, 1, GPIO_INT_CONFIG);   ������
    gpio_init(C3, GPI, 1, GPIO_INT_CONFIG); //ok
    gpio_init(A1, GPI, 1, GPIO_INT_CONFIG);//ok
    gpio_init(A2, GPI, 1, GPIO_INT_CONFIG);//ok
    gpio_init(A3, GPI, 1, GPIO_INT_CONFIG);//ok
    gpio_init(B10, GPI, 1, GPIO_INT_CONFIG);//ok
    gpio_init(C1, GPI, 1, GPIO_INT_CONFIG);



}

//����������
//���ذ���ֵ
//mode:0,��֧��������;1,֧��������;
//����ֵ��
//0��û���κΰ�������
//KEY0_PRES��KEY0����
//KEY1_PRES��KEY1����
//WKUP_PRES��WK_UP����
//ע��˺�������Ӧ���ȼ�,KEY0>KEY1>WK_UP!!
int KEY_Scan(int mode)
{
    static int key_up=1;//�������ɿ���־
    if(mode)key_up=1;  //֧������
    if(key_up&&(KEY2==0||KEY3==0||KEY4==0||KEY5==0||KEY6==0 || KEY7==0))
    {
        //tft180_full(RGB565_GREEN);
        //system_delay(10000);//ȥ����10ms
        key_up=0;

             //if(KEY1==0)return KEY0_PRES;  else
         if(KEY2==0)return KEY1_PRES;
        else if(KEY3==0)return KEY_UP_PRES;
        else if(KEY4==0)return KEY_LEFT_PRES;
        else if(KEY5==0)return KEY_DOWN_PRES;
        else if(KEY6==0)return KEY_RIGHT_PRES;
        else if(KEY7==0)return KEY_MIDDLE_PRES;
    }

    //else if(KEY1==1&&KEY2==1&&KEY3==1&&KEY4==1&&KEY5==1&&KEY6==1&&KEY7==1)key_up=1;//ɾ����οɳ���
    return 0;// �ް�������
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









