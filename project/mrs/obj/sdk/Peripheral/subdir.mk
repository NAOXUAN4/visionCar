################################################################################
# MRS Version: 1.9.1
# 自动生成的文件。不要编辑！
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
H:/projectLib/visionCar-eight_Dev(5)/libraries/sdk/Peripheral/ch32v30x_adc.c \
H:/projectLib/visionCar-eight_Dev(5)/libraries/sdk/Peripheral/ch32v30x_bkp.c \
H:/projectLib/visionCar-eight_Dev(5)/libraries/sdk/Peripheral/ch32v30x_can.c \
H:/projectLib/visionCar-eight_Dev(5)/libraries/sdk/Peripheral/ch32v30x_crc.c \
H:/projectLib/visionCar-eight_Dev(5)/libraries/sdk/Peripheral/ch32v30x_dac.c \
H:/projectLib/visionCar-eight_Dev(5)/libraries/sdk/Peripheral/ch32v30x_dbgmcu.c \
H:/projectLib/visionCar-eight_Dev(5)/libraries/sdk/Peripheral/ch32v30x_dma.c \
H:/projectLib/visionCar-eight_Dev(5)/libraries/sdk/Peripheral/ch32v30x_dvp.c \
H:/projectLib/visionCar-eight_Dev(5)/libraries/sdk/Peripheral/ch32v30x_eth.c \
H:/projectLib/visionCar-eight_Dev(5)/libraries/sdk/Peripheral/ch32v30x_exti.c \
H:/projectLib/visionCar-eight_Dev(5)/libraries/sdk/Peripheral/ch32v30x_flash.c \
H:/projectLib/visionCar-eight_Dev(5)/libraries/sdk/Peripheral/ch32v30x_fsmc.c \
H:/projectLib/visionCar-eight_Dev(5)/libraries/sdk/Peripheral/ch32v30x_gpio.c \
H:/projectLib/visionCar-eight_Dev(5)/libraries/sdk/Peripheral/ch32v30x_i2c.c \
H:/projectLib/visionCar-eight_Dev(5)/libraries/sdk/Peripheral/ch32v30x_iwdg.c \
H:/projectLib/visionCar-eight_Dev(5)/libraries/sdk/Peripheral/ch32v30x_opa.c \
H:/projectLib/visionCar-eight_Dev(5)/libraries/sdk/Peripheral/ch32v30x_pwr.c \
H:/projectLib/visionCar-eight_Dev(5)/libraries/sdk/Peripheral/ch32v30x_rcc.c \
H:/projectLib/visionCar-eight_Dev(5)/libraries/sdk/Peripheral/ch32v30x_rng.c \
H:/projectLib/visionCar-eight_Dev(5)/libraries/sdk/Peripheral/ch32v30x_rtc.c \
H:/projectLib/visionCar-eight_Dev(5)/libraries/sdk/Peripheral/ch32v30x_sdio.c \
H:/projectLib/visionCar-eight_Dev(5)/libraries/sdk/Peripheral/ch32v30x_spi.c \
H:/projectLib/visionCar-eight_Dev(5)/libraries/sdk/Peripheral/ch32v30x_tim.c \
H:/projectLib/visionCar-eight_Dev(5)/libraries/sdk/Peripheral/ch32v30x_usart.c \
H:/projectLib/visionCar-eight_Dev(5)/libraries/sdk/Peripheral/ch32v30x_usbotg_device.c \
H:/projectLib/visionCar-eight_Dev(5)/libraries/sdk/Peripheral/ch32v30x_wwdg.c 

OBJS += \
./sdk/Peripheral/ch32v30x_adc.o \
./sdk/Peripheral/ch32v30x_bkp.o \
./sdk/Peripheral/ch32v30x_can.o \
./sdk/Peripheral/ch32v30x_crc.o \
./sdk/Peripheral/ch32v30x_dac.o \
./sdk/Peripheral/ch32v30x_dbgmcu.o \
./sdk/Peripheral/ch32v30x_dma.o \
./sdk/Peripheral/ch32v30x_dvp.o \
./sdk/Peripheral/ch32v30x_eth.o \
./sdk/Peripheral/ch32v30x_exti.o \
./sdk/Peripheral/ch32v30x_flash.o \
./sdk/Peripheral/ch32v30x_fsmc.o \
./sdk/Peripheral/ch32v30x_gpio.o \
./sdk/Peripheral/ch32v30x_i2c.o \
./sdk/Peripheral/ch32v30x_iwdg.o \
./sdk/Peripheral/ch32v30x_opa.o \
./sdk/Peripheral/ch32v30x_pwr.o \
./sdk/Peripheral/ch32v30x_rcc.o \
./sdk/Peripheral/ch32v30x_rng.o \
./sdk/Peripheral/ch32v30x_rtc.o \
./sdk/Peripheral/ch32v30x_sdio.o \
./sdk/Peripheral/ch32v30x_spi.o \
./sdk/Peripheral/ch32v30x_tim.o \
./sdk/Peripheral/ch32v30x_usart.o \
./sdk/Peripheral/ch32v30x_usbotg_device.o \
./sdk/Peripheral/ch32v30x_wwdg.o 

