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
}

int n;
int main (void)
{
    clock_init(SYSTEM_CLOCK_120M);      // ��ʼ��оƬʱ�� ����Ƶ��Ϊ 120MHz
    debug_init();                       // ��ر��������������ڳ�ʼ��MPU ʱ�� ���Դ���

    // �˴���д�û����� ���������ʼ�������
    Init();
    // �˴���д�û����� ���������ʼ�������


    while(1)
    {

        key_control();

//        tft180_show_int(60, 100, n++,10);
//        system_delay_us(10000);


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

//        tft180_displayimage03x(mt9v03x_image[0], 60, 60);//ԭʼͼ��
//        tft180_show_gray_image(50,60,&BinaryImg_CDM[0][0],IMG_COL,IMG_ROW,60,60,1);

        // �˴���д��Ҫѭ��ִ�еĴ���
    }
}

