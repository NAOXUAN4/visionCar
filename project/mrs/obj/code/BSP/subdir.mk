################################################################################
# MRS Version: 1.9.1
# �Զ����ɵ��ļ�����Ҫ�༭��
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
G:/Naoxuan/download/visionCar-eight_Dev/visionCar-eight_Dev/project/code/BSP/beep.c \
G:/Naoxuan/download/visionCar-eight_Dev/visionCar-eight_Dev/project/code/BSP/encoder.c \
G:/Naoxuan/download/visionCar-eight_Dev/visionCar-eight_Dev/project/code/BSP/steer.c \
G:/Naoxuan/download/visionCar-eight_Dev/visionCar-eight_Dev/project/code/BSP/wheel.c 

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
code/BSP/beep.o: G:/Naoxuan/download/visionCar-eight_Dev/visionCar-eight_Dev/project/code/BSP/beep.c
	@	@	riscv-none-embed-gcc -march=rv32imafc -mabi=ilp32f -msmall-data-limit=8 -mno-save-restore -O0 -fmessage-length=0 -fsigned-char -ffunction-sections -fdata-sections -fno-common -pedantic -Wunused -Wuninitialized -Wall  -g -I"G:\Naoxuan\download\visionCar-eight_Dev\visionCar-eight_Dev\Libraries\doc" -I"G:\Naoxuan\download\visionCar-eight_Dev\visionCar-eight_Dev\libraries\sdk\Core" -I"G:\Naoxuan\download\visionCar-eight_Dev\visionCar-eight_Dev\libraries\sdk\Ld" -I"G:\Naoxuan\download\visionCar-eight_Dev\visionCar-eight_Dev\libraries\sdk\Peripheral" -I"G:\Naoxuan\download\visionCar-eight_Dev\visionCar-eight_Dev\libraries\sdk\Startup" -I"G:\Naoxuan\download\visionCar-eight_Dev\visionCar-eight_Dev\project\user\inc" -I"G:\Naoxuan\download\visionCar-eight_Dev\visionCar-eight_Dev\libraries\zf_common" -I"G:\Naoxuan\download\visionCar-eight_Dev\visionCar-eight_Dev\libraries\zf_device" -I"G:\Naoxuan\download\visionCar-eight_Dev\visionCar-eight_Dev\project\code" -I"G:\Naoxuan\download\visionCar-eight_Dev\visionCar-eight_Dev\libraries\zf_driver" -std=gnu11 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@)" -c -o "$@" "$<"
	@	@
code/BSP/encoder.o: G:/Naoxuan/download/visionCar-eight_Dev/visionCar-eight_Dev/project/code/BSP/encoder.c
	@	@	riscv-none-embed-gcc -march=rv32imafc -mabi=ilp32f -msmall-data-limit=8 -mno-save-restore -O0 -fmessage-length=0 -fsigned-char -ffunction-sections -fdata-sections -fno-common -pedantic -Wunused -Wuninitialized -Wall  -g -I"G:\Naoxuan\download\visionCar-eight_Dev\visionCar-eight_Dev\Libraries\doc" -I"G:\Naoxuan\download\visionCar-eight_Dev\visionCar-eight_Dev\libraries\sdk\Core" -I"G:\Naoxuan\download\visionCar-eight_Dev\visionCar-eight_Dev\libraries\sdk\Ld" -I"G:\Naoxuan\download\visionCar-eight_Dev\visionCar-eight_Dev\libraries\sdk\Peripheral" -I"G:\Naoxuan\download\visionCar-eight_Dev\visionCar-eight_Dev\libraries\sdk\Startup" -I"G:\Naoxuan\download\visionCar-eight_Dev\visionCar-eight_Dev\project\user\inc" -I"G:\Naoxuan\download\visionCar-eight_Dev\visionCar-eight_Dev\libraries\zf_common" -I"G:\Naoxuan\download\visionCar-eight_Dev\visionCar-eight_Dev\libraries\zf_device" -I"G:\Naoxuan\download\visionCar-eight_Dev\visionCar-eight_Dev\project\code" -I"G:\Naoxuan\download\visionCar-eight_Dev\visionCar-eight_Dev\libraries\zf_driver" -std=gnu11 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@)" -c -o "$@" "$<"
	@	@