C_DEPS += \
./sdk/Peripheral/ch32v30x_adc.d \
./sdk/Peripheral/ch32v30x_bkp.d \
./sdk/Peripheral/ch32v30x_can.d \
./sdk/Peripheral/ch32v30x_crc.d \
./sdk/Peripheral/ch32v30x_dac.d \
./sdk/Peripheral/ch32v30x_dbgmcu.d \
./sdk/Peripheral/ch32v30x_dma.d \
./sdk/Peripheral/ch32v30x_dvp.d \
./sdk/Peripheral/ch32v30x_eth.d \
./sdk/Peripheral/ch32v30x_exti.d \
./sdk/Peripheral/ch32v30x_flash.d \
./sdk/Peripheral/ch32v30x_fsmc.d \
./sdk/Peripheral/ch32v30x_gpio.d \
./sdk/Peripheral/ch32v30x_i2c.d \
./sdk/Peripheral/ch32v30x_iwdg.d \
./sdk/Peripheral/ch32v30x_opa.d \
./sdk/Peripheral/ch32v30x_pwr.d \
./sdk/Peripheral/ch32v30x_rcc.d \
./sdk/Peripheral/ch32v30x_rng.d \
./sdk/Peripheral/ch32v30x_rtc.d \
./sdk/Peripheral/ch32v30x_sdio.d \
./sdk/Peripheral/ch32v30x_spi.d \
./sdk/Peripheral/ch32v30x_tim.d \
./sdk/Peripheral/ch32v30x_usart.d \
./sdk/Peripheral/ch32v30x_usbotg_device.d \
./sdk/Peripheral/ch32v30x_wwdg.d 


# Each subdirectory must supply rules for building sources it contributes
sdk/Peripheral/ch32v30x_adc.o: H:/projectLib/visionCar-eight_Dev(5)/libraries/sdk/Peripheral/ch32v30x_adc.c
	@	@	riscv-none-embed-gcc -march=rv32imafc -mabi=ilp32f -msmall-data-limit=8 -mno-save-restore -O0 -fmessage-length=0 -fsigned-char -ffunction-sections -fdata-sections -fno-common -pedantic -Wunused -Wuninitialized -Wall  -g -I"H:\projectLib\visionCar-eight_Dev(5)\Libraries\doc" -I"H:\projectLib\visionCar-eight_Dev(5)\libraries\sdk\Core" -I"H:\projectLib\visionCar-eight_Dev(5)\libraries\sdk\Ld" -I"H:\projectLib\visionCar-eight_Dev(5)\libraries\sdk\Peripheral" -I"H:\projectLib\visionCar-eight_Dev(5)\libraries\sdk\Startup" -I"H:\projectLib\visionCar-eight_Dev(5)\project\user\inc" -I"H:\projectLib\visionCar-eight_Dev(5)\libraries\zf_common" -I"H:\projectLib\visionCar-eight_Dev(5)\libraries\zf_device" -I"H:\projectLib\visionCar-eight_Dev(5)\project\code" -I"H:\projectLib\visionCar-eight_Dev(5)\libraries\zf_driver" -std=gnu11 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@)" -c -o "$@" "$<"
	@	@
sdk/Peripheral/ch32v30x_bkp.o: H:/projectLib/visionCar-eight_Dev(5)/libraries/sdk/Peripheral/ch32v30x_bkp.c
	@	@	riscv-none-embed-gcc -march=rv32imafc -mabi=ilp32f -msmall-data-limit=8 -mno-save-restore -O0 -fmessage-length=0 -fsigned-char -ffunction-sections -fdata-sections -fno-common -pedantic -Wunused -Wuninitialized -Wall  -g -I"H:\projectLib\visionCar-eight_Dev(5)\Libraries\doc" -I"H:\projectLib\visionCar-eight_Dev(5)\libraries\sdk\Core" -I"H:\projectLib\visionCar-eight_Dev(5)\libraries\sdk\Ld" -I"H:\projectLib\visionCar-eight_Dev(5)\libraries\sdk\Peripheral" -I"H:\projectLib\visionCar-eight_Dev(5)\libraries\sdk\Startup" -I"H:\projectLib\visionCar-eight_Dev(5)\project\user\inc" -I"H:\projectLib\visionCar-eight_Dev(5)\libraries\zf_common" -I"H:\projectLib\visionCar-eight_Dev(5)\libraries\zf_device" -I"H:\projectLib\visionCar-eight_Dev(5)\project\code" -I"H:\projectLib\visionCar-eight_Dev(5)\libraries\zf_driver" -std=gnu11 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@)" -c -o "$@" "$<"
	@	@
sdk/Peripheral/ch32v30x_can.o: H:/projectLib/visionCar-eight_Dev(5)/libraries/sdk/Peripheral/ch32v30x_can.c
	@	@	riscv-none-embed-gcc -march=rv32imafc -mabi=ilp32f -msmall-data-limit=8 -mno-save-restore -O0 -fmessage-length=0 -fsigned-char -ffunction-sections -fdata-sections -fno-common -pedantic -Wunused -Wuninitialized -Wall  -g -I"H:\projectLib\visionCar-eight_Dev(5)\Libraries\doc" -I"H:\projectLib\visionCar-eight_Dev(5)\libraries\sdk\Core" -I"H:\projectLib\visionCar-eight_Dev(5)\libraries\sdk\Ld" -I"H:\projectLib\visionCar-eight_Dev(5)\libraries\sdk\Peripheral" -I"H:\projectLib\visionCar-eight_Dev(5)\libraries\sdk\Startup" -I"H:\projectLib\visionCar-eight_Dev(5)\project\user\inc" -I"H:\projectLib\visionCar-eight_Dev(5)\libraries\zf_common" -I"H:\projectLib\visionCar-eight_Dev(5)\libraries\zf_device" -I"H:\projectLib\visionCar-eight_Dev(5)\project\code" -I"H:\projectLib\visionCar-eight_Dev(5)\libraries\zf_driver" -std=gnu11 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@)" -c -o "$@" "$<"
	@	@
