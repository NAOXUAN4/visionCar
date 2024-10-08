################################################################################
# MRS Version: 1.9.0
# 自动生成的文件。不要编辑！
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
C:/Users/Zh319/Desktop/新建文件夹/修改版（编码器能用）/visionCar_main/2024_10_08_project/project/code/BSP/beep.c \
C:/Users/Zh319/Desktop/新建文件夹/修改版（编码器能用）/visionCar_main/2024_10_08_project/project/code/BSP/encoder.c \
C:/Users/Zh319/Desktop/新建文件夹/修改版（编码器能用）/visionCar_main/2024_10_08_project/project/code/BSP/steer.c \
C:/Users/Zh319/Desktop/新建文件夹/修改版（编码器能用）/visionCar_main/2024_10_08_project/project/code/BSP/wheel.c 

OBJS += \
./code/BSP/beep.o \
./code/BSP/encoder.o \
./code/BSP/steer.o \
./code/BSP/wheel.o 

C_DEPS += \
./code/BSP/beep.d \
./code/BSP/encoder.d \
./code/BSP/steer.d \
./code/BSP/wheel.d 


# Each subdirectory must supply rules for building sources it contributes
code/BSP/beep.o: C:/Users/Zh319/Desktop/新建文件夹/修改版（编码器能用）/visionCar_main/2024_10_08_project/project/code/BSP/beep.c
	@	@	riscv-none-embed-gcc -march=rv32imafc -mabi=ilp32f -msmall-data-limit=8 -mno-save-restore -O0 -fmessage-length=0 -fsigned-char -ffunction-sections -fdata-sections -fno-common -pedantic -Wunused -Wuninitialized -Wall  -g -I"C:\Users\Zh319\Desktop\新建文件夹\修改版（编码器能用）\visionCar_main\2024_10_08_project\Libraries\doc" -I"C:\Users\Zh319\Desktop\新建文件夹\修改版（编码器能用）\visionCar_main\2024_10_08_project\libraries\sdk\Core" -I"C:\Users\Zh319\Desktop\新建文件夹\修改版（编码器能用）\visionCar_main\2024_10_08_project\libraries\sdk\Ld" -I"C:\Users\Zh319\Desktop\新建文件夹\修改版（编码器能用）\visionCar_main\2024_10_08_project\libraries\sdk\Peripheral" -I"C:\Users\Zh319\Desktop\新建文件夹\修改版（编码器能用）\visionCar_main\2024_10_08_project\libraries\sdk\Startup" -I"C:\Users\Zh319\Desktop\新建文件夹\修改版（编码器能用）\visionCar_main\2024_10_08_project\project\user\inc" -I"C:\Users\Zh319\Desktop\新建文件夹\修改版（编码器能用）\visionCar_main\2024_10_08_project\libraries\zf_common" -I"C:\Users\Zh319\Desktop\新建文件夹\修改版（编码器能用）\visionCar_main\2024_10_08_project\libraries\zf_device" -I"C:\Users\Zh319\Desktop\新建文件夹\修改版（编码器能用）\visionCar_main\2024_10_08_project\project\code" -I"C:\Users\Zh319\Desktop\新建文件夹\修改版（编码器能用）\visionCar_main\2024_10_08_project\libraries\zf_driver" -std=gnu11 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@)" -c -o "$@" "$<"
	@	@
code/BSP/encoder.o: C:/Users/Zh319/Desktop/新建文件夹/修改版（编码器能用）/visionCar_main/2024_10_08_project/project/code/BSP/encoder.c
	@	@	riscv-none-embed-gcc -march=rv32imafc -mabi=ilp32f -msmall-data-limit=8 -mno-save-restore -O0 -fmessage-length=0 -fsigned-char -ffunction-sections -fdata-sections -fno-common -pedantic -Wunused -Wuninitialized -Wall  -g -I"C:\Users\Zh319\Desktop\新建文件夹\修改版（编码器能用）\visionCar_main\2024_10_08_project\Libraries\doc" -I"C:\Users\Zh319\Desktop\新建文件夹\修改版（编码器能用）\visionCar_main\2024_10_08_project\libraries\sdk\Core" -I"C:\Users\Zh319\Desktop\新建文件夹\修改版（编码器能用）\visionCar_main\2024_10_08_project\libraries\sdk\Ld" -I"C:\Users\Zh319\Desktop\新建文件夹\修改版（编码器能用）\visionCar_main\2024_10_08_project\libraries\sdk\Peripheral" -I"C:\Users\Zh319\Desktop\新建文件夹\修改版（编码器能用）\visionCar_main\2024_10_08_project\libraries\sdk\Startup" -I"C:\Users\Zh319\Desktop\新建文件夹\修改版（编码器能用）\visionCar_main\2024_10_08_project\project\user\inc" -I"C:\Users\Zh319\Desktop\新建文件夹\修改版（编码器能用）\visionCar_main\2024_10_08_project\libraries\zf_common" -I"C:\Users\Zh319\Desktop\新建文件夹\修改版（编码器能用）\visionCar_main\2024_10_08_project\libraries\zf_device" -I"C:\Users\Zh319\Desktop\新建文件夹\修改版（编码器能用）\visionCar_main\2024_10_08_project\project\code" -I"C:\Users\Zh319\Desktop\新建文件夹\修改版（编码器能用）\visionCar_main\2024_10_08_project\libraries\zf_driver" -std=gnu11 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@)" -c -o "$@" "$<"
	@	@
