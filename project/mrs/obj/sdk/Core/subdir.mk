################################################################################
# MRS Version: 1.9.1
# 自动生成的文件。不要编辑！
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
E:/proJectLibrary/cybercar/Seekfree_CH32V307VCT6_Opensource_Library(智能车摄像头)/visionCar_v1.0/libraries/sdk/Core/core_riscv.c 

OBJS += \
./sdk/Core/core_riscv.o 

C_DEPS += \
./sdk/Core/core_riscv.d 


# Each subdirectory must supply rules for building sources it contributes
sdk/Core/core_riscv.o: E:/proJectLibrary/cybercar/Seekfree_CH32V307VCT6_Opensource_Library(智能车摄像头)/visionCar_v1.0/libraries/sdk/Core/core_riscv.c
	@	@	riscv-none-embed-gcc -march=rv32imafc -mabi=ilp32f -msmall-data-limit=8 -mno-save-restore -O0 -fmessage-length=0 -fsigned-char -ffunction-sections -fdata-sections -fno-common -pedantic -Wunused -Wuninitialized -Wall  -g -I"E:\proJectLibrary\cybercar\Seekfree_CH32V307VCT6_Opensource_Library(智能车摄像头)\visionCar_v1.0\Libraries\doc" -I"E:\proJectLibrary\cybercar\Seekfree_CH32V307VCT6_Opensource_Library(智能车摄像头)\visionCar_v1.0\libraries\sdk\Core" -I"E:\proJectLibrary\cybercar\Seekfree_CH32V307VCT6_Opensource_Library(智能车摄像头)\visionCar_v1.0\libraries\sdk\Ld" -I"E:\proJectLibrary\cybercar\Seekfree_CH32V307VCT6_Opensource_Library(智能车摄像头)\visionCar_v1.0\libraries\sdk\Peripheral" -I"E:\proJectLibrary\cybercar\Seekfree_CH32V307VCT6_Opensource_Library(智能车摄像头)\visionCar_v1.0\libraries\sdk\Startup" -I"E:\proJectLibrary\cybercar\Seekfree_CH32V307VCT6_Opensource_Library(智能车摄像头)\visionCar_v1.0\project\user\inc" -I"E:\proJectLibrary\cybercar\Seekfree_CH32V307VCT6_Opensource_Library(智能车摄像头)\visionCar_v1.0\libraries\zf_common" -I"E:\proJectLibrary\cybercar\Seekfree_CH32V307VCT6_Opensource_Library(智能车摄像头)\visionCar_v1.0\libraries\zf_device" -I"E:\proJectLibrary\cybercar\Seekfree_CH32V307VCT6_Opensource_Library(智能车摄像头)\visionCar_v1.0\project\code" -I"E:\proJectLibrary\cybercar\Seekfree_CH32V307VCT6_Opensource_Library(智能车摄像头)\visionCar_v1.0\libraries\zf_driver" -std=gnu11 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@)" -c -o "$@" "$<"
	@	@

