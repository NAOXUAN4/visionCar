################################################################################
# MRS Version: 1.9.2
# 自动生成的文件。不要编辑！
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
H:/projectLib/visionCar_v1.0/project/code/function/lib/Slope_Calculate.c \
H:/projectLib/visionCar_v1.0/project/code/function/lib/kernel_smooth.c 

OBJS += \
./code/function/lib/Slope_Calculate.o \
./code/function/lib/kernel_smooth.o 

C_DEPS += \
./code/function/lib/Slope_Calculate.d \
./code/function/lib/kernel_smooth.d 


# Each subdirectory must supply rules for building sources it contributes
code/function/lib/Slope_Calculate.o: H:/projectLib/visionCar_v1.0/project/code/function/lib/Slope_Calculate.c
	@	@	riscv-none-embed-gcc -march=rv32imafc -mabi=ilp32f -msmall-data-limit=8 -mno-save-restore -O0 -fmessage-length=0 -fsigned-char -ffunction-sections -fdata-sections -fno-common -pedantic -Wunused -Wuninitialized -Wall  -g -I"H:\projectLib\visionCar_v1.0\Libraries\doc" -I"H:\projectLib\visionCar_v1.0\libraries\sdk\Core" -I"H:\projectLib\visionCar_v1.0\libraries\sdk\Ld" -I"H:\projectLib\visionCar_v1.0\libraries\sdk\Peripheral" -I"H:\projectLib\visionCar_v1.0\libraries\sdk\Startup" -I"H:\projectLib\visionCar_v1.0\project\user\inc" -I"H:\projectLib\visionCar_v1.0\libraries\zf_common" -I"H:\projectLib\visionCar_v1.0\libraries\zf_device" -I"H:\projectLib\visionCar_v1.0\project\code" -I"H:\projectLib\visionCar_v1.0\libraries\zf_driver" -std=gnu11 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@)" -c -o "$@" "$<"
	@	@
code/function/lib/kernel_smooth.o: H:/projectLib/visionCar_v1.0/project/code/function/lib/kernel_smooth.c
	@	@	riscv-none-embed-gcc -march=rv32imafc -mabi=ilp32f -msmall-data-limit=8 -mno-save-restore -O0 -fmessage-length=0 -fsigned-char -ffunction-sections -fdata-sections -fno-common -pedantic -Wunused -Wuninitialized -Wall  -g -I"H:\projectLib\visionCar_v1.0\Libraries\doc" -I"H:\projectLib\visionCar_v1.0\libraries\sdk\Core" -I"H:\projectLib\visionCar_v1.0\libraries\sdk\Ld" -I"H:\projectLib\visionCar_v1.0\libraries\sdk\Peripheral" -I"H:\projectLib\visionCar_v1.0\libraries\sdk\Startup" -I"H:\projectLib\visionCar_v1.0\project\user\inc" -I"H:\projectLib\visionCar_v1.0\libraries\zf_common" -I"H:\projectLib\visionCar_v1.0\libraries\zf_device" -I"H:\projectLib\visionCar_v1.0\project\code" -I"H:\projectLib\visionCar_v1.0\libraries\zf_driver" -std=gnu11 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@)" -c -o "$@" "$<"
	@	@

