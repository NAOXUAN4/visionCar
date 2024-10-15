
#include "eight.h"
#include "binData.h"
#include "lib/kernel_smooth.h"
#include "angleErr.h"
#include <stdio.h>
#include <string.h>
#include <stdlib.h>
#include <stdbool.h>
#include "zf_common_headfile.h"


uint8 road_state = 0;
uint8 road_state_last = 0;
uint8 start_Line_total = image_h - 5;


void test(uint8 [image_h][image_w]);

/*
函数名称：int my_abs(int value)
功能说明：求绝对值
参数说明：
函数返回：绝对值
修改时间：2022年9月8日
备    注：
example：  my_abs( x)；
 */
int my_abs(int value)
{
if(value>=0) return value;
else return -value;
}

int16 limit_a_b(int16 x, int a, int b)
{
    if(x<a) x = a;
    if(x>b) x = b;
    return x;
}

/*
函数名称：int16 limit(int16 x, int16 y)
功能说明：求x,y中的最小值
参数说明：
函数返回：返回两值中的最小值
修改时间：2022年9月8日
备    注：
example：  limit( x,  y)
 */
int16 limit1(int16 x, int16 y)
{
	if (x > y)             return y;
	else if (x < -y)       return -y;
	else                return x;
}


/*变量声明*/
// uint8 original_image[image_h][image_w];
// uint8 image_thereshold;//图像分割阈值
// //------------------------------------------------------------------------------------------------------------------
// //  @brief      获得一副灰度图像
// //  @since      v1.0 
// //------------------------------------------------------------------------------------------------------------------
// void Get_image(uint8(*mt9v03x_image)[image_w])
// {
// #define use_num		1	//1就是不压缩，2就是压缩一倍
// 	uint8 i = 0, j = 0, row = 0, line = 0;
//     for (i = 0; i < image_h; i += use_num)          //
//     {
//         for (j = 0; j <image_w; j += use_num)     //
//         {
//             original_image[row][line] = mt9v03x_image[i][j];//这里的参数填写你的摄像头采集到的图像
// 			line++;
//         }
//         line = 0;
//         row++;
//     }
// }
// //------------------------------------------------------------------------------------------------------------------
// //  @brief     动态阈值
// //  @since      v1.0 
// //------------------------------------------------------------------------------------------------------------------
// uint8 otsuThreshold(uint8 *image, uint16 col, uint16 row)
// {
// #define GrayScale 256
//     uint16 Image_Width  = col;
//     uint16 Image_Height = row;
//     int X; uint16 Y;
//     uint8* data = image;
//     int HistGram[GrayScale] = {0};
	
// 	uint32 Amount = 0;
//     uint32 PixelBack = 0;
//     uint32 PixelIntegralBack = 0;
//     uint32 PixelIntegral = 0;
//     int32 PixelIntegralFore = 0;
//     int32 PixelFore = 0;
//     double OmegaBack=0, OmegaFore=0, MicroBack=0, MicroFore=0, SigmaB=0, Sigma=0; // 类间方差;
//     uint8 MinValue=0, MaxValue=0;
//     uint8 Threshold = 0;
	
	
//     for (Y = 0; Y <Image_Height; Y++) //Y<Image_Height改为Y =Image_Height；以便进行 行二值化
//     {
//         //Y=Image_Height;
//         for (X = 0; X < Image_Width; X++)
//         {
//         HistGram[(int)data[Y*Image_Width + X]]++; //统计每个灰度值的个数信息
//         }
//     }




//     for (MinValue = 0; MinValue < 256 && HistGram[MinValue] == 0; MinValue++) ;        //获取最小灰度的值
//     for (MaxValue = 255; MaxValue > MinValue && HistGram[MinValue] == 0; MaxValue--) ; //获取最大灰度的值

//     if (MaxValue == MinValue)
//     {
//         return MaxValue;          // 图像中只有一个颜色
//     }
//     if (MinValue + 1 == MaxValue)
//     {
//         return MinValue;      // 图像中只有二个颜色
//     }

//     for (Y = MinValue; Y <= MaxValue; Y++)
//     {
//         Amount += HistGram[Y];        //  像素总数
//     }

//     PixelIntegral = 0;
//     for (Y = MinValue; Y <= MaxValue; Y++)
//     {
//         PixelIntegral += HistGram[Y] * Y;//灰度值总数
//     }
//     SigmaB = -1;
//     for (Y = MinValue; Y < MaxValue; Y++)
//     {
//           PixelBack = PixelBack + HistGram[Y];    //前景像素点数
//           PixelFore = Amount - PixelBack;         //背景像素点数
//           OmegaBack = (double)PixelBack / Amount;//前景像素百分比
//           OmegaFore = (double)PixelFore / Amount;//背景像素百分比
//           PixelIntegralBack += HistGram[Y] * Y;  //前景灰度值
//           PixelIntegralFore = PixelIntegral - PixelIntegralBack;//背景灰度值
//           MicroBack = (double)PixelIntegralBack / PixelBack;//前景灰度百分比
//           MicroFore = (double)PixelIntegralFore / PixelFore;//背景灰度百分比
//           Sigma = OmegaBack * OmegaFore * (MicroBack - MicroFore) * (MicroBack - MicroFore);//g
//           if (Sigma > SigmaB)//遍历最大的类间方差g
//           {
//               SigmaB = Sigma;
//               Threshold = (uint8)Y;
//           }
//     }
//    return Threshold;
// }
// //------------------------------------------------------------------------------------------------------------------
// //  @brief      图像二值化，这里用的是大津法二值化。
// //  @since      v1.0 
// //------------------------------------------------------------------------------------------------------------------
// 
// void turn_to_bin(void)
// {
//   uint8 i,j;
//  image_thereshold = otsuThreshold(original_image[0], image_w, image_h);
//   for(i = 0;i<image_h;i++)
//   {
//       for(j = 0;j<image_w;j++)
//       {
//           if(original_image[i][j]>image_thereshold)bin_image[i][j] = white_pixel;
//           else bin_image[i][j] = black_pixel;
//       }
//   }
// }

/*
函数名称： test
函数功能：输出测试当前图像
函数参数：int image_input[image_h][image_w]
返回值： 无
作者：yian
日期：24/9/3
注释：已在开头声明
*/
uint8 hightest = 25;//定义一个最高行，tip：这里的最高指的是y值的最小
uint8 int2char[] = {'.','#','=','&'};
uint8 wb[image_h][image_w] = {{0}};

void test(uint8 image_input[image_h][image_w]){
        for (int i = 0; i < image_h; i++)
        {
            printf("LINE %d ", i);
            for (int ii = 0; ii < image_w; ii++)
            {
                printf("%c ", int2char[image_input[i][ii]]);
            }
            printf("\n");
            
        }
        printf("\n");
}





/*
函数名称：image_cpy(void)
函数功能：传入已经处理好的二值图像
函数参数：外部调用来自BinDATA.h的二值化图像(IMAGE_chosen)
返回值：修改全局函数bin_image
作者：yian
日期：24/9/3
注释：
*/


uint8 bin_image[image_h][image_w]; //图像数组
void image_cpy(uint8 (*input_image)[image_w])
{
    memcpy(bin_image, input_image, image_h * image_w * sizeof(char));
}


// /*
// 函数名称：void get_start_point(uint8 start_row)
// 功能说明：寻找两个边界的边界点作为八邻域循环的起始点
// 参数说明：输入任意行数
// 函数返回：无
// 修改时间：2022年9月8日
// 备    注：
// example：  get_start_point(image_h-2)
//  */
// uint8 start_point_l[2] = { 0 };//左边起点的x，y值
// uint8 start_point_r[2] = { 0 };//右边起点的x，y值
// uint8 get_start_point(uint8 start_row)
// {
// 	uint8 i = 0,l_found = 0,r_found = 0;
// 	//清零
// 	start_point_l[0] = 0;//x
// 	start_point_l[1] = 0;//y

// 	start_point_r[0] = 0;//x
// 	start_point_r[1] = 0;//y

