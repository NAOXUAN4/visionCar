/*
 * @Author: Nanyian naoxuan202007@gmail.com
 * @Date: 2024-09-06 01:21:42
 * @LastEditors: Nanyian naoxuan202007@gmail.com
 * @LastEditTime: 2024-09-22 19:14:34
 * @FilePath: \plants\lib\Slope_Calculate.c
 * @Description: 这是默认设置,请设置`customMade`, 打开koroFileHeader查看配置 进行设置: https://github.com/OBKoro1/koro1FileHeader/wiki/%E9%85%8D%E7%BD%AE
 */
#include <stdio.h>
#include <stdlib.h>


/**
 * ----------------------------------------------------------
 * @name Slope_Calculate
 * @brief 拟合定量离散点的斜率
 * @param int n  点数
 * @param int* x  x坐标数组
 * @param int* y  y坐标数组
 * @return result 斜率
 * @author yian
 * @date 2024年9月22日
 * @note 
**/
float Slope_Cal(int n, int *x, int *y)
{

    // printf("\n");
    // for (int i = 0; i < n; i++)
    // {
    //     printf("%d,", x[i]);

    // }
    // printf("\n");
    //   for (int i = 0; i < n; i++)
    // {
    //     printf("%d,", y[i]);
        
    // }



    float xsum = 0, ysum = 0, xysum = 0, x2sum = 0;
    float result = 0;

    for (int i = 0; i < n; i++)
    {
        xsum += x[i];
        ysum += y[i];
        xysum += x[i] * y[i];
        x2sum += x[i] * x[i];
    }

    if (n * x2sum - xsum * xsum != 0)
    {
        result = (n * xysum - xsum * ysum) / (n * x2sum - xsum * xsum);
    }
    else
    {
        result = 0;  // 避免除数为零的情况
    }
    //printf("Slope: %.6f\n", result);

    return result;
}

// int main()
// {
//     // 示例数据
//     const int n = 18;
//     int x[] = {-6,-5,-6,-6,-6,-7,-7,-7,-8,-8,-8,-8,-8,-9,-9,-9,-9,-10};
//     int y[] = {3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20};

//     // 计算斜率
//     float slope = Slope_Cal(n, x, y);
//     printf("Slope: %.6f\n", slope);

//     return 0;
// }