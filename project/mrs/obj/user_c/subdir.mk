################################################################################
# MRS Version: 1.9.0
# �Զ����ɵ��ļ�����Ҫ�༭��
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
C:/Users/Zh319/Desktop/�½��ļ���/�޸İ棨���������ã�/visionCar_main/2024_10_08_project/project/user/src/isr.c \
C:/Users/Zh319/Desktop/�½��ļ���/�޸İ棨���������ã�/visionCar_main/2024_10_08_project/project/user/src/main.c 

OBJS += \
./user_c/isr.o \
./user_c/main.o 

C_DEPS += \
./user_c/isr.d \
./user_c/main.d 


# Each subdirectory must supply rules for building sources it contributes
user_c/isr.o: C:/Users/Zh319/Desktop/�½��ļ���/�޸İ棨���������ã�/visionCar_main/2024_10_08_project/project/user/src/isr.c
	@	@	riscv-none-embed-gcc -march=rv32imafc -mabi=ilp32f -msmall-data-limit=8 -mno-save-restore -O0 -fmessage-length=0 -fsigned-char -ffunction-sections -fdata-sections -fno-common -pedantic -Wunused -Wuninitialized -Wall  -g -I"C:\Users\Zh319\Desktop\�½��ļ���\�޸İ棨���������ã�\visionCar_main\2024_10_08_project\Libraries\doc" -I"C:\Users\Zh319\Desktop\�½��ļ���\�޸İ棨���������ã�\visionCar_main\2024_10_08_project\libraries\sdk\Core" -I"C:\Users\Zh319\Desktop\�½��ļ���\�޸İ棨���������ã�\visionCar_main\2024_10_08_project\libraries\sdk\Ld" -I"C:\Users\Zh319\Desktop\�½��ļ���\�޸İ棨���������ã�\visionCar_main\2024_10_08_project\libraries\sdk\Peripheral" -I"C:\Users\Zh319\Desktop\�½��ļ���\�޸İ棨���������ã�\visionCar_main\2024_10_08_project\libraries\sdk\Startup" -I"C:\Users\Zh319\Desktop\�½��ļ���\�޸İ棨���������ã�\visionCar_main\2024_10_08_project\project\user\inc" -I"C:\Users\Zh319\Desktop\�½��ļ���\�޸İ棨���������ã�\visionCar_main\2024_10_08_project\libraries\zf_common" -I"C:\Users\Zh319\Desktop\�½��ļ���\�޸İ棨���������ã�\visionCar_main\2024_10_08_project\libraries\zf_device" -I"C:\Users\Zh319\Desktop\�½��ļ���\�޸İ棨���������ã�\visionCar_main\2024_10_08_project\project\code" -I"C:\Users\Zh319\Desktop\�½��ļ���\�޸İ棨���������ã�\visionCar_main\2024_10_08_project\libraries\zf_driver" -std=gnu11 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@)" -c -o "$@" "$<"
	@	@
user_c/main.o: C:/Users/Zh319/Desktop/�½��ļ���/�޸İ棨���������ã�/visionCar_main/2024_10_08_project/project/user/src/main.c
	@	@	riscv-none-embed-gcc -march=rv32imafc -mabi=ilp32f -msmall-data-limit=8 -mno-save-restore -O0 -fmessage-length=0 -fsigned-char -ffunction-sections -fdata-sections -fno-common -pedantic -Wunused -Wuninitialized -Wall  -g -I"C:\Users\Zh319\Desktop\�½��ļ���\�޸İ棨���������ã�\visionCar_main\2024_10_08_project\Libraries\doc" -I"C:\Users\Zh319\Desktop\�½��ļ���\�޸İ棨���������ã�\visionCar_main\2024_10_08_project\libraries\sdk\Core" -I"C:\Users\Zh319\Desktop\�½��ļ���\�޸İ棨���������ã�\visionCar_main\2024_10_08_project\libraries\sdk\Ld" -I"C:\Users\Zh319\Desktop\�½��ļ���\�޸İ棨���������ã�\visionCar_main\2024_10_08_project\libraries\sdk\Peripheral" -I"C:\Users\Zh319\Desktop\�½��ļ���\�޸İ棨���������ã�\visionCar_main\2024_10_08_project\libraries\sdk\Startup" -I"C:\Users\Zh319\Desktop\�½��ļ���\�޸İ棨���������ã�\visionCar_main\2024_10_08_project\project\user\inc" -I"C:\Users\Zh319\Desktop\�½��ļ���\�޸İ棨���������ã�\visionCar_main\2024_10_08_project\libraries\zf_common" -I"C:\Users\Zh319\Desktop\�½��ļ���\�޸İ棨���������ã�\visionCar_main\2024_10_08_project\libraries\zf_device" -I"C:\Users\Zh319\Desktop\�½��ļ���\�޸İ棨���������ã�\visionCar_main\2024_10_08_project\project\code" -I"C:\Users\Zh319\Desktop\�½��ļ���\�޸İ棨���������ã�\visionCar_main\2024_10_08_project\libraries\zf_driver" -std=gnu11 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@)" -c -o "$@" "$<"
	@	@

