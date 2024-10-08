/*
 * UI.c
 *
 *      Author: annanyi
  *             该模块为UI模块，负责UI绘制以及根据用户使用UI的行为对当前系统状态作出修改（改变state_now）
  *             对外的接口为cursor_active()
 */

#include "zf_common_headfile.h"
#include "Ourcode_headfile.h"



uint8 Curser_Now = 0;

uint8 menu_str[4][3] = {{2,3,4},
                        {0,0,0},
                        {0,0,0},
                        {0,0,0}};  //菜单关系映射表

void UI_Init(void)
{
    state_now = STATE_HOME;
    tft180_clear();
    tft180_full(RGB565_BLUE);
    tft180_set_color(RGB565_WHITE, RGB565_BLUE);
    UI_Update(state_now);    //首次update
}

void UI_Update(uint8 state)
{
    switch (state)
    {
    case STATE_HOME:
        UI_Home();break;
    case STATE_QUICKRUN:
        UI_QucikRun();break;     //和camera同理
    case STATE_INFO:
        UI_INFO();break;
    case STATE_CAMERAONLY:
        UI_CameraONLY();break;   //需要高频调用来实现图像刷新
    default:
        UI_Home();break;
    }
}

void UI_cursor_render(uint8 Line)
{
    uint16 line_on_tft = Line * FONT_GAP;
    line_on_tft+= Menu_StartPlace;
    tft180_show_string(0, line_on_tft, ">>");
}

/**
 * ----------------------------------------------------------
 * @name : UI_cursor_active
 * @brief 读取KEY，改表UI状态的核心函数
 * @param uint8 key
 * @author yian
 **/
void UI_cursor_active(uint8 key)
{

    switch (state_now)
    {

    case STATE_HOME: // 当目前处于home
        tft180_full(RGB565_BLUE);
        switch (key)
        {
        case KEY_DOWM:   //向下移动光标，不修改UI状态
            Curser_Now = (Curser_Now + 1)%3;    //默认HOME菜单三个功能
            UI_Update(state_now);
            break;
        case KEY_UP:  //向上移动光标，不修改UI状态
            Curser_Now = (Curser_Now - 1+3)%3;
            UI_Update(state_now);
            break;
        case KEY_COMFIRM:   //确认键
            state_now = menu_str[state_now - 1][Curser_Now];  //根据当前光标停留的位置，确定进入哪个状态,使用菜单关系映射表
            Curser_Now = 0;
            UI_Update(state_now);
           break;
        default: break;

        }
        break;
    case STATE_QUICKRUN:
    case STATE_INFO:
    case STATE_CAMERAONLY:
        switch(key){
        case KEY_BACK:
            Curser_Now = state_now - 2;  //cursor 0~n-1,state 1~n  ，又因为state1 是home 所以-2
            state_now = STATE_HOME;
            UI_Update(state_now);
            break;
        default: break;
        }
        break;
//    case STATE_INFO:
//        break;
//    case STATE_CAMERAONLY:
//        break;
    }
}

void UI_Home() // HOME_STATE
{
    tft180_clear();
    tft180_full(RGB565_BLUE);  //重置界面
    UI_cursor_render(Curser_Now);  //绘制光标


    // 绘制HOME菜单
    tft180_show_string(20, 0 + 30, "QUICK RUN");
    tft180_show_string(20, 20 + 30, "INFO");
    tft180_show_string(20, 40 + 30, "CAMERA ONLY");
}

void UI_QucikRun()
{
    tft180_displayimage03x(mt9v03x_image[0], 60, 60);
    tft180_show_gray_image(0,65,&BinaryImg_CDM[0][0],IMG_COL,IMG_ROW,60,60,1);
    tft180_show_rgb565_image(65, 0, output_image, 60, 60, 60, 60, 1);
    tft180_show_float(65, 65, angle_Err, 3, 4);
    tft180_show_float(65, 85, move_angle, 2, 3);

}

void UI_INFO()
{

    tft180_displayimage03x(mt9v03x_image[0], 60, 60);
    tft180_show_gray_image(0,65,&BinaryImg_CDM[0][0],IMG_COL,IMG_ROW,60,60,1);
    tft180_show_rgb565_image(65, 0, output_image, 60, 60, 60, 60, 1);
    tft180_show_float(65, 65, angle_Err, 3, 4);
    tft180_show_float(65, 85, move_angle, 2, 3);
    tft180_show_int(65,105,road_state,1);
}
void UI_CameraONLY()
{

    tft180_displayimage03x(mt9v03x_image[0], 60, 60);//原始图像
    tft180_show_gray_image(0,65,&BinaryImg_CDM[0][0],IMG_COL,IMG_ROW,60,60,1);
    tft180_show_rgb565_image(65, 0, (const uint16_t*)output_image, 60, 60, 60, 60, 1);

    tft180_show_float(65, 65, angle_Err, 3, 4);


    //道路状态显示
    switch(road_state){
    case ROAD_CORSSROAD:tft180_show_string(140, 10, "+");break;
    case ROAD_CURVE_L: tft180_show_string(140, 10, ")");break;
    case ROAD_CURVE_R:tft180_show_string(140, 10, "(");break;
    case ROAD_STRAIGHT:tft180_show_string(140, 10, "|");break;
    default:tft180_show_string(140, 10, "X") ;break;

    }

}
