################################################################################
# MRS Version: 1.9.1
# 自动生成的文件。不要编辑！
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
H:/projectLib/visionCar-eight_Dev(5)/libraries/sdk/Core/core_riscv.c 

OBJS += \
./sdk/Core/core_riscv.o 

C_DEPS += \
./sdk/Core/core_riscv.d 


# Each subdirectory must supply rules for building sources it contributes
sdk/Core/core_riscv.o: H:/projectLib/visionCar-eight_Dev(5)/libraries/sdk/Core/core_riscv.c
	@	@	riscv-none-embed-gcc -march=rv32imafc -mabi=ilp32f -msmall-data-limit=8 -mno-save-restore -O0 -fmessage-length=0 -fsigned-char -ffunction-sections -fdata-sections -fno-common -pedantic -Wunused -Wuninitialized -Wall  -g -I"H:\projectLib\visionCar-eight_Dev(5)\Libraries\doc" -I"H:\projectLib\visionCar-eight_Dev(5)\libraries\sdk\Core" -I"H:\projectLib\visionCar-eight_Dev(5)\libraries\sdk\Ld" -I"H:\projectLib\visionCar-eight_Dev(5)\libraries\sdk\Peripheral" -I"H:\projectLib\visionCar-eight_Dev(5)\libraries\sdk\Startup" -I"H:\projectLib\visionCar-eight_Dev(5)\project\user\inc" -I"H:\projectLib\visionCar-eight_Dev(5)\libraries\zf_common" -I"H:\projectLib\visionCar-eight_Dev(5)\libraries\zf_device" -I"H:\projectLib\visionCar-eight_Dev(5)\project\code" -I"H:\projectLib\visionCar-eight_Dev(5)\libraries\zf_driver" -std=gnu11 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@)" -c -o "$@" "$<"
	@	@