sdk/Peripheral/ch32v30x_crc.o: H:/projectLib/visionCar-eight_Dev(5)/libraries/sdk/Peripheral/ch32v30x_crc.c
	@	@	riscv-none-embed-gcc -march=rv32imafc -mabi=ilp32f -msmall-data-limit=8 -mno-save-restore -O0 -fmessage-length=0 -fsigned-char -ffunction-sections -fdata-sections -fno-common -pedantic -Wunused -Wuninitialized -Wall  -g -I"H:\projectLib\visionCar-eight_Dev(5)\Libraries\doc" -I"H:\projectLib\visionCar-eight_Dev(5)\libraries\sdk\Core" -I"H:\projectLib\visionCar-eight_Dev(5)\libraries\sdk\Ld" -I"H:\projectLib\visionCar-eight_Dev(5)\libraries\sdk\Peripheral" -I"H:\projectLib\visionCar-eight_Dev(5)\libraries\sdk\Startup" -I"H:\projectLib\visionCar-eight_Dev(5)\project\user\inc" -I"H:\projectLib\visionCar-eight_Dev(5)\libraries\zf_common" -I"H:\projectLib\visionCar-eight_Dev(5)\libraries\zf_device" -I"H:\projectLib\visionCar-eight_Dev(5)\project\code" -I"H:\projectLib\visionCar-eight_Dev(5)\libraries\zf_driver" -std=gnu11 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@)" -c -o "$@" "$<"
	@	@
sdk/Peripheral/ch32v30x_dac.o: H:/projectLib/visionCar-eight_Dev(5)/libraries/sdk/Peripheral/ch32v30x_dac.c
	@	@	riscv-none-embed-gcc -march=rv32imafc -mabi=ilp32f -msmall-data-limit=8 -mno-save-restore -O0 -fmessage-length=0 -fsigned-char -ffunction-sections -fdata-sections -fno-common -pedantic -Wunused -Wuninitialized -Wall  -g -I"H:\projectLib\visionCar-eight_Dev(5)\Libraries\doc" -I"H:\projectLib\visionCar-eight_Dev(5)\libraries\sdk\Core" -I"H:\projectLib\visionCar-eight_Dev(5)\libraries\sdk\Ld" -I"H:\projectLib\visionCar-eight_Dev(5)\libraries\sdk\Peripheral" -I"H:\projectLib\visionCar-eight_Dev(5)\libraries\sdk\Startup" -I"H:\projectLib\visionCar-eight_Dev(5)\project\user\inc" -I"H:\projectLib\visionCar-eight_Dev(5)\libraries\zf_common" -I"H:\projectLib\visionCar-eight_Dev(5)\libraries\zf_device" -I"H:\projectLib\visionCar-eight_Dev(5)\project\code" -I"H:\projectLib\visionCar-eight_Dev(5)\libraries\zf_driver" -std=gnu11 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@)" -c -o "$@" "$<"
	@	@
sdk/Peripheral/ch32v30x_dbgmcu.o: H:/projectLib/visionCar-eight_Dev(5)/libraries/sdk/Peripheral/ch32v30x_dbgmcu.c
	@	@	riscv-none-embed-gcc -march=rv32imafc -mabi=ilp32f -msmall-data-limit=8 -mno-save-restore -O0 -fmessage-length=0 -fsigned-char -ffunction-sections -fdata-sections -fno-common -pedantic -Wunused -Wuninitialized -Wall  -g -I"H:\projectLib\visionCar-eight_Dev(5)\Libraries\doc" -I"H:\projectLib\visionCar-eight_Dev(5)\libraries\sdk\Core" -I"H:\projectLib\visionCar-eight_Dev(5)\libraries\sdk\Ld" -I"H:\projectLib\visionCar-eight_Dev(5)\libraries\sdk\Peripheral" -I"H:\projectLib\visionCar-eight_Dev(5)\libraries\sdk\Startup" -I"H:\projectLib\visionCar-eight_Dev(5)\project\user\inc" -I"H:\projectLib\visionCar-eight_Dev(5)\libraries\zf_common" -I"H:\projectLib\visionCar-eight_Dev(5)\libraries\zf_device" -I"H:\projectLib\visionCar-eight_Dev(5)\project\code" -I"H:\projectLib\visionCar-eight_Dev(5)\libraries\zf_driver" -std=gnu11 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@)" -c -o "$@" "$<"
	@	@
sdk/Peripheral/ch32v30x_dma.o: H:/projectLib/visionCar-eight_Dev(5)/libraries/sdk/Peripheral/ch32v30x_dma.c
	@	@	riscv-none-embed-gcc -march=rv32imafc -mabi=ilp32f -msmall-data-limit=8 -mno-save-restore -O0 -fmessage-length=0 -fsigned-char -ffunction-sections -fdata-sections -fno-common -pedantic -Wunused -Wuninitialized -Wall  -g -I"H:\projectLib\visionCar-eight_Dev(5)\Libraries\doc" -I"H:\projectLib\visionCar-eight_Dev(5)\libraries\sdk\Core" -I"H:\projectLib\visionCar-eight_Dev(5)\libraries\sdk\Ld" -I"H:\projectLib\visionCar-eight_Dev(5)\libraries\sdk\Peripheral" -I"H:\projectLib\visionCar-eight_Dev(5)\libraries\sdk\Startup" -I"H:\projectLib\visionCar-eight_Dev(5)\project\user\inc" -I"H:\projectLib\visionCar-eight_Dev(5)\libraries\zf_common" -I"H:\projectLib\visionCar-eight_Dev(5)\libraries\zf_device" -I"H:\projectLib\visionCar-eight_Dev(5)\project\code" -I"H:\projectLib\visionCar-eight_Dev(5)\libraries\zf_driver" -std=gnu11 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@)" -c -o "$@" "$<"
	@	@
