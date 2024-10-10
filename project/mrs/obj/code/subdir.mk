################################################################################
# MRS Version: 1.9.1
# 自动生成的文件。不要编辑！
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
G:/Naoxuan/download/visionCar-eight_Dev/visionCar-eight_Dev/project/code/My_Math.c \
G:/Naoxuan/download/visionCar-eight_Dev/visionCar-eight_Dev/project/code/cam_preprocess.c 

OBJS += \
./code/My_Math.o \
./code/cam_preprocess.o 

C_DEPS += \
./code/My_Math.d \
./code/cam_preprocess.d 


# Each subdirectory must supply rules for building sources it contributes
code/My_Math.o: G:/Naoxuan/download/visionCar-eight_Dev/visionCar-eight_Dev/project/code/My_Math.c
	@	@	riscv-none-embed-gcc -march=rv32imafc -mabi=ilp32f -msmall-data-limit=8 -mno-save-restore -O0 -fmessage-length=0 -fsigned-char -ffunction-sections -fdata-sections -fno-common -pedantic -Wunused -Wuninitialized -Wall  -g -I"G:\Naoxuan\download\visionCar-eight_Dev\visionCar-eight_Dev\Libraries\doc" -I"G:\Naoxuan\download\visionCar-eight_Dev\visionCar-eight_Dev\libraries\sdk\Core" -I"G:\Naoxuan\download\visionCar-eight_Dev\visionCar-eight_Dev\libraries\sdk\Ld" -I"G:\Naoxuan\download\visionCar-eight_Dev\visionCar-eight_Dev\libraries\sdk\Peripheral" -I"G:\Naoxuan\download\visionCar-eight_Dev\visionCar-eight_Dev\libraries\sdk\Startup" -I"G:\Naoxuan\download\visionCar-eight_Dev\visionCar-eight_Dev\project\user\inc" -I"G:\Naoxuan\download\visionCar-eight_Dev\visionCar-eight_Dev\libraries\zf_common" -I"G:\Naoxuan\download\visionCar-eight_Dev\visionCar-eight_Dev\libraries\zf_device" -I"G:\Naoxuan\download\visionCar-eight_Dev\visionCar-eight_Dev\project\code" -I"G:\Naoxuan\download\visionCar-eight_Dev\visionCar-eight_Dev\libraries\zf_driver" -std=gnu11 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@)" -c -o "$@" "$<"
	@	@
code/cam_preprocess.o: G:/Naoxuan/download/visionCar-eight_Dev/visionCar-eight_Dev/project/code/cam_preprocess.c
	@	@	riscv-none-embed-gcc -march=rv32imafc -mabi=ilp32f -msmall-data-limit=8 -mno-save-restore -O0 -fmessage-length=0 -fsigned-char -ffunction-sections -fdata-sections -fno-common -pedantic -Wunused -Wuninitialized -Wall  -g -I"G:\Naoxuan\download\visionCar-eight_Dev\visionCar-eight_Dev\Libraries\doc" -I"G:\Naoxuan\download\visionCar-eight_Dev\visionCar-eight_Dev\libraries\sdk\Core" -I"G:\Naoxuan\download\visionCar-eight_Dev\visionCar-eight_Dev\libraries\sdk\Ld" -I"G:\Naoxuan\download\visionCar-eight_Dev\visionCar-eight_Dev\libraries\sdk\Peripheral" -I"G:\Naoxuan\download\visionCar-eight_Dev\visionCar-eight_Dev\libraries\sdk\Startup" -I"G:\Naoxuan\download\visionCar-eight_Dev\visionCar-eight_Dev\project\user\inc" -I"G:\Naoxuan\download\visionCar-eight_Dev\visionCar-eight_Dev\libraries\zf_common" -I"G:\Naoxuan\download\visionCar-eight_Dev\visionCar-eight_Dev\libraries\zf_device" -I"G:\Naoxuan\download\visionCar-eight_Dev\visionCar-eight_Dev\project\code" -I"G:\Naoxuan\download\visionCar-eight_Dev\visionCar-eight_Dev\libraries\zf_driver" -std=gnu11 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@)" -c -o "$@" "$<"
	@	@