// 		//从中间往左边，先找起点
// 	for (i = image_w / 2; i > border_min; i--)
// 	{
// 		start_point_l[0] = i;//x
// 		start_point_l[1] = start_row;//y
// 		if (bin_image[start_row][i] == 255 && bin_image[start_row][i - 1] == 0)
// 		{
// 			printf("找到左边起点image[%d][%d]\n", start_row,i);
// 			l_found = 1;
// 			break;
// 		}
// 	}

// 	for (i = image_w / 2; i < border_max; i++)
// 	{
// 		start_point_r[0] = i;//x
// 		start_point_r[1] = start_row;//y
// 		if (bin_image[start_row][i] == 255 && bin_image[start_row][i + 1] == 0)
// 		{
// 			printf("找到右边起点image[%d][%d]\n",start_row, i);
// 			r_found = 1;
// 			break;
// 		}
// 	}

// 	if(l_found&&r_found)return 1;
// 	else {
// 		printf("未找到起点\n");
// 		return 0;
// 	} 
// }

/*
函数名称：uint8 detectStartPoint(int start_Line)
函数功能：寻找八邻域起始点
函数参数：无，全局变量输入一张二值图片（bin_image）
返回值：1: 全局变量起始点坐标   uint8 start_point_l[2] uint8 start_point_r[2]； 2:return 1 作为image_process运行条件
作者：yian
日期：24/9/3
注释：！！！注意！！！ 程序整体 x为横坐标（0 ~ IMAGE_w）  y为纵坐标 （0 ~ IMAGE_H）,但是在该移植函数内部考虑到兼容性问题将颠倒xy，即x为纵坐标，y为横坐标，输出时再处理回函数整体xy映射
*/


uint8 start_point_l[2] = { 0 };//左边起点的x，y值
uint8 start_point_r[2] = { 0 };//右边起点的x，y值

/*
功能：点的结构体，x，y，pos（生长方向）
*/
typedef struct {  
    uint8 x,y,POS;
} de_Point;  //创建point结构体，简化代码

de_Point start_LEFT,start_RIGHT;//起始点（x1y1 x2y2）
int CHECK_CHAO_TIMES = 6;    //防止噪音的“冲刺”步数


uint8 detectStartPoint(int start_Line){   //从最后一行，左向右打，遇到跳变再冲几格子判定不是误差就记录，两边都是同理，并且如果在摄像头外，直接按照边框（暂定）

	start_LEFT.x = start_Line; start_LEFT.y = 0;
	start_RIGHT.x = start_Line;start_RIGHT.y = image_w - 1;  

	int isLEFT_START_FOUND = 0;
	int isRIGHT_START_FOUND = 0;

	int de_start_LEFT[2] = {start_Line,0};
	int de_start_RIGHT[2] = {start_Line,image_w - 1}; //查找起始点默认为左右边界；
	int de_CHECK_COUNTER = 0;                     //排除意外噪声计数器
	
		
	for (int i = 0; i < image_w; i++){

		//  cout<<Image_Input[Image_max_X][i]<<" ";
		//  cout<<"i ="<<i<<endl; 
		if(!isLEFT_START_FOUND){
			if(bin_image[start_Line][i]){  //先找左边起始点 遇到 n次 1 记录
				de_CHECK_COUNTER++;
				
				if(de_CHECK_COUNTER == CHECK_CHAO_TIMES){    //消失线不能作为起始点
					isLEFT_START_FOUND = 1;
					de_start_LEFT[1] = i-CHECK_CHAO_TIMES+1;
					de_CHECK_COUNTER = 0;
				}
			}
			else
			{
				de_CHECK_COUNTER = 0;
			}
		}
		else{
			

			if(!bin_image[start_Line][i]){  //然后找右边起始点 遇到 n次 0 记录
				de_CHECK_COUNTER++;
				if(de_CHECK_COUNTER == CHECK_CHAO_TIMES){
					
					isRIGHT_START_FOUND = 1;
					de_start_RIGHT[1] = i-CHECK_CHAO_TIMES;
				}
			}
			else
			{
				de_CHECK_COUNTER = 0;
			}
		}

		// cout<<de_start_RIGHT[0]<<" "<<de_start_RIGHT[1]<<endl;
		// cout<<"con =  "<<de_CHECK_COUNTER<<endl;

		if(isLEFT_START_FOUND&&isRIGHT_START_FOUND == 1)break;
		if(!isRIGHT_START_FOUND&&de_CHECK_COUNTER!=0&&i == image_w-1){start_RIGHT.y = image_w - de_CHECK_COUNTER-1;} 
	}
		
		

	start_LEFT.y = de_start_LEFT[1];
	start_RIGHT.y = de_start_RIGHT[1];

    

	//printf("left: %d , right: %d " ,start_LEFT.y,start_RIGHT.y);

	//结果写入全局数组
	start_point_l[0] = start_LEFT.y;  start_point_l[1] = start_LEFT.x; //左边起点的x，y值
	start_point_r[0] = start_RIGHT.y;  start_point_r[1] = start_RIGHT.x; //右边起点的x，y值

	return 1;

	

	
   

}

/*
函数名称：int isIN_map(int x,int y)
函数功能：判断点是否在图像内
函数参数：x,y
返回值：0/1
作者：yian
日期：24/9/4
注释：
*/
bool isIN_map(int x,int y){return (y<=start_Line_total)&&(x<=image_w - 1);} //点的边界内合法性检验

uint8 bound_Points_L[2][100];
uint8 bound_Points_R[2][100];

int EIGHT_SEARCH_CL[2][9] = {
    {9,0,-1,-1,-1,0,+1,+1,+1},
    {9,-1,-1,0,+1,+1,+1,0,-1}
    };  //x1,x2,x3,x4...    y1.y2.....

//2 3 4 
//1 0 5
//8 7 6
uint8 oppo_index[9] = {0,5,6,7,8,1,2,3,4};   //镜像坐标索引，数组的元素index和value互为相对的生长方向
uint8 isNewCheck_array[image_h][image_w] = { { 0 } }; //检测与输出数组

bool isRepeat(int x,int y,uint8 max_time){return isNewCheck_array[y][x] >= max_time;} //检测是否已经遍历//这里使用的是框架xy

/*
函数名称：eiGHT_neighbor()
函数功能：八邻域爬线
函数参数：
// break_flag_r			：最多需要循环的次数
// (*image)[image_w]		：需要进行找点的图像数组，必须是二值图,填入数组名称即可
// 					   特别注意，不要拿宏定义名字作为输入参数，否则数据可能无法传递过来
// *l_stastic				：统计左边数据，用来输入初始数组成员的序号和取出循环次数
// *r_stastic				：统计右边数据，用来输入初始数组成员的序号和取出循环次数
// l_start_x				：左边起点横坐标
// l_start_y				：左边起点纵坐标
// r_start_x				：右边起点横坐标
// r_start_y				：右边起点纵坐标
// hightest				：循环结束所得到的最高高度
返回值：对于全局变量：
// uint16 points_l[(uint16)USE_num][2] = { {  0 } };//左线
// uint16 points_r[(uint16)USE_num][2] = { {  0 } };//右线
// uint16 dir_r[(uint16)USE_num] = { 0 };//用来存储右边生长方向
// uint16 dir_l[(uint16)USE_num] = { 0 };//用来存储左边生长方向
// uint16 data_stastics_l = 0;//统计左边找到点的个数
// uint16 data_stastics_r = 0;//统计右边找到点的个数
// uint8 hightest = 0;//最高点
的赋值修改
作者：yian
日期：24/9/5
注释： 这里和寻找起始点的代码一样，xy与代码框架的xy颠倒，为了并保持与其他接口一致，在内部进行了调整，作者尽量在最开始颠倒xy，核心算法部分
//	   保留原代码相反的xy，而在输出时再转化为代码框架的xy
*/
#define USE_num	image_h*3	//定义找点的数组成员个数按理说300个点能放下，但是有些特殊情况确实难顶，多定义了一点

 //存放点的x，y坐标
