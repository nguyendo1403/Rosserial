################################################################################
# Automatically-generated file. Do not edit!
# Toolchain: GNU Tools for STM32 (10.3-2021.10)
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../FreeModbus/mb.c \
../FreeModbus/mb_m.c \
../FreeModbus/mbcrc.c \
../FreeModbus/mbfunccoils.c \
../FreeModbus/mbfunccoils_m.c \
../FreeModbus/mbfuncdiag.c \
../FreeModbus/mbfuncdisc.c \
../FreeModbus/mbfuncdisc_m.c \
../FreeModbus/mbfuncholding.c \
../FreeModbus/mbfuncholding_m.c \
../FreeModbus/mbfuncinput.c \
../FreeModbus/mbfuncinput_m.c \
../FreeModbus/mbfuncother.c \
../FreeModbus/mbrtu.c \
../FreeModbus/mbrtu_m.c \
../FreeModbus/mbutils.c \
../FreeModbus/portcritical.c \
../FreeModbus/portevent.c \
../FreeModbus/portevent_m.c \
../FreeModbus/portserial.c \
../FreeModbus/portserial_m.c \
../FreeModbus/porttimer.c \
../FreeModbus/porttimer_m.c \
../FreeModbus/user_mb_app.c \
../FreeModbus/user_mb_app_m.c 

C_DEPS += \
./FreeModbus/mb.d \
./FreeModbus/mb_m.d \
./FreeModbus/mbcrc.d \
./FreeModbus/mbfunccoils.d \
./FreeModbus/mbfunccoils_m.d \
./FreeModbus/mbfuncdiag.d \
./FreeModbus/mbfuncdisc.d \
./FreeModbus/mbfuncdisc_m.d \
./FreeModbus/mbfuncholding.d \
./FreeModbus/mbfuncholding_m.d \
./FreeModbus/mbfuncinput.d \
./FreeModbus/mbfuncinput_m.d \
./FreeModbus/mbfuncother.d \
./FreeModbus/mbrtu.d \
./FreeModbus/mbrtu_m.d \
./FreeModbus/mbutils.d \
./FreeModbus/portcritical.d \
./FreeModbus/portevent.d \
./FreeModbus/portevent_m.d \
./FreeModbus/portserial.d \
./FreeModbus/portserial_m.d \
./FreeModbus/porttimer.d \
./FreeModbus/porttimer_m.d \
./FreeModbus/user_mb_app.d \
./FreeModbus/user_mb_app_m.d 

OBJS += \
./FreeModbus/mb.o \
./FreeModbus/mb_m.o \
./FreeModbus/mbcrc.o \
./FreeModbus/mbfunccoils.o \
./FreeModbus/mbfunccoils_m.o \
./FreeModbus/mbfuncdiag.o \
./FreeModbus/mbfuncdisc.o \
./FreeModbus/mbfuncdisc_m.o \
./FreeModbus/mbfuncholding.o \
./FreeModbus/mbfuncholding_m.o \
./FreeModbus/mbfuncinput.o \
./FreeModbus/mbfuncinput_m.o \
./FreeModbus/mbfuncother.o \
./FreeModbus/mbrtu.o \
./FreeModbus/mbrtu_m.o \
./FreeModbus/mbutils.o \
./FreeModbus/portcritical.o \
./FreeModbus/portevent.o \
./FreeModbus/portevent_m.o \
./FreeModbus/portserial.o \
./FreeModbus/portserial_m.o \
./FreeModbus/porttimer.o \
./FreeModbus/porttimer_m.o \
./FreeModbus/user_mb_app.o \
./FreeModbus/user_mb_app_m.o 


