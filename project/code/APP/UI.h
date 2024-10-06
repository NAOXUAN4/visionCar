/*
 * UI.h
 *
 *  Created on: 2024��9��25��
 *      Author: annanyi
 */

#ifndef UI_H_
#define UI_H_

#include "zf_common_headfile.h"

#define FONT_GAP 20; // UI字体间距 20（纵向）
#define Menu_StartPlace 30;  //居中放置UI，默认30开始


/*
 * 真正的key 映射
 */
#define KEY_DOWM 5
#define KEY_UP 3
#define KEY_COMFIRM 2
#define KEY_BACK 1



/*
 * UI界面页面状态宏定义
 */
#define STATE_HOME 1
#define STATE_QUICKRUN 2
#define STATE_INFO 3
#define STATE_CAMERAONLY 4




void UI_Init(void);
void UI_Update(uint8);

/*
 * 对于光标操作宏定义（上下，确认，返回）
 */
void UI_cursor_render(uint8);
void UI_cursor_active(uint8);




/*
 * 对于各个ui界面结构的宏定义
 */
// 1.HomePAge  Line 0:QuickRUN,1:info 2.CAMERA
#define UI_HM_QR 0
#define UI_HM_IF 1
#define UI_HM_CA 2

void UI_Home(void);

void UI_QucikRun(void);

void UI_INFO(void);

void UI_CameraONLY(void);

#endif /* UI_H_ */
