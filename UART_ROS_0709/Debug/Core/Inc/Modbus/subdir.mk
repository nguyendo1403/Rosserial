################################################################################
# Automatically-generated file. Do not edit!
# Toolchain: GNU Tools for STM32 (10.3-2021.10)
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../Core/Inc/Modbus/mb.c \
../Core/Inc/Modbus/mb_m.c \
../Core/Inc/Modbus/mbcrc.c \
../Core/Inc/Modbus/mbfunccoils.c \
../Core/Inc/Modbus/mbfunccoils_m.c \
../Core/Inc/Modbus/mbfuncdiag.c \
../Core/Inc/Modbus/mbfuncdisc.c \
../Core/Inc/Modbus/mbfuncdisc_m.c \
../Core/Inc/Modbus/mbfuncholding.c \
../Core/Inc/Modbus/mbfuncholding_m.c \
../Core/Inc/Modbus/mbfuncinput.c \
../Core/Inc/Modbus/mbfuncinput_m.c \
../Core/Inc/Modbus/mbfuncother.c \
../Core/Inc/Modbus/mbrtu.c \
../Core/Inc/Modbus/mbrtu_m.c \
../Core/Inc/Modbus/mbutils.c \
../Core/Inc/Modbus/portcritical.c \
../Core/Inc/Modbus/portevent.c \
../Core/Inc/Modbus/portevent_m.c \
../Core/Inc/Modbus/portserial.c \
../Core/Inc/Modbus/portserial_m.c \
../Core/Inc/Modbus/porttimer.c \
../Core/Inc/Modbus/porttimer_m.c \
../Core/Inc/Modbus/user_mb_app.c \
../Core/Inc/Modbus/user_mb_app_m.c 

C_DEPS += \
./Core/Inc/Modbus/mb.d \
./Core/Inc/Modbus/mb_m.d \
./Core/Inc/Modbus/mbcrc.d \
./Core/Inc/Modbus/mbfunccoils.d \
./Core/Inc/Modbus/mbfunccoils_m.d \
./Core/Inc/Modbus/mbfuncdiag.d \
./Core/Inc/Modbus/mbfuncdisc.d \
./Core/Inc/Modbus/mbfuncdisc_m.d \
./Core/Inc/Modbus/mbfuncholding.d \
./Core/Inc/Modbus/mbfuncholding_m.d \
./Core/Inc/Modbus/mbfuncinput.d \
./Core/Inc/Modbus/mbfuncinput_m.d \
./Core/Inc/Modbus/mbfuncother.d \
./Core/Inc/Modbus/mbrtu.d \
./Core/Inc/Modbus/mbrtu_m.d \
./Core/Inc/Modbus/mbutils.d \
./Core/Inc/Modbus/portcritical.d \
./Core/Inc/Modbus/portevent.d \
./Core/Inc/Modbus/portevent_m.d \
./Core/Inc/Modbus/portserial.d \
./Core/Inc/Modbus/portserial_m.d \
./Core/Inc/Modbus/porttimer.d \
./Core/Inc/Modbus/porttimer_m.d \
./Core/Inc/Modbus/user_mb_app.d \
./Core/Inc/Modbus/user_mb_app_m.d 

OBJS += \
./Core/Inc/Modbus/mb.o \
./Core/Inc/Modbus/mb_m.o \
./Core/Inc/Modbus/mbcrc.o \
./Core/Inc/Modbus/mbfunccoils.o \
./Core/Inc/Modbus/mbfunccoils_m.o \
./Core/Inc/Modbus/mbfuncdiag.o \
./Core/Inc/Modbus/mbfuncdisc.o \
./Core/Inc/Modbus/mbfuncdisc_m.o \
./Core/Inc/Modbus/mbfuncholding.o \
./Core/Inc/Modbus/mbfuncholding_m.o \
./Core/Inc/Modbus/mbfuncinput.o \
./Core/Inc/Modbus/mbfuncinput_m.o \
./Core/Inc/Modbus/mbfuncother.o \
./Core/Inc/Modbus/mbrtu.o \
./Core/Inc/Modbus/mbrtu_m.o \
./Core/Inc/Modbus/mbutils.o \
./Core/Inc/Modbus/portcritical.o \
./Core/Inc/Modbus/portevent.o \
./Core/Inc/Modbus/portevent_m.o \
./Core/Inc/Modbus/portserial.o \
./Core/Inc/Modbus/portserial_m.o \
./Core/Inc/Modbus/porttimer.o \
./Core/Inc/Modbus/porttimer_m.o \
./Core/Inc/Modbus/user_mb_app.o \
./Core/Inc/Modbus/user_mb_app_m.o 


