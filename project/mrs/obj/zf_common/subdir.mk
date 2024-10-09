################################################################################
# MRS Version: 1.9.1
# 自动生成的文件。不要编辑！
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
G:/Naoxuan/download/visionCar-eight_Dev/visionCar-eight_Dev/libraries/zf_common/zf_common_clock.c \
G:/Naoxuan/download/visionCar-eight_Dev/visionCar-eight_Dev/libraries/zf_common/zf_common_debug.c \
G:/Naoxuan/download/visionCar-eight_Dev/visionCar-eight_Dev/libraries/zf_common/zf_common_fifo.c \
G:/Naoxuan/download/visionCar-eight_Dev/visionCar-eight_Dev/libraries/zf_common/zf_common_font.c \
G:/Naoxuan/download/visionCar-eight_Dev/visionCar-eight_Dev/libraries/zf_common/zf_common_function.c \
G:/Naoxuan/download/visionCar-eight_Dev/visionCar-eight_Dev/libraries/zf_common/zf_common_interrupt.c 

OBJS += \
./zf_common/zf_common_clock.o \
./zf_common/zf_common_debug.o \
./zf_common/zf_common_fifo.o \
./zf_common/zf_common_font.o \
./zf_common/zf_common_function.o \
./zf_common/zf_common_interrupt.o 

C_DEPS += \
./zf_common/zf_common_clock.d \
./zf_common/zf_common_debug.d \
./zf_common/zf_common_fifo.d \
./zf_common/zf_common_font.d \
./zf_common/zf_common_function.d \
./zf_common/zf_common_interrupt.d 


# Each subdirectory must supply rules for building sources it contributes
zf_common/zf_common_clock.o: G:/Naoxuan/download/visionCar-eight_Dev/visionCar-eight_Dev/libraries/zf_common/zf_common_clock.c
	@	@	riscv-none-embed-gcc -march=rv32imafc -mabi=ilp32f -msmall-data-limit=8 -mno-save-restore -O0 -fmessage-length=0 -fsigned-char -ffunction-sections -fdata-sections -fno-common -pedantic -Wunused -Wuninitialized -Wall  -g -I"G:\Naoxuan\download\visionCar-eight_Dev\visionCar-eight_Dev\Libraries\doc" -I"G:\Naoxuan\download\visionCar-eight_Dev\visionCar-eight_Dev\libraries\sdk\Core" -I"G:\Naoxuan\download\visionCar-eight_Dev\visionCar-eight_Dev\libraries\sdk\Ld" -I"G:\Naoxuan\download\visionCar-eight_Dev\visionCar-eight_Dev\libraries\sdk\Peripheral" -I"G:\Naoxuan\download\visionCar-eight_Dev\visionCar-eight_Dev\libraries\sdk\Startup" -I"G:\Naoxuan\download\visionCar-eight_Dev\visionCar-eight_Dev\project\user\inc" -I"G:\Naoxuan\download\visionCar-eight_Dev\visionCar-eight_Dev\libraries\zf_common" -I"G:\Naoxuan\download\visionCar-eight_Dev\visionCar-eight_Dev\libraries\zf_device" -I"G:\Naoxuan\download\visionCar-eight_Dev\visionCar-eight_Dev\project\code" -I"G:\Naoxuan\download\visionCar-eight_Dev\visionCar-eight_Dev\libraries\zf_driver" -std=gnu11 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@)" -c -o "$@" "$<"
	@	@
