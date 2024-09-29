#ifndef KERNEL_SMOOTH_H
#define KERNEL_SMOOTH_H

#define KERNEL_SIZE 5
//数据类型声明（方便移植——移植的时候可以删掉，改成你自己的） 
typedef   signed          char int8;
typedef   signed short     int int16;
typedef   signed           int int32;
typedef unsigned          char uint8;
typedef unsigned short     int uint16;
typedef unsigned           int uint32;

extern void mode_convolve(uint16 *input, uint16 *output, uint8 length);   //卷积核平滑

#endif