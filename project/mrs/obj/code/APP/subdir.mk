################################################################################
# MRS Version: 1.9.0
# 自动生成的文件。不要编辑！
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
C:/Users/Zh319/Desktop/新建文件夹/修改版（编码器能用）/visionCar_main/2024_10_08_project/project/code/APP/UI.c \
C:/Users/Zh319/Desktop/新建文件夹/修改版（编码器能用）/visionCar_main/2024_10_08_project/project/code/APP/integration_control.c \
C:/Users/Zh319/Desktop/新建文件夹/修改版（编码器能用）/visionCar_main/2024_10_08_project/project/code/APP/key.c 

OBJS += \
./code/APP/UI.o \
./code/APP/integration_control.o \
./code/APP/key.o 

C_DEPS += \
./code/APP/UI.d \
./code/APP/integration_control.d \
./code/APP/key.d 


# Each subdirectory must supply rules for building sources it contributes
code/APP/UI.o: C:/Users/Zh319/Desktop/新建文件夹/修改版（编码器能用）/visionCar_main/2024_10_08_project/project/code/APP/UI.c
	@	@	riscv-none-embed-gcc -march=rv32imafc -mabi=ilp32f -msmall-data-limit=8 -mno-save-restore -O0 -fmessage-length=0 -fsigned-char -ffunction-sections -fdata-sections -fno-common -pedantic -Wunused -Wuninitialized -Wall  -g -I"C:\Users\Zh319\Desktop\新建文件夹\修改版（编码器能用）\visionCar_main\2024_10_08_project\Libraries\doc" -I"C:\Users\Zh319\Desktop\新建文件夹\修改版（编码器能用）\visionCar_main\2024_10_08_project\libraries\sdk\Core" -I"C:\Users\Zh319\Desktop\新建文件夹\修改版（编码器能用）\visionCar_main\2024_10_08_project\libraries\sdk\Ld" -I"C:\Users\Zh319\Desktop\新建文件夹\修改版（编码器能用）\visionCar_main\2024_10_08_project\libraries\sdk\Peripheral" -I"C:\Users\Zh319\Desktop\新建文件夹\修改版（编码器能用）\visionCar_main\2024_10_08_project\libraries\sdk\Startup" -I"C:\Users\Zh319\Desktop\新建文件夹\修改版（编码器能用）\visionCar_main\2024_10_08_project\project\user\inc" -I"C:\Users\Zh319\Desktop\新建文件夹\修改版（编码器能用）\visionCar_main\2024_10_08_project\libraries\zf_common" -I"C:\Users\Zh319\Desktop\新建文件夹\修改版（编码器能用）\visionCar_main\2024_10_08_project\libraries\zf_device" -I"C:\Users\Zh319\Desktop\新建文件夹\修改版（编码器能用）\visionCar_main\2024_10_08_project\project\code" -I"C:\Users\Zh319\Desktop\新建文件夹\修改版（编码器能用）\visionCar_main\2024_10_08_project\libraries\zf_driver" -std=gnu11 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@)" -c -o "$@" "$<"
	@	@
code/APP/integration_control.o: C:/Users/Zh319/Desktop/新建文件夹/修改版（编码器能用）/visionCar_main/2024_10_08_project/project/code/APP/integration_control.c
	@	@	riscv-none-embed-gcc -march=rv32imafc -mabi=ilp32f -msmall-data-limit=8 -mno-save-restore -O0 -fmessage-length=0 -fsigned-char -ffunction-sections -fdata-sections -fno-common -pedantic -Wunused -Wuninitialized -Wall  -g -I"C:\Users\Zh319\Desktop\新建文件夹\修改版（编码器能用）\visionCar_main\2024_10_08_project\Libraries\doc" -I"C:\Users\Zh319\Desktop\新建文件夹\修改版（编码器能用）\visionCar_main\2024_10_08_project\libraries\sdk\Core" -I"C:\Users\Zh319\Desktop\新建文件夹\修改版（编码器能用）\visionCar_main\2024_10_08_project\libraries\sdk\Ld" -I"C:\Users\Zh319\Desktop\新建文件夹\修改版（编码器能用）\visionCar_main\2024_10_08_project\libraries\sdk\Peripheral" -I"C:\Users\Zh319\Desktop\新建文件夹\修改版（编码器能用）\visionCar_main\2024_10_08_project\libraries\sdk\Startup" -I"C:\Users\Zh319\Desktop\新建文件夹\修改版（编码器能用）\visionCar_main\2024_10_08_project\project\user\inc" -I"C:\Users\Zh319\Desktop\新建文件夹\修改版（编码器能用）\visionCar_main\2024_10_08_project\libraries\zf_common" -I"C:\Users\Zh319\Desktop\新建文件夹\修改版（编码器能用）\visionCar_main\2024_10_08_project\libraries\zf_device" -I"C:\Users\Zh319\Desktop\新建文件夹\修改版（编码器能用）\visionCar_main\2024_10_08_project\project\code" -I"C:\Users\Zh319\Desktop\新建文件夹\修改版（编码器能用）\visionCar_main\2024_10_08_project\libraries\zf_driver" -std=gnu11 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@)" -c -o "$@" "$<"
	@	@
code/APP/key.o: C:/Users/Zh319/Desktop/新建文件夹/修改版（编码器能用）/visionCar_main/2024_10_08_project/project/code/APP/key.c
	@	@	riscv-none-embed-gcc -march=rv32imafc -mabi=ilp32f -msmall-data-limit=8 -mno-save-restore -O0 -fmessage-length=0 -fsigned-char -ffunction-sections -fdata-sections -fno-common -pedantic -Wunused -Wuninitialized -Wall  -g -I"C:\Users\Zh319\Desktop\新建文件夹\修改版（编码器能用）\visionCar_main\2024_10_08_project\Libraries\doc" -I"C:\Users\Zh319\Desktop\新建文件夹\修改版（编码器能用）\visionCar_main\2024_10_08_project\libraries\sdk\Core" -I"C:\Users\Zh319\Desktop\新建文件夹\修改版（编码器能用）\visionCar_main\2024_10_08_project\libraries\sdk\Ld" -I"C:\Users\Zh319\Desktop\新建文件夹\修改版（编码器能用）\visionCar_main\2024_10_08_project\libraries\sdk\Peripheral" -I"C:\Users\Zh319\Desktop\新建文件夹\修改版（编码器能用）\visionCar_main\2024_10_08_project\libraries\sdk\Startup" -I"C:\Users\Zh319\Desktop\新建文件夹\修改版（编码器能用）\visionCar_main\2024_10_08_project\project\user\inc" -I"C:\Users\Zh319\Desktop\新建文件夹\修改版（编码器能用）\visionCar_main\2024_10_08_project\libraries\zf_common" -I"C:\Users\Zh319\Desktop\新建文件夹\修改版（编码器能用）\visionCar_main\2024_10_08_project\libraries\zf_device" -I"C:\Users\Zh319\Desktop\新建文件夹\修改版（编码器能用）\visionCar_main\2024_10_08_project\project\code" -I"C:\Users\Zh319\Desktop\新建文件夹\修改版（编码器能用）\visionCar_main\2024_10_08_project\libraries\zf_driver" -std=gnu11 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@)" -c -o "$@" "$<"
	@	@

