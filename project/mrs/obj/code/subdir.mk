################################################################################
# MRS Version: 1.9.1
# 自动生成的文件。不要编辑！
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
E:/proJectLibrary/cybercar/visionCar-eight_Dev(2)/project/code/My_Math.c \
E:/proJectLibrary/cybercar/visionCar-eight_Dev(2)/project/code/cam_preprocess.c 

OBJS += \
./code/My_Math.o \
./code/cam_preprocess.o 

C_DEPS += \
./code/My_Math.d \
./code/cam_preprocess.d 


# Each subdirectory must supply rules for building sources it contributes
code/My_Math.o: E:/proJectLibrary/cybercar/visionCar-eight_Dev(2)/project/code/My_Math.c
	@	@	riscv-none-embed-gcc -march=rv32imafc -mabi=ilp32f -msmall-data-limit=8 -mno-save-restore -O0 -fmessage-length=0 -fsigned-char -ffunction-sections -fdata-sections -fno-common -pedantic -Wunused -Wuninitialized -Wall  -g -I"E:\proJectLibrary\cybercar\visionCar-eight_Dev(2)\Libraries\doc" -I"E:\proJectLibrary\cybercar\visionCar-eight_Dev(2)\libraries\sdk\Core" -I"E:\proJectLibrary\cybercar\visionCar-eight_Dev(2)\libraries\sdk\Ld" -I"E:\proJectLibrary\cybercar\visionCar-eight_Dev(2)\libraries\sdk\Peripheral" -I"E:\proJectLibrary\cybercar\visionCar-eight_Dev(2)\libraries\sdk\Startup" -I"E:\proJectLibrary\cybercar\visionCar-eight_Dev(2)\project\user\inc" -I"E:\proJectLibrary\cybercar\visionCar-eight_Dev(2)\libraries\zf_common" -I"E:\proJectLibrary\cybercar\visionCar-eight_Dev(2)\libraries\zf_device" -I"E:\proJectLibrary\cybercar\visionCar-eight_Dev(2)\project\code" -I"E:\proJectLibrary\cybercar\visionCar-eight_Dev(2)\libraries\zf_driver" -std=gnu11 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@)" -c -o "$@" "$<"
	@	@
code/cam_preprocess.o: E:/proJectLibrary/cybercar/visionCar-eight_Dev(2)/project/code/cam_preprocess.c
	@	@	riscv-none-embed-gcc -march=rv32imafc -mabi=ilp32f -msmall-data-limit=8 -mno-save-restore -O0 -fmessage-length=0 -fsigned-char -ffunction-sections -fdata-sections -fno-common -pedantic -Wunused -Wuninitialized -Wall  -g -I"E:\proJectLibrary\cybercar\visionCar-eight_Dev(2)\Libraries\doc" -I"E:\proJectLibrary\cybercar\visionCar-eight_Dev(2)\libraries\sdk\Core" -I"E:\proJectLibrary\cybercar\visionCar-eight_Dev(2)\libraries\sdk\Ld" -I"E:\proJectLibrary\cybercar\visionCar-eight_Dev(2)\libraries\sdk\Peripheral" -I"E:\proJectLibrary\cybercar\visionCar-eight_Dev(2)\libraries\sdk\Startup" -I"E:\proJectLibrary\cybercar\visionCar-eight_Dev(2)\project\user\inc" -I"E:\proJectLibrary\cybercar\visionCar-eight_Dev(2)\libraries\zf_common" -I"E:\proJectLibrary\cybercar\visionCar-eight_Dev(2)\libraries\zf_device" -I"E:\proJectLibrary\cybercar\visionCar-eight_Dev(2)\project\code" -I"E:\proJectLibrary\cybercar\visionCar-eight_Dev(2)\libraries\zf_driver" -std=gnu11 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@)" -c -o "$@" "$<"
	@	@

