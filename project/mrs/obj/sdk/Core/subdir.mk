################################################################################
# MRS Version: 1.9.1
# 自动生成的文件。不要编辑！
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
E:/proJectLibrary/cybercar/2024_10_08_project/libraries/sdk/Core/core_riscv.c 

OBJS += \
./sdk/Core/core_riscv.o 

C_DEPS += \
./sdk/Core/core_riscv.d 


# Each subdirectory must supply rules for building sources it contributes
sdk/Core/core_riscv.o: E:/proJectLibrary/cybercar/2024_10_08_project/libraries/sdk/Core/core_riscv.c
	@	@	riscv-none-embed-gcc -march=rv32imafc -mabi=ilp32f -msmall-data-limit=8 -mno-save-restore -O0 -fmessage-length=0 -fsigned-char -ffunction-sections -fdata-sections -fno-common -pedantic -Wunused -Wuninitialized -Wall  -g -I"E:\proJectLibrary\cybercar\2024_10_08_project\Libraries\doc" -I"E:\proJectLibrary\cybercar\2024_10_08_project\libraries\sdk\Core" -I"E:\proJectLibrary\cybercar\2024_10_08_project\libraries\sdk\Ld" -I"E:\proJectLibrary\cybercar\2024_10_08_project\libraries\sdk\Peripheral" -I"E:\proJectLibrary\cybercar\2024_10_08_project\libraries\sdk\Startup" -I"E:\proJectLibrary\cybercar\2024_10_08_project\project\user\inc" -I"E:\proJectLibrary\cybercar\2024_10_08_project\libraries\zf_common" -I"E:\proJectLibrary\cybercar\2024_10_08_project\libraries\zf_device" -I"E:\proJectLibrary\cybercar\2024_10_08_project\project\code" -I"E:\proJectLibrary\cybercar\2024_10_08_project\libraries\zf_driver" -std=gnu11 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@)" -c -o "$@" "$<"
	@	@