code/BSP/steer.o: C:/Users/Zh319/Desktop/新建文件夹/修改版（编码器能用）/visionCar_main/2024_10_08_project/project/code/BSP/steer.c
	@	@	riscv-none-embed-gcc -march=rv32imafc -mabi=ilp32f -msmall-data-limit=8 -mno-save-restore -O0 -fmessage-length=0 -fsigned-char -ffunction-sections -fdata-sections -fno-common -pedantic -Wunused -Wuninitialized -Wall  -g -I"C:\Users\Zh319\Desktop\新建文件夹\修改版（编码器能用）\visionCar_main\2024_10_08_project\Libraries\doc" -I"C:\Users\Zh319\Desktop\新建文件夹\修改版（编码器能用）\visionCar_main\2024_10_08_project\libraries\sdk\Core" -I"C:\Users\Zh319\Desktop\新建文件夹\修改版（编码器能用）\visionCar_main\2024_10_08_project\libraries\sdk\Ld" -I"C:\Users\Zh319\Desktop\新建文件夹\修改版（编码器能用）\visionCar_main\2024_10_08_project\libraries\sdk\Peripheral" -I"C:\Users\Zh319\Desktop\新建文件夹\修改版（编码器能用）\visionCar_main\2024_10_08_project\libraries\sdk\Startup" -I"C:\Users\Zh319\Desktop\新建文件夹\修改版（编码器能用）\visionCar_main\2024_10_08_project\project\user\inc" -I"C:\Users\Zh319\Desktop\新建文件夹\修改版（编码器能用）\visionCar_main\2024_10_08_project\libraries\zf_common" -I"C:\Users\Zh319\Desktop\新建文件夹\修改版（编码器能用）\visionCar_main\2024_10_08_project\libraries\zf_device" -I"C:\Users\Zh319\Desktop\新建文件夹\修改版（编码器能用）\visionCar_main\2024_10_08_project\project\code" -I"C:\Users\Zh319\Desktop\新建文件夹\修改版（编码器能用）\visionCar_main\2024_10_08_project\libraries\zf_driver" -std=gnu11 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@)" -c -o "$@" "$<"
	@	@
code/BSP/wheel.o: C:/Users/Zh319/Desktop/新建文件夹/修改版（编码器能用）/visionCar_main/2024_10_08_project/project/code/BSP/wheel.c
	@	@	riscv-none-embed-gcc -march=rv32imafc -mabi=ilp32f -msmall-data-limit=8 -mno-save-restore -O0 -fmessage-length=0 -fsigned-char -ffunction-sections -fdata-sections -fno-common -pedantic -Wunused -Wuninitialized -Wall  -g -I"C:\Users\Zh319\Desktop\新建文件夹\修改版（编码器能用）\visionCar_main\2024_10_08_project\Libraries\doc" -I"C:\Users\Zh319\Desktop\新建文件夹\修改版（编码器能用）\visionCar_main\2024_10_08_project\libraries\sdk\Core" -I"C:\Users\Zh319\Desktop\新建文件夹\修改版（编码器能用）\visionCar_main\2024_10_08_project\libraries\sdk\Ld" -I"C:\Users\Zh319\Desktop\新建文件夹\修改版（编码器能用）\visionCar_main\2024_10_08_project\libraries\sdk\Peripheral" -I"C:\Users\Zh319\Desktop\新建文件夹\修改版（编码器能用）\visionCar_main\2024_10_08_project\libraries\sdk\Startup" -I"C:\Users\Zh319\Desktop\新建文件夹\修改版（编码器能用）\visionCar_main\2024_10_08_project\project\user\inc" -I"C:\Users\Zh319\Desktop\新建文件夹\修改版（编码器能用）\visionCar_main\2024_10_08_project\libraries\zf_common" -I"C:\Users\Zh319\Desktop\新建文件夹\修改版（编码器能用）\visionCar_main\2024_10_08_project\libraries\zf_device" -I"C:\Users\Zh319\Desktop\新建文件夹\修改版（编码器能用）\visionCar_main\2024_10_08_project\project\code" -I"C:\Users\Zh319\Desktop\新建文件夹\修改版（编码器能用）\visionCar_main\2024_10_08_project\libraries\zf_driver" -std=gnu11 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@)" -c -o "$@" "$<"
	@	@

