################################################################################
# MRS Version: 1.9.0
# 自动生成的文件。不要编辑！
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
<<<<<<< Updated upstream
C:/Users/Zh319/Desktop/新建文件夹/修改版（编码器能用）/visionCar_main/2024_10_08_project/libraries/sdk/Core/core_riscv.c 
=======
C:/Users/Zh319/Desktop/新建文件夹/visionCar-eight_Dev(1)/visionCar-eight_Dev(1)/visionCar-eight_Dev/visionCar-eight_Dev(1)/visionCar-eight_Dev/libraries/sdk/Core/core_riscv.c 
>>>>>>> Stashed changes

OBJS += \
./sdk/Core/core_riscv.o 

C_DEPS += \
./sdk/Core/core_riscv.d 


# Each subdirectory must supply rules for building sources it contributes
<<<<<<< Updated upstream
sdk/Core/core_riscv.o: C:/Users/Zh319/Desktop/新建文件夹/修改版（编码器能用）/visionCar_main/2024_10_08_project/libraries/sdk/Core/core_riscv.c
	@	@	riscv-none-embed-gcc -march=rv32imafc -mabi=ilp32f -msmall-data-limit=8 -mno-save-restore -O0 -fmessage-length=0 -fsigned-char -ffunction-sections -fdata-sections -fno-common -pedantic -Wunused -Wuninitialized -Wall  -g -I"C:\Users\Zh319\Desktop\新建文件夹\修改版（编码器能用）\visionCar_main\2024_10_08_project\Libraries\doc" -I"C:\Users\Zh319\Desktop\新建文件夹\修改版（编码器能用）\visionCar_main\2024_10_08_project\libraries\sdk\Core" -I"C:\Users\Zh319\Desktop\新建文件夹\修改版（编码器能用）\visionCar_main\2024_10_08_project\libraries\sdk\Ld" -I"C:\Users\Zh319\Desktop\新建文件夹\修改版（编码器能用）\visionCar_main\2024_10_08_project\libraries\sdk\Peripheral" -I"C:\Users\Zh319\Desktop\新建文件夹\修改版（编码器能用）\visionCar_main\2024_10_08_project\libraries\sdk\Startup" -I"C:\Users\Zh319\Desktop\新建文件夹\修改版（编码器能用）\visionCar_main\2024_10_08_project\project\user\inc" -I"C:\Users\Zh319\Desktop\新建文件夹\修改版（编码器能用）\visionCar_main\2024_10_08_project\libraries\zf_common" -I"C:\Users\Zh319\Desktop\新建文件夹\修改版（编码器能用）\visionCar_main\2024_10_08_project\libraries\zf_device" -I"C:\Users\Zh319\Desktop\新建文件夹\修改版（编码器能用）\visionCar_main\2024_10_08_project\project\code" -I"C:\Users\Zh319\Desktop\新建文件夹\修改版（编码器能用）\visionCar_main\2024_10_08_project\libraries\zf_driver" -std=gnu11 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@)" -c -o "$@" "$<"
=======
sdk/Core/core_riscv.o: C:/Users/Zh319/Desktop/新建文件夹/visionCar-eight_Dev(1)/visionCar-eight_Dev(1)/visionCar-eight_Dev/visionCar-eight_Dev(1)/visionCar-eight_Dev/libraries/sdk/Core/core_riscv.c
	@	@	riscv-none-embed-gcc -march=rv32imafc -mabi=ilp32f -msmall-data-limit=8 -mno-save-restore -O0 -fmessage-length=0 -fsigned-char -ffunction-sections -fdata-sections -fno-common -pedantic -Wunused -Wuninitialized -Wall  -g -I"C:\Users\Zh319\Desktop\新建文件夹\visionCar-eight_Dev(1)\visionCar-eight_Dev(1)\visionCar-eight_Dev\visionCar-eight_Dev(1)\visionCar-eight_Dev\Libraries\doc" -I"C:\Users\Zh319\Desktop\新建文件夹\visionCar-eight_Dev(1)\visionCar-eight_Dev(1)\visionCar-eight_Dev\visionCar-eight_Dev(1)\visionCar-eight_Dev\libraries\sdk\Core" -I"C:\Users\Zh319\Desktop\新建文件夹\visionCar-eight_Dev(1)\visionCar-eight_Dev(1)\visionCar-eight_Dev\visionCar-eight_Dev(1)\visionCar-eight_Dev\libraries\sdk\Ld" -I"C:\Users\Zh319\Desktop\新建文件夹\visionCar-eight_Dev(1)\visionCar-eight_Dev(1)\visionCar-eight_Dev\visionCar-eight_Dev(1)\visionCar-eight_Dev\libraries\sdk\Peripheral" -I"C:\Users\Zh319\Desktop\新建文件夹\visionCar-eight_Dev(1)\visionCar-eight_Dev(1)\visionCar-eight_Dev\visionCar-eight_Dev(1)\visionCar-eight_Dev\libraries\sdk\Startup" -I"C:\Users\Zh319\Desktop\新建文件夹\visionCar-eight_Dev(1)\visionCar-eight_Dev(1)\visionCar-eight_Dev\visionCar-eight_Dev(1)\visionCar-eight_Dev\project\user\inc" -I"C:\Users\Zh319\Desktop\新建文件夹\visionCar-eight_Dev(1)\visionCar-eight_Dev(1)\visionCar-eight_Dev\visionCar-eight_Dev(1)\visionCar-eight_Dev\libraries\zf_common" -I"C:\Users\Zh319\Desktop\新建文件夹\visionCar-eight_Dev(1)\visionCar-eight_Dev(1)\visionCar-eight_Dev\visionCar-eight_Dev(1)\visionCar-eight_Dev\libraries\zf_device" -I"C:\Users\Zh319\Desktop\新建文件夹\visionCar-eight_Dev(1)\visionCar-eight_Dev(1)\visionCar-eight_Dev\visionCar-eight_Dev(1)\visionCar-eight_Dev\project\code" -I"C:\Users\Zh319\Desktop\新建文件夹\visionCar-eight_Dev(1)\visionCar-eight_Dev(1)\visionCar-eight_Dev\visionCar-eight_Dev(1)\visionCar-eight_Dev\libraries\zf_driver" -std=gnu11 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@)" -c -o "$@" "$<"
>>>>>>> Stashed changes
	@	@

