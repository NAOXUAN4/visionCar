################################################################################
# MRS Version: 1.9.0
# 自动生成的文件。不要编辑！
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
S_UPPER_SRCS += \
C:/Users/Zh319/Desktop/新建文件夹/visionCar-eight_Dev(1)/visionCar-eight_Dev(1)/visionCar-eight_Dev/visionCar-eight_Dev(1)/visionCar-eight_Dev/visionCar-eight_Dev/libraries/sdk/Startup/startup_ch32v30x_D8C.S 

OBJS += \
./sdk/Startup/startup_ch32v30x_D8C.o 

S_UPPER_DEPS += \
./sdk/Startup/startup_ch32v30x_D8C.d 


# Each subdirectory must supply rules for building sources it contributes
sdk/Startup/startup_ch32v30x_D8C.o: C:/Users/Zh319/Desktop/新建文件夹/visionCar-eight_Dev(1)/visionCar-eight_Dev(1)/visionCar-eight_Dev/visionCar-eight_Dev(1)/visionCar-eight_Dev/visionCar-eight_Dev/libraries/sdk/Startup/startup_ch32v30x_D8C.S
	@	@	riscv-none-embed-gcc -march=rv32imafc -mabi=ilp32f -msmall-data-limit=8 -mno-save-restore -O0 -fmessage-length=0 -fsigned-char -ffunction-sections -fdata-sections -fno-common -pedantic -Wunused -Wuninitialized -Wall  -g -x assembler -I"C:\Users\Zh319\Desktop\新建文件夹\visionCar-eight_Dev(1)\visionCar-eight_Dev(1)\visionCar-eight_Dev\visionCar-eight_Dev(1)\visionCar-eight_Dev\visionCar-eight_Dev\libraries\sdk\Startup" -I"C:\Users\Zh319\Desktop\新建文件夹\visionCar-eight_Dev(1)\visionCar-eight_Dev(1)\visionCar-eight_Dev\visionCar-eight_Dev(1)\visionCar-eight_Dev\visionCar-eight_Dev\libraries\zf_driver" -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@)" -c -o "$@" "$<"
	@	@