zf_common/zf_common_debug.o: G:/Naoxuan/download/visionCar-eight_Dev/visionCar-eight_Dev/libraries/zf_common/zf_common_debug.c
	@	@	riscv-none-embed-gcc -march=rv32imafc -mabi=ilp32f -msmall-data-limit=8 -mno-save-restore -O0 -fmessage-length=0 -fsigned-char -ffunction-sections -fdata-sections -fno-common -pedantic -Wunused -Wuninitialized -Wall  -g -I"G:\Naoxuan\download\visionCar-eight_Dev\visionCar-eight_Dev\Libraries\doc" -I"G:\Naoxuan\download\visionCar-eight_Dev\visionCar-eight_Dev\libraries\sdk\Core" -I"G:\Naoxuan\download\visionCar-eight_Dev\visionCar-eight_Dev\libraries\sdk\Ld" -I"G:\Naoxuan\download\visionCar-eight_Dev\visionCar-eight_Dev\libraries\sdk\Peripheral" -I"G:\Naoxuan\download\visionCar-eight_Dev\visionCar-eight_Dev\libraries\sdk\Startup" -I"G:\Naoxuan\download\visionCar-eight_Dev\visionCar-eight_Dev\project\user\inc" -I"G:\Naoxuan\download\visionCar-eight_Dev\visionCar-eight_Dev\libraries\zf_common" -I"G:\Naoxuan\download\visionCar-eight_Dev\visionCar-eight_Dev\libraries\zf_device" -I"G:\Naoxuan\download\visionCar-eight_Dev\visionCar-eight_Dev\project\code" -I"G:\Naoxuan\download\visionCar-eight_Dev\visionCar-eight_Dev\libraries\zf_driver" -std=gnu11 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@)" -c -o "$@" "$<"
	@	@
zf_common/zf_common_fifo.o: G:/Naoxuan/download/visionCar-eight_Dev/visionCar-eight_Dev/libraries/zf_common/zf_common_fifo.c
	@	@	riscv-none-embed-gcc -march=rv32imafc -mabi=ilp32f -msmall-data-limit=8 -mno-save-restore -O0 -fmessage-length=0 -fsigned-char -ffunction-sections -fdata-sections -fno-common -pedantic -Wunused -Wuninitialized -Wall  -g -I"G:\Naoxuan\download\visionCar-eight_Dev\visionCar-eight_Dev\Libraries\doc" -I"G:\Naoxuan\download\visionCar-eight_Dev\visionCar-eight_Dev\libraries\sdk\Core" -I"G:\Naoxuan\download\visionCar-eight_Dev\visionCar-eight_Dev\libraries\sdk\Ld" -I"G:\Naoxuan\download\visionCar-eight_Dev\visionCar-eight_Dev\libraries\sdk\Peripheral" -I"G:\Naoxuan\download\visionCar-eight_Dev\visionCar-eight_Dev\libraries\sdk\Startup" -I"G:\Naoxuan\download\visionCar-eight_Dev\visionCar-eight_Dev\project\user\inc" -I"G:\Naoxuan\download\visionCar-eight_Dev\visionCar-eight_Dev\libraries\zf_common" -I"G:\Naoxuan\download\visionCar-eight_Dev\visionCar-eight_Dev\libraries\zf_device" -I"G:\Naoxuan\download\visionCar-eight_Dev\visionCar-eight_Dev\project\code" -I"G:\Naoxuan\download\visionCar-eight_Dev\visionCar-eight_Dev\libraries\zf_driver" -std=gnu11 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@)" -c -o "$@" "$<"
	@	@
zf_common/zf_common_font.o: G:/Naoxuan/download/visionCar-eight_Dev/visionCar-eight_Dev/libraries/zf_common/zf_common_font.c
	@	@	riscv-none-embed-gcc -march=rv32imafc -mabi=ilp32f -msmall-data-limit=8 -mno-save-restore -O0 -fmessage-length=0 -fsigned-char -ffunction-sections -fdata-sections -fno-common -pedantic -Wunused -Wuninitialized -Wall  -g -I"G:\Naoxuan\download\visionCar-eight_Dev\visionCar-eight_Dev\Libraries\doc" -I"G:\Naoxuan\download\visionCar-eight_Dev\visionCar-eight_Dev\libraries\sdk\Core" -I"G:\Naoxuan\download\visionCar-eight_Dev\visionCar-eight_Dev\libraries\sdk\Ld" -I"G:\Naoxuan\download\visionCar-eight_Dev\visionCar-eight_Dev\libraries\sdk\Peripheral" -I"G:\Naoxuan\download\visionCar-eight_Dev\visionCar-eight_Dev\libraries\sdk\Startup" -I"G:\Naoxuan\download\visionCar-eight_Dev\visionCar-eight_Dev\project\user\inc" -I"G:\Naoxuan\download\visionCar-eight_Dev\visionCar-eight_Dev\libraries\zf_common" -I"G:\Naoxuan\download\visionCar-eight_Dev\visionCar-eight_Dev\libraries\zf_device" -I"G:\Naoxuan\download\visionCar-eight_Dev\visionCar-eight_Dev\project\code" -I"G:\Naoxuan\download\visionCar-eight_Dev\visionCar-eight_Dev\libraries\zf_driver" -std=gnu11 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@)" -c -o "$@" "$<"
	@	@