uint16 points_l[(uint16)USE_num][2] = { {  0 } };//左线
uint16 points_r[(uint16)USE_num][2] = { {  0 } };//右线
uint16 dir_r[(uint16)USE_num] = { 0 };//用来存储右边生长方向
uint16 dir_l[(uint16)USE_num] = { 0 };//用来存储左边生长方向
uint16 data_stastics_l = 0;//统计左边找到点的个数
uint16 data_stastics_r = 0;//统计右边找到点的个数




void eIGHT_neighbor(uint16 break_flag, uint8(*image)[image_w], uint16 *l_stastic, uint16 *r_stastic, uint8 l_start_x, uint8 l_start_y, uint8 r_start_x, uint8 r_start_y, uint8*hightest){

	//printf("开始八邻域\n   start_LEFT: %d, %d , start_RIGHT: %d, %d \n" ,l_start_x,l_start_y,r_start_x,r_start_y);
    bool EN_LEFT_FINISH = false;
    bool EN_RIGHT_FINISH = false;
    //碰到hor_Line（highest）为 1 结束

    // bool isPos_NEXT_HAD = 0;//已经遍历
    // bool isPos_NEXT_OUT = 0;//已经超出
    // //影响八邻域小循环


    de_Point POS_NOW_L,POS_PRE_L,POS_NOW_R,POS_PRE_R;
	//！！！核心思路点：POS_NOW存储当前点，即当前八邻域循环的中心点，POS_PRE存储前一个点,也是当前八邻域循环的起始点

    {//位置游标
    POS_NOW_L.x = l_start_y;     //start_LEFT.x;
    POS_NOW_L.y = l_start_x;     //start_LEFT.y;
    POS_NOW_L.POS = 0;  		//pos存储当前点相对于该次八邻域循环中center点的位置

    POS_PRE_L.x = l_start_y;     //start_LEFT.x;
    POS_PRE_L.y = l_start_x;     //start_LEFT.y;
    POS_PRE_L.POS = 1;  

    POS_NOW_R.x = r_start_y;     //start_RIGHT.x;
    POS_NOW_R.y = r_start_x;     //start_RIGHT.y;
    POS_NOW_R.POS = 0;

    POS_PRE_R.x = r_start_y;     //start_RIGHT.x;
    POS_PRE_R.y = r_start_x;     //start_RIGHT.y;
    POS_PRE_R.POS = 5;
    }

	uint16 R_n = *r_stastic;
	uint16 L_n = *l_stastic;
   //记录条两边的点数


    while ((!EN_LEFT_FINISH || !EN_RIGHT_FINISH) && break_flag--) //!EN_LEFT_FINISH || !EN_RIGHT_FINISH
    {   
        // printf("循环倒数： %d\n " ,break_flag);
        if(!EN_LEFT_FINISH){

            for (int i = 0; i <= 8; i++)
            {
                uint8 x,y;
                x = POS_NOW_L.x + EIGHT_SEARCH_CL[0][(POS_PRE_L.POS+i)%8+1];
                y = POS_NOW_L.y + EIGHT_SEARCH_CL[1][(POS_PRE_L.POS+i)%8+1];

                // cout<<"输入："<<x<<" "<<y<<endl;
                // cout<<"POS = "<<(POS_PRE_L.POS+i)%8+1<<endl;

                if(isIN_map(y,x)){    //y,x是因为isIN_map遵守框架的xy

                    if(x< *hightest){EN_LEFT_FINISH = true;break;} //跳出条件,碰到视野界限
					if(isRepeat(y,x,3)){EN_LEFT_FINISH = true;break;}  //跳出条件2，碰到遍历过max_time次的点
                    if(image[x][y] == white_pixel){   //255
                        //if(!isOUTMID(x,y,2)){EN_LEFT_FINISH = 1;break;}
                        //output_INT[x][y] = 2;                      //编号2，表示左边界

                        // if(l_stastic >= Bound_Mem_max){EN_LEFT_FINISH = 1;break;}
                        
                        bound_Points_L[0][L_n] = x;
                        bound_Points_L[1][L_n] = y;

						isNewCheck_array[x][y]++;

						points_l[L_n][0] = y;
						points_l[L_n][1] = x; //框架全局点坐标储存，使用框架xy


						dir_l[L_n] = (POS_PRE_L.POS+i)%8+1;


                        POS_NOW_L.POS = (POS_PRE_L.POS+i)%8+1;
                        POS_PRE_L = POS_NOW_L;
                        POS_PRE_L.POS = oppo_index[POS_PRE_L.POS];
                        POS_NOW_L.x = x;
                        POS_NOW_L.y = y;

						L_n++;
						data_stastics_l++;

                        // cout<<"POSNOW:"<<POS_PRE_L.x<<" "<<POS_PRE_L.y<<" "<<POS_PRE_L.POS<<endl;
                        // cout<<"POSGET:"<<POS_NOW_L.x<<" "<<POS_NOW_L.y<<" "<<POS_NOW_L.POS<<endl<<endl;
                        break;
                    }
                }

            }
        }
	



        if(!EN_RIGHT_FINISH){
            for (int i = 8; i >= 0; i--)
            {
                uint8 x,y;
                x = POS_NOW_R.x + EIGHT_SEARCH_CL[0][(POS_PRE_R.POS+i-1)%8];
                y = POS_NOW_R.y + EIGHT_SEARCH_CL[1][(POS_PRE_R.POS+i-1)%8];

                //  cout<<"输入："<<x<<" "<<y<<endl;
                //  cout<<"POS = "<<(POS_PRE_R.POS+i-1)%8<<endl;
    
                if(isIN_map(y,x)){

                    //  cout<<"通过边界判断"<<endl;
					// printf("循环中： %d\n" ,i);

                    if(x< *hightest){EN_RIGHT_FINISH = true;break;} //跳出条件1,碰到视野界限
					if(isRepeat(y,x,3)){EN_RIGHT_FINISH = true;break;}  //跳出条件2，碰到遍历过max_time次的点

                    if(image[x][y] == white_pixel){
                        //if(!isOUTMID(x,y,3)){EN_RIGHT_FINISH = 1;break;}
                        //output_INT[x][y] = 3;                        //编号3，表示右边界

                        // if(r_stastic >= Bound_Mem_max){EN_LEFT_FINISH = 1;break;}
                        
                        bound_Points_R[0][R_n] = x;
                        bound_Points_R[1][R_n] = y;

						isNewCheck_array[x][y]++;

						dir_r[R_n] = (POS_PRE_R.POS+i-1)%8; //记录生长方向

						points_r[R_n][0] = y;
						points_r[R_n][1] = x; //框架全局点坐标储存，使用框架xy


                        POS_NOW_R.POS = (POS_PRE_R.POS+i-1)%8;
                        POS_PRE_R = POS_NOW_R;
                        POS_PRE_R.POS = oppo_index[POS_PRE_R.POS];
                        POS_NOW_R.x = x;
                        POS_NOW_R.y = y;

                        //   cout<<"POSNOW:"<<POS_PRE_R.x<<" "<<POS_PRE_R.y<<" "<<POS_PRE_R.POS<<endl;
                        //   cout<<"POSGET:"<<POS_NOW_R.x<<" "<<POS_NOW_R.y<<" "<<POS_NOW_R.POS<<endl<<endl;

						R_n++;
						data_stastics_r++;

                        break;
                    }
                    
                }
			}
		}



	}
}


// /*
// 函数名称：void search_l_r(uint16 break_flag, uint8(*image)[image_w],uint16 *l_stastic, uint16 *r_stastic,
// 							uint8 l_start_x, uint8 l_start_y, uint8 r_start_x, uint8 r_start_y,uint8*hightest)