# Each subdirectory must supply rules for building sources it contributes
Core/Inc/Modbus/%.o Core/Inc/Modbus/%.su: ../Core/Inc/Modbus/%.c Core/Inc/Modbus/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m4 -std=gnu11 -g3 -DDEBUG -DUSE_HAL_DRIVER -DSTM32F407xx -c -I../Core/Inc -I../Drivers/STM32F4xx_HAL_Driver/Inc -I../Drivers/STM32F4xx_HAL_Driver/Inc/Legacy -I../Drivers/CMSIS/Device/ST/STM32F4xx/Include -I../Drivers/CMSIS/Include -I"E:/Work at THACO/AMR/STM32/STM32_CubeIDE/UART_ROS_0709/Core/Inc/ros_lib/actionlib" -I"E:/Work at THACO/AMR/STM32/STM32_CubeIDE/UART_ROS_0709/Core/Inc/FreeModbus" -I"E:/Work at THACO/AMR/STM32/STM32_CubeIDE/UART_ROS_0709/Core/Inc/lib" -I"E:/Work at THACO/AMR/STM32/STM32_CubeIDE/UART_ROS_0709/Core/Inc/lib/Modbus" -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfpu=fpv4-sp-d16 -mfloat-abi=hard -mthumb -o "$@"

clean: clean-Core-2f-Inc-2f-Modbus

clean-Core-2f-Inc-2f-Modbus:
	-$(RM) ./Core/Inc/Modbus/mb.d ./Core/Inc/Modbus/mb.o ./Core/Inc/Modbus/mb.su ./Core/Inc/Modbus/mb_m.d ./Core/Inc/Modbus/mb_m.o ./Core/Inc/Modbus/mb_m.su ./Core/Inc/Modbus/mbcrc.d ./Core/Inc/Modbus/mbcrc.o ./Core/Inc/Modbus/mbcrc.su ./Core/Inc/Modbus/mbfunccoils.d ./Core/Inc/Modbus/mbfunccoils.o ./Core/Inc/Modbus/mbfunccoils.su ./Core/Inc/Modbus/mbfunccoils_m.d ./Core/Inc/Modbus/mbfunccoils_m.o ./Core/Inc/Modbus/mbfunccoils_m.su ./Core/Inc/Modbus/mbfuncdiag.d ./Core/Inc/Modbus/mbfuncdiag.o ./Core/Inc/Modbus/mbfuncdiag.su ./Core/Inc/Modbus/mbfuncdisc.d ./Core/Inc/Modbus/mbfuncdisc.o ./Core/Inc/Modbus/mbfuncdisc.su ./Core/Inc/Modbus/mbfuncdisc_m.d ./Core/Inc/Modbus/mbfuncdisc_m.o ./Core/Inc/Modbus/mbfuncdisc_m.su ./Core/Inc/Modbus/mbfuncholding.d ./Core/Inc/Modbus/mbfuncholding.o ./Core/Inc/Modbus/mbfuncholding.su ./Core/Inc/Modbus/mbfuncholding_m.d ./Core/Inc/Modbus/mbfuncholding_m.o ./Core/Inc/Modbus/mbfuncholding_m.su ./Core/Inc/Modbus/mbfuncinput.d ./Core/Inc/Modbus/mbfuncinput.o ./Core/Inc/Modbus/mbfuncinput.su ./Core/Inc/Modbus/mbfuncinput_m.d ./Core/Inc/Modbus/mbfuncinput_m.o ./Core/Inc/Modbus/mbfuncinput_m.su ./Core/Inc/Modbus/mbfuncother.d ./Core/Inc/Modbus/mbfuncother.o ./Core/Inc/Modbus/mbfuncother.su ./Core/Inc/Modbus/mbrtu.d ./Core/Inc/Modbus/mbrtu.o ./Core/Inc/Modbus/mbrtu.su ./Core/Inc/Modbus/mbrtu_m.d ./Core/Inc/Modbus/mbrtu_m.o ./Core/Inc/Modbus/mbrtu_m.su ./Core/Inc/Modbus/mbutils.d ./Core/Inc/Modbus/mbutils.o ./Core/Inc/Modbus/mbutils.su ./Core/Inc/Modbus/portcritical.d ./Core/Inc/Modbus/portcritical.o ./Core/Inc/Modbus/portcritical.su ./Core/Inc/Modbus/portevent.d ./Core/Inc/Modbus/portevent.o ./Core/Inc/Modbus/portevent.su ./Core/Inc/Modbus/portevent_m.d ./Core/Inc/Modbus/portevent_m.o ./Core/Inc/Modbus/portevent_m.su ./Core/Inc/Modbus/portserial.d ./Core/Inc/Modbus/portserial.o ./Core/Inc/Modbus/portserial.su ./Core/Inc/Modbus/portserial_m.d ./Core/Inc/Modbus/portserial_m.o ./Core/Inc/Modbus/portserial_m.su ./Core/Inc/Modbus/porttimer.d ./Core/Inc/Modbus/porttimer.o ./Core/Inc/Modbus/porttimer.su ./Core/Inc/Modbus/porttimer_m.d ./Core/Inc/Modbus/porttimer_m.o ./Core/Inc/Modbus/porttimer_m.su ./Core/Inc/Modbus/user_mb_app.d ./Core/Inc/Modbus/user_mb_app.o ./Core/Inc/Modbus/user_mb_app.su ./Core/Inc/Modbus/user_mb_app_m.d ./Core/Inc/Modbus/user_mb_app_m.o ./Core/Inc/Modbus/user_mb_app_m.su

.PHONY: clean-Core-2f-Inc-2f-Modbus

