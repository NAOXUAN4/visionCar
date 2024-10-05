################################################################################
# MRS Version: 1.9.2
# 自动生成的文件。不要编辑！
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
H:/projectLib/visionCar_v1.0/libraries/zf_driver/zf_driver_adc.c \
H:/projectLib/visionCar_v1.0/libraries/zf_driver/zf_driver_delay.c \
H:/projectLib/visionCar_v1.0/libraries/zf_driver/zf_driver_dvp.c \
H:/projectLib/visionCar_v1.0/libraries/zf_driver/zf_driver_encoder.c \
H:/projectLib/visionCar_v1.0/libraries/zf_driver/zf_driver_exti.c \
H:/projectLib/visionCar_v1.0/libraries/zf_driver/zf_driver_flash.c \
H:/projectLib/visionCar_v1.0/libraries/zf_driver/zf_driver_gpio.c \
H:/projectLib/visionCar_v1.0/libraries/zf_driver/zf_driver_iic.c \
H:/projectLib/visionCar_v1.0/libraries/zf_driver/zf_driver_pit.c \
H:/projectLib/visionCar_v1.0/libraries/zf_driver/zf_driver_pwm.c \
H:/projectLib/visionCar_v1.0/libraries/zf_driver/zf_driver_soft_iic.c \
H:/projectLib/visionCar_v1.0/libraries/zf_driver/zf_driver_soft_spi.c \
H:/projectLib/visionCar_v1.0/libraries/zf_driver/zf_driver_spi.c \
H:/projectLib/visionCar_v1.0/libraries/zf_driver/zf_driver_timer.c \
H:/projectLib/visionCar_v1.0/libraries/zf_driver/zf_driver_uart.c \
H:/projectLib/visionCar_v1.0/libraries/zf_driver/zf_driver_usb_cdc.c 

OBJS += \
./zf_driver/zf_driver_adc.o \
./zf_driver/zf_driver_delay.o \
./zf_driver/zf_driver_dvp.o \
./zf_driver/zf_driver_encoder.o \
./zf_driver/zf_driver_exti.o \
./zf_driver/zf_driver_flash.o \
./zf_driver/zf_driver_gpio.o \
./zf_driver/zf_driver_iic.o \
./zf_driver/zf_driver_pit.o \
./zf_driver/zf_driver_pwm.o \
./zf_driver/zf_driver_soft_iic.o \
./zf_driver/zf_driver_soft_spi.o \
./zf_driver/zf_driver_spi.o \
./zf_driver/zf_driver_timer.o \
./zf_driver/zf_driver_uart.o \
./zf_driver/zf_driver_usb_cdc.o 

C_DEPS += \
./zf_driver/zf_driver_adc.d \
./zf_driver/zf_driver_delay.d \
./zf_driver/zf_driver_dvp.d \
./zf_driver/zf_driver_encoder.d \
./zf_driver/zf_driver_exti.d \
./zf_driver/zf_driver_flash.d \
./zf_driver/zf_driver_gpio.d \
./zf_driver/zf_driver_iic.d \
./zf_driver/zf_driver_pit.d \
./zf_driver/zf_driver_pwm.d \
./zf_driver/zf_driver_soft_iic.d \
./zf_driver/zf_driver_soft_spi.d \
./zf_driver/zf_driver_spi.d \
./zf_driver/zf_driver_timer.d \
./zf_driver/zf_driver_uart.d \
./zf_driver/zf_driver_usb_cdc.d 