// 功能说明：八邻域正式开始找右边点的函数，输入参数有点多，调用的时候不要漏了，这个是左右线一次性找完。
// 参数说明：
// break_flag_r			：最多需要循环的次数
// (*image)[image_w]		：需要进行找点的图像数组，必须是二值图,填入数组名称即可
// 					   特别注意，不要拿宏定义名字作为输入参数，否则数据可能无法传递过来
// *l_stastic				：统计左边数据，用来输入初始数组成员的序号和取出循环次数
// *r_stastic				：统计右边数据，用来输入初始数组成员的序号和取出循环次数
// l_start_x				：左边起点横坐标
// l_start_y				：左边起点纵坐标
// r_start_x				：右边起点横坐标
// r_start_y				：右边起点纵坐标
// hightest				：循环结束所得到的最高高度
// 函数返回：无
// 修改时间：2022年9月25日
// 备    注：
// example：
// 	search_l_r((uint16)USE_num,image,&data_stastics_l, &data_stastics_r,start_point_l[0],
// 				start_point_l[1], start_point_r[0], start_point_r[1],&hightest);
//  */
// #define USE_num	image_h*3	//定义找点的数组成员个数按理说300个点能放下，但是有些特殊情况确实难顶，多定义了一点

//  //存放点的x，y坐标
// uint16 points_l[(uint16)USE_num][2] = { {  0 } };//左线
// uint16 points_r[(uint16)USE_num][2] = { {  0 } };//右线
// uint16 dir_r[(uint16)USE_num] = { 0 };//用来存储右边生长方向
// uint16 dir_l[(uint16)USE_num] = { 0 };//用来存储左边生长方向
// uint16 data_stastics_l = 0;//统计左边找到点的个数
// uint16 data_stastics_r = 0;//统计右边找到点的个数
// uint8 hightest = 0;//最高点
// void search_l_r(uint16 break_flag, uint8(*image)[image_w], uint16 *l_stastic, uint16 *r_stastic, uint8 l_start_x, uint8 l_start_y, uint8 r_start_x, uint8 r_start_y, uint8*hightest)
// {

// 	uint8 i = 0, j = 0;

// 	//左边变量
// 	uint8 search_filds_l[8][2] = { {  0 } };
// 	uint8 index_l = 0;
// 	uint8 temp_l[8][2] = { {  0 } };
// 	uint8 center_point_l[2] = {  0 };
// 	uint16 l_data_statics;//统计左边
// 	//定义八个邻域
// 	static int8 seeds_l[8][2] = { {0,  1},{-1,1},{-1,0},{-1,-1},{0,-1},{1,-1},{1,  0},{1, 1}, };
// 	//{-1,-1},{0,-1},{+1,-1},
// 	//{-1, 0},	     {+1, 0},
// 	//{-1,+1},{0,+1},{+1,+1},
// 	//这个是顺时针

// 	//右边变量
// 	uint8 search_filds_r[8][2] = { {  0 } };
// 	uint8 center_point_r[2] = { 0 };//中心坐标点
// 	uint8 index_r = 0;//索引下标
// 	uint8 temp_r[8][2] = { {  0 } };
// 	uint16 r_data_statics;//统计右边
// 	//定义八个邻域
// 	static int8 seeds_r[8][2] = { {0,  1},{1,1},{1,0}, {1,-1},{0,-1},{-1,-1}, {-1,  0},{-1, 1}, };
// 	//{-1,-1},{0,-1},{+1,-1},
// 	//{-1, 0},	     {+1, 0},
// 	//{-1,+1},{0,+1},{+1,+1},
// 	//这个是逆时针

// 	l_data_statics = *l_stastic;//统计找到了多少个点，方便后续把点全部画出来
// 	r_data_statics = *r_stastic;//统计找到了多少个点，方便后续把点全部画出来

// 	//第一次更新坐标点  将找到的起点值传进来
// 	center_point_l[0] = l_start_x;//x
// 	center_point_l[1] = l_start_y;//y
// 	center_point_r[0] = r_start_x;//x
// 	center_point_r[1] = r_start_y;//y

// 		//开启邻域循环
// 	while (break_flag--)
// 	{

// 		//左边
// 		for (i = 0; i < 8; i++)//传递8F坐标, 计算出中心点附近八邻域的坐标位置
// 		{
// 			search_filds_l[i][0] = center_point_l[0] + seeds_l[i][0];//x
// 			search_filds_l[i][1] = center_point_l[1] + seeds_l[i][1];//y
// 		}

// 		//中心坐标点填充到上一步已经找到的点内
// 		points_l[l_data_statics][0] = center_point_l[0];//x
// 		points_l[l_data_statics][1] = center_point_l[1];//y
// 		l_data_statics++;//索引加一

// 		//右边
// 		for (i = 0; i < 8; i++)//传递8F坐标
// 		{
// 			search_filds_r[i][0] = center_point_r[0] + seeds_r[i][0];//x
// 			search_filds_r[i][1] = center_point_r[1] + seeds_r[i][1];//y
// 		}
// 		//中心坐标点填充到上一步已经找到的点内
// 		points_r[r_data_statics][0] = center_point_r[0];//x
// 		points_r[r_data_statics][1] = center_point_r[1];//y

// 		index_l = 0;//先清零，后使用

// 		for (i = 0; i < 8; i++)   //temp_l数组为当前邻域的坐标暂存数组
// 		{
// 			temp_l[i][0] = 0;//先清零，后使用
// 			temp_l[i][1] = 0;//先清零，后使用
// 		}

// 		//左边判断
// 		for (i = 0; i < 8; i++)
// 		{
// 			if (image[search_filds_l[i][1]][search_filds_l[i][0]] == 0
// 				&& image[search_filds_l[(i + 1) & 7][1]][search_filds_l[(i + 1) & 7][0]] == 255 
// 				&& isIN_map(search_filds_l[i][0], search_filds_l[i][1]))
// 			{
// 				temp_l[index_l][0] = search_filds_l[(i)][0];
// 				temp_l[index_l][1] = search_filds_l[(i)][1];
// 				index_l++;
// 				dir_l[l_data_statics - 1] = (i);//记录生长方向
// 			}

// 			if (index_l)
// 			{
// 				//更新坐标点
// 				center_point_l[0] = temp_l[0][0];//x
// 				center_point_l[1] = temp_l[0][1];//y
// 				for (j = 0; j < index_l; j++)
// 				{
// 					if (center_point_l[1] > temp_l[j][1])
// 					{
// 						center_point_l[0] = temp_l[j][0];//x
// 						center_point_l[1] = temp_l[j][1];//y
// 					}
// 				}
// 			}

// 		}
// 		if ((points_r[r_data_statics][0]== points_r[r_data_statics-1][0]&& points_r[r_data_statics][0] == points_r[r_data_statics - 2][0]
// 			&& points_r[r_data_statics][1] == points_r[r_data_statics - 1][1] && points_r[r_data_statics][1] == points_r[r_data_statics - 2][1])
// 			||(points_l[l_data_statics-1][0] == points_l[l_data_statics - 2][0] && points_l[l_data_statics-1][0] == points_l[l_data_statics - 3][0]
// 				&& points_l[l_data_statics-1][1] == points_l[l_data_statics - 2][1] && points_l[l_data_statics-1][1] == points_l[l_data_statics - 3][1]))
// 		{
// 			printf("三次进入同一个点，退出\n");
// 			break;
// 		}
// 		if (my_abs(points_r[r_data_statics][0] - points_l[l_data_statics - 1][0]) < 2
// 			&& my_abs(points_r[r_data_statics][1] - points_l[l_data_statics - 1][1] < 2)
// 			)
// 		{
// 			printf("\n左右相遇退出\n");
// 			*hightest = (points_r[r_data_statics][1] + points_l[l_data_statics - 1][1]) >> 1;//取出最高点
// 			printf("\n在y=%d处退出\n",*hightest);
// 			break;
// 		}
// 		if ((points_r[r_data_statics][1] < points_l[l_data_statics - 1][1]))
// 		{
// 			printf("\n如果左边比右边高了,左边等待右边\n");
// 			continue;//如果左边比右边高了，左边等待右边
// 		}
// 		if (dir_l[l_data_statics - 1] == 7
// 			&& (points_r[r_data_statics][1] > points_l[l_data_statics - 1][1]))//左边比右边高且已经向下生长了
// 		{
// 			//printf("\n左边开始向下了，等待右边，等待中... \n");
// 			center_point_l[0] = points_l[l_data_statics - 1][0];//x
// 			center_point_l[1] = points_l[l_data_statics - 1][1];//y
// 			l_data_statics--;
// 		}
// 		r_data_statics++;//索引加一

