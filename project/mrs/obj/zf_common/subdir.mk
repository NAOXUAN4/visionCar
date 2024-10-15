################################################################################
# MRS Version: 1.9.1
# 自动生成的文件。不要编辑！
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
H:/projectLib/visionCar-eight_Dev(5)/libraries/zf_common/zf_common_clock.c \
H:/projectLib/visionCar-eight_Dev(5)/libraries/zf_common/zf_common_debug.c \
H:/projectLib/visionCar-eight_Dev(5)/libraries/zf_common/zf_common_fifo.c \
H:/projectLib/visionCar-eight_Dev(5)/libraries/zf_common/zf_common_font.c \
H:/projectLib/visionCar-eight_Dev(5)/libraries/zf_common/zf_common_function.c \
H:/projectLib/visionCar-eight_Dev(5)/libraries/zf_common/zf_common_interrupt.c 

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
zf_common/zf_common_clock.o: H:/projectLib/visionCar-eight_Dev(5)/libraries/zf_common/zf_common_clock.c
	@	@	riscv-none-embed-gcc -march=rv32imafc -mabi=ilp32f -msmall-data-limit=8 -mno-save-restore -O0 -fmessage-length=0 -fsigned-char -ffunction-sections -fdata-sections -fno-common -pedantic -Wunused -Wuninitialized -Wall  -g -I"H:\projectLib\visionCar-eight_Dev(5)\Libraries\doc" -I"H:\projectLib\visionCar-eight_Dev(5)\libraries\sdk\Core" -I"H:\projectLib\visionCar-eight_Dev(5)\libraries\sdk\Ld" -I"H:\projectLib\visionCar-eight_Dev(5)\libraries\sdk\Peripheral" -I"H:\projectLib\visionCar-eight_Dev(5)\libraries\sdk\Startup" -I"H:\projectLib\visionCar-eight_Dev(5)\project\user\inc" -I"H:\projectLib\visionCar-eight_Dev(5)\libraries\zf_common" -I"H:\projectLib\visionCar-eight_Dev(5)\libraries\zf_device" -I"H:\projectLib\visionCar-eight_Dev(5)\project\code" -I"H:\projectLib\visionCar-eight_Dev(5)\libraries\zf_driver" -std=gnu11 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@)" -c -o "$@" "$<"
	@	@
zf_common/zf_common_debug.o: H:/projectLib/visionCar-eight_Dev(5)/libraries/zf_common/zf_common_debug.c
	@	@	riscv-none-embed-gcc -march=rv32imafc -mabi=ilp32f -msmall-data-limit=8 -mno-save-restore -O0 -fmessage-length=0 -fsigned-char -ffunction-sections -fdata-sections -fno-common -pedantic -Wunused -Wuninitialized -Wall  -g -I"H:\projectLib\visionCar-eight_Dev(5)\Libraries\doc" -I"H:\projectLib\visionCar-eight_Dev(5)\libraries\sdk\Core" -I"H:\projectLib\visionCar-eight_Dev(5)\libraries\sdk\Ld" -I"H:\projectLib\visionCar-eight_Dev(5)\libraries\sdk\Peripheral" -I"H:\projectLib\visionCar-eight_Dev(5)\libraries\sdk\Startup" -I"H:\projectLib\visionCar-eight_Dev(5)\project\user\inc" -I"H:\projectLib\visionCar-eight_Dev(5)\libraries\zf_common" -I"H:\projectLib\visionCar-eight_Dev(5)\libraries\zf_device" -I"H:\projectLib\visionCar-eight_Dev(5)\project\code" -I"H:\projectLib\visionCar-eight_Dev(5)\libraries\zf_driver" -std=gnu11 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@)" -c -o "$@" "$<"
	@	@
zf_common/zf_common_fifo.o: H:/projectLib/visionCar-eight_Dev(5)/libraries/zf_common/zf_common_fifo.c
	@	@	riscv-none-embed-gcc -march=rv32imafc -mabi=ilp32f -msmall-data-limit=8 -mno-save-restore -O0 -fmessage-length=0 -fsigned-char -ffunction-sections -fdata-sections -fno-common -pedantic -Wunused -Wuninitialized -Wall  -g -I"H:\projectLib\visionCar-eight_Dev(5)\Libraries\doc" -I"H:\projectLib\visionCar-eight_Dev(5)\libraries\sdk\Core" -I"H:\projectLib\visionCar-eight_Dev(5)\libraries\sdk\Ld" -I"H:\projectLib\visionCar-eight_Dev(5)\libraries\sdk\Peripheral" -I"H:\projectLib\visionCar-eight_Dev(5)\libraries\sdk\Startup" -I"H:\projectLib\visionCar-eight_Dev(5)\project\user\inc" -I"H:\projectLib\visionCar-eight_Dev(5)\libraries\zf_common" -I"H:\projectLib\visionCar-eight_Dev(5)\libraries\zf_device" -I"H:\projectLib\visionCar-eight_Dev(5)\project\code" -I"H:\projectLib\visionCar-eight_Dev(5)\libraries\zf_driver" -std=gnu11 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@)" -c -o "$@" "$<"
	@	@
