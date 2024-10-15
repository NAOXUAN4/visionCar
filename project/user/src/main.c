/*********************************************************************************************************************
* CH32V307VCT6 Opensourec Library ����CH32V307VCT6 ��Դ�⣩��һ�����ڹٷ� SDK �ӿڵĵ�������Դ��
* Copyright (c) 2022 SEEKFREE ��ɿƼ�
*
* ���ļ���CH32V307VCT6 ��Դ���һ����
*
* CH32V307VCT6 ��Դ�� ��������
* �����Ը��������������ᷢ���� GPL��GNU General Public License���� GNUͨ�ù������֤��������
* �� GPL �ĵ�3�棨�� GPL3.0������ѡ��ģ��κκ����İ汾�����·�����/���޸���
*
* ����Դ��ķ�����ϣ�����ܷ������ã�����δ�������κεı�֤
* ����û�������������Ի��ʺ��ض���;�ı�֤
* ����ϸ����μ� GPL
*
* ��Ӧ�����յ�����Դ���ͬʱ�յ�һ�� GPL �ĸ���
* ���û�У������<https://www.gnu.org/licenses/>
*
* ����ע����
* ����Դ��ʹ�� GPL3.0 ��Դ���֤Э�� �����������Ϊ���İ汾
* �������Ӣ�İ��� libraries/doc �ļ����µ� GPL3_permission_statement.txt �ļ���
* ���֤������ libraries �ļ����� �����ļ����µ� LICENSE �ļ�
* ��ӭ��λʹ�ò����������� ���޸�����ʱ���뱣����ɿƼ��İ�Ȩ����������������
*
* �ļ�����          main
* ��˾����          �ɶ���ɿƼ����޹�˾
* �汾��Ϣ          �鿴 libraries/doc �ļ����� version �ļ� �汾˵��
* ��������          MounRiver Studio V1.8.1
* ����ƽ̨          CH32V307VCT6
* ��������          https://seekfree.taobao.com/
*

********************************************************************************************************************/
#include "zf_common_headfile.h"
#include "Ourcode_headfile.h"
#include "zf_driver_delay.h"


void Init(void)
{
    tft180_set_dir(TFT180_CROSSWISE_180);
    tft180_init();     //��ʼ����Ļ
    mt9v03x_init();
    JumpInit();

    inte_control_init();
    UI_Init();
    KEY_Init();

    wheel_init();
    steer_init();
    encoder_init();
    beep_init();

    //PIDL_init();
    //PIDR_init();
    pit_ms_init(TIM3_PIT,5);
    //steertimer_init();
//    mt9v03x_set_exposure_time(3000);
}

int main(void)
{
  //  float left_speed1,right_speed1;
    clock_init(SYSTEM_CLOCK_120M);      // ��ʼ��оƬʱ�� ����Ƶ��Ϊ 120MHz
    debug_init();                       // ��ر��������������ڳ�ʼ��MPU ʱ�� ���Դ���

    // �˴���д�û����� ���������ʼ�������
    Init();
    // �˴���д�û����� ���������ʼ�������


    while(1)
    {

        key_control();
        if(mt9v03x_finish_flag)
        {
//            key_control();
            ImgPreprocess();
           /*
                         * ͼ������ʽ��
            * uint8 BinaryImg[IMG_ROW][IMG_COL];                //��ֵ��ͼ��
              uint8 BinaryImg_CDM[IMG_ROW][IMG_COL];       //��ͨ�������Ķ�ֵ��ͼ��
              uint8 CmpressedImg[IMG_ROW][IMG_COL];
            */
            inte_control();
            mt9v03x_finish_flag= 0;
       }
  //     int l,r;
 //      float a;
//       //wheel_ctrl(WHEEL_LEFT, 2000);
//       //wheel_ctrl(WHEEL_RIGH, 2000);
//       a = volicity_Rget(pidR,32);
//       tft180_show_float(20,20,a,5,3);
//       wheel_ctrl(WHEEL_RIGH, (int)a);
//       //l = encoder_get(ENCODER_LEFT);
//       r = encoder_get(ENCODER_RIGH);
//       //tft180_show_int(0, 0, l,5);
//       tft180_show_int(0, 20, r,5);
//        left_speed1 = volicity_Lget(pidL,30);
//        right_speed1 = volicity_Rget(pidR,30);
//        tft180_show_float(0,0,right_speed1,4,2);
//        tft180_show_float(20,0,left_speed1,4,2);
//        wheel_ctrl(WHEEL_LEFT,(int)left_speed1);
//        wheel_ctrl(WHEEL_RIGH,(int)right_speed1);
        //steer_SetAngle(85);
    }
}