zf_common/zf_common_function.o: G:/Naoxuan/download/visionCar-eight_Dev/visionCar-eight_Dev/libraries/zf_common/zf_common_function.c
	@	@	riscv-none-embed-gcc -march=rv32imafc -mabi=ilp32f -msmall-data-limit=8 -mno-save-restore -O0 -fmessage-length=0 -fsigned-char -ffunction-sections -fdata-sections -fno-common -pedantic -Wunused -Wuninitialized -Wall  -g -I"G:\Naoxuan\download\visionCar-eight_Dev\visionCar-eight_Dev\Libraries\doc" -I"G:\Naoxuan\download\visionCar-eight_Dev\visionCar-eight_Dev\libraries\sdk\Core" -I"G:\Naoxuan\download\visionCar-eight_Dev\visionCar-eight_Dev\libraries\sdk\Ld" -I"G:\Naoxuan\download\visionCar-eight_Dev\visionCar-eight_Dev\libraries\sdk\Peripheral" -I"G:\Naoxuan\download\visionCar-eight_Dev\visionCar-eight_Dev\libraries\sdk\Startup" -I"G:\Naoxuan\download\visionCar-eight_Dev\visionCar-eight_Dev\project\user\inc" -I"G:\Naoxuan\download\visionCar-eight_Dev\visionCar-eight_Dev\libraries\zf_common" -I"G:\Naoxuan\download\visionCar-eight_Dev\visionCar-eight_Dev\libraries\zf_device" -I"G:\Naoxuan\download\visionCar-eight_Dev\visionCar-eight_Dev\project\code" -I"G:\Naoxuan\download\visionCar-eight_Dev\visionCar-eight_Dev\libraries\zf_driver" -std=gnu11 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@)" -c -o "$@" "$<"
	@	@
zf_common/zf_common_interrupt.o: G:/Naoxuan/download/visionCar-eight_Dev/visionCar-eight_Dev/libraries/zf_common/zf_common_interrupt.c
	@	@	riscv-none-embed-gcc -march=rv32imafc -mabi=ilp32f -msmall-data-limit=8 -mno-save-restore -O0 -fmessage-length=0 -fsigned-char -ffunction-sections -fdata-sections -fno-common -pedantic -Wunused -Wuninitialized -Wall  -g -I"G:\Naoxuan\download\visionCar-eight_Dev\visionCar-eight_Dev\Libraries\doc" -I"G:\Naoxuan\download\visionCar-eight_Dev\visionCar-eight_Dev\libraries\sdk\Core" -I"G:\Naoxuan\download\visionCar-eight_Dev\visionCar-eight_Dev\libraries\sdk\Ld" -I"G:\Naoxuan\download\visionCar-eight_Dev\visionCar-eight_Dev\libraries\sdk\Peripheral" -I"G:\Naoxuan\download\visionCar-eight_Dev\visionCar-eight_Dev\libraries\sdk\Startup" -I"G:\Naoxuan\download\visionCar-eight_Dev\visionCar-eight_Dev\project\user\inc" -I"G:\Naoxuan\download\visionCar-eight_Dev\visionCar-eight_Dev\libraries\zf_common" -I"G:\Naoxuan\download\visionCar-eight_Dev\visionCar-eight_Dev\libraries\zf_device" -I"G:\Naoxuan\download\visionCar-eight_Dev\visionCar-eight_Dev\project\code" -I"G:\Naoxuan\download\visionCar-eight_Dev\visionCar-eight_Dev\libraries\zf_driver" -std=gnu11 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@)" -c -o "$@" "$<"
	@	@