sdk/Peripheral/ch32v30x_dvp.o: H:/projectLib/visionCar-eight_Dev(5)/libraries/sdk/Peripheral/ch32v30x_dvp.c
	@	@	riscv-none-embed-gcc -march=rv32imafc -mabi=ilp32f -msmall-data-limit=8 -mno-save-restore -O0 -fmessage-length=0 -fsigned-char -ffunction-sections -fdata-sections -fno-common -pedantic -Wunused -Wuninitialized -Wall  -g -I"H:\projectLib\visionCar-eight_Dev(5)\Libraries\doc" -I"H:\projectLib\visionCar-eight_Dev(5)\libraries\sdk\Core" -I"H:\projectLib\visionCar-eight_Dev(5)\libraries\sdk\Ld" -I"H:\projectLib\visionCar-eight_Dev(5)\libraries\sdk\Peripheral" -I"H:\projectLib\visionCar-eight_Dev(5)\libraries\sdk\Startup" -I"H:\projectLib\visionCar-eight_Dev(5)\project\user\inc" -I"H:\projectLib\visionCar-eight_Dev(5)\libraries\zf_common" -I"H:\projectLib\visionCar-eight_Dev(5)\libraries\zf_device" -I"H:\projectLib\visionCar-eight_Dev(5)\project\code" -I"H:\projectLib\visionCar-eight_Dev(5)\libraries\zf_driver" -std=gnu11 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@)" -c -o "$@" "$<"
	@	@
sdk/Peripheral/ch32v30x_eth.o: H:/projectLib/visionCar-eight_Dev(5)/libraries/sdk/Peripheral/ch32v30x_eth.c
	@	@	riscv-none-embed-gcc -march=rv32imafc -mabi=ilp32f -msmall-data-limit=8 -mno-save-restore -O0 -fmessage-length=0 -fsigned-char -ffunction-sections -fdata-sections -fno-common -pedantic -Wunused -Wuninitialized -Wall  -g -I"H:\projectLib\visionCar-eight_Dev(5)\Libraries\doc" -I"H:\projectLib\visionCar-eight_Dev(5)\libraries\sdk\Core" -I"H:\projectLib\visionCar-eight_Dev(5)\libraries\sdk\Ld" -I"H:\projectLib\visionCar-eight_Dev(5)\libraries\sdk\Peripheral" -I"H:\projectLib\visionCar-eight_Dev(5)\libraries\sdk\Startup" -I"H:\projectLib\visionCar-eight_Dev(5)\project\user\inc" -I"H:\projectLib\visionCar-eight_Dev(5)\libraries\zf_common" -I"H:\projectLib\visionCar-eight_Dev(5)\libraries\zf_device" -I"H:\projectLib\visionCar-eight_Dev(5)\project\code" -I"H:\projectLib\visionCar-eight_Dev(5)\libraries\zf_driver" -std=gnu11 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@)" -c -o "$@" "$<"
	@	@
sdk/Peripheral/ch32v30x_exti.o: H:/projectLib/visionCar-eight_Dev(5)/libraries/sdk/Peripheral/ch32v30x_exti.c
	@	@	riscv-none-embed-gcc -march=rv32imafc -mabi=ilp32f -msmall-data-limit=8 -mno-save-restore -O0 -fmessage-length=0 -fsigned-char -ffunction-sections -fdata-sections -fno-common -pedantic -Wunused -Wuninitialized -Wall  -g -I"H:\projectLib\visionCar-eight_Dev(5)\Libraries\doc" -I"H:\projectLib\visionCar-eight_Dev(5)\libraries\sdk\Core" -I"H:\projectLib\visionCar-eight_Dev(5)\libraries\sdk\Ld" -I"H:\projectLib\visionCar-eight_Dev(5)\libraries\sdk\Peripheral" -I"H:\projectLib\visionCar-eight_Dev(5)\libraries\sdk\Startup" -I"H:\projectLib\visionCar-eight_Dev(5)\project\user\inc" -I"H:\projectLib\visionCar-eight_Dev(5)\libraries\zf_common" -I"H:\projectLib\visionCar-eight_Dev(5)\libraries\zf_device" -I"H:\projectLib\visionCar-eight_Dev(5)\project\code" -I"H:\projectLib\visionCar-eight_Dev(5)\libraries\zf_driver" -std=gnu11 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@)" -c -o "$@" "$<"
	@	@
sdk/Peripheral/ch32v30x_flash.o: H:/projectLib/visionCar-eight_Dev(5)/libraries/sdk/Peripheral/ch32v30x_flash.c
	@	@	riscv-none-embed-gcc -march=rv32imafc -mabi=ilp32f -msmall-data-limit=8 -mno-save-restore -O0 -fmessage-length=0 -fsigned-char -ffunction-sections -fdata-sections -fno-common -pedantic -Wunused -Wuninitialized -Wall  -g -I"H:\projectLib\visionCar-eight_Dev(5)\Libraries\doc" -I"H:\projectLib\visionCar-eight_Dev(5)\libraries\sdk\Core" -I"H:\projectLib\visionCar-eight_Dev(5)\libraries\sdk\Ld" -I"H:\projectLib\visionCar-eight_Dev(5)\libraries\sdk\Peripheral" -I"H:\projectLib\visionCar-eight_Dev(5)\libraries\sdk\Startup" -I"H:\projectLib\visionCar-eight_Dev(5)\project\user\inc" -I"H:\projectLib\visionCar-eight_Dev(5)\libraries\zf_common" -I"H:\projectLib\visionCar-eight_Dev(5)\libraries\zf_device" -I"H:\projectLib\visionCar-eight_Dev(5)\project\code" -I"H:\projectLib\visionCar-eight_Dev(5)\libraries\zf_driver" -std=gnu11 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@)" -c -o "$@" "$<"
	@	@
