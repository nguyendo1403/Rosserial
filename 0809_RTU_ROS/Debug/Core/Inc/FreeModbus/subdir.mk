################################################################################
# Automatically-generated file. Do not edit!
# Toolchain: GNU Tools for STM32 (10.3-2021.10)
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../Core/Inc/FreeModbus/mb.c \
../Core/Inc/FreeModbus/mb_m.c \
../Core/Inc/FreeModbus/mbcrc.c \
../Core/Inc/FreeModbus/mbfunccoils.c \
../Core/Inc/FreeModbus/mbfunccoils_m.c \
../Core/Inc/FreeModbus/mbfuncdiag.c \
../Core/Inc/FreeModbus/mbfuncdisc.c \
../Core/Inc/FreeModbus/mbfuncdisc_m.c \
../Core/Inc/FreeModbus/mbfuncholding.c \
../Core/Inc/FreeModbus/mbfuncholding_m.c \
../Core/Inc/FreeModbus/mbfuncinput.c \
../Core/Inc/FreeModbus/mbfuncinput_m.c \
../Core/Inc/FreeModbus/mbfuncother.c \
../Core/Inc/FreeModbus/mbrtu.c \
../Core/Inc/FreeModbus/mbrtu_m.c \
../Core/Inc/FreeModbus/mbutils.c \
../Core/Inc/FreeModbus/portcritical.c \
../Core/Inc/FreeModbus/portevent.c \
../Core/Inc/FreeModbus/portevent_m.c \
../Core/Inc/FreeModbus/portserial.c \
../Core/Inc/FreeModbus/portserial_m.c \
../Core/Inc/FreeModbus/porttimer.c \
../Core/Inc/FreeModbus/porttimer_m.c \
../Core/Inc/FreeModbus/user_mb_app.c \
../Core/Inc/FreeModbus/user_mb_app_m.c 

C_DEPS += \
./Core/Inc/FreeModbus/mb.d \
./Core/Inc/FreeModbus/mb_m.d \
./Core/Inc/FreeModbus/mbcrc.d \
./Core/Inc/FreeModbus/mbfunccoils.d \
./Core/Inc/FreeModbus/mbfunccoils_m.d \
./Core/Inc/FreeModbus/mbfuncdiag.d \
./Core/Inc/FreeModbus/mbfuncdisc.d \
./Core/Inc/FreeModbus/mbfuncdisc_m.d \
./Core/Inc/FreeModbus/mbfuncholding.d \
./Core/Inc/FreeModbus/mbfuncholding_m.d \
./Core/Inc/FreeModbus/mbfuncinput.d \
./Core/Inc/FreeModbus/mbfuncinput_m.d \
./Core/Inc/FreeModbus/mbfuncother.d \
./Core/Inc/FreeModbus/mbrtu.d \
./Core/Inc/FreeModbus/mbrtu_m.d \
./Core/Inc/FreeModbus/mbutils.d \
./Core/Inc/FreeModbus/portcritical.d \
./Core/Inc/FreeModbus/portevent.d \
./Core/Inc/FreeModbus/portevent_m.d \
./Core/Inc/FreeModbus/portserial.d \
./Core/Inc/FreeModbus/portserial_m.d \
./Core/Inc/FreeModbus/porttimer.d \
./Core/Inc/FreeModbus/porttimer_m.d \
./Core/Inc/FreeModbus/user_mb_app.d \
./Core/Inc/FreeModbus/user_mb_app_m.d 

OBJS += \
./Core/Inc/FreeModbus/mb.o \
./Core/Inc/FreeModbus/mb_m.o \
./Core/Inc/FreeModbus/mbcrc.o \
./Core/Inc/FreeModbus/mbfunccoils.o \
./Core/Inc/FreeModbus/mbfunccoils_m.o \
./Core/Inc/FreeModbus/mbfuncdiag.o \
./Core/Inc/FreeModbus/mbfuncdisc.o \
./Core/Inc/FreeModbus/mbfuncdisc_m.o \
./Core/Inc/FreeModbus/mbfuncholding.o \
./Core/Inc/FreeModbus/mbfuncholding_m.o \
./Core/Inc/FreeModbus/mbfuncinput.o \
./Core/Inc/FreeModbus/mbfuncinput_m.o \
./Core/Inc/FreeModbus/mbfuncother.o \
./Core/Inc/FreeModbus/mbrtu.o \
./Core/Inc/FreeModbus/mbrtu_m.o \
./Core/Inc/FreeModbus/mbutils.o \
./Core/Inc/FreeModbus/portcritical.o \
./Core/Inc/FreeModbus/portevent.o \
./Core/Inc/FreeModbus/portevent_m.o \
./Core/Inc/FreeModbus/portserial.o \
./Core/Inc/FreeModbus/portserial_m.o \
./Core/Inc/FreeModbus/porttimer.o \
./Core/Inc/FreeModbus/porttimer_m.o \
./Core/Inc/FreeModbus/user_mb_app.o \
./Core/Inc/FreeModbus/user_mb_app_m.o 