# Each subdirectory must supply rules for building sources it contributes
zf_driver/zf_driver_adc.o: H:/projectLib/visionCar_v1.0/libraries/zf_driver/zf_driver_adc.c
	@	@	riscv-none-embed-gcc -march=rv32imafc -mabi=ilp32f -msmall-data-limit=8 -mno-save-restore -O0 -fmessage-length=0 -fsigned-char -ffunction-sections -fdata-sections -fno-common -pedantic -Wunused -Wuninitialized -Wall  -g -I"H:\projectLib\visionCar_v1.0\Libraries\doc" -I"H:\projectLib\visionCar_v1.0\libraries\sdk\Core" -I"H:\projectLib\visionCar_v1.0\libraries\sdk\Ld" -I"H:\projectLib\visionCar_v1.0\libraries\sdk\Peripheral" -I"H:\projectLib\visionCar_v1.0\libraries\sdk\Startup" -I"H:\projectLib\visionCar_v1.0\project\user\inc" -I"H:\projectLib\visionCar_v1.0\libraries\zf_common" -I"H:\projectLib\visionCar_v1.0\libraries\zf_device" -I"H:\projectLib\visionCar_v1.0\project\code" -I"H:\projectLib\visionCar_v1.0\libraries\zf_driver" -std=gnu11 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@)" -c -o "$@" "$<"
	@	@
zf_driver/zf_driver_delay.o: H:/projectLib/visionCar_v1.0/libraries/zf_driver/zf_driver_delay.c
	@	@	riscv-none-embed-gcc -march=rv32imafc -mabi=ilp32f -msmall-data-limit=8 -mno-save-restore -O0 -fmessage-length=0 -fsigned-char -ffunction-sections -fdata-sections -fno-common -pedantic -Wunused -Wuninitialized -Wall  -g -I"H:\projectLib\visionCar_v1.0\Libraries\doc" -I"H:\projectLib\visionCar_v1.0\libraries\sdk\Core" -I"H:\projectLib\visionCar_v1.0\libraries\sdk\Ld" -I"H:\projectLib\visionCar_v1.0\libraries\sdk\Peripheral" -I"H:\projectLib\visionCar_v1.0\libraries\sdk\Startup" -I"H:\projectLib\visionCar_v1.0\project\user\inc" -I"H:\projectLib\visionCar_v1.0\libraries\zf_common" -I"H:\projectLib\visionCar_v1.0\libraries\zf_device" -I"H:\projectLib\visionCar_v1.0\project\code" -I"H:\projectLib\visionCar_v1.0\libraries\zf_driver" -std=gnu11 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@)" -c -o "$@" "$<"
	@	@
zf_driver/zf_driver_dvp.o: H:/projectLib/visionCar_v1.0/libraries/zf_driver/zf_driver_dvp.c
	@	@	riscv-none-embed-gcc -march=rv32imafc -mabi=ilp32f -msmall-data-limit=8 -mno-save-restore -O0 -fmessage-length=0 -fsigned-char -ffunction-sections -fdata-sections -fno-common -pedantic -Wunused -Wuninitialized -Wall  -g -I"H:\projectLib\visionCar_v1.0\Libraries\doc" -I"H:\projectLib\visionCar_v1.0\libraries\sdk\Core" -I"H:\projectLib\visionCar_v1.0\libraries\sdk\Ld" -I"H:\projectLib\visionCar_v1.0\libraries\sdk\Peripheral" -I"H:\projectLib\visionCar_v1.0\libraries\sdk\Startup" -I"H:\projectLib\visionCar_v1.0\project\user\inc" -I"H:\projectLib\visionCar_v1.0\libraries\zf_common" -I"H:\projectLib\visionCar_v1.0\libraries\zf_device" -I"H:\projectLib\visionCar_v1.0\project\code" -I"H:\projectLib\visionCar_v1.0\libraries\zf_driver" -std=gnu11 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@)" -c -o "$@" "$<"
	@	@
zf_driver/zf_driver_encoder.o: H:/projectLib/visionCar_v1.0/libraries/zf_driver/zf_driver_encoder.c
	@	@	riscv-none-embed-gcc -march=rv32imafc -mabi=ilp32f -msmall-data-limit=8 -mno-save-restore -O0 -fmessage-length=0 -fsigned-char -ffunction-sections -fdata-sections -fno-common -pedantic -Wunused -Wuninitialized -Wall  -g -I"H:\projectLib\visionCar_v1.0\Libraries\doc" -I"H:\projectLib\visionCar_v1.0\libraries\sdk\Core" -I"H:\projectLib\visionCar_v1.0\libraries\sdk\Ld" -I"H:\projectLib\visionCar_v1.0\libraries\sdk\Peripheral" -I"H:\projectLib\visionCar_v1.0\libraries\sdk\Startup" -I"H:\projectLib\visionCar_v1.0\project\user\inc" -I"H:\projectLib\visionCar_v1.0\libraries\zf_common" -I"H:\projectLib\visionCar_v1.0\libraries\zf_device" -I"H:\projectLib\visionCar_v1.0\project\code" -I"H:\projectLib\visionCar_v1.0\libraries\zf_driver" -std=gnu11 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@)" -c -o "$@" "$<"
	@	@