sdk/Peripheral/ch32v30x_fsmc.o: H:/projectLib/visionCar-eight_Dev(5)/libraries/sdk/Peripheral/ch32v30x_fsmc.c
	@	@	riscv-none-embed-gcc -march=rv32imafc -mabi=ilp32f -msmall-data-limit=8 -mno-save-restore -O0 -fmessage-length=0 -fsigned-char -ffunction-sections -fdata-sections -fno-common -pedantic -Wunused -Wuninitialized -Wall  -g -I"H:\projectLib\visionCar-eight_Dev(5)\Libraries\doc" -I"H:\projectLib\visionCar-eight_Dev(5)\libraries\sdk\Core" -I"H:\projectLib\visionCar-eight_Dev(5)\libraries\sdk\Ld" -I"H:\projectLib\visionCar-eight_Dev(5)\libraries\sdk\Peripheral" -I"H:\projectLib\visionCar-eight_Dev(5)\libraries\sdk\Startup" -I"H:\projectLib\visionCar-eight_Dev(5)\project\user\inc" -I"H:\projectLib\visionCar-eight_Dev(5)\libraries\zf_common" -I"H:\projectLib\visionCar-eight_Dev(5)\libraries\zf_device" -I"H:\projectLib\visionCar-eight_Dev(5)\project\code" -I"H:\projectLib\visionCar-eight_Dev(5)\libraries\zf_driver" -std=gnu11 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@)" -c -o "$@" "$<"
	@	@
sdk/Peripheral/ch32v30x_gpio.o: H:/projectLib/visionCar-eight_Dev(5)/libraries/sdk/Peripheral/ch32v30x_gpio.c
	@	@	riscv-none-embed-gcc -march=rv32imafc -mabi=ilp32f -msmall-data-limit=8 -mno-save-restore -O0 -fmessage-length=0 -fsigned-char -ffunction-sections -fdata-sections -fno-common -pedantic -Wunused -Wuninitialized -Wall  -g -I"H:\projectLib\visionCar-eight_Dev(5)\Libraries\doc" -I"H:\projectLib\visionCar-eight_Dev(5)\libraries\sdk\Core" -I"H:\projectLib\visionCar-eight_Dev(5)\libraries\sdk\Ld" -I"H:\projectLib\visionCar-eight_Dev(5)\libraries\sdk\Peripheral" -I"H:\projectLib\visionCar-eight_Dev(5)\libraries\sdk\Startup" -I"H:\projectLib\visionCar-eight_Dev(5)\project\user\inc" -I"H:\projectLib\visionCar-eight_Dev(5)\libraries\zf_common" -I"H:\projectLib\visionCar-eight_Dev(5)\libraries\zf_device" -I"H:\projectLib\visionCar-eight_Dev(5)\project\code" -I"H:\projectLib\visionCar-eight_Dev(5)\libraries\zf_driver" -std=gnu11 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@)" -c -o "$@" "$<"
	@	@
sdk/Peripheral/ch32v30x_i2c.o: H:/projectLib/visionCar-eight_Dev(5)/libraries/sdk/Peripheral/ch32v30x_i2c.c
	@	@	riscv-none-embed-gcc -march=rv32imafc -mabi=ilp32f -msmall-data-limit=8 -mno-save-restore -O0 -fmessage-length=0 -fsigned-char -ffunction-sections -fdata-sections -fno-common -pedantic -Wunused -Wuninitialized -Wall  -g -I"H:\projectLib\visionCar-eight_Dev(5)\Libraries\doc" -I"H:\projectLib\visionCar-eight_Dev(5)\libraries\sdk\Core" -I"H:\projectLib\visionCar-eight_Dev(5)\libraries\sdk\Ld" -I"H:\projectLib\visionCar-eight_Dev(5)\libraries\sdk\Peripheral" -I"H:\projectLib\visionCar-eight_Dev(5)\libraries\sdk\Startup" -I"H:\projectLib\visionCar-eight_Dev(5)\project\user\inc" -I"H:\projectLib\visionCar-eight_Dev(5)\libraries\zf_common" -I"H:\projectLib\visionCar-eight_Dev(5)\libraries\zf_device" -I"H:\projectLib\visionCar-eight_Dev(5)\project\code" -I"H:\projectLib\visionCar-eight_Dev(5)\libraries\zf_driver" -std=gnu11 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@)" -c -o "$@" "$<"
	@	@
