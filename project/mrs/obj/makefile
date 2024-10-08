################################################################################
# MRS Version: 1.9.0
# 自动生成的文件。不要编辑！
################################################################################

-include ../makefile.init

RM := rm -rf

# All of the sources participating in the build are defined here
-include sources.mk
-include zf_driver/subdir.mk
-include zf_device/subdir.mk
-include zf_common/subdir.mk
-include user_c/subdir.mk
-include sdk/Startup/subdir.mk
-include sdk/Peripheral/subdir.mk
-include sdk/Core/subdir.mk
-include code/function/lib/subdir.mk
-include code/function/subdir.mk
-include code/CPP/subdir.mk
-include code/BSP/subdir.mk
-include code/APP/subdir.mk
-include code/subdir.mk
-include subdir.mk
-include objects.mk

ifneq ($(MAKECMDGOALS),clean)
ifneq ($(strip $(ASM_UPPER_DEPS)),)
-include $(ASM_UPPER_DEPS)
endif
ifneq ($(strip $(ASM_DEPS)),)
-include $(ASM_DEPS)
endif
ifneq ($(strip $(S_DEPS)),)
-include $(S_DEPS)
endif
ifneq ($(strip $(S_UPPER_DEPS)),)
-include $(S_UPPER_DEPS)
endif
ifneq ($(strip $(C_DEPS)),)
-include $(C_DEPS)
endif
endif

-include ../makefile.defs

# Add inputs and outputs from these tool invocations to the build variables 
SECONDARY_FLASH += \
vision_car_main.hex \

SECONDARY_LIST += \
vision_car_main.lst \

SECONDARY_SIZE += \
vision_car_main.siz \


# 所有目标
all: vision_car_main.elf secondary-outputs

# 工具调用
vision_car_main.elf: $(OBJS) $(USER_OBJS)
	@	@	riscv-none-embed-gcc -march=rv32imafc -mabi=ilp32f -msmall-data-limit=8 -mno-save-restore -O0 -fmessage-length=0 -fsigned-char -ffunction-sections -fdata-sections -fno-common -pedantic -Wunused -Wuninitialized -Wall  -g -T "C:\Users\Zh319\Desktop\新建文件夹\修改版（编码器能用）\visionCar_main\2024_10_08_project\libraries\sdk\Ld\Link.ld" -nostartfiles -Xlinker --gc-sections -L"../" -L"C:\Users\Zh319\Desktop\新建文件夹\修改版（编码器能用）\visionCar_main\2024_10_08_project\libraries\zf_device" -Wl,-Map,"vision_car_main.map" --specs=nano.specs -u _printf_float --specs=nosys.specs -Wl,--print-memory-usage -o "vision_car_main.elf" $(OBJS) $(USER_OBJS) $(LIBS)
	@	@
vision_car_main.hex: vision_car_main.elf
	@	riscv-none-embed-objcopy -O ihex "vision_car_main.elf"  "vision_car_main.hex"
	@	@
vision_car_main.lst: vision_car_main.elf
	@	riscv-none-embed-objdump --source --all-headers --demangle --line-numbers --wide "vision_car_main.elf" > "vision_car_main.lst"
	@	@
vision_car_main.siz: vision_car_main.elf
	@	riscv-none-embed-size --format=berkeley "vision_car_main.elf"
	@	@
# 其他目标
clean:
	-$(RM) $(ASM_UPPER_DEPS)$(OBJS)$(SECONDARY_FLASH)$(SECONDARY_LIST)$(SECONDARY_SIZE)$(ASM_DEPS)$(S_DEPS)$(S_UPPER_DEPS)$(C_DEPS) vision_car_main.elf
	-@
secondary-outputs: $(SECONDARY_FLASH) $(SECONDARY_LIST) $(SECONDARY_SIZE)

.PHONY: all clean dependents

-include ../makefile.targets
