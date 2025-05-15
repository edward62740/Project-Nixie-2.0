################################################################################
# Automatically-generated file. Do not edit!
# Toolchain: GNU Tools for STM32 (12.3.rel1)
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
CPP_SRCS += \
../Application/User/Drivers/nixiedisplay.cpp \
../Application/User/Drivers/pca9698.cpp \
../Application/User/Drivers/pcf2131.cpp 

OBJS += \
./Application/User/Drivers/nixiedisplay.o \
./Application/User/Drivers/pca9698.o \
./Application/User/Drivers/pcf2131.o 

CPP_DEPS += \
./Application/User/Drivers/nixiedisplay.d \
./Application/User/Drivers/pca9698.d \
./Application/User/Drivers/pcf2131.d 


# Each subdirectory must supply rules for building sources it contributes
Application/User/Drivers/%.o Application/User/Drivers/%.su Application/User/Drivers/%.cyclo: ../Application/User/Drivers/%.cpp Application/User/Drivers/subdir.mk
	arm-none-eabi-g++ "$<" -mcpu=cortex-m4 -std=gnu++14 -g3 -DDEBUG -DSTM32WB5Mxx -DUSE_HAL_DRIVER -c -I../../Core/Inc -I../../Drivers/STM32WBxx_HAL_Driver/Inc -I../../Drivers/STM32WBxx_HAL_Driver/Inc/Legacy -I../../Drivers/CMSIS/Device/ST/STM32WBxx/Include -I../../Drivers/CMSIS/Include -I../../STM32_WPAN/App -I../../Utilities/lpm/tiny_lpm -I../../Middlewares/ST/STM32_WPAN -I../../Middlewares/ST/STM32_WPAN/interface/patterns/ble_thread -I../../Middlewares/ST/STM32_WPAN/interface/patterns/ble_thread/tl -I../../Middlewares/ST/STM32_WPAN/interface/patterns/ble_thread/shci -I../../Middlewares/ST/STM32_WPAN/utilities -I../../Middlewares/ST/STM32_WPAN/ble/core -I../../Middlewares/ST/STM32_WPAN/ble/core/auto -I../../Middlewares/ST/STM32_WPAN/ble/core/template -I../../Middlewares/ST/STM32_WPAN/ble/svc/Inc -I../../Middlewares/ST/STM32_WPAN/ble/svc/Src -I../../Utilities/sequencer -I../../Middlewares/ST/STM32_WPAN/ble -I../../Drivers/BSP/STM32WB5MM-DK -I../../Drivers/BSP/Components/ssd1315 -I../../Drivers/BSP/Components/Common -I../../Utilities/Fonts -I../../Utilities/LCD -I"C:/Users/Workstation/Documents/GitHub/Project-Nixie-2.0/Software/STM32/BLE_p2pServer/STM32CubeIDE/Application/User/Core" -I"C:/Users/Workstation/Documents/GitHub/Project-Nixie-2.0/Software/STM32/BLE_p2pServer/STM32CubeIDE/Application/User/Drivers" -O0 -ffunction-sections -fdata-sections -fno-exceptions -fno-rtti -fno-use-cxa-atexit -Wall -fstack-usage -fcyclomatic-complexity -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfpu=fpv4-sp-d16 -mfloat-abi=hard -mthumb -o "$@"

clean: clean-Application-2f-User-2f-Drivers

clean-Application-2f-User-2f-Drivers:
	-$(RM) ./Application/User/Drivers/nixiedisplay.cyclo ./Application/User/Drivers/nixiedisplay.d ./Application/User/Drivers/nixiedisplay.o ./Application/User/Drivers/nixiedisplay.su ./Application/User/Drivers/pca9698.cyclo ./Application/User/Drivers/pca9698.d ./Application/User/Drivers/pca9698.o ./Application/User/Drivers/pca9698.su ./Application/User/Drivers/pcf2131.cyclo ./Application/User/Drivers/pcf2131.d ./Application/User/Drivers/pcf2131.o ./Application/User/Drivers/pcf2131.su

.PHONY: clean-Application-2f-User-2f-Drivers

