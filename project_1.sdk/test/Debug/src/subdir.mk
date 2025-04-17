################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
LD_SRCS += \
../src/lscript.ld 

C_SRCS += \
../src/aad12d2000_1_cfg.c \
../src/ada16d6000_1_cfg.c \
../src/ada16d6000_1_reg.c \
../src/adc_config_ADC1.c \
../src/adc_config_ADC2.c \
../src/adc_config_ADC3.c \
../src/adc_config_ADC4.c \
../src/common_cfg.c \
../src/control_efuse.c \
../src/ctrl_204b.c \
../src/lmk04828_cfg.c \
../src/lmk04828_reg.c \
../src/lmx2592.c \
../src/main.c \
../src/offset_cal.c \
../src/spi.c \
../src/spi_cfg.c \
../src/write_memory.c 

OBJS += \
./src/aad12d2000_1_cfg.o \
./src/ada16d6000_1_cfg.o \
./src/ada16d6000_1_reg.o \
./src/adc_config_ADC1.o \
./src/adc_config_ADC2.o \
./src/adc_config_ADC3.o \
./src/adc_config_ADC4.o \
./src/common_cfg.o \
./src/control_efuse.o \
./src/ctrl_204b.o \
./src/lmk04828_cfg.o \
./src/lmk04828_reg.o \
./src/lmx2592.o \
./src/main.o \
./src/offset_cal.o \
./src/spi.o \
./src/spi_cfg.o \
./src/write_memory.o 

C_DEPS += \
./src/aad12d2000_1_cfg.d \
./src/ada16d6000_1_cfg.d \
./src/ada16d6000_1_reg.d \
./src/adc_config_ADC1.d \
./src/adc_config_ADC2.d \
./src/adc_config_ADC3.d \
./src/adc_config_ADC4.d \
./src/common_cfg.d \
./src/control_efuse.d \
./src/ctrl_204b.d \
./src/lmk04828_cfg.d \
./src/lmk04828_reg.d \
./src/lmx2592.d \
./src/main.d \
./src/offset_cal.d \
./src/spi.d \
./src/spi_cfg.d \
./src/write_memory.d 


# Each subdirectory must supply rules for building sources it contributes
src/%.o: ../src/%.c
	@echo 'Building file: $<'
	@echo 'Invoking: MicroBlaze gcc compiler'
	mb-gcc -Wall -O2 -g3 -c -fmessage-length=0 -MT"$@" -I../../test_bsp/microblaze_0/include -mlittle-endian -mcpu=v11.0 -mxl-soft-mul -Wl,--no-relax -ffunction-sections -fdata-sections -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@)" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


