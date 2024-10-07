################################################################################
# MRS Version: 1.9.1
# 自动生成的文件。不要编辑！
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
E:/proJectLibrary/cybercar/Seekfree_CH32V307VCT6_Opensource_Library(智能车摄像头)/visionCar_main/project/code/CPP/timer.c \
E:/proJectLibrary/cybercar/Seekfree_CH32V307VCT6_Opensource_Library(智能车摄像头)/visionCar_main/project/code/CPP/turn_pd.c \
E:/proJectLibrary/cybercar/Seekfree_CH32V307VCT6_Opensource_Library(智能车摄像头)/visionCar_main/project/code/CPP/volicity_pid.c 

OBJS += \
./code/CPP/timer.o \
./code/CPP/turn_pd.o \
./code/CPP/volicity_pid.o 

C_DEPS += \
./code/CPP/timer.d \
./code/CPP/turn_pd.d \
./code/CPP/volicity_pid.d 


# Each subdirectory must supply rules for building sources it contributes
code/CPP/timer.o: E:/proJectLibrary/cybercar/Seekfree_CH32V307VCT6_Opensource_Library(智能车摄像头)/visionCar_main/project/code/CPP/timer.c
	@	@	riscv-none-embed-gcc -march=rv32imafc -mabi=ilp32f -msmall-data-limit=8 -mno-save-restore -O0 -fmessage-length=0 -fsigned-char -ffunction-sections -fdata-sections -fno-common -pedantic -Wunused -Wuninitialized -Wall  -g -I"E:\proJectLibrary\cybercar\Seekfree_CH32V307VCT6_Opensource_Library(智能车摄像头)\visionCar_main\Libraries\doc" -I"E:\proJectLibrary\cybercar\Seekfree_CH32V307VCT6_Opensource_Library(智能车摄像头)\visionCar_main\libraries\sdk\Core" -I"E:\proJectLibrary\cybercar\Seekfree_CH32V307VCT6_Opensource_Library(智能车摄像头)\visionCar_main\libraries\sdk\Ld" -I"E:\proJectLibrary\cybercar\Seekfree_CH32V307VCT6_Opensource_Library(智能车摄像头)\visionCar_main\libraries\sdk\Peripheral" -I"E:\proJectLibrary\cybercar\Seekfree_CH32V307VCT6_Opensource_Library(智能车摄像头)\visionCar_main\libraries\sdk\Startup" -I"E:\proJectLibrary\cybercar\Seekfree_CH32V307VCT6_Opensource_Library(智能车摄像头)\visionCar_main\project\user\inc" -I"E:\proJectLibrary\cybercar\Seekfree_CH32V307VCT6_Opensource_Library(智能车摄像头)\visionCar_main\libraries\zf_common" -I"E:\proJectLibrary\cybercar\Seekfree_CH32V307VCT6_Opensource_Library(智能车摄像头)\visionCar_main\libraries\zf_device" -I"E:\proJectLibrary\cybercar\Seekfree_CH32V307VCT6_Opensource_Library(智能车摄像头)\visionCar_main\project\code" -I"E:\proJectLibrary\cybercar\Seekfree_CH32V307VCT6_Opensource_Library(智能车摄像头)\visionCar_main\libraries\zf_driver" -std=gnu11 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@)" -c -o "$@" "$<"
	@	@
