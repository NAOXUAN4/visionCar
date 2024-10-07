################################################################################
# MRS Version: 1.9.1
# 自动生成的文件。不要编辑！
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
E:/proJectLibrary/cybercar/Seekfree_CH32V307VCT6_Opensource_Library(智能车摄像头)/visionCar_main/project/code/BSP/beep.c \
E:/proJectLibrary/cybercar/Seekfree_CH32V307VCT6_Opensource_Library(智能车摄像头)/visionCar_main/project/code/BSP/encoder.c \
E:/proJectLibrary/cybercar/Seekfree_CH32V307VCT6_Opensource_Library(智能车摄像头)/visionCar_main/project/code/BSP/steer.c \
E:/proJectLibrary/cybercar/Seekfree_CH32V307VCT6_Opensource_Library(智能车摄像头)/visionCar_main/project/code/BSP/wheel.c 

OBJS += \
./code/BSP/beep.o \
./code/BSP/encoder.o \
./code/BSP/steer.o \
./code/BSP/wheel.o 

C_DEPS += \
./code/BSP/beep.d \
./code/BSP/encoder.d \
./code/BSP/steer.d \
./code/BSP/wheel.d 


# Each subdirectory must supply rules for building sources it contributes
code/BSP/beep.o: E:/proJectLibrary/cybercar/Seekfree_CH32V307VCT6_Opensource_Library(智能车摄像头)/visionCar_main/project/code/BSP/beep.c
	@	@	riscv-none-embed-gcc -march=rv32imafc -mabi=ilp32f -msmall-data-limit=8 -mno-save-restore -O0 -fmessage-length=0 -fsigned-char -ffunction-sections -fdata-sections -fno-common -pedantic -Wunused -Wuninitialized -Wall  -g -I"E:\proJectLibrary\cybercar\Seekfree_CH32V307VCT6_Opensource_Library(智能车摄像头)\visionCar_main\Libraries\doc" -I"E:\proJectLibrary\cybercar\Seekfree_CH32V307VCT6_Opensource_Library(智能车摄像头)\visionCar_main\libraries\sdk\Core" -I"E:\proJectLibrary\cybercar\Seekfree_CH32V307VCT6_Opensource_Library(智能车摄像头)\visionCar_main\libraries\sdk\Ld" -I"E:\proJectLibrary\cybercar\Seekfree_CH32V307VCT6_Opensource_Library(智能车摄像头)\visionCar_main\libraries\sdk\Peripheral" -I"E:\proJectLibrary\cybercar\Seekfree_CH32V307VCT6_Opensource_Library(智能车摄像头)\visionCar_main\libraries\sdk\Startup" -I"E:\proJectLibrary\cybercar\Seekfree_CH32V307VCT6_Opensource_Library(智能车摄像头)\visionCar_main\project\user\inc" -I"E:\proJectLibrary\cybercar\Seekfree_CH32V307VCT6_Opensource_Library(智能车摄像头)\visionCar_main\libraries\zf_common" -I"E:\proJectLibrary\cybercar\Seekfree_CH32V307VCT6_Opensource_Library(智能车摄像头)\visionCar_main\libraries\zf_device" -I"E:\proJectLibrary\cybercar\Seekfree_CH32V307VCT6_Opensource_Library(智能车摄像头)\visionCar_main\project\code" -I"E:\proJectLibrary\cybercar\Seekfree_CH32V307VCT6_Opensource_Library(智能车摄像头)\visionCar_main\libraries\zf_driver" -std=gnu11 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@)" -c -o "$@" "$<"
	@	@
code/BSP/encoder.o: E:/proJectLibrary/cybercar/Seekfree_CH32V307VCT6_Opensource_Library(智能车摄像头)/visionCar_main/project/code/BSP/encoder.c
	@	@	riscv-none-embed-gcc -march=rv32imafc -mabi=ilp32f -msmall-data-limit=8 -mno-save-restore -O0 -fmessage-length=0 -fsigned-char -ffunction-sections -fdata-sections -fno-common -pedantic -Wunused -Wuninitialized -Wall  -g -I"E:\proJectLibrary\cybercar\Seekfree_CH32V307VCT6_Opensource_Library(智能车摄像头)\visionCar_main\Libraries\doc" -I"E:\proJectLibrary\cybercar\Seekfree_CH32V307VCT6_Opensource_Library(智能车摄像头)\visionCar_main\libraries\sdk\Core" -I"E:\proJectLibrary\cybercar\Seekfree_CH32V307VCT6_Opensource_Library(智能车摄像头)\visionCar_main\libraries\sdk\Ld" -I"E:\proJectLibrary\cybercar\Seekfree_CH32V307VCT6_Opensource_Library(智能车摄像头)\visionCar_main\libraries\sdk\Peripheral" -I"E:\proJectLibrary\cybercar\Seekfree_CH32V307VCT6_Opensource_Library(智能车摄像头)\visionCar_main\libraries\sdk\Startup" -I"E:\proJectLibrary\cybercar\Seekfree_CH32V307VCT6_Opensource_Library(智能车摄像头)\visionCar_main\project\user\inc" -I"E:\proJectLibrary\cybercar\Seekfree_CH32V307VCT6_Opensource_Library(智能车摄像头)\visionCar_main\libraries\zf_common" -I"E:\proJectLibrary\cybercar\Seekfree_CH32V307VCT6_Opensource_Library(智能车摄像头)\visionCar_main\libraries\zf_device" -I"E:\proJectLibrary\cybercar\Seekfree_CH32V307VCT6_Opensource_Library(智能车摄像头)\visionCar_main\project\code" -I"E:\proJectLibrary\cybercar\Seekfree_CH32V307VCT6_Opensource_Library(智能车摄像头)\visionCar_main\libraries\zf_driver" -std=gnu11 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@)" -c -o "$@" "$<"
	@	@
