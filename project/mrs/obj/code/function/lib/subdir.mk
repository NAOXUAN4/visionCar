################################################################################
# MRS Version: 1.9.1
# 自动生成的文件。不要编辑！
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
E:/proJectLibrary/cybercar/visionCar-eight_Dev(2)/project/code/function/lib/Slope_Calculate.c \
E:/proJectLibrary/cybercar/visionCar-eight_Dev(2)/project/code/function/lib/kernel_smooth.c 

OBJS += \
./code/function/lib/Slope_Calculate.o \
./code/function/lib/kernel_smooth.o 

C_DEPS += \
./code/function/lib/Slope_Calculate.d \
./code/function/lib/kernel_smooth.d 


# Each subdirectory must supply rules for building sources it contributes
code/function/lib/Slope_Calculate.o: E:/proJectLibrary/cybercar/visionCar-eight_Dev(2)/project/code/function/lib/Slope_Calculate.c
	@	@	riscv-none-embed-gcc -march=rv32imafc -mabi=ilp32f -msmall-data-limit=8 -mno-save-restore -O0 -fmessage-length=0 -fsigned-char -ffunction-sections -fdata-sections -fno-common -pedantic -Wunused -Wuninitialized -Wall  -g -I"E:\proJectLibrary\cybercar\visionCar-eight_Dev(2)\Libraries\doc" -I"E:\proJectLibrary\cybercar\visionCar-eight_Dev(2)\libraries\sdk\Core" -I"E:\proJectLibrary\cybercar\visionCar-eight_Dev(2)\libraries\sdk\Ld" -I"E:\proJectLibrary\cybercar\visionCar-eight_Dev(2)\libraries\sdk\Peripheral" -I"E:\proJectLibrary\cybercar\visionCar-eight_Dev(2)\libraries\sdk\Startup" -I"E:\proJectLibrary\cybercar\visionCar-eight_Dev(2)\project\user\inc" -I"E:\proJectLibrary\cybercar\visionCar-eight_Dev(2)\libraries\zf_common" -I"E:\proJectLibrary\cybercar\visionCar-eight_Dev(2)\libraries\zf_device" -I"E:\proJectLibrary\cybercar\visionCar-eight_Dev(2)\project\code" -I"E:\proJectLibrary\cybercar\visionCar-eight_Dev(2)\libraries\zf_driver" -std=gnu11 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@)" -c -o "$@" "$<"
	@	@
code/function/lib/kernel_smooth.o: E:/proJectLibrary/cybercar/visionCar-eight_Dev(2)/project/code/function/lib/kernel_smooth.c
	@	@	riscv-none-embed-gcc -march=rv32imafc -mabi=ilp32f -msmall-data-limit=8 -mno-save-restore -O0 -fmessage-length=0 -fsigned-char -ffunction-sections -fdata-sections -fno-common -pedantic -Wunused -Wuninitialized -Wall  -g -I"E:\proJectLibrary\cybercar\visionCar-eight_Dev(2)\Libraries\doc" -I"E:\proJectLibrary\cybercar\visionCar-eight_Dev(2)\libraries\sdk\Core" -I"E:\proJectLibrary\cybercar\visionCar-eight_Dev(2)\libraries\sdk\Ld" -I"E:\proJectLibrary\cybercar\visionCar-eight_Dev(2)\libraries\sdk\Peripheral" -I"E:\proJectLibrary\cybercar\visionCar-eight_Dev(2)\libraries\sdk\Startup" -I"E:\proJectLibrary\cybercar\visionCar-eight_Dev(2)\project\user\inc" -I"E:\proJectLibrary\cybercar\visionCar-eight_Dev(2)\libraries\zf_common" -I"E:\proJectLibrary\cybercar\visionCar-eight_Dev(2)\libraries\zf_device" -I"E:\proJectLibrary\cybercar\visionCar-eight_Dev(2)\project\code" -I"E:\proJectLibrary\cybercar\visionCar-eight_Dev(2)\libraries\zf_driver" -std=gnu11 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@)" -c -o "$@" "$<"
	@	@