sdk/Peripheral/ch32v30x_iwdg.o: H:/projectLib/visionCar-eight_Dev(5)/libraries/sdk/Peripheral/ch32v30x_iwdg.c
	@	@	riscv-none-embed-gcc -march=rv32imafc -mabi=ilp32f -msmall-data-limit=8 -mno-save-restore -O0 -fmessage-length=0 -fsigned-char -ffunction-sections -fdata-sections -fno-common -pedantic -Wunused -Wuninitialized -Wall  -g -I"H:\projectLib\visionCar-eight_Dev(5)\Libraries\doc" -I"H:\projectLib\visionCar-eight_Dev(5)\libraries\sdk\Core" -I"H:\projectLib\visionCar-eight_Dev(5)\libraries\sdk\Ld" -I"H:\projectLib\visionCar-eight_Dev(5)\libraries\sdk\Peripheral" -I"H:\projectLib\visionCar-eight_Dev(5)\libraries\sdk\Startup" -I"H:\projectLib\visionCar-eight_Dev(5)\project\user\inc" -I"H:\projectLib\visionCar-eight_Dev(5)\libraries\zf_common" -I"H:\projectLib\visionCar-eight_Dev(5)\libraries\zf_device" -I"H:\projectLib\visionCar-eight_Dev(5)\project\code" -I"H:\projectLib\visionCar-eight_Dev(5)\libraries\zf_driver" -std=gnu11 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@)" -c -o "$@" "$<"
	@	@
sdk/Peripheral/ch32v30x_opa.o: H:/projectLib/visionCar-eight_Dev(5)/libraries/sdk/Peripheral/ch32v30x_opa.c
	@	@	riscv-none-embed-gcc -march=rv32imafc -mabi=ilp32f -msmall-data-limit=8 -mno-save-restore -O0 -fmessage-length=0 -fsigned-char -ffunction-sections -fdata-sections -fno-common -pedantic -Wunused -Wuninitialized -Wall  -g -I"H:\projectLib\visionCar-eight_Dev(5)\Libraries\doc" -I"H:\projectLib\visionCar-eight_Dev(5)\libraries\sdk\Core" -I"H:\projectLib\visionCar-eight_Dev(5)\libraries\sdk\Ld" -I"H:\projectLib\visionCar-eight_Dev(5)\libraries\sdk\Peripheral" -I"H:\projectLib\visionCar-eight_Dev(5)\libraries\sdk\Startup" -I"H:\projectLib\visionCar-eight_Dev(5)\project\user\inc" -I"H:\projectLib\visionCar-eight_Dev(5)\libraries\zf_common" -I"H:\projectLib\visionCar-eight_Dev(5)\libraries\zf_device" -I"H:\projectLib\visionCar-eight_Dev(5)\project\code" -I"H:\projectLib\visionCar-eight_Dev(5)\libraries\zf_driver" -std=gnu11 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@)" -c -o "$@" "$<"
	@	@
sdk/Peripheral/ch32v30x_pwr.o: H:/projectLib/visionCar-eight_Dev(5)/libraries/sdk/Peripheral/ch32v30x_pwr.c
	@	@	riscv-none-embed-gcc -march=rv32imafc -mabi=ilp32f -msmall-data-limit=8 -mno-save-restore -O0 -fmessage-length=0 -fsigned-char -ffunction-sections -fdata-sections -fno-common -pedantic -Wunused -Wuninitialized -Wall  -g -I"H:\projectLib\visionCar-eight_Dev(5)\Libraries\doc" -I"H:\projectLib\visionCar-eight_Dev(5)\libraries\sdk\Core" -I"H:\projectLib\visionCar-eight_Dev(5)\libraries\sdk\Ld" -I"H:\projectLib\visionCar-eight_Dev(5)\libraries\sdk\Peripheral" -I"H:\projectLib\visionCar-eight_Dev(5)\libraries\sdk\Startup" -I"H:\projectLib\visionCar-eight_Dev(5)\project\user\inc" -I"H:\projectLib\visionCar-eight_Dev(5)\libraries\zf_common" -I"H:\projectLib\visionCar-eight_Dev(5)\libraries\zf_device" -I"H:\projectLib\visionCar-eight_Dev(5)\project\code" -I"H:\projectLib\visionCar-eight_Dev(5)\libraries\zf_driver" -std=gnu11 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@)" -c -o "$@" "$<"
	@	@
sdk/Peripheral/ch32v30x_rcc.o: H:/projectLib/visionCar-eight_Dev(5)/libraries/sdk/Peripheral/ch32v30x_rcc.c
	@	@	riscv-none-embed-gcc -march=rv32imafc -mabi=ilp32f -msmall-data-limit=8 -mno-save-restore -O0 -fmessage-length=0 -fsigned-char -ffunction-sections -fdata-sections -fno-common -pedantic -Wunused -Wuninitialized -Wall  -g -I"H:\projectLib\visionCar-eight_Dev(5)\Libraries\doc" -I"H:\projectLib\visionCar-eight_Dev(5)\libraries\sdk\Core" -I"H:\projectLib\visionCar-eight_Dev(5)\libraries\sdk\Ld" -I"H:\projectLib\visionCar-eight_Dev(5)\libraries\sdk\Peripheral" -I"H:\projectLib\visionCar-eight_Dev(5)\libraries\sdk\Startup" -I"H:\projectLib\visionCar-eight_Dev(5)\project\user\inc" -I"H:\projectLib\visionCar-eight_Dev(5)\libraries\zf_common" -I"H:\projectLib\visionCar-eight_Dev(5)\libraries\zf_device" -I"H:\projectLib\visionCar-eight_Dev(5)\project\code" -I"H:\projectLib\visionCar-eight_Dev(5)\libraries\zf_driver" -std=gnu11 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@)" -c -o "$@" "$<"
	@	@
