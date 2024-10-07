################################################################################
# MRS Version: 1.9.1
# 自动生成的文件。不要编辑！
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
E:/proJectLibrary/cybercar/Seekfree_CH32V307VCT6_Opensource_Library(智能车摄像头)/visionCar_main/project/code/APP/UI.c \
E:/proJectLibrary/cybercar/Seekfree_CH32V307VCT6_Opensource_Library(智能车摄像头)/visionCar_main/project/code/APP/integration_control.c \
E:/proJectLibrary/cybercar/Seekfree_CH32V307VCT6_Opensource_Library(智能车摄像头)/visionCar_main/project/code/APP/key.c 

OBJS += \
./code/APP/UI.o \
./code/APP/integration_control.o \
./code/APP/key.o 

C_DEPS += \
./code/APP/UI.d \
./code/APP/integration_control.d \
./code/APP/key.d 


# Each subdirectory must supply rules for building sources it contributes
code/APP/UI.o: E:/proJectLibrary/cybercar/Seekfree_CH32V307VCT6_Opensource_Library(智能车摄像头)/visionCar_main/project/code/APP/UI.c
	@	@	riscv-none-embed-gcc -march=rv32imafc -mabi=ilp32f -msmall-data-limit=8 -mno-save-restore -O0 -fmessage-length=0 -fsigned-char -ffunction-sections -fdata-sections -fno-common -pedantic -Wunused -Wuninitialized -Wall  -g -I"E:\proJectLibrary\cybercar\Seekfree_CH32V307VCT6_Opensource_Library(智能车摄像头)\visionCar_main\Libraries\doc" -I"E:\proJectLibrary\cybercar\Seekfree_CH32V307VCT6_Opensource_Library(智能车摄像头)\visionCar_main\libraries\sdk\Core" -I"E:\proJectLibrary\cybercar\Seekfree_CH32V307VCT6_Opensource_Library(智能车摄像头)\visionCar_main\libraries\sdk\Ld" -I"E:\proJectLibrary\cybercar\Seekfree_CH32V307VCT6_Opensource_Library(智能车摄像头)\visionCar_main\libraries\sdk\Peripheral" -I"E:\proJectLibrary\cybercar\Seekfree_CH32V307VCT6_Opensource_Library(智能车摄像头)\visionCar_main\libraries\sdk\Startup" -I"E:\proJectLibrary\cybercar\Seekfree_CH32V307VCT6_Opensource_Library(智能车摄像头)\visionCar_main\project\user\inc" -I"E:\proJectLibrary\cybercar\Seekfree_CH32V307VCT6_Opensource_Library(智能车摄像头)\visionCar_main\libraries\zf_common" -I"E:\proJectLibrary\cybercar\Seekfree_CH32V307VCT6_Opensource_Library(智能车摄像头)\visionCar_main\libraries\zf_device" -I"E:\proJectLibrary\cybercar\Seekfree_CH32V307VCT6_Opensource_Library(智能车摄像头)\visionCar_main\project\code" -I"E:\proJectLibrary\cybercar\Seekfree_CH32V307VCT6_Opensource_Library(智能车摄像头)\visionCar_main\libraries\zf_driver" -std=gnu11 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@)" -c -o "$@" "$<"
	@	@
