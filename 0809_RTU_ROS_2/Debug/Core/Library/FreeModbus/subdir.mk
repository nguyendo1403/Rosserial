################################################################################
# Automatically-generated file. Do not edit!
# Toolchain: GNU Tools for STM32 (10.3-2021.10)
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../Core/Library/FreeModbus/mb.c \
../Core/Library/FreeModbus/mb_m.c \
../Core/Library/FreeModbus/mbcrc.c \
../Core/Library/FreeModbus/mbfunccoils.c \
../Core/Library/FreeModbus/mbfunccoils_m.c \
../Core/Library/FreeModbus/mbfuncdiag.c \
../Core/Library/FreeModbus/mbfuncdisc.c \
../Core/Library/FreeModbus/mbfuncdisc_m.c \
../Core/Library/FreeModbus/mbfuncholding.c \
../Core/Library/FreeModbus/mbfuncholding_m.c \
../Core/Library/FreeModbus/mbfuncinput.c \
../Core/Library/FreeModbus/mbfuncinput_m.c \
../Core/Library/FreeModbus/mbfuncother.c \
../Core/Library/FreeModbus/mbrtu.c \
../Core/Library/FreeModbus/mbrtu_m.c \
../Core/Library/FreeModbus/mbutils.c \
../Core/Library/FreeModbus/portcritical.c \
../Core/Library/FreeModbus/portevent.c \
../Core/Library/FreeModbus/portevent_m.c \
../Core/Library/FreeModbus/portserial.c \
../Core/Library/FreeModbus/portserial_m.c \
../Core/Library/FreeModbus/porttimer.c \
../Core/Library/FreeModbus/porttimer_m.c \
../Core/Library/FreeModbus/user_mb_app.c \
../Core/Library/FreeModbus/user_mb_app_m.c 

C_DEPS += \
./Core/Library/FreeModbus/mb.d \
./Core/Library/FreeModbus/mb_m.d \
./Core/Library/FreeModbus/mbcrc.d \
./Core/Library/FreeModbus/mbfunccoils.d \
./Core/Library/FreeModbus/mbfunccoils_m.d \
./Core/Library/FreeModbus/mbfuncdiag.d \
./Core/Library/FreeModbus/mbfuncdisc.d \
./Core/Library/FreeModbus/mbfuncdisc_m.d \
./Core/Library/FreeModbus/mbfuncholding.d \
./Core/Library/FreeModbus/mbfuncholding_m.d \
./Core/Library/FreeModbus/mbfuncinput.d \
./Core/Library/FreeModbus/mbfuncinput_m.d \
./Core/Library/FreeModbus/mbfuncother.d \
./Core/Library/FreeModbus/mbrtu.d \
./Core/Library/FreeModbus/mbrtu_m.d \
./Core/Library/FreeModbus/mbutils.d \
./Core/Library/FreeModbus/portcritical.d \
./Core/Library/FreeModbus/portevent.d \
./Core/Library/FreeModbus/portevent_m.d \
./Core/Library/FreeModbus/portserial.d \
./Core/Library/FreeModbus/portserial_m.d \
./Core/Library/FreeModbus/porttimer.d \
./Core/Library/FreeModbus/porttimer_m.d \
./Core/Library/FreeModbus/user_mb_app.d \
./Core/Library/FreeModbus/user_mb_app_m.d 

OBJS += \
./Core/Library/FreeModbus/mb.o \
./Core/Library/FreeModbus/mb_m.o \
./Core/Library/FreeModbus/mbcrc.o \
./Core/Library/FreeModbus/mbfunccoils.o \
./Core/Library/FreeModbus/mbfunccoils_m.o \
./Core/Library/FreeModbus/mbfuncdiag.o \
./Core/Library/FreeModbus/mbfuncdisc.o \
./Core/Library/FreeModbus/mbfuncdisc_m.o \
./Core/Library/FreeModbus/mbfuncholding.o \
./Core/Library/FreeModbus/mbfuncholding_m.o \
./Core/Library/FreeModbus/mbfuncinput.o \
./Core/Library/FreeModbus/mbfuncinput_m.o \
./Core/Library/FreeModbus/mbfuncother.o \
./Core/Library/FreeModbus/mbrtu.o \
./Core/Library/FreeModbus/mbrtu_m.o \
./Core/Library/FreeModbus/mbutils.o \
./Core/Library/FreeModbus/portcritical.o \
./Core/Library/FreeModbus/portevent.o \
./Core/Library/FreeModbus/portevent_m.o \
./Core/Library/FreeModbus/portserial.o \
./Core/Library/FreeModbus/portserial_m.o \
./Core/Library/FreeModbus/porttimer.o \
./Core/Library/FreeModbus/porttimer_m.o \
./Core/Library/FreeModbus/user_mb_app.o \
./Core/Library/FreeModbus/user_mb_app_m.o 