zf_driver/zf_driver_exti.o: H:/projectLib/visionCar_v1.0/libraries/zf_driver/zf_driver_exti.c
	@	@	riscv-none-embed-gcc -march=rv32imafc -mabi=ilp32f -msmall-data-limit=8 -mno-save-restore -O0 -fmessage-length=0 -fsigned-char -ffunction-sections -fdata-sections -fno-common -pedantic -Wunused -Wuninitialized -Wall  -g -I"H:\projectLib\visionCar_v1.0\Libraries\doc" -I"H:\projectLib\visionCar_v1.0\libraries\sdk\Core" -I"H:\projectLib\visionCar_v1.0\libraries\sdk\Ld" -I"H:\projectLib\visionCar_v1.0\libraries\sdk\Peripheral" -I"H:\projectLib\visionCar_v1.0\libraries\sdk\Startup" -I"H:\projectLib\visionCar_v1.0\project\user\inc" -I"H:\projectLib\visionCar_v1.0\libraries\zf_common" -I"H:\projectLib\visionCar_v1.0\libraries\zf_device" -I"H:\projectLib\visionCar_v1.0\project\code" -I"H:\projectLib\visionCar_v1.0\libraries\zf_driver" -std=gnu11 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@)" -c -o "$@" "$<"
	@	@
zf_driver/zf_driver_flash.o: H:/projectLib/visionCar_v1.0/libraries/zf_driver/zf_driver_flash.c
	@	@	riscv-none-embed-gcc -march=rv32imafc -mabi=ilp32f -msmall-data-limit=8 -mno-save-restore -O0 -fmessage-length=0 -fsigned-char -ffunction-sections -fdata-sections -fno-common -pedantic -Wunused -Wuninitialized -Wall  -g -I"H:\projectLib\visionCar_v1.0\Libraries\doc" -I"H:\projectLib\visionCar_v1.0\libraries\sdk\Core" -I"H:\projectLib\visionCar_v1.0\libraries\sdk\Ld" -I"H:\projectLib\visionCar_v1.0\libraries\sdk\Peripheral" -I"H:\projectLib\visionCar_v1.0\libraries\sdk\Startup" -I"H:\projectLib\visionCar_v1.0\project\user\inc" -I"H:\projectLib\visionCar_v1.0\libraries\zf_common" -I"H:\projectLib\visionCar_v1.0\libraries\zf_device" -I"H:\projectLib\visionCar_v1.0\project\code" -I"H:\projectLib\visionCar_v1.0\libraries\zf_driver" -std=gnu11 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@)" -c -o "$@" "$<"
	@	@
zf_driver/zf_driver_gpio.o: H:/projectLib/visionCar_v1.0/libraries/zf_driver/zf_driver_gpio.c
	@	@	riscv-none-embed-gcc -march=rv32imafc -mabi=ilp32f -msmall-data-limit=8 -mno-save-restore -O0 -fmessage-length=0 -fsigned-char -ffunction-sections -fdata-sections -fno-common -pedantic -Wunused -Wuninitialized -Wall  -g -I"H:\projectLib\visionCar_v1.0\Libraries\doc" -I"H:\projectLib\visionCar_v1.0\libraries\sdk\Core" -I"H:\projectLib\visionCar_v1.0\libraries\sdk\Ld" -I"H:\projectLib\visionCar_v1.0\libraries\sdk\Peripheral" -I"H:\projectLib\visionCar_v1.0\libraries\sdk\Startup" -I"H:\projectLib\visionCar_v1.0\project\user\inc" -I"H:\projectLib\visionCar_v1.0\libraries\zf_common" -I"H:\projectLib\visionCar_v1.0\libraries\zf_device" -I"H:\projectLib\visionCar_v1.0\project\code" -I"H:\projectLib\visionCar_v1.0\libraries\zf_driver" -std=gnu11 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@)" -c -o "$@" "$<"
	@	@