// 		index_r = 0;//先清零，后使用
// 		for (i = 0; i < 8; i++)
// 		{
// 			temp_r[i][0] = 0;//先清零，后使用
// 			temp_r[i][1] = 0;//先清零，后使用
// 		}

// 		//右边判断
// 		for (i = 0; i < 8; i++)
// 		{
// 			if (image[search_filds_r[i][1]][search_filds_r[i][0]] == 0
// 				&& image[search_filds_r[(i + 1) & 7][1]][search_filds_r[(i + 1) & 7][0]] == 255
// 				&& isIN_map(search_filds_r[i][0], search_filds_r[i][1]))
// 			{
// 				temp_r[index_r][0] = search_filds_r[(i)][0];
// 				temp_r[index_r][1] = search_filds_r[(i)][1];
// 				index_r++;//索引加一
// 				dir_r[r_data_statics - 1] = (i);//记录生长方向
// 				//printf("dir[%d]:%d\n", r_data_statics - 1, dir_r[r_data_statics - 1]); 
// 			}
// 			if (index_r)
// 			{

// 				//更新坐标点
// 				center_point_r[0] = temp_r[0][0];//x
// 				center_point_r[1] = temp_r[0][1];//y
// 				for (j = 0; j < index_r; j++)
// 				{
// 					if (center_point_r[1] > temp_r[j][1])
// 					{
// 						center_point_r[0] = temp_r[j][0];//x
// 						center_point_r[1] = temp_r[j][1];//y
// 					}
// 				}

// 			}
// 		}


// 	}


// 	//取出循环次数
// 	*l_stastic = l_data_statics;
// 	*r_stastic = r_data_statics;

// }




/*------------------------------------------------------------------------------------
函数名称：void kernel_smooth(uint8 *input, uint8 *output, uint16 length)
函数功能：用卷积平滑生长生长方向数组dir_L/R
函数参数：
		*input  要平滑的输入数组
		*output 平滑后的输出数组
		kernel_times  卷积次数，默认为3
		length  dir_L/R数组长度()
返回值：无，修改后的全局数组dir_L,dir_R
作者：yian
日期：24/9/5
注释：默认三次卷积，酌情修改
--------------------------------------------------------------------------------------*/

void kernel_smooth(uint16 *input, uint16 *output, uint8 kernel_times,uint8 length)
{
    
	// printf("  length:%d   ",length);
    uint16 smoothed_directions[length];
	uint16 directions[length];


	memcpy(directions, input, length * sizeof(uint16));

    for (uint8 i = 0; i < kernel_times; i++)
    {
        // 对 directions 进行卷积平滑处理
        mode_convolve(directions, smoothed_directions, length);

		
        memcpy(directions, smoothed_directions, length * sizeof(uint16));
    }


	memcpy(output, smoothed_directions, length * sizeof(uint16)); //结果赋值给output

}


/*
函数名称：void get_left(uint16 total_L)
功能说明：从八邻域边界里提取需要的边线
参数说明：
total_L	：找到的点的总数
函数返回：无
修改时间：2022年9月25日
备    注：
example： get_left(data_stastics_l );
 */
uint8 l_border[image_h];//左线数组
uint8 r_border[image_h];//右线数组
uint8 l_highest = 0; //左最高
uint8 r_highest = 0; //右最高

void get_left(uint16 total_L,uint8 start_Line)
{
	//printf("\n开始提取左边线\n");
	uint8 i = 0;
	uint16 j = 0;
	uint8 h = 0;
	//初始化
	for (i = 0;i<image_h;i++)
	{
		l_border[i] = border_min;
	}
	h = start_Line - 1;
	//左边
	for (j = 0; j < total_L; j++)
	{
		// printf("\npoints_l[%d]:%d,%d h= %d\n", j, points_l[j][0], points_l[j][1],h);
		if (points_l[j][1] == h)
		{
			l_border[h] = points_l[j][0]+1;
			l_highest++;
			//printf("l_border[%d]:%d\n", h, l_border[h]);
		}
		else continue; //每行只取一个点，没到下一行就不记录
		h--;

		if (h == 0) 
		{
			break;//到最后一行退出
		}
	}
}
/*
函数名称：void get_right(uint16 total_R)
功能说明：从八邻域边界里提取需要的边线
参数说明：
total_R  ：找到的点的总数
函数返回：无
修改时间：2022年9月25日
备    注：
example：get_right(data_stastics_r);
 */
void get_right(uint16 total_R, uint8 start_Line)
{
	uint8 i = 0;
	uint16 j = 0;
	uint8 h = 0;
	for (i = 0; i < image_h; i++)
	{
		r_border[i] = border_max;//右边线初始化放到最右边，左边线放到最左边，这样八邻域闭合区域外的中线就会在中间，不会干扰得到的数据
	}
	h = start_Line - 1;
	//右边
	for (j = 0; j < total_R; j++)
	{
		if (points_r[j][1] == h)
		{
			r_border[h] = points_r[j][0] - 1;
			r_highest++;
			//printf("r_border[%d]:%d\n", h, r_border[h]);
		}
		else continue;//每行只取一个点，没到下一行就不记录
		h--;

		if (h == 0)break;//到最后一行退出
	}
}

//定义膨胀和腐蚀的阈值区间
#define threshold_max	255*5//此参数可根据自己的需求调节
#define threshold_min	255*2//此参数可根据自己的需求调节
void image_filter(uint8(*bin_image)[image_w])//形态学滤波，简单来说就是膨胀和腐蚀的思想
{
	uint16 i, j;
	uint32 num = 0;


	for (i = 1; i < image_h - 1; i++)
	{
		for (j = 1; j < (image_w - 1); j++)
		{
			//统计八个方向的像素值
			num =
				bin_image[i - 1][j - 1] + bin_image[i - 1][j] + bin_image[i - 1][j + 1]
				+ bin_image[i][j - 1] + bin_image[i][j + 1]
				+ bin_image[i + 1][j - 1] + bin_image[i + 1][j] + bin_image[i + 1][j + 1];


			if (num >= threshold_max && bin_image[i][j] == 0)
			{

				bin_image[i][j] = white_pixel;//白  可以搞成宏定义，方便更改

			}
			if (num <= threshold_min && bin_image[i][j] == white_pixel)
			{

				bin_image[i][j] = black_pixel;//黑

			}

		}
	}

}

/*
函数名称：void image_draw_rectan(uint8(*image)[image_w])
功能说明：给图像画一个黑框
参数说明：uint8(*image)[image_w]	图像首地址
函数返回：无
修改时间：2022年9月8日
备    注：
example： image_draw_rectan(bin_image);
 */
void image_draw_rectan(uint8(*image)[image_w])
{

	uint8 i = 0;
	for (i = 0; i < image_h; i++)
	{
		image[i][0] = 0;
		image[i][1] = 0;
		image[i][image_w - 1] = 0;
		image[i][image_w - 2] = 0;

	}
	for (i = 0; i < image_w; i++)
	{
		image[0][i] = 0;
		image[1][i] = 0;
		//image[image_h-1][i] = 0;

	}
}

/*------------------------------------------------------
函数名称：Slope_Calculate(uint8 end, uint8 begin, uint8 *border)
函数功能：利用最小二乘法计算给出的start-end个点拟合的直线的斜率
函数参数：
// begin:开始点
// end:结束点
//uint8 *border	: 边界数组首地址
返回值：
//       result	: 斜率
作者：yian
日期：2024年9月6日
注释：
------------------------------------------------------*/
/** 
* @brief 最小二乘法
* @param uint8 begin				输入起点
* @param uint8 end					输入终点
* @param uint8 *border				输入需要计算斜率的边界首地址
*  @see CTest		Slope_Calculate(start, end, border);//斜率
* @return 返回说明
*     -<em>false</em> fail
*     -<em>true</em> succeed
*/
float Slope_Calculate(uint8 begin, uint8 end, uint8 *border)
{
	float xsum = 0, ysum = 0, xysum = 0, x2sum = 0;
	int16 i = 0;
	float result = 0;
	static float resultlast;


	for (i = begin; i < end; i++)
	{
		//printf("x : %d, y: %d",i, border[i]);
		xsum += i;
		ysum += border[i];
		xysum += i * (border[i]);
		x2sum += i * i;

	}

	//printf("\nxsum:%f,ysum:%f,xysum:%f,x2sum:%f\n", xsum, ysum, xysum, x2sum);

	if ((end - begin)*x2sum - xsum * xsum) //判断除数是否为零
	{
		result = ((end - begin)*xysum - xsum * ysum) / ((end - begin)*x2sum - xsum * xsum);
		resultlast = result;
	}
	else
	{
		result = resultlast;
	}
	return result;

}