sdk/Peripheral/ch32v30x_rng.o: H:/projectLib/visionCar-eight_Dev(5)/libraries/sdk/Peripheral/ch32v30x_rng.c
	@	@	riscv-none-embed-gcc -march=rv32imafc -mabi=ilp32f -msmall-data-limit=8 -mno-save-restore -O0 -fmessage-length=0 -fsigned-char -ffunction-sections -fdata-sections -fno-common -pedantic -Wunused -Wuninitialized -Wall  -g -I"H:\projectLib\visionCar-eight_Dev(5)\Libraries\doc" -I"H:\projectLib\visionCar-eight_Dev(5)\libraries\sdk\Core" -I"H:\projectLib\visionCar-eight_Dev(5)\libraries\sdk\Ld" -I"H:\projectLib\visionCar-eight_Dev(5)\libraries\sdk\Peripheral" -I"H:\projectLib\visionCar-eight_Dev(5)\libraries\sdk\Startup" -I"H:\projectLib\visionCar-eight_Dev(5)\project\user\inc" -I"H:\projectLib\visionCar-eight_Dev(5)\libraries\zf_common" -I"H:\projectLib\visionCar-eight_Dev(5)\libraries\zf_device" -I"H:\projectLib\visionCar-eight_Dev(5)\project\code" -I"H:\projectLib\visionCar-eight_Dev(5)\libraries\zf_driver" -std=gnu11 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@)" -c -o "$@" "$<"
	@	@
sdk/Peripheral/ch32v30x_rtc.o: H:/projectLib/visionCar-eight_Dev(5)/libraries/sdk/Peripheral/ch32v30x_rtc.c
	@	@	riscv-none-embed-gcc -march=rv32imafc -mabi=ilp32f -msmall-data-limit=8 -mno-save-restore -O0 -fmessage-length=0 -fsigned-char -ffunction-sections -fdata-sections -fno-common -pedantic -Wunused -Wuninitialized -Wall  -g -I"H:\projectLib\visionCar-eight_Dev(5)\Libraries\doc" -I"H:\projectLib\visionCar-eight_Dev(5)\libraries\sdk\Core" -I"H:\projectLib\visionCar-eight_Dev(5)\libraries\sdk\Ld" -I"H:\projectLib\visionCar-eight_Dev(5)\libraries\sdk\Peripheral" -I"H:\projectLib\visionCar-eight_Dev(5)\libraries\sdk\Startup" -I"H:\projectLib\visionCar-eight_Dev(5)\project\user\inc" -I"H:\projectLib\visionCar-eight_Dev(5)\libraries\zf_common" -I"H:\projectLib\visionCar-eight_Dev(5)\libraries\zf_device" -I"H:\projectLib\visionCar-eight_Dev(5)\project\code" -I"H:\projectLib\visionCar-eight_Dev(5)\libraries\zf_driver" -std=gnu11 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@)" -c -o "$@" "$<"
	@	@
sdk/Peripheral/ch32v30x_sdio.o: H:/projectLib/visionCar-eight_Dev(5)/libraries/sdk/Peripheral/ch32v30x_sdio.c
	@	@	riscv-none-embed-gcc -march=rv32imafc -mabi=ilp32f -msmall-data-limit=8 -mno-save-restore -O0 -fmessage-length=0 -fsigned-char -ffunction-sections -fdata-sections -fno-common -pedantic -Wunused -Wuninitialized -Wall  -g -I"H:\projectLib\visionCar-eight_Dev(5)\Libraries\doc" -I"H:\projectLib\visionCar-eight_Dev(5)\libraries\sdk\Core" -I"H:\projectLib\visionCar-eight_Dev(5)\libraries\sdk\Ld" -I"H:\projectLib\visionCar-eight_Dev(5)\libraries\sdk\Peripheral" -I"H:\projectLib\visionCar-eight_Dev(5)\libraries\sdk\Startup" -I"H:\projectLib\visionCar-eight_Dev(5)\project\user\inc" -I"H:\projectLib\visionCar-eight_Dev(5)\libraries\zf_common" -I"H:\projectLib\visionCar-eight_Dev(5)\libraries\zf_device" -I"H:\projectLib\visionCar-eight_Dev(5)\project\code" -I"H:\projectLib\visionCar-eight_Dev(5)\libraries\zf_driver" -std=gnu11 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@)" -c -o "$@" "$<"
	@	@
sdk/Peripheral/ch32v30x_spi.o: H:/projectLib/visionCar-eight_Dev(5)/libraries/sdk/Peripheral/ch32v30x_spi.c
	@	@	riscv-none-embed-gcc -march=rv32imafc -mabi=ilp32f -msmall-data-limit=8 -mno-save-restore -O0 -fmessage-length=0 -fsigned-char -ffunction-sections -fdata-sections -fno-common -pedantic -Wunused -Wuninitialized -Wall  -g -I"H:\projectLib\visionCar-eight_Dev(5)\Libraries\doc" -I"H:\projectLib\visionCar-eight_Dev(5)\libraries\sdk\Core" -I"H:\projectLib\visionCar-eight_Dev(5)\libraries\sdk\Ld" -I"H:\projectLib\visionCar-eight_Dev(5)\libraries\sdk\Peripheral" -I"H:\projectLib\visionCar-eight_Dev(5)\libraries\sdk\Startup" -I"H:\projectLib\visionCar-eight_Dev(5)\project\user\inc" -I"H:\projectLib\visionCar-eight_Dev(5)\libraries\zf_common" -I"H:\projectLib\visionCar-eight_Dev(5)\libraries\zf_device" -I"H:\projectLib\visionCar-eight_Dev(5)\project\code" -I"H:\projectLib\visionCar-eight_Dev(5)\libraries\zf_driver" -std=gnu11 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@)" -c -o "$@" "$<"
	@	@