zf_driver/zf_driver_iic.o: H:/projectLib/visionCar_v1.0/libraries/zf_driver/zf_driver_iic.c
	@	@	riscv-none-embed-gcc -march=rv32imafc -mabi=ilp32f -msmall-data-limit=8 -mno-save-restore -O0 -fmessage-length=0 -fsigned-char -ffunction-sections -fdata-sections -fno-common -pedantic -Wunused -Wuninitialized -Wall  -g -I"H:\projectLib\visionCar_v1.0\Libraries\doc" -I"H:\projectLib\visionCar_v1.0\libraries\sdk\Core" -I"H:\projectLib\visionCar_v1.0\libraries\sdk\Ld" -I"H:\projectLib\visionCar_v1.0\libraries\sdk\Peripheral" -I"H:\projectLib\visionCar_v1.0\libraries\sdk\Startup" -I"H:\projectLib\visionCar_v1.0\project\user\inc" -I"H:\projectLib\visionCar_v1.0\libraries\zf_common" -I"H:\projectLib\visionCar_v1.0\libraries\zf_device" -I"H:\projectLib\visionCar_v1.0\project\code" -I"H:\projectLib\visionCar_v1.0\libraries\zf_driver" -std=gnu11 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@)" -c -o "$@" "$<"
	@	@
zf_driver/zf_driver_pit.o: H:/projectLib/visionCar_v1.0/libraries/zf_driver/zf_driver_pit.c
	@	@	riscv-none-embed-gcc -march=rv32imafc -mabi=ilp32f -msmall-data-limit=8 -mno-save-restore -O0 -fmessage-length=0 -fsigned-char -ffunction-sections -fdata-sections -fno-common -pedantic -Wunused -Wuninitialized -Wall  -g -I"H:\projectLib\visionCar_v1.0\Libraries\doc" -I"H:\projectLib\visionCar_v1.0\libraries\sdk\Core" -I"H:\projectLib\visionCar_v1.0\libraries\sdk\Ld" -I"H:\projectLib\visionCar_v1.0\libraries\sdk\Peripheral" -I"H:\projectLib\visionCar_v1.0\libraries\sdk\Startup" -I"H:\projectLib\visionCar_v1.0\project\user\inc" -I"H:\projectLib\visionCar_v1.0\libraries\zf_common" -I"H:\projectLib\visionCar_v1.0\libraries\zf_device" -I"H:\projectLib\visionCar_v1.0\project\code" -I"H:\projectLib\visionCar_v1.0\libraries\zf_driver" -std=gnu11 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@)" -c -o "$@" "$<"
	@	@
zf_driver/zf_driver_pwm.o: H:/projectLib/visionCar_v1.0/libraries/zf_driver/zf_driver_pwm.c
	@	@	riscv-none-embed-gcc -march=rv32imafc -mabi=ilp32f -msmall-data-limit=8 -mno-save-restore -O0 -fmessage-length=0 -fsigned-char -ffunction-sections -fdata-sections -fno-common -pedantic -Wunused -Wuninitialized -Wall  -g -I"H:\projectLib\visionCar_v1.0\Libraries\doc" -I"H:\projectLib\visionCar_v1.0\libraries\sdk\Core" -I"H:\projectLib\visionCar_v1.0\libraries\sdk\Ld" -I"H:\projectLib\visionCar_v1.0\libraries\sdk\Peripheral" -I"H:\projectLib\visionCar_v1.0\libraries\sdk\Startup" -I"H:\projectLib\visionCar_v1.0\project\user\inc" -I"H:\projectLib\visionCar_v1.0\libraries\zf_common" -I"H:\projectLib\visionCar_v1.0\libraries\zf_device" -I"H:\projectLib\visionCar_v1.0\project\code" -I"H:\projectLib\visionCar_v1.0\libraries\zf_driver" -std=gnu11 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@)" -c -o "$@" "$<"
	@	@
