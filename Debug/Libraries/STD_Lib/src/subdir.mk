################################################################################
# Automatically-generated file. Do not edit!
# Toolchain: GNU Tools for STM32 (11.3.rel1)
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../Libraries/STD_Lib/src/misc.c \
../Libraries/STD_Lib/src/stm32f4xx_adc.c \
../Libraries/STD_Lib/src/stm32f4xx_can.c \
../Libraries/STD_Lib/src/stm32f4xx_dac.c \
../Libraries/STD_Lib/src/stm32f4xx_dma.c \
../Libraries/STD_Lib/src/stm32f4xx_dma2d.c \
../Libraries/STD_Lib/src/stm32f4xx_exti.c \
../Libraries/STD_Lib/src/stm32f4xx_gpio.c \
../Libraries/STD_Lib/src/stm32f4xx_i2c.c \
../Libraries/STD_Lib/src/stm32f4xx_rcc.c \
../Libraries/STD_Lib/src/stm32f4xx_spi.c \
../Libraries/STD_Lib/src/stm32f4xx_tim.c \
../Libraries/STD_Lib/src/stm32f4xx_usart.c 

OBJS += \
./Libraries/STD_Lib/src/misc.o \
./Libraries/STD_Lib/src/stm32f4xx_adc.o \
./Libraries/STD_Lib/src/stm32f4xx_can.o \
./Libraries/STD_Lib/src/stm32f4xx_dac.o \
./Libraries/STD_Lib/src/stm32f4xx_dma.o \
./Libraries/STD_Lib/src/stm32f4xx_dma2d.o \
./Libraries/STD_Lib/src/stm32f4xx_exti.o \
./Libraries/STD_Lib/src/stm32f4xx_gpio.o \
./Libraries/STD_Lib/src/stm32f4xx_i2c.o \
./Libraries/STD_Lib/src/stm32f4xx_rcc.o \
./Libraries/STD_Lib/src/stm32f4xx_spi.o \
./Libraries/STD_Lib/src/stm32f4xx_tim.o \
./Libraries/STD_Lib/src/stm32f4xx_usart.o 

C_DEPS += \
./Libraries/STD_Lib/src/misc.d \
./Libraries/STD_Lib/src/stm32f4xx_adc.d \
./Libraries/STD_Lib/src/stm32f4xx_can.d \
./Libraries/STD_Lib/src/stm32f4xx_dac.d \
./Libraries/STD_Lib/src/stm32f4xx_dma.d \
./Libraries/STD_Lib/src/stm32f4xx_dma2d.d \
./Libraries/STD_Lib/src/stm32f4xx_exti.d \
./Libraries/STD_Lib/src/stm32f4xx_gpio.d \
./Libraries/STD_Lib/src/stm32f4xx_i2c.d \
./Libraries/STD_Lib/src/stm32f4xx_rcc.d \
./Libraries/STD_Lib/src/stm32f4xx_spi.d \
./Libraries/STD_Lib/src/stm32f4xx_tim.d \
./Libraries/STD_Lib/src/stm32f4xx_usart.d 


# Each subdirectory must supply rules for building sources it contributes
Libraries/STD_Lib/src/%.o Libraries/STD_Lib/src/%.su Libraries/STD_Lib/src/%.cyclo: ../Libraries/STD_Lib/src/%.c Libraries/STD_Lib/src/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m4 -std=gnu11 -g3 -DDEBUG -DSTM32 -DSTM32F401RETx -DSTM32F4 -DUSE_STDPERIPH_DRIVER -DHSE_VALUE=800000 -DSTM32F40_41xxx -c -I../Inc -I"D:/luu_tru_stm32_thanh_ghi/stm32f4/workspace/MCU1/001_demo_thu_vien_std/Libraries/CMSIS" -I"D:/luu_tru_stm32_thanh_ghi/stm32f4/workspace/MCU1/001_demo_thu_vien_std/Libraries/Device" -I"D:/luu_tru_stm32_thanh_ghi/stm32f4/workspace/MCU1/001_demo_thu_vien_std/Libraries/STD_Lib/inc" -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -fcyclomatic-complexity -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfpu=fpv4-sp-d16 -mfloat-abi=hard -mthumb -o "$@"