/** 
* @brief 计算斜率截距
* @param uint8 start				输入起点
* @param uint8 end					输入终点
* @param uint8 *border				输入需要计算斜率的边界
* @param float *slope_rate			输入斜率地址
* @param float *intercept			输入截距地址
*  @see CTest		calculate_s_i(start, end, r_border, &slope_l_rate, &intercept_l);
* @return 返回说明
*     -<em>false</em> fail
*     -<em>true</em> succeed
*/
void calculate_s_i(uint8 start, uint8 end, uint8 *border, float *slope_rate, float *intercept)
{
	uint16 i, num = 0;
	uint16 xsum = 0, ysum = 0;
	float y_average, x_average;

	num = 0;
	xsum = 0;
	ysum = 0;
	y_average = 0;
	x_average = 0;
	for (i = start; i < end; i++)
	{
		xsum += i;
		ysum += border[i];
		num++;
	}
	//printf("\nxsum:%d,ysum:%d\n", xsum, ysum);

	//计算各个平均数
	if (num)
	{
		x_average = (float)(xsum / num);
		y_average = (float)(ysum / num);

	}
	//printf("\nx_average:%f,y_average:%f\n", x_average, y_average);
	

	/*计算斜率*/
	*slope_rate = Slope_Calculate(start, end, border);//斜率
	*intercept = y_average - (*slope_rate)*x_average;//截距  b=y-kx
}


uint8 cross_state_array[8] = {0,0,0,0,0,0,0,0};    //1:true  0:false
/**
 * ----------------------------------------------------------
 * @name cross_state_Denoising
 * @brief 列表去除噪声
 * @param [in] uint8 threshold		输入阈值
 * @author Yian
 * @date 2024年10月11日
 * @note 
**/
bool isCORSS = false;
void cross_state_Denoising(uint8 threshold,bool cross_Now)
{

	uint8 sum = 0;  //默认当前isCross
	for (uint8 i = 1; i < 8; i++)
	{
		cross_state_array[i - 1] = cross_state_array[i];
		if(cross_state_array[i - 1] == 1){sum++;}
	}
	cross_state_array[7] = (cross_Now?1:0);
	sum+=cross_state_array[7];
	//tft180_show_uint(75, 10, sum, 2);
	if (sum >= threshold) {isCORSS = true; }
	else {isCORSS = false;}
	
	
	
}

/**------------------------------------------------------
*函数名称：void cross_fill
*函数功能：
*函数参数：
*返回值：
*作者：yian
*日期：2024年9月6日
*注释：通过生长方向突变特征判断找到拐点，计算拐点周围附近斜率进行补线条
	//！！！注意这里的拐点是远端拐点，并且根据远端线进行补线
	//进入十字补条件1：两边生长方向都符合条件，条件2：两边有n个等高的消失线
------------------------------------------------------*/
/** 
* @brief 十字补线函数
* @param uint8(*image)[image_w]		输入二值图像
* @param uint8 *l_border			输入左边界首地址
* @param uint8 *r_border			输入右边界首地址
* @param uint16 total_num_l			输入左边循环总次数
* @param uint16 total_num_r			输入右边循环总次数
* @param uint16 *dir_l				输入左边生长方向首地址
* @param uint16 *dir_r				输入右边生长方向首地址
* @param uint16(*points_l)[2]		输入左边轮廓首地址
* @param uint16(*points_r)[2]		输入右边轮廓首地址
*  @see CTest		cross_fill(image,l_border, r_border, data_statics_l, data_statics_r, dir_l, dir_r, points_l, points_r);
* @return 返回说明
*     -<em>false</em> fail
*     -<em>true</em> succeed
 */

bool is_cross_line(uint16 (*point_border_L)[2],uint16 (*point_border_R)[2], uint16 n_L, uint16 n_R); //判断是否为十字第二条件（n 个同高度的消失点）
void cross_fill(uint8(*image)[image_w], uint8 *l_border, uint8 *r_border, uint16 total_num_l, uint16 total_num_r,
										 uint16 *dir_l, uint16 *dir_r, uint16(*points_l)[2], uint16(*points_r)[2])
{
	
	uint8 i;
	uint8 break_num_l = 0;
	uint8 break_num_r = 0;
	uint8 start, end;
	float slope_l_rate = 0, intercept_l = 0;
	float slope_r_rate = 0;
	//出十字
	for (i = 1; i < total_num_l; i++)
	{
		if (dir_l[i - 1] == 3 && dir_l[i] == 3 && dir_l[i + 3] == 5 && dir_l[i + 5] == 5 && dir_l[i + 7] == 5)  //远端拐点生长方向
		{
			break_num_l = points_l[i][1];//传递y坐标
			break;
		}
	}
	for (i = 1; i < total_num_r; i++)
	{
		if (dir_r[i - 1] == 3 && dir_r[i] == 3 && dir_r[i + 3] == 1 && dir_r[i + 5] == 1 && dir_r[i + 7] == 1)
		{
			break_num_r = points_r[i][1];//传递y坐标
			break;
		}
	}
    // tft180_show_uint(65, 65, break_num_l, 3);
    // tft180_show_uint(65, 85, break_num_r, 3);
    // tft180_show_int(65, 100, 6, 1);

	bool cross_state_now = 0;
	if (break_num_l && break_num_r 
			&& is_cross_line(points_l,points_r,data_stastics_l,data_stastics_r))//进入十字补条件1：两边生长方向都符合条件，条件2：两边有n个等高的消失线          // && image[image_h - 1][4] && image[image_h - 1][image_w - 4]
	{
		//isCORSS = true;   //十字标志位
	    cross_state_now = 1;


//		//计算斜率
//
//
//
////		printf("\n发现十字 进行十字补线\n");
////		printf("brea_knum-L:%d\n", break_num_l);
////		printf("brea_knum-R:%d\n", break_num_r);
////		printf("十字标志位:1\n");
//		start = break_num_l -15; //- 15;                            //!!取拐点周围start-end个点计算斜率
//		start = limit_a_b(start, 0, image_h);
//		end = break_num_l - 5;  // - 5;
//
//
//		calculate_s_i(start, end, l_border, &slope_l_rate, &intercept_l);
//
//		// printf("start:%d,end:%d\n",start,end);
//		// printf("slope_l_rate:%f\nintercept_l:%f\n", slope_l_rate, intercept_l);
//
//
//
//		for (i = break_num_l - 5; i < image_h-1; i++)
//		{
//			l_border[i] = slope_l_rate * (i)+intercept_l;//y = kx+b
//			l_border[i] = limit_a_b(l_border[i], border_min, border_max);//限幅
//		}
//
//
//
//		//计算斜率
//		start = break_num_r -15;//起点
//		start = limit_a_b(start, 0, image_h);//限幅
//		end = break_num_r - 5;//终点
//
//
//
//		calculate_s_i(start, end, r_border, &slope_r_rate, &intercept_l);
//
//
////		printf("start:%d,end:%d\n",start,end);
////		printf("slope_r_rate:%f\nintercept_l:%f\n", slope_r_rate, intercept_l);
////		printf("slope_l_rate:%d\nintercept_l:%d\n", slope_l_rate, intercept_l);
//		for (i = break_num_r - 5; i < image_h - 1; i++)
//		{
//			r_border[i] = slope_r_rate * (i)+intercept_l;
//			r_border[i] = limit_a_b(r_border[i], border_min, border_max);
//		}
	}
	cross_state_Denoising(2,cross_state_now);

}


