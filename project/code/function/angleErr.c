/*
 * @Author: Nanyian naoxuan202007@gmail.com
 * @Date: 2024-09-22 15:24:24
 * @LastEditors: Nanyian naoxuan202007@gmail.com
 * @LastEditTime: 2024-09-22 19:18:47
 * @FilePath: \plants\angleErr.c
 * @Description: 这是默认设置,请设置`customMade`, 打开koroFileHeader查看配置 进行设置: https://github.com/OBKoro1/koro1FileHeader/wiki/%E9%85%8D%E7%BD%AE
 */
#include "angleErr.h"
#include "lib/Slope_Calculate.h"
#include <stdio.h>

float midline_fff, midline_ff, midline_f, lineSum, weightSum,middleStandard = image_w>>1;
float angle_Err;


uint8  weight1[60] = {    };

uint8  weight2[60] = {                        //0为图像最顶行
         0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
         1, 1, 3, 3, 5, 5,10,10,10,10,
        10,10,10,10,10,10,10,10,10,10,
        10,10,10,10,10,10,10,10,10,10,
        10,10,10,10,10, 5, 5, 5, 5, 5,
         3, 3, 3, 1, 1, 1, 0, 0, 0, 0,};    //基础    //注意斜率变化引起的跳变,要平滑

#define HALF_PI 1.57079632679489661923
/**
 * ----------------------------------------------------------
 * @name atan(float x)
 * @brief 计算arctan(x)
 * @param float x
 * @return float result
 * @author yian
 * @date 2024年9月22日
 * @note 
**/
float atan(float x) 
{
    int precision = 100;//控制迭代次数/精度
    float sum = 0.0;
    float term = x;
    float xSquared = x * x;
    int sign = 1;
 
    for (int n = 0; n < precision; n++) {
        if (n != 0) {
            term *= xSquared;
        }
        sum += sign * term / (2 * n + 1);
        sign = -sign;
    }
	if(fabs(x) < 1) return sum;//绝对值在0-1，直接返回泰勒展开计算值
	else return (x > 0 ? HALF_PI  : - HALF_PI) - atan(1 / x);//绝对值大于1时，采用atan的性质进行转换，因为当x值较大时，会存在难以收敛、精度降低的情况

}



/**
 * ----------------------------------------------------------
 * @name angleErr_cal()
 * @brief 计算中线结果对于中线的角度误差
 * @param uint8 weight_num:权重选择，
 * @param uint8* middleLine:八邻域代码得到的中线结果
 * @param uin8 lo: 开始行（最低）
 * @param uint8 hi: 结束行（最高）
 * @return 修改的全局变量angleErr
 * @author yian
 * @date 2024年9月22日
 * @note 
**/
void angleErr_cal(uint8 weight_num, uint8* middleLine, uint8 lo, uint8 hi){


    uint8* weight;
    switch (weight_num)
    {
        case WEIGHT_STRETCH:
            weight = weight1;
            break;
        case WEIGHT_CURVE:
            weight = weight2;
            break;
        default:
            weight = weight1;
            break;
    }

    for(int i = lo; i > hi + 1; i --){   //从下往上
        if(middleLine[i]<image_w)
        {
            weightSum += weight[i];
            lineSum += weight[i] * middleLine[i];
        }
    } 

    angle_Err = (float)lineSum / weightSum - middleStandard;
    midline_fff = midline_ff;
    midline_ff  = midline_f;
    midline_f = angle_Err;
    angle_Err = midline_fff * 0.50f + midline_ff * 0.30f + midline_f * 0.20f;

}



float slope;
 int x[20], y[20],num = -1;  
/**
 * ----------------------------------------------------------
 * @name 
 * @brief 用最小二乘法拟合斜率平滑角度误差
 * @param float slope: 斜率
 * @return 
 * @author yian
 * @date 2024年9月22日
 * @note 使用lib中的Slope_CAl计算，坐标系需要变换，把底层中点设置为（0，0）
**/
void angleErr_slope(uint8* middleLine,uint8 lo, uint8 hi){

     


    for (int i = lo; i > lo - 20; i--) { 
        if (middleLine[i] > 0){ x[num++] = middleLine[i] - image_w/2 ;y[num] = image_h - i;}     //1.去杂   2.变换坐标系
    }

    slope = Slope_Cal(num, x, y);

    float angle_slope = atan(slope);
    

    printf("angleErr_ori: %f\n", angle_Err);
    printf("angle_slope: %f\n", angle_slope);
    angle_Err = 0.8* angle_Err + 0.2 * angle_slope;   //比例平滑
}