zf_driver/zf_driver_soft_iic.o: H:/projectLib/visionCar_v1.0/libraries/zf_driver/zf_driver_soft_iic.c
	@	@	riscv-none-embed-gcc -march=rv32imafc -mabi=ilp32f -msmall-data-limit=8 -mno-save-restore -O0 -fmessage-length=0 -fsigned-char -ffunction-sections -fdata-sections -fno-common -pedantic -Wunused -Wuninitialized -Wall  -g -I"H:\projectLib\visionCar_v1.0\Libraries\doc" -I"H:\projectLib\visionCar_v1.0\libraries\sdk\Core" -I"H:\projectLib\visionCar_v1.0\libraries\sdk\Ld" -I"H:\projectLib\visionCar_v1.0\libraries\sdk\Peripheral" -I"H:\projectLib\visionCar_v1.0\libraries\sdk\Startup" -I"H:\projectLib\visionCar_v1.0\project\user\inc" -I"H:\projectLib\visionCar_v1.0\libraries\zf_common" -I"H:\projectLib\visionCar_v1.0\libraries\zf_device" -I"H:\projectLib\visionCar_v1.0\project\code" -I"H:\projectLib\visionCar_v1.0\libraries\zf_driver" -std=gnu11 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@)" -c -o "$@" "$<"
	@	@
zf_driver/zf_driver_soft_spi.o: H:/projectLib/visionCar_v1.0/libraries/zf_driver/zf_driver_soft_spi.c
	@	@	riscv-none-embed-gcc -march=rv32imafc -mabi=ilp32f -msmall-data-limit=8 -mno-save-restore -O0 -fmessage-length=0 -fsigned-char -ffunction-sections -fdata-sections -fno-common -pedantic -Wunused -Wuninitialized -Wall  -g -I"H:\projectLib\visionCar_v1.0\Libraries\doc" -I"H:\projectLib\visionCar_v1.0\libraries\sdk\Core" -I"H:\projectLib\visionCar_v1.0\libraries\sdk\Ld" -I"H:\projectLib\visionCar_v1.0\libraries\sdk\Peripheral" -I"H:\projectLib\visionCar_v1.0\libraries\sdk\Startup" -I"H:\projectLib\visionCar_v1.0\project\user\inc" -I"H:\projectLib\visionCar_v1.0\libraries\zf_common" -I"H:\projectLib\visionCar_v1.0\libraries\zf_device" -I"H:\projectLib\visionCar_v1.0\project\code" -I"H:\projectLib\visionCar_v1.0\libraries\zf_driver" -std=gnu11 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@)" -c -o "$@" "$<"
	@	@
zf_driver/zf_driver_spi.o: H:/projectLib/visionCar_v1.0/libraries/zf_driver/zf_driver_spi.c
	@	@	riscv-none-embed-gcc -march=rv32imafc -mabi=ilp32f -msmall-data-limit=8 -mno-save-restore -O0 -fmessage-length=0 -fsigned-char -ffunction-sections -fdata-sections -fno-common -pedantic -Wunused -Wuninitialized -Wall  -g -I"H:\projectLib\visionCar_v1.0\Libraries\doc" -I"H:\projectLib\visionCar_v1.0\libraries\sdk\Core" -I"H:\projectLib\visionCar_v1.0\libraries\sdk\Ld" -I"H:\projectLib\visionCar_v1.0\libraries\sdk\Peripheral" -I"H:\projectLib\visionCar_v1.0\libraries\sdk\Startup" -I"H:\projectLib\visionCar_v1.0\project\user\inc" -I"H:\projectLib\visionCar_v1.0\libraries\zf_common" -I"H:\projectLib\visionCar_v1.0\libraries\zf_device" -I"H:\projectLib\visionCar_v1.0\project\code" -I"H:\projectLib\visionCar_v1.0\libraries\zf_driver" -std=gnu11 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@)" -c -o "$@" "$<"
	@	@
