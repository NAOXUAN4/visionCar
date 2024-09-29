#ifndef BINDATA_H
#define BINDATA_H

#define IMAGE_HEIGHT 60
#define IMAGE_WIDTH 120
#define IMAGE_chosen image2//选用第几张图片
//1:直线
//2: 十字
//3：斜十字
//4：短视野
//5：即将进入环岛
//6：远环岛
//7：正即将进入环岛
 
extern unsigned char IMAGE_chosen[IMAGE_HEIGHT][IMAGE_WIDTH];
extern unsigned char white_Board[IMAGE_HEIGHT][IMAGE_WIDTH];  //测试用白板0

#endif