# Each subdirectory must supply rules for building sources it contributes
Core/Inc/FreeModbus/%.o Core/Inc/FreeModbus/%.su: ../Core/Inc/FreeModbus/%.c Core/Inc/FreeModbus/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m4 -std=gnu11 -g3 -DDEBUG -DUSE_HAL_DRIVER -DSTM32F407xx -c -I../Core/Inc -I../Drivers/STM32F4xx_HAL_Driver/Inc -I../Drivers/STM32F4xx_HAL_Driver/Inc/Legacy -I../Drivers/CMSIS/Device/ST/STM32F4xx/Include -I../Drivers/CMSIS/Include -I"E:/Work at THACO/AMR/STM32/STM32_CubeIDE/0809_RTU_ROS/FreeModbus" -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfpu=fpv4-sp-d16 -mfloat-abi=hard -mthumb -o "$@"

clean: clean-Core-2f-Inc-2f-FreeModbus

clean-Core-2f-Inc-2f-FreeModbus:
	-$(RM) ./Core/Inc/FreeModbus/mb.d ./Core/Inc/FreeModbus/mb.o ./Core/Inc/FreeModbus/mb.su ./Core/Inc/FreeModbus/mb_m.d ./Core/Inc/FreeModbus/mb_m.o ./Core/Inc/FreeModbus/mb_m.su ./Core/Inc/FreeModbus/mbcrc.d ./Core/Inc/FreeModbus/mbcrc.o ./Core/Inc/FreeModbus/mbcrc.su ./Core/Inc/FreeModbus/mbfunccoils.d ./Core/Inc/FreeModbus/mbfunccoils.o ./Core/Inc/FreeModbus/mbfunccoils.su ./Core/Inc/FreeModbus/mbfunccoils_m.d ./Core/Inc/FreeModbus/mbfunccoils_m.o ./Core/Inc/FreeModbus/mbfunccoils_m.su ./Core/Inc/FreeModbus/mbfuncdiag.d ./Core/Inc/FreeModbus/mbfuncdiag.o ./Core/Inc/FreeModbus/mbfuncdiag.su ./Core/Inc/FreeModbus/mbfuncdisc.d ./Core/Inc/FreeModbus/mbfuncdisc.o ./Core/Inc/FreeModbus/mbfuncdisc.su ./Core/Inc/FreeModbus/mbfuncdisc_m.d ./Core/Inc/FreeModbus/mbfuncdisc_m.o ./Core/Inc/FreeModbus/mbfuncdisc_m.su ./Core/Inc/FreeModbus/mbfuncholding.d ./Core/Inc/FreeModbus/mbfuncholding.o ./Core/Inc/FreeModbus/mbfuncholding.su ./Core/Inc/FreeModbus/mbfuncholding_m.d ./Core/Inc/FreeModbus/mbfuncholding_m.o ./Core/Inc/FreeModbus/mbfuncholding_m.su ./Core/Inc/FreeModbus/mbfuncinput.d ./Core/Inc/FreeModbus/mbfuncinput.o ./Core/Inc/FreeModbus/mbfuncinput.su ./Core/Inc/FreeModbus/mbfuncinput_m.d ./Core/Inc/FreeModbus/mbfuncinput_m.o ./Core/Inc/FreeModbus/mbfuncinput_m.su ./Core/Inc/FreeModbus/mbfuncother.d ./Core/Inc/FreeModbus/mbfuncother.o ./Core/Inc/FreeModbus/mbfuncother.su ./Core/Inc/FreeModbus/mbrtu.d ./Core/Inc/FreeModbus/mbrtu.o ./Core/Inc/FreeModbus/mbrtu.su ./Core/Inc/FreeModbus/mbrtu_m.d ./Core/Inc/FreeModbus/mbrtu_m.o ./Core/Inc/FreeModbus/mbrtu_m.su ./Core/Inc/FreeModbus/mbutils.d ./Core/Inc/FreeModbus/mbutils.o ./Core/Inc/FreeModbus/mbutils.su ./Core/Inc/FreeModbus/portcritical.d ./Core/Inc/FreeModbus/portcritical.o ./Core/Inc/FreeModbus/portcritical.su ./Core/Inc/FreeModbus/portevent.d ./Core/Inc/FreeModbus/portevent.o ./Core/Inc/FreeModbus/portevent.su ./Core/Inc/FreeModbus/portevent_m.d ./Core/Inc/FreeModbus/portevent_m.o ./Core/Inc/FreeModbus/portevent_m.su ./Core/Inc/FreeModbus/portserial.d ./Core/Inc/FreeModbus/portserial.o ./Core/Inc/FreeModbus/portserial.su ./Core/Inc/FreeModbus/portserial_m.d ./Core/Inc/FreeModbus/portserial_m.o ./Core/Inc/FreeModbus/portserial_m.su ./Core/Inc/FreeModbus/porttimer.d ./Core/Inc/FreeModbus/porttimer.o ./Core/Inc/FreeModbus/porttimer.su ./Core/Inc/FreeModbus/porttimer_m.d ./Core/Inc/FreeModbus/porttimer_m.o ./Core/Inc/FreeModbus/porttimer_m.su ./Core/Inc/FreeModbus/user_mb_app.d ./Core/Inc/FreeModbus/user_mb_app.o ./Core/Inc/FreeModbus/user_mb_app.su ./Core/Inc/FreeModbus/user_mb_app_m.d ./Core/Inc/FreeModbus/user_mb_app_m.o ./Core/Inc/FreeModbus/user_mb_app_m.su

.PHONY: clean-Core-2f-Inc-2f-FreeModbus