/*------------------------------------------------------
函数名称：bool is_cross_line(uint8 *image,uint8 *border,uint16 data_statics)
函数功能：状态机十字补线状态入口，检测两边有同高的消失线
函数参数：
//// *point_border_L/R 左右边边界首地址  (point_l[image_h][2])
// n_L/R左右边数据统计
返回值：true/false
作者：yian
日期：2024年9月6日
注释：  搜集左侧消失线，右侧消失线，如果两边有一定数量同高的消失线，输出true 作为十字补线判定的第二条件
------------------------------------------------------*/
bool is_cross_line(uint16 (*point_border_L)[2],uint16 (*point_border_R)[2], uint16 n_L, uint16 n_R)
{
	uint8 counter = 0;

	for (size_t i = 0; i < n_L; i++)
	{
		if (point_border_L[i][0] == 0 && i<n_R)
		{
			if (point_border_R[i][0] == image_w - 1)
			{
				counter++;
			}
			
		}
		if (i>=n_L && counter>=4)
		{
			break;
		}
	}
	//printf("\ncross_line_num:%d\n", counter);
	if (counter >= 4)
	{
		return true;
	}
	return false;
}

uint8 is_cross2Miss = 0;
/**
 * ----------------------------------------------------------
 * @name cross_Line_fix
 * @brief  没有补线的十字姿态修复
 * @author yian 
 * @date 2024年10月12日
 * @note 通过对进入十字路口后两端边宽的特征进行angleErr的操作
**/
void cross_Line_fix(uint8 *l_border, uint8 *r_border , uint8 check_height,uint8 threshold)
{
	uint8 l_miss = 0;
	uint8 r_miss = 0;
	for(int i = start_Line_total; i > check_height; i--)
	{
		if (l_border[i] == border_min){l_miss++;}
		if (r_border[i] == border_max){r_miss++;}
	}

	if (l_miss >= threshold && r_miss >= threshold && road_state_last != 0)
	{
		is_cross2Miss = 1;
	}
	else { is_cross2Miss = 0; }
	
	
}


/*------------------------------------------------------
* 函数名称：exclude_remote_miss(uint8 *l_border, uint8 *r_border)
* 函数功能：排除远端消失点
* 函数参数：
* 返回值：修改的全局边界数组l_border r_border
* 作者：Yian
* 日期：2024年9月21日
* 注释：排除远端消失点，减少远端消失对中线的干扰,注意,只有远端的消失点会被置255
*/
void exclude_remote_miss(uint8 *l_border, uint8 *r_border)
{
    bool out_left_miss = false;
    bool out_right_miss = false;
    for (int i = hightest; i < image_h; i++)
    {
        if (!out_left_miss)
        {
            if (l_border[i] == 1 && i!=hightest)
            {
                l_border[i] = 255;
            }
            else{
                out_left_miss = true;
            }

        }

        if (!out_right_miss)
        {
            if (r_border[i] == image_w - 2 && i!=hightest)
            {
                r_border[i] = 255;
            }
            else{
                out_right_miss = true;
            }

        }
    }

}
 


/*------------------------------------------------------
函数名称：void midline_Draw(void)
函数功能：求中线，；两种情况（二分法与平移法）
函数参数：
返回值：
注释：从上往下生成，其中两端有线就中值，反之平移
作者：Yian
日期：2024年9月6日
------------------------------------------------------*/
uint8 road_w = 255;
uint8 mid_point_last = 255;
uint8 center_line[image_h];//中线数组

void get_mid(uint8 *l_border, uint8 *r_border,uint8 *center_line,uint8 hightest)
{
    for(int i = 0;i<image_h;i++){center_line[i]=255;} //初始化

    uint8 mid_point = road_w/2;

    if(r_border[start_Line_total - 1]==255 && l_border[start_Line_total - 1]==255){mid_point_last = road_w/2;}
    else if (r_border[start_Line_total - 1]==255) {
        mid_point = l_border[start_Line_total - 1] + road_w/2;
    }
    else{
        mid_point = r_border[start_Line_total - 1] - road_w/2;
    }

    center_line[start_Line_total] = mid_point;
//    tft180_show_int(65, 65, road_w, 3);
//    tft180_show_int(105, 95, r_border[start_Line_total - 1], 3);
//    tft180_show_int(65, 95, l_border[start_Line_total - 1], 3);
//
//    tft180_show_int(65, 80, mid_point, 3);
    for (uint8 i = start_Line_total - 1; i > start_Line_total - (r_highest>l_highest?r_highest:l_highest); i--)
    {

        if(  ((l_border[i] != 255) && (r_border[i] != 255))){
            //printf("st 1\n");
            center_line[i] = (l_border[i]+r_border[i])/2; // 如果两端都有二分法

        }
        else if (r_border[i] == 255)  //右端消失
        {

            center_line[i] = center_line[i+1]+(l_border[i]-l_border[i+1]);
        }
        else if (l_border[i] == 255) //左端消失
        {

            center_line[i] = center_line[i+1]+(r_border[i]-r_border[i+1]);  //平移
        }
        else
        {
            if(l_border[i]==255 && r_border[i]==255){center_line[i] = center_line[i+1] + mid_point-mid_point_last;} //如果两边都消失，就用上一次的中线判断
        }
    }
    mid_point_last = mid_point;

}

/**
 * ----------------------------------------------------------
 * @name 
 * @brief 中线错误排除、清洗函数
 * @author yian
 * @date 2024年10月7日
 * @note 
**/
//void midLine_err_clean(uint8 *center_line)
//{
//	for (int i = ; i < count; i++)
//	{
//		/* co
//	}
//
//}

uint8 isEnd = 0;
/**
 * ----------------------------------------------------------
 * @name detect_end
 * @brief 识别斑马线停车
 * @author yian
 * @date 2024年10月10
 * @note 
**/
void detect_end(uint8 check_Line,uint8 block_w_MAX,uint8 block_w_MIN)
{

    for(uint8 ii = check_Line ; ii < start_Line_total; ii++)
    {
        uint8 start = l_border[ii];
        uint8 end = r_border[ii];

        uint8 block_sum = 0;
        uint8 pixel_sum = 0;

        uint8 pix_max = 0;

        for (uint8 i = start; i < end; i++)
        {
            if(bin_image[ii][i] == black_pixel)
            {
                pixel_sum++;
            }

            else if (bin_image[ii][i] == white_pixel)
            {
                if (pixel_sum > block_w_MIN && pixel_sum < block_w_MAX)
                {
                    block_sum++;
                }

                if(pix_max < pixel_sum)
                {
                    pix_max = pixel_sum;
                }


                pixel_sum = 0;
            }
            if (block_sum > 2)
            {
                isEnd = 1;
                break; //           isEnd = true;
            }
        }
        if(isEnd){break;}
    }

//  tft180_show_uint(65, 65, block_sum, 3);
//  tft180_show_uint(65, 95, pix_max, 3);

}


uint8 is_obs = 0;
uint8 road_w_array[20];
/**
 * ----------------------------------------------------------
 * @name detect_obs
 * @brief 识别障碍激活标志位
 * @author yian
 * @date 2024年10月12日
 * @note 
**/
uint8 u=0;
void detect_obs(uint8 *l_border, uint8 *r_border, uint8 hi, uint8 lo)
{
	uint16 road_w_sum = 0;
	for(uint8 i = hi;i < lo;i++)
	{
		road_w_sum += r_border[i] - l_border[i];
	}
	uint16 road_w20_sum = 0;
	for (uint8 i = 1; i < 20; i++)
	{
		road_w_array[i - 1] = road_w_array[i]; 
		road_w20_sum += road_w_array[i - 1];
	}
	road_w20_sum += road_w_sum/(lo - hi);
	road_w_array[19] = road_w_sum/(lo-hi);

	if((float)road_w_sum / (float)(lo-hi) < (float)road_w20_sum/(20.0) / 5.0 * 3.0 ){is_obs = 1;}
	else{is_obs = 0;}


}



/*
函数名称：void image_process(void)
功能说明：八邻域最终处理函数
参数说明：无
函数返回：无
修改时间：24年9月5日
备    注：
example： image_process();
 */