code/BSP/steer.o: G:/Naoxuan/download/visionCar-eight_Dev/visionCar-eight_Dev/project/code/BSP/steer.c
	@	@	riscv-none-embed-gcc -march=rv32imafc -mabi=ilp32f -msmall-data-limit=8 -mno-save-restore -O0 -fmessage-length=0 -fsigned-char -ffunction-sections -fdata-sections -fno-common -pedantic -Wunused -Wuninitialized -Wall  -g -I"G:\Naoxuan\download\visionCar-eight_Dev\visionCar-eight_Dev\Libraries\doc" -I"G:\Naoxuan\download\visionCar-eight_Dev\visionCar-eight_Dev\libraries\sdk\Core" -I"G:\Naoxuan\download\visionCar-eight_Dev\visionCar-eight_Dev\libraries\sdk\Ld" -I"G:\Naoxuan\download\visionCar-eight_Dev\visionCar-eight_Dev\libraries\sdk\Peripheral" -I"G:\Naoxuan\download\visionCar-eight_Dev\visionCar-eight_Dev\libraries\sdk\Startup" -I"G:\Naoxuan\download\visionCar-eight_Dev\visionCar-eight_Dev\project\user\inc" -I"G:\Naoxuan\download\visionCar-eight_Dev\visionCar-eight_Dev\libraries\zf_common" -I"G:\Naoxuan\download\visionCar-eight_Dev\visionCar-eight_Dev\libraries\zf_device" -I"G:\Naoxuan\download\visionCar-eight_Dev\visionCar-eight_Dev\project\code" -I"G:\Naoxuan\download\visionCar-eight_Dev\visionCar-eight_Dev\libraries\zf_driver" -std=gnu11 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@)" -c -o "$@" "$<"
	@	@
code/BSP/wheel.o: G:/Naoxuan/download/visionCar-eight_Dev/visionCar-eight_Dev/project/code/BSP/wheel.c
	@	@	riscv-none-embed-gcc -march=rv32imafc -mabi=ilp32f -msmall-data-limit=8 -mno-save-restore -O0 -fmessage-length=0 -fsigned-char -ffunction-sections -fdata-sections -fno-common -pedantic -Wunused -Wuninitialized -Wall  -g -I"G:\Naoxuan\download\visionCar-eight_Dev\visionCar-eight_Dev\Libraries\doc" -I"G:\Naoxuan\download\visionCar-eight_Dev\visionCar-eight_Dev\libraries\sdk\Core" -I"G:\Naoxuan\download\visionCar-eight_Dev\visionCar-eight_Dev\libraries\sdk\Ld" -I"G:\Naoxuan\download\visionCar-eight_Dev\visionCar-eight_Dev\libraries\sdk\Peripheral" -I"G:\Naoxuan\download\visionCar-eight_Dev\visionCar-eight_Dev\libraries\sdk\Startup" -I"G:\Naoxuan\download\visionCar-eight_Dev\visionCar-eight_Dev\project\user\inc" -I"G:\Naoxuan\download\visionCar-eight_Dev\visionCar-eight_Dev\libraries\zf_common" -I"G:\Naoxuan\download\visionCar-eight_Dev\visionCar-eight_Dev\libraries\zf_device" -I"G:\Naoxuan\download\visionCar-eight_Dev\visionCar-eight_Dev\project\code" -I"G:\Naoxuan\download\visionCar-eight_Dev\visionCar-eight_Dev\libraries\zf_driver" -std=gnu11 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@)" -c -o "$@" "$<"
	@	@