zf_driver/zf_driver_timer.o: H:/projectLib/visionCar_v1.0/libraries/zf_driver/zf_driver_timer.c
	@	@	riscv-none-embed-gcc -march=rv32imafc -mabi=ilp32f -msmall-data-limit=8 -mno-save-restore -O0 -fmessage-length=0 -fsigned-char -ffunction-sections -fdata-sections -fno-common -pedantic -Wunused -Wuninitialized -Wall  -g -I"H:\projectLib\visionCar_v1.0\Libraries\doc" -I"H:\projectLib\visionCar_v1.0\libraries\sdk\Core" -I"H:\projectLib\visionCar_v1.0\libraries\sdk\Ld" -I"H:\projectLib\visionCar_v1.0\libraries\sdk\Peripheral" -I"H:\projectLib\visionCar_v1.0\libraries\sdk\Startup" -I"H:\projectLib\visionCar_v1.0\project\user\inc" -I"H:\projectLib\visionCar_v1.0\libraries\zf_common" -I"H:\projectLib\visionCar_v1.0\libraries\zf_device" -I"H:\projectLib\visionCar_v1.0\project\code" -I"H:\projectLib\visionCar_v1.0\libraries\zf_driver" -std=gnu11 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@)" -c -o "$@" "$<"
	@	@
zf_driver/zf_driver_uart.o: H:/projectLib/visionCar_v1.0/libraries/zf_driver/zf_driver_uart.c
	@	@	riscv-none-embed-gcc -march=rv32imafc -mabi=ilp32f -msmall-data-limit=8 -mno-save-restore -O0 -fmessage-length=0 -fsigned-char -ffunction-sections -fdata-sections -fno-common -pedantic -Wunused -Wuninitialized -Wall  -g -I"H:\projectLib\visionCar_v1.0\Libraries\doc" -I"H:\projectLib\visionCar_v1.0\libraries\sdk\Core" -I"H:\projectLib\visionCar_v1.0\libraries\sdk\Ld" -I"H:\projectLib\visionCar_v1.0\libraries\sdk\Peripheral" -I"H:\projectLib\visionCar_v1.0\libraries\sdk\Startup" -I"H:\projectLib\visionCar_v1.0\project\user\inc" -I"H:\projectLib\visionCar_v1.0\libraries\zf_common" -I"H:\projectLib\visionCar_v1.0\libraries\zf_device" -I"H:\projectLib\visionCar_v1.0\project\code" -I"H:\projectLib\visionCar_v1.0\libraries\zf_driver" -std=gnu11 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@)" -c -o "$@" "$<"
	@	@
zf_driver/zf_driver_usb_cdc.o: H:/projectLib/visionCar_v1.0/libraries/zf_driver/zf_driver_usb_cdc.c
	@	@	riscv-none-embed-gcc -march=rv32imafc -mabi=ilp32f -msmall-data-limit=8 -mno-save-restore -O0 -fmessage-length=0 -fsigned-char -ffunction-sections -fdata-sections -fno-common -pedantic -Wunused -Wuninitialized -Wall  -g -I"H:\projectLib\visionCar_v1.0\Libraries\doc" -I"H:\projectLib\visionCar_v1.0\libraries\sdk\Core" -I"H:\projectLib\visionCar_v1.0\libraries\sdk\Ld" -I"H:\projectLib\visionCar_v1.0\libraries\sdk\Peripheral" -I"H:\projectLib\visionCar_v1.0\libraries\sdk\Startup" -I"H:\projectLib\visionCar_v1.0\project\user\inc" -I"H:\projectLib\visionCar_v1.0\libraries\zf_common" -I"H:\projectLib\visionCar_v1.0\libraries\zf_device" -I"H:\projectLib\visionCar_v1.0\project\code" -I"H:\projectLib\visionCar_v1.0\libraries\zf_driver" -std=gnu11 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@)" -c -o "$@" "$<"
	@	@