code/BSP/steer.o: E:/proJectLibrary/cybercar/Seekfree_CH32V307VCT6_Opensource_Library(智能车摄像头)/visionCar_main/project/code/BSP/steer.c
	@	@	riscv-none-embed-gcc -march=rv32imafc -mabi=ilp32f -msmall-data-limit=8 -mno-save-restore -O0 -fmessage-length=0 -fsigned-char -ffunction-sections -fdata-sections -fno-common -pedantic -Wunused -Wuninitialized -Wall  -g -I"E:\proJectLibrary\cybercar\Seekfree_CH32V307VCT6_Opensource_Library(智能车摄像头)\visionCar_main\Libraries\doc" -I"E:\proJectLibrary\cybercar\Seekfree_CH32V307VCT6_Opensource_Library(智能车摄像头)\visionCar_main\libraries\sdk\Core" -I"E:\proJectLibrary\cybercar\Seekfree_CH32V307VCT6_Opensource_Library(智能车摄像头)\visionCar_main\libraries\sdk\Ld" -I"E:\proJectLibrary\cybercar\Seekfree_CH32V307VCT6_Opensource_Library(智能车摄像头)\visionCar_main\libraries\sdk\Peripheral" -I"E:\proJectLibrary\cybercar\Seekfree_CH32V307VCT6_Opensource_Library(智能车摄像头)\visionCar_main\libraries\sdk\Startup" -I"E:\proJectLibrary\cybercar\Seekfree_CH32V307VCT6_Opensource_Library(智能车摄像头)\visionCar_main\project\user\inc" -I"E:\proJectLibrary\cybercar\Seekfree_CH32V307VCT6_Opensource_Library(智能车摄像头)\visionCar_main\libraries\zf_common" -I"E:\proJectLibrary\cybercar\Seekfree_CH32V307VCT6_Opensource_Library(智能车摄像头)\visionCar_main\libraries\zf_device" -I"E:\proJectLibrary\cybercar\Seekfree_CH32V307VCT6_Opensource_Library(智能车摄像头)\visionCar_main\project\code" -I"E:\proJectLibrary\cybercar\Seekfree_CH32V307VCT6_Opensource_Library(智能车摄像头)\visionCar_main\libraries\zf_driver" -std=gnu11 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@)" -c -o "$@" "$<"
	@	@
code/BSP/wheel.o: E:/proJectLibrary/cybercar/Seekfree_CH32V307VCT6_Opensource_Library(智能车摄像头)/visionCar_main/project/code/BSP/wheel.c
	@	@	riscv-none-embed-gcc -march=rv32imafc -mabi=ilp32f -msmall-data-limit=8 -mno-save-restore -O0 -fmessage-length=0 -fsigned-char -ffunction-sections -fdata-sections -fno-common -pedantic -Wunused -Wuninitialized -Wall  -g -I"E:\proJectLibrary\cybercar\Seekfree_CH32V307VCT6_Opensource_Library(智能车摄像头)\visionCar_main\Libraries\doc" -I"E:\proJectLibrary\cybercar\Seekfree_CH32V307VCT6_Opensource_Library(智能车摄像头)\visionCar_main\libraries\sdk\Core" -I"E:\proJectLibrary\cybercar\Seekfree_CH32V307VCT6_Opensource_Library(智能车摄像头)\visionCar_main\libraries\sdk\Ld" -I"E:\proJectLibrary\cybercar\Seekfree_CH32V307VCT6_Opensource_Library(智能车摄像头)\visionCar_main\libraries\sdk\Peripheral" -I"E:\proJectLibrary\cybercar\Seekfree_CH32V307VCT6_Opensource_Library(智能车摄像头)\visionCar_main\libraries\sdk\Startup" -I"E:\proJectLibrary\cybercar\Seekfree_CH32V307VCT6_Opensource_Library(智能车摄像头)\visionCar_main\project\user\inc" -I"E:\proJectLibrary\cybercar\Seekfree_CH32V307VCT6_Opensource_Library(智能车摄像头)\visionCar_main\libraries\zf_common" -I"E:\proJectLibrary\cybercar\Seekfree_CH32V307VCT6_Opensource_Library(智能车摄像头)\visionCar_main\libraries\zf_device" -I"E:\proJectLibrary\cybercar\Seekfree_CH32V307VCT6_Opensource_Library(智能车摄像头)\visionCar_main\project\code" -I"E:\proJectLibrary\cybercar\Seekfree_CH32V307VCT6_Opensource_Library(智能车摄像头)\visionCar_main\libraries\zf_driver" -std=gnu11 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@)" -c -o "$@" "$<"
	@	@