clean: clean-Libraries-2f-STD_Lib-2f-src

clean-Libraries-2f-STD_Lib-2f-src:
	-$(RM) ./Libraries/STD_Lib/src/misc.cyclo ./Libraries/STD_Lib/src/misc.d ./Libraries/STD_Lib/src/misc.o ./Libraries/STD_Lib/src/misc.su ./Libraries/STD_Lib/src/stm32f4xx_adc.cyclo ./Libraries/STD_Lib/src/stm32f4xx_adc.d ./Libraries/STD_Lib/src/stm32f4xx_adc.o ./Libraries/STD_Lib/src/stm32f4xx_adc.su ./Libraries/STD_Lib/src/stm32f4xx_can.cyclo ./Libraries/STD_Lib/src/stm32f4xx_can.d ./Libraries/STD_Lib/src/stm32f4xx_can.o ./Libraries/STD_Lib/src/stm32f4xx_can.su ./Libraries/STD_Lib/src/stm32f4xx_dac.cyclo ./Libraries/STD_Lib/src/stm32f4xx_dac.d ./Libraries/STD_Lib/src/stm32f4xx_dac.o ./Libraries/STD_Lib/src/stm32f4xx_dac.su ./Libraries/STD_Lib/src/stm32f4xx_dma.cyclo ./Libraries/STD_Lib/src/stm32f4xx_dma.d ./Libraries/STD_Lib/src/stm32f4xx_dma.o ./Libraries/STD_Lib/src/stm32f4xx_dma.su ./Libraries/STD_Lib/src/stm32f4xx_dma2d.cyclo ./Libraries/STD_Lib/src/stm32f4xx_dma2d.d ./Libraries/STD_Lib/src/stm32f4xx_dma2d.o ./Libraries/STD_Lib/src/stm32f4xx_dma2d.su ./Libraries/STD_Lib/src/stm32f4xx_exti.cyclo ./Libraries/STD_Lib/src/stm32f4xx_exti.d ./Libraries/STD_Lib/src/stm32f4xx_exti.o ./Libraries/STD_Lib/src/stm32f4xx_exti.su ./Libraries/STD_Lib/src/stm32f4xx_gpio.cyclo ./Libraries/STD_Lib/src/stm32f4xx_gpio.d ./Libraries/STD_Lib/src/stm32f4xx_gpio.o ./Libraries/STD_Lib/src/stm32f4xx_gpio.su ./Libraries/STD_Lib/src/stm32f4xx_i2c.cyclo ./Libraries/STD_Lib/src/stm32f4xx_i2c.d ./Libraries/STD_Lib/src/stm32f4xx_i2c.o ./Libraries/STD_Lib/src/stm32f4xx_i2c.su ./Libraries/STD_Lib/src/stm32f4xx_rcc.cyclo ./Libraries/STD_Lib/src/stm32f4xx_rcc.d ./Libraries/STD_Lib/src/stm32f4xx_rcc.o ./Libraries/STD_Lib/src/stm32f4xx_rcc.su ./Libraries/STD_Lib/src/stm32f4xx_spi.cyclo ./Libraries/STD_Lib/src/stm32f4xx_spi.d ./Libraries/STD_Lib/src/stm32f4xx_spi.o ./Libraries/STD_Lib/src/stm32f4xx_spi.su ./Libraries/STD_Lib/src/stm32f4xx_tim.cyclo ./Libraries/STD_Lib/src/stm32f4xx_tim.d ./Libraries/STD_Lib/src/stm32f4xx_tim.o ./Libraries/STD_Lib/src/stm32f4xx_tim.su ./Libraries/STD_Lib/src/stm32f4xx_usart.cyclo ./Libraries/STD_Lib/src/stm32f4xx_usart.d ./Libraries/STD_Lib/src/stm32f4xx_usart.o ./Libraries/STD_Lib/src/stm32f4xx_usart.su

.PHONY: clean-Libraries-2f-STD_Lib-2f-src