# Each subdirectory must supply rules for building sources it contributes
Core/Library/FreeModbus/%.o Core/Library/FreeModbus/%.su: ../Core/Library/FreeModbus/%.c Core/Library/FreeModbus/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m4 -std=gnu11 -g3 -DDEBUG -DUSE_HAL_DRIVER -DSTM32F407xx -c -I../Core/Inc -I"E:/Work at THACO/AMR/STM32/STM32_CubeIDE/0809_RTU_ROS_2/Core/Library/FreeModbus" -I../Drivers/STM32F4xx_HAL_Driver/Inc -I../Drivers/STM32F4xx_HAL_Driver/Inc/Legacy -I../Drivers/CMSIS/Device/ST/STM32F4xx/Include -I../Drivers/CMSIS/Include -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfpu=fpv4-sp-d16 -mfloat-abi=hard -mthumb -o "$@"

clean: clean-Core-2f-Library-2f-FreeModbus

clean-Core-2f-Library-2f-FreeModbus:
	-$(RM) ./Core/Library/FreeModbus/mb.d ./Core/Library/FreeModbus/mb.o ./Core/Library/FreeModbus/mb.su ./Core/Library/FreeModbus/mb_m.d ./Core/Library/FreeModbus/mb_m.o ./Core/Library/FreeModbus/mb_m.su ./Core/Library/FreeModbus/mbcrc.d ./Core/Library/FreeModbus/mbcrc.o ./Core/Library/FreeModbus/mbcrc.su ./Core/Library/FreeModbus/mbfunccoils.d ./Core/Library/FreeModbus/mbfunccoils.o ./Core/Library/FreeModbus/mbfunccoils.su ./Core/Library/FreeModbus/mbfunccoils_m.d ./Core/Library/FreeModbus/mbfunccoils_m.o ./Core/Library/FreeModbus/mbfunccoils_m.su ./Core/Library/FreeModbus/mbfuncdiag.d ./Core/Library/FreeModbus/mbfuncdiag.o ./Core/Library/FreeModbus/mbfuncdiag.su ./Core/Library/FreeModbus/mbfuncdisc.d ./Core/Library/FreeModbus/mbfuncdisc.o ./Core/Library/FreeModbus/mbfuncdisc.su ./Core/Library/FreeModbus/mbfuncdisc_m.d ./Core/Library/FreeModbus/mbfuncdisc_m.o ./Core/Library/FreeModbus/mbfuncdisc_m.su ./Core/Library/FreeModbus/mbfuncholding.d ./Core/Library/FreeModbus/mbfuncholding.o ./Core/Library/FreeModbus/mbfuncholding.su ./Core/Library/FreeModbus/mbfuncholding_m.d ./Core/Library/FreeModbus/mbfuncholding_m.o ./Core/Library/FreeModbus/mbfuncholding_m.su ./Core/Library/FreeModbus/mbfuncinput.d ./Core/Library/FreeModbus/mbfuncinput.o ./Core/Library/FreeModbus/mbfuncinput.su ./Core/Library/FreeModbus/mbfuncinput_m.d ./Core/Library/FreeModbus/mbfuncinput_m.o ./Core/Library/FreeModbus/mbfuncinput_m.su ./Core/Library/FreeModbus/mbfuncother.d ./Core/Library/FreeModbus/mbfuncother.o ./Core/Library/FreeModbus/mbfuncother.su ./Core/Library/FreeModbus/mbrtu.d ./Core/Library/FreeModbus/mbrtu.o ./Core/Library/FreeModbus/mbrtu.su ./Core/Library/FreeModbus/mbrtu_m.d ./Core/Library/FreeModbus/mbrtu_m.o ./Core/Library/FreeModbus/mbrtu_m.su ./Core/Library/FreeModbus/mbutils.d ./Core/Library/FreeModbus/mbutils.o ./Core/Library/FreeModbus/mbutils.su ./Core/Library/FreeModbus/portcritical.d ./Core/Library/FreeModbus/portcritical.o ./Core/Library/FreeModbus/portcritical.su ./Core/Library/FreeModbus/portevent.d ./Core/Library/FreeModbus/portevent.o ./Core/Library/FreeModbus/portevent.su ./Core/Library/FreeModbus/portevent_m.d ./Core/Library/FreeModbus/portevent_m.o ./Core/Library/FreeModbus/portevent_m.su ./Core/Library/FreeModbus/portserial.d ./Core/Library/FreeModbus/portserial.o ./Core/Library/FreeModbus/portserial.su ./Core/Library/FreeModbus/portserial_m.d ./Core/Library/FreeModbus/portserial_m.o ./Core/Library/FreeModbus/portserial_m.su ./Core/Library/FreeModbus/porttimer.d ./Core/Library/FreeModbus/porttimer.o ./Core/Library/FreeModbus/porttimer.su ./Core/Library/FreeModbus/porttimer_m.d ./Core/Library/FreeModbus/porttimer_m.o ./Core/Library/FreeModbus/porttimer_m.su ./Core/Library/FreeModbus/user_mb_app.d ./Core/Library/FreeModbus/user_mb_app.o ./Core/Library/FreeModbus/user_mb_app.su ./Core/Library/FreeModbus/user_mb_app_m.d ./Core/Library/FreeModbus/user_mb_app_m.o ./Core/Library/FreeModbus/user_mb_app_m.su

.PHONY: clean-Core-2f-Library-2f-FreeModbus

