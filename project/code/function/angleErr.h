/*
 * @Author: Nanyian naoxuan202007@gmail.com
 * @Date: 2024-09-22 15:24:40
 * @LastEditors: Nanyian naoxuan202007@gmail.com
 * @LastEditTime: 2024-09-22 18:54:56
 * @FilePath: \plants\angleErr.h
 * @Description: 这是默认设置,请设置`customMade`, 打开koroFileHeader查看配置 进行设置: https://github.com/OBKoro1/koro1FileHeader/wiki/%E9%85%8D%E7%BD%AE
 */
#ifndef __ANGLE_ERR_H__
#define __ANGLE_ERR_H__

//#include "camera/cam_preprocess.h"
#include "eight.h"



#define WEIGHT_STRETCH 1
#define WEIGHT_CURVE 2


extern void angleErr_cal(uint8,uint8*,uint8,uint8);
extern void angleErr_slope(uint8* ,uint8 , uint8 );
extern float angle_Err;

extern uint8 road_state







#endif