code/CPP/turn_pd.o: E:/proJectLibrary/cybercar/Seekfree_CH32V307VCT6_Opensource_Library(智能车摄像头)/visionCar_main/project/code/CPP/turn_pd.c
	@	@	riscv-none-embed-gcc -march=rv32imafc -mabi=ilp32f -msmall-data-limit=8 -mno-save-restore -O0 -fmessage-length=0 -fsigned-char -ffunction-sections -fdata-sections -fno-common -pedantic -Wunused -Wuninitialized -Wall  -g -I"E:\proJectLibrary\cybercar\Seekfree_CH32V307VCT6_Opensource_Library(智能车摄像头)\visionCar_main\Libraries\doc" -I"E:\proJectLibrary\cybercar\Seekfree_CH32V307VCT6_Opensource_Library(智能车摄像头)\visionCar_main\libraries\sdk\Core" -I"E:\proJectLibrary\cybercar\Seekfree_CH32V307VCT6_Opensource_Library(智能车摄像头)\visionCar_main\libraries\sdk\Ld" -I"E:\proJectLibrary\cybercar\Seekfree_CH32V307VCT6_Opensource_Library(智能车摄像头)\visionCar_main\libraries\sdk\Peripheral" -I"E:\proJectLibrary\cybercar\Seekfree_CH32V307VCT6_Opensource_Library(智能车摄像头)\visionCar_main\libraries\sdk\Startup" -I"E:\proJectLibrary\cybercar\Seekfree_CH32V307VCT6_Opensource_Library(智能车摄像头)\visionCar_main\project\user\inc" -I"E:\proJectLibrary\cybercar\Seekfree_CH32V307VCT6_Opensource_Library(智能车摄像头)\visionCar_main\libraries\zf_common" -I"E:\proJectLibrary\cybercar\Seekfree_CH32V307VCT6_Opensource_Library(智能车摄像头)\visionCar_main\libraries\zf_device" -I"E:\proJectLibrary\cybercar\Seekfree_CH32V307VCT6_Opensource_Library(智能车摄像头)\visionCar_main\project\code" -I"E:\proJectLibrary\cybercar\Seekfree_CH32V307VCT6_Opensource_Library(智能车摄像头)\visionCar_main\libraries\zf_driver" -std=gnu11 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@)" -c -o "$@" "$<"
	@	@
code/CPP/volicity_pid.o: E:/proJectLibrary/cybercar/Seekfree_CH32V307VCT6_Opensource_Library(智能车摄像头)/visionCar_main/project/code/CPP/volicity_pid.c
	@	@	riscv-none-embed-gcc -march=rv32imafc -mabi=ilp32f -msmall-data-limit=8 -mno-save-restore -O0 -fmessage-length=0 -fsigned-char -ffunction-sections -fdata-sections -fno-common -pedantic -Wunused -Wuninitialized -Wall  -g -I"E:\proJectLibrary\cybercar\Seekfree_CH32V307VCT6_Opensource_Library(智能车摄像头)\visionCar_main\Libraries\doc" -I"E:\proJectLibrary\cybercar\Seekfree_CH32V307VCT6_Opensource_Library(智能车摄像头)\visionCar_main\libraries\sdk\Core" -I"E:\proJectLibrary\cybercar\Seekfree_CH32V307VCT6_Opensource_Library(智能车摄像头)\visionCar_main\libraries\sdk\Ld" -I"E:\proJectLibrary\cybercar\Seekfree_CH32V307VCT6_Opensource_Library(智能车摄像头)\visionCar_main\libraries\sdk\Peripheral" -I"E:\proJectLibrary\cybercar\Seekfree_CH32V307VCT6_Opensource_Library(智能车摄像头)\visionCar_main\libraries\sdk\Startup" -I"E:\proJectLibrary\cybercar\Seekfree_CH32V307VCT6_Opensource_Library(智能车摄像头)\visionCar_main\project\user\inc" -I"E:\proJectLibrary\cybercar\Seekfree_CH32V307VCT6_Opensource_Library(智能车摄像头)\visionCar_main\libraries\zf_common" -I"E:\proJectLibrary\cybercar\Seekfree_CH32V307VCT6_Opensource_Library(智能车摄像头)\visionCar_main\libraries\zf_device" -I"E:\proJectLibrary\cybercar\Seekfree_CH32V307VCT6_Opensource_Library(智能车摄像头)\visionCar_main\project\code" -I"E:\proJectLibrary\cybercar\Seekfree_CH32V307VCT6_Opensource_Library(智能车摄像头)\visionCar_main\libraries\zf_driver" -std=gnu11 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@)" -c -o "$@" "$<"
	@	@