code/APP/integration_control.o: E:/proJectLibrary/cybercar/Seekfree_CH32V307VCT6_Opensource_Library(智能车摄像头)/visionCar_main/project/code/APP/integration_control.c
	@	@	riscv-none-embed-gcc -march=rv32imafc -mabi=ilp32f -msmall-data-limit=8 -mno-save-restore -O0 -fmessage-length=0 -fsigned-char -ffunction-sections -fdata-sections -fno-common -pedantic -Wunused -Wuninitialized -Wall  -g -I"E:\proJectLibrary\cybercar\Seekfree_CH32V307VCT6_Opensource_Library(智能车摄像头)\visionCar_main\Libraries\doc" -I"E:\proJectLibrary\cybercar\Seekfree_CH32V307VCT6_Opensource_Library(智能车摄像头)\visionCar_main\libraries\sdk\Core" -I"E:\proJectLibrary\cybercar\Seekfree_CH32V307VCT6_Opensource_Library(智能车摄像头)\visionCar_main\libraries\sdk\Ld" -I"E:\proJectLibrary\cybercar\Seekfree_CH32V307VCT6_Opensource_Library(智能车摄像头)\visionCar_main\libraries\sdk\Peripheral" -I"E:\proJectLibrary\cybercar\Seekfree_CH32V307VCT6_Opensource_Library(智能车摄像头)\visionCar_main\libraries\sdk\Startup" -I"E:\proJectLibrary\cybercar\Seekfree_CH32V307VCT6_Opensource_Library(智能车摄像头)\visionCar_main\project\user\inc" -I"E:\proJectLibrary\cybercar\Seekfree_CH32V307VCT6_Opensource_Library(智能车摄像头)\visionCar_main\libraries\zf_common" -I"E:\proJectLibrary\cybercar\Seekfree_CH32V307VCT6_Opensource_Library(智能车摄像头)\visionCar_main\libraries\zf_device" -I"E:\proJectLibrary\cybercar\Seekfree_CH32V307VCT6_Opensource_Library(智能车摄像头)\visionCar_main\project\code" -I"E:\proJectLibrary\cybercar\Seekfree_CH32V307VCT6_Opensource_Library(智能车摄像头)\visionCar_main\libraries\zf_driver" -std=gnu11 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@)" -c -o "$@" "$<"
	@	@
code/APP/key.o: E:/proJectLibrary/cybercar/Seekfree_CH32V307VCT6_Opensource_Library(智能车摄像头)/visionCar_main/project/code/APP/key.c
	@	@	riscv-none-embed-gcc -march=rv32imafc -mabi=ilp32f -msmall-data-limit=8 -mno-save-restore -O0 -fmessage-length=0 -fsigned-char -ffunction-sections -fdata-sections -fno-common -pedantic -Wunused -Wuninitialized -Wall  -g -I"E:\proJectLibrary\cybercar\Seekfree_CH32V307VCT6_Opensource_Library(智能车摄像头)\visionCar_main\Libraries\doc" -I"E:\proJectLibrary\cybercar\Seekfree_CH32V307VCT6_Opensource_Library(智能车摄像头)\visionCar_main\libraries\sdk\Core" -I"E:\proJectLibrary\cybercar\Seekfree_CH32V307VCT6_Opensource_Library(智能车摄像头)\visionCar_main\libraries\sdk\Ld" -I"E:\proJectLibrary\cybercar\Seekfree_CH32V307VCT6_Opensource_Library(智能车摄像头)\visionCar_main\libraries\sdk\Peripheral" -I"E:\proJectLibrary\cybercar\Seekfree_CH32V307VCT6_Opensource_Library(智能车摄像头)\visionCar_main\libraries\sdk\Startup" -I"E:\proJectLibrary\cybercar\Seekfree_CH32V307VCT6_Opensource_Library(智能车摄像头)\visionCar_main\project\user\inc" -I"E:\proJectLibrary\cybercar\Seekfree_CH32V307VCT6_Opensource_Library(智能车摄像头)\visionCar_main\libraries\zf_common" -I"E:\proJectLibrary\cybercar\Seekfree_CH32V307VCT6_Opensource_Library(智能车摄像头)\visionCar_main\libraries\zf_device" -I"E:\proJectLibrary\cybercar\Seekfree_CH32V307VCT6_Opensource_Library(智能车摄像头)\visionCar_main\project\code" -I"E:\proJectLibrary\cybercar\Seekfree_CH32V307VCT6_Opensource_Library(智能车摄像头)\visionCar_main\libraries\zf_driver" -std=gnu11 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@)" -c -o "$@" "$<"
	@	@