void image_process(void)
{

	// /*这是离线调试用的*/
	// Get_image(mt9v03x_image);
	// turn_to_bin();
	// /*提取赛道边界*/
	// image_filter(bin_image);//滤波
	// image_draw_rectan(bin_image);//预处理
	// //清零
	data_stastics_l = 0;
	data_stastics_r = 0;
	if (detectStartPoint(start_Line_total))//找到起点了，再执行八领域，没找到就一直找   //get_start_point(image_h - 2)
	{
		eIGHT_neighbor((uint16)USE_num, bin_image, &data_stastics_l, &data_stastics_r, start_point_l[0], start_point_l[1], start_point_r[0], start_point_r[1], &hightest);
		
		kernel_smooth(dir_l, dir_l ,4, data_stastics_l);
		kernel_smooth(dir_r, dir_r, 4, data_stastics_r);


		// 从爬取的边界线内提取边线 ， 这个才是最终有用的边线
		get_left(data_stastics_l,start_Line_total);
		get_right(data_stastics_r, start_Line_total);


		cross_fill(bin_image, l_border, r_border, data_stastics_l, data_stastics_r, dir_l, dir_r, points_l, points_r);
		//      //十字补线

		if(road_w == 255){road_w = (r_border[start_Line_total] + l_border[start_Line_total]);}

		
		//处理函数放这里，不要放到if外面去了，不要放到if外面去了，不要放到if外面去了，重要的事说三遍



		exclude_remote_miss(l_border, r_border);

		//cross_Line_fix(l_border, r_border, start_Line_total - 5, 3);

		



		get_mid(l_border, r_border, center_line, hightest);


	
	}
}
/**
 * ----------------------------------------------------------
 * @name draw_output_image()
 * @brief 绘制彩色输出
 * @author Yian
 * @date 2024年9月28日
 * @note 
**/
uint16 output_image[image_h][image_w];
void draw_output_image()
{
    //二值化图
    for (uint8 i = 0; i < image_h; i++) {
        for (uint8 ii = 0; ii < image_w; ii++) {
            if(bin_image[i][ii] == white_pixel)
                output_image[i][ii] = RGB565_GRAY;
            else {
                output_image[i][ii] = RGB565_BLACK;
            }
        }
    }

    //原边界
	for (int i = 0; i < data_stastics_l; i++)
	{

		output_image[points_l[i][1]][points_l[i][0]] = RGB565_GRAY;
	}
	for (int i = 0; i < data_stastics_r; i++)
	{
		output_image[points_r[i][1]][points_r[i][0]] = RGB565_GRAY;
	}


	
	for (int i = start_Line_total; i > hightest; i--)
	{
		//左边界
		if(l_border[i]<image_w){
	        output_image[i][l_border[i]] = RGB565_RED;
		}

		//右边界
	    if(r_border[i]<image_w){
	        output_image[i][r_border[i]] = RGB565_GREEN;
	    }

			//中线
		if (center_line[i]<image_w){
			output_image[i][center_line[i]] = RGB565_BLUE;
		}
		
		
	}

	for(uint8 i = 0;i<image_w;i++)
	{
	    output_image[start_Line_total - 10][i] = RGB565_YELLOW;
	    output_image[hightest][i] = RGB565_WHITE;
	}
}

/**
 * ----------------------------------------------------------
 * @name deter_roadState()
 * @brief 判断道路状态(十字,直道,弯道)
 * @author Yian
 * @date 2024年10月5日
 * @note 
**/
bool angleVaild = 0;

void deter_roadState()
{
//	if(data_stastics_l > 3 || data_stastics_r > 3)
    if(isEnd == 0){
        if(angleVaild)
        {
            if(!isCORSS && !road_state)
            {

            int close = hightest + (start_Line_total - hightest) /4*3;
            int far = hightest + (start_Line_total - hightest) /4;
            if(l_border[close] < image_w / 2 && l_border[far] >= image_w / 2
                && r_border[close] > image_w / 2 && r_border[far] >= image_w / 2)
                {
                    road_state = ROAD_CURVE_R;
                }
            else if (l_border[close] < image_w / 2 && l_border[far] <= image_w / 2
                && r_border[close] > image_w / 2 && r_border[far] <= image_w / 2)
                {
                    road_state = ROAD_CURVE_L;
                }
            else
                {
                    road_state = ROAD_STRAIGHT;
                }

            }
            else if (isCORSS) {
                road_state = ROAD_CORSSROAD;

            }
        }
    }
    else {
        road_state = ROAG_END;
    }
    road_state_last = road_state;
}





void eight_init()
{
    //全局变量初始化
	road_state = 0;
	isCORSS = false;
	angleVaild = 0;
	l_highest = 0; //左最高
	r_highest = 0; //右最高

    memset(bin_image,0,sizeof(bin_image));   //初始图像数组

    memset(bound_Points_L,0,sizeof(bound_Points_L));  //八邻域爬线存储数组
    memset(bound_Points_R,0,sizeof(bound_Points_R));
    memset(isNewCheck_array,0,sizeof(isNewCheck_array)); //是否遍历判断数组

    memset(points_l,0,sizeof(points_l));
    memset(points_r,0,sizeof(points_r));
    memset(dir_l,0,sizeof(dir_l));
    memset(dir_r,0,sizeof(dir_r));
    data_stastics_l = 0;data_stastics_r = 0;

    memset(l_border,0,sizeof(l_border));
    memset(r_border,0,sizeof(r_border));

    memset(center_line,0,sizeof(center_line));

    memset(output_image,0,sizeof(output_image));



}


/**
 * ----------------------------------------------------------
 * @name eight_all_in_one()
 * @brief 整合运行函数接口
 * @param uint8 *input_image
 * @note
 **/

void eight_all_in_one(uint8 (*input_image)[image_w]){
	eight_init();
    image_cpy(input_image);
    image_process();

	detect_end(start_Line_total - 20, 5, 2);
	detect_obs(l_border, r_border, hightest + 3,hightest + 12);
 
    angleVaild = angleErr_cal(road_state_last, center_line, start_Line_total, hightest);
//    angleErr_slope(center_line, image_h-2, hightest);

    draw_output_image();
    deter_roadState();

    //tft180_show_uint(90, 65, isEnd, 2);
    //tft180_show_int(65, 20, is_cross2Miss, 2);
}









// //显示图像   改成你自己的就行 等后期足够自信了，显示关掉，显示屏挺占资源的
// ips154_displayimage032_zoom(bin_image[0], image_w, image_h, image_w, image_h,0,0);

// 	//根据最终循环次数画出边界点
// 	for (i = 0; i < data_stastics_l; i++)
// 	{
// 		ips154_drawpoint(points_l[i][0]+2, points_l[i][1], uesr_BLUE);//显示起点
// 	}
// 	for (i = 0; i < data_stastics_r; i++)
// 	{
// 		ips154_drawpoint(points_r[i][0]-2, points_r[i][1], uesr_RED);//显示起点
// 	}

// 	for (i = hightest; i < image_h-1; i++)
// 	{
// 		center_line[i] = (l_border[i] + r_border[i]) >> 1;//求中线
// 		//求中线最好最后求，不管是补线还是做状态机，全程最好使用一组边线，中线最后求出，不能干扰最后的输出
// 		//当然也有多组边线的找法，但是个人感觉很繁琐，不建议
// 		ips154_drawpoint(center_line[i], i, uesr_GREEN);//显示起点 显示中线
// 		ips154_drawpoint(l_border[i], i, uesr_GREEN);//显示起点 显示左边线
// 		ips154_drawpoint(r_border[i], i, uesr_GREEN);//显示起点 显示右边线
// 	}


// }





// /*

// 这里是起点（0.0）***************——>*************x值最大
// ************************************************************
// ************************************************************
// ************************************************************
// ************************************************************
// ******************假如这是一副图像*************************
// ***********************************************************
// ***********************************************************
// ***********************************************************
// ***********************************************************
// ***********************************************************
// ***********************************************************
// y值最大*******************************************(188.120)

// */