# Each subdirectory must supply rules for building sources it contributes
FreeModbus/%.o FreeModbus/%.su: ../FreeModbus/%.c FreeModbus/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m4 -std=gnu11 -g3 -DDEBUG -DUSE_HAL_DRIVER -DSTM32F407xx -c -I../Core/Inc -I../Drivers/STM32F4xx_HAL_Driver/Inc -I../Drivers/STM32F4xx_HAL_Driver/Inc/Legacy -I../Drivers/CMSIS/Device/ST/STM32F4xx/Include -I../Drivers/CMSIS/Include -I"E:/Work at THACO/AMR/STM32/STM32_CubeIDE/0809_RTU_ROS/FreeModbus" -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfpu=fpv4-sp-d16 -mfloat-abi=hard -mthumb -o "$@"

clean: clean-FreeModbus

clean-FreeModbus:
	-$(RM) ./FreeModbus/mb.d ./FreeModbus/mb.o ./FreeModbus/mb.su ./FreeModbus/mb_m.d ./FreeModbus/mb_m.o ./FreeModbus/mb_m.su ./FreeModbus/mbcrc.d ./FreeModbus/mbcrc.o ./FreeModbus/mbcrc.su ./FreeModbus/mbfunccoils.d ./FreeModbus/mbfunccoils.o ./FreeModbus/mbfunccoils.su ./FreeModbus/mbfunccoils_m.d ./FreeModbus/mbfunccoils_m.o ./FreeModbus/mbfunccoils_m.su ./FreeModbus/mbfuncdiag.d ./FreeModbus/mbfuncdiag.o ./FreeModbus/mbfuncdiag.su ./FreeModbus/mbfuncdisc.d ./FreeModbus/mbfuncdisc.o ./FreeModbus/mbfuncdisc.su ./FreeModbus/mbfuncdisc_m.d ./FreeModbus/mbfuncdisc_m.o ./FreeModbus/mbfuncdisc_m.su ./FreeModbus/mbfuncholding.d ./FreeModbus/mbfuncholding.o ./FreeModbus/mbfuncholding.su ./FreeModbus/mbfuncholding_m.d ./FreeModbus/mbfuncholding_m.o ./FreeModbus/mbfuncholding_m.su ./FreeModbus/mbfuncinput.d ./FreeModbus/mbfuncinput.o ./FreeModbus/mbfuncinput.su ./FreeModbus/mbfuncinput_m.d ./FreeModbus/mbfuncinput_m.o ./FreeModbus/mbfuncinput_m.su ./FreeModbus/mbfuncother.d ./FreeModbus/mbfuncother.o ./FreeModbus/mbfuncother.su ./FreeModbus/mbrtu.d ./FreeModbus/mbrtu.o ./FreeModbus/mbrtu.su ./FreeModbus/mbrtu_m.d ./FreeModbus/mbrtu_m.o ./FreeModbus/mbrtu_m.su ./FreeModbus/mbutils.d ./FreeModbus/mbutils.o ./FreeModbus/mbutils.su ./FreeModbus/portcritical.d ./FreeModbus/portcritical.o ./FreeModbus/portcritical.su ./FreeModbus/portevent.d ./FreeModbus/portevent.o ./FreeModbus/portevent.su ./FreeModbus/portevent_m.d ./FreeModbus/portevent_m.o ./FreeModbus/portevent_m.su ./FreeModbus/portserial.d ./FreeModbus/portserial.o ./FreeModbus/portserial.su ./FreeModbus/portserial_m.d ./FreeModbus/portserial_m.o ./FreeModbus/portserial_m.su ./FreeModbus/porttimer.d ./FreeModbus/porttimer.o ./FreeModbus/porttimer.su ./FreeModbus/porttimer_m.d ./FreeModbus/porttimer_m.o ./FreeModbus/porttimer_m.su ./FreeModbus/user_mb_app.d ./FreeModbus/user_mb_app.o ./FreeModbus/user_mb_app.su ./FreeModbus/user_mb_app_m.d ./FreeModbus/user_mb_app_m.o ./FreeModbus/user_mb_app_m.su

.PHONY: clean-FreeModbus