zf_common/zf_common_font.o: H:/projectLib/visionCar-eight_Dev(5)/libraries/zf_common/zf_common_font.c
	@	@	riscv-none-embed-gcc -march=rv32imafc -mabi=ilp32f -msmall-data-limit=8 -mno-save-restore -O0 -fmessage-length=0 -fsigned-char -ffunction-sections -fdata-sections -fno-common -pedantic -Wunused -Wuninitialized -Wall  -g -I"H:\projectLib\visionCar-eight_Dev(5)\Libraries\doc" -I"H:\projectLib\visionCar-eight_Dev(5)\libraries\sdk\Core" -I"H:\projectLib\visionCar-eight_Dev(5)\libraries\sdk\Ld" -I"H:\projectLib\visionCar-eight_Dev(5)\libraries\sdk\Peripheral" -I"H:\projectLib\visionCar-eight_Dev(5)\libraries\sdk\Startup" -I"H:\projectLib\visionCar-eight_Dev(5)\project\user\inc" -I"H:\projectLib\visionCar-eight_Dev(5)\libraries\zf_common" -I"H:\projectLib\visionCar-eight_Dev(5)\libraries\zf_device" -I"H:\projectLib\visionCar-eight_Dev(5)\project\code" -I"H:\projectLib\visionCar-eight_Dev(5)\libraries\zf_driver" -std=gnu11 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@)" -c -o "$@" "$<"
	@	@
zf_common/zf_common_function.o: H:/projectLib/visionCar-eight_Dev(5)/libraries/zf_common/zf_common_function.c
	@	@	riscv-none-embed-gcc -march=rv32imafc -mabi=ilp32f -msmall-data-limit=8 -mno-save-restore -O0 -fmessage-length=0 -fsigned-char -ffunction-sections -fdata-sections -fno-common -pedantic -Wunused -Wuninitialized -Wall  -g -I"H:\projectLib\visionCar-eight_Dev(5)\Libraries\doc" -I"H:\projectLib\visionCar-eight_Dev(5)\libraries\sdk\Core" -I"H:\projectLib\visionCar-eight_Dev(5)\libraries\sdk\Ld" -I"H:\projectLib\visionCar-eight_Dev(5)\libraries\sdk\Peripheral" -I"H:\projectLib\visionCar-eight_Dev(5)\libraries\sdk\Startup" -I"H:\projectLib\visionCar-eight_Dev(5)\project\user\inc" -I"H:\projectLib\visionCar-eight_Dev(5)\libraries\zf_common" -I"H:\projectLib\visionCar-eight_Dev(5)\libraries\zf_device" -I"H:\projectLib\visionCar-eight_Dev(5)\project\code" -I"H:\projectLib\visionCar-eight_Dev(5)\libraries\zf_driver" -std=gnu11 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@)" -c -o "$@" "$<"
	@	@
zf_common/zf_common_interrupt.o: H:/projectLib/visionCar-eight_Dev(5)/libraries/zf_common/zf_common_interrupt.c
	@	@	riscv-none-embed-gcc -march=rv32imafc -mabi=ilp32f -msmall-data-limit=8 -mno-save-restore -O0 -fmessage-length=0 -fsigned-char -ffunction-sections -fdata-sections -fno-common -pedantic -Wunused -Wuninitialized -Wall  -g -I"H:\projectLib\visionCar-eight_Dev(5)\Libraries\doc" -I"H:\projectLib\visionCar-eight_Dev(5)\libraries\sdk\Core" -I"H:\projectLib\visionCar-eight_Dev(5)\libraries\sdk\Ld" -I"H:\projectLib\visionCar-eight_Dev(5)\libraries\sdk\Peripheral" -I"H:\projectLib\visionCar-eight_Dev(5)\libraries\sdk\Startup" -I"H:\projectLib\visionCar-eight_Dev(5)\project\user\inc" -I"H:\projectLib\visionCar-eight_Dev(5)\libraries\zf_common" -I"H:\projectLib\visionCar-eight_Dev(5)\libraries\zf_device" -I"H:\projectLib\visionCar-eight_Dev(5)\project\code" -I"H:\projectLib\visionCar-eight_Dev(5)\libraries\zf_driver" -std=gnu11 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@)" -c -o "$@" "$<"
	@	@

