################################################################################
# MRS Version: 1.9.1
# 自动生成的文件。不要编辑！
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
G:/Naoxuan/download/visionCar-eight_Dev/visionCar-eight_Dev/project/user/src/isr.c \
G:/Naoxuan/download/visionCar-eight_Dev/visionCar-eight_Dev/project/user/src/main.c 

OBJS += \
./user_c/isr.o \
./user_c/main.o 

C_DEPS += \
./user_c/isr.d \
./user_c/main.d 


# Each subdirectory must supply rules for building sources it contributes
user_c/isr.o: G:/Naoxuan/download/visionCar-eight_Dev/visionCar-eight_Dev/project/user/src/isr.c
	@	@	riscv-none-embed-gcc -march=rv32imafc -mabi=ilp32f -msmall-data-limit=8 -mno-save-restore -O0 -fmessage-length=0 -fsigned-char -ffunction-sections -fdata-sections -fno-common -pedantic -Wunused -Wuninitialized -Wall  -g -I"G:\Naoxuan\download\visionCar-eight_Dev\visionCar-eight_Dev\Libraries\doc" -I"G:\Naoxuan\download\visionCar-eight_Dev\visionCar-eight_Dev\libraries\sdk\Core" -I"G:\Naoxuan\download\visionCar-eight_Dev\visionCar-eight_Dev\libraries\sdk\Ld" -I"G:\Naoxuan\download\visionCar-eight_Dev\visionCar-eight_Dev\libraries\sdk\Peripheral" -I"G:\Naoxuan\download\visionCar-eight_Dev\visionCar-eight_Dev\libraries\sdk\Startup" -I"G:\Naoxuan\download\visionCar-eight_Dev\visionCar-eight_Dev\project\user\inc" -I"G:\Naoxuan\download\visionCar-eight_Dev\visionCar-eight_Dev\libraries\zf_common" -I"G:\Naoxuan\download\visionCar-eight_Dev\visionCar-eight_Dev\libraries\zf_device" -I"G:\Naoxuan\download\visionCar-eight_Dev\visionCar-eight_Dev\project\code" -I"G:\Naoxuan\download\visionCar-eight_Dev\visionCar-eight_Dev\libraries\zf_driver" -std=gnu11 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@)" -c -o "$@" "$<"
	@	@
user_c/main.o: G:/Naoxuan/download/visionCar-eight_Dev/visionCar-eight_Dev/project/user/src/main.c
	@	@	riscv-none-embed-gcc -march=rv32imafc -mabi=ilp32f -msmall-data-limit=8 -mno-save-restore -O0 -fmessage-length=0 -fsigned-char -ffunction-sections -fdata-sections -fno-common -pedantic -Wunused -Wuninitialized -Wall  -g -I"G:\Naoxuan\download\visionCar-eight_Dev\visionCar-eight_Dev\Libraries\doc" -I"G:\Naoxuan\download\visionCar-eight_Dev\visionCar-eight_Dev\libraries\sdk\Core" -I"G:\Naoxuan\download\visionCar-eight_Dev\visionCar-eight_Dev\libraries\sdk\Ld" -I"G:\Naoxuan\download\visionCar-eight_Dev\visionCar-eight_Dev\libraries\sdk\Peripheral" -I"G:\Naoxuan\download\visionCar-eight_Dev\visionCar-eight_Dev\libraries\sdk\Startup" -I"G:\Naoxuan\download\visionCar-eight_Dev\visionCar-eight_Dev\project\user\inc" -I"G:\Naoxuan\download\visionCar-eight_Dev\visionCar-eight_Dev\libraries\zf_common" -I"G:\Naoxuan\download\visionCar-eight_Dev\visionCar-eight_Dev\libraries\zf_device" -I"G:\Naoxuan\download\visionCar-eight_Dev\visionCar-eight_Dev\project\code" -I"G:\Naoxuan\download\visionCar-eight_Dev\visionCar-eight_Dev\libraries\zf_driver" -std=gnu11 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@)" -c -o "$@" "$<"
	@	@