sdk/Peripheral/ch32v30x_tim.o: H:/projectLib/visionCar-eight_Dev(5)/libraries/sdk/Peripheral/ch32v30x_tim.c
	@	@	riscv-none-embed-gcc -march=rv32imafc -mabi=ilp32f -msmall-data-limit=8 -mno-save-restore -O0 -fmessage-length=0 -fsigned-char -ffunction-sections -fdata-sections -fno-common -pedantic -Wunused -Wuninitialized -Wall  -g -I"H:\projectLib\visionCar-eight_Dev(5)\Libraries\doc" -I"H:\projectLib\visionCar-eight_Dev(5)\libraries\sdk\Core" -I"H:\projectLib\visionCar-eight_Dev(5)\libraries\sdk\Ld" -I"H:\projectLib\visionCar-eight_Dev(5)\libraries\sdk\Peripheral" -I"H:\projectLib\visionCar-eight_Dev(5)\libraries\sdk\Startup" -I"H:\projectLib\visionCar-eight_Dev(5)\project\user\inc" -I"H:\projectLib\visionCar-eight_Dev(5)\libraries\zf_common" -I"H:\projectLib\visionCar-eight_Dev(5)\libraries\zf_device" -I"H:\projectLib\visionCar-eight_Dev(5)\project\code" -I"H:\projectLib\visionCar-eight_Dev(5)\libraries\zf_driver" -std=gnu11 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@)" -c -o "$@" "$<"
	@	@
sdk/Peripheral/ch32v30x_usart.o: H:/projectLib/visionCar-eight_Dev(5)/libraries/sdk/Peripheral/ch32v30x_usart.c
	@	@	riscv-none-embed-gcc -march=rv32imafc -mabi=ilp32f -msmall-data-limit=8 -mno-save-restore -O0 -fmessage-length=0 -fsigned-char -ffunction-sections -fdata-sections -fno-common -pedantic -Wunused -Wuninitialized -Wall  -g -I"H:\projectLib\visionCar-eight_Dev(5)\Libraries\doc" -I"H:\projectLib\visionCar-eight_Dev(5)\libraries\sdk\Core" -I"H:\projectLib\visionCar-eight_Dev(5)\libraries\sdk\Ld" -I"H:\projectLib\visionCar-eight_Dev(5)\libraries\sdk\Peripheral" -I"H:\projectLib\visionCar-eight_Dev(5)\libraries\sdk\Startup" -I"H:\projectLib\visionCar-eight_Dev(5)\project\user\inc" -I"H:\projectLib\visionCar-eight_Dev(5)\libraries\zf_common" -I"H:\projectLib\visionCar-eight_Dev(5)\libraries\zf_device" -I"H:\projectLib\visionCar-eight_Dev(5)\project\code" -I"H:\projectLib\visionCar-eight_Dev(5)\libraries\zf_driver" -std=gnu11 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@)" -c -o "$@" "$<"
	@	@
sdk/Peripheral/ch32v30x_usbotg_device.o: H:/projectLib/visionCar-eight_Dev(5)/libraries/sdk/Peripheral/ch32v30x_usbotg_device.c
	@	@	riscv-none-embed-gcc -march=rv32imafc -mabi=ilp32f -msmall-data-limit=8 -mno-save-restore -O0 -fmessage-length=0 -fsigned-char -ffunction-sections -fdata-sections -fno-common -pedantic -Wunused -Wuninitialized -Wall  -g -I"H:\projectLib\visionCar-eight_Dev(5)\Libraries\doc" -I"H:\projectLib\visionCar-eight_Dev(5)\libraries\sdk\Core" -I"H:\projectLib\visionCar-eight_Dev(5)\libraries\sdk\Ld" -I"H:\projectLib\visionCar-eight_Dev(5)\libraries\sdk\Peripheral" -I"H:\projectLib\visionCar-eight_Dev(5)\libraries\sdk\Startup" -I"H:\projectLib\visionCar-eight_Dev(5)\project\user\inc" -I"H:\projectLib\visionCar-eight_Dev(5)\libraries\zf_common" -I"H:\projectLib\visionCar-eight_Dev(5)\libraries\zf_device" -I"H:\projectLib\visionCar-eight_Dev(5)\project\code" -I"H:\projectLib\visionCar-eight_Dev(5)\libraries\zf_driver" -std=gnu11 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@)" -c -o "$@" "$<"
	@	@
sdk/Peripheral/ch32v30x_wwdg.o: H:/projectLib/visionCar-eight_Dev(5)/libraries/sdk/Peripheral/ch32v30x_wwdg.c
	@	@	riscv-none-embed-gcc -march=rv32imafc -mabi=ilp32f -msmall-data-limit=8 -mno-save-restore -O0 -fmessage-length=0 -fsigned-char -ffunction-sections -fdata-sections -fno-common -pedantic -Wunused -Wuninitialized -Wall  -g -I"H:\projectLib\visionCar-eight_Dev(5)\Libraries\doc" -I"H:\projectLib\visionCar-eight_Dev(5)\libraries\sdk\Core" -I"H:\projectLib\visionCar-eight_Dev(5)\libraries\sdk\Ld" -I"H:\projectLib\visionCar-eight_Dev(5)\libraries\sdk\Peripheral" -I"H:\projectLib\visionCar-eight_Dev(5)\libraries\sdk\Startup" -I"H:\projectLib\visionCar-eight_Dev(5)\project\user\inc" -I"H:\projectLib\visionCar-eight_Dev(5)\libraries\zf_common" -I"H:\projectLib\visionCar-eight_Dev(5)\libraries\zf_device" -I"H:\projectLib\visionCar-eight_Dev(5)\project\code" -I"H:\projectLib\visionCar-eight_Dev(5)\libraries\zf_driver" -std=gnu11 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@)" -c -o "$@" "$<"
	@	@

