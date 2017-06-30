################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
CPP_SRCS += \
D:\looke\Arduino\libraries\EigenCalcForARM\BasicMatrix.cpp \
D:\looke\Arduino\libraries\EigenCalcForARM\BasicVector.cpp \
D:\looke\Arduino\libraries\EigenCalcForARM\BigStaticMatrix.cpp \
D:\looke\Arduino\libraries\EigenCalcForARM\BigStaticVector.cpp \
D:\looke\Arduino\libraries\EigenCalcForARM\StaticMatrix.cpp \
D:\looke\Arduino\libraries\EigenCalcForARM\StaticVector.cpp 

LINK_OBJ += \
.\libraries\EigenCalcForARM\BasicMatrix.cpp.o \
.\libraries\EigenCalcForARM\BasicVector.cpp.o \
.\libraries\EigenCalcForARM\BigStaticMatrix.cpp.o \
.\libraries\EigenCalcForARM\BigStaticVector.cpp.o \
.\libraries\EigenCalcForARM\StaticMatrix.cpp.o \
.\libraries\EigenCalcForARM\StaticVector.cpp.o 

CPP_DEPS += \
.\libraries\EigenCalcForARM\BasicMatrix.cpp.d \
.\libraries\EigenCalcForARM\BasicVector.cpp.d \
.\libraries\EigenCalcForARM\BigStaticMatrix.cpp.d \
.\libraries\EigenCalcForARM\BigStaticVector.cpp.d \
.\libraries\EigenCalcForARM\StaticMatrix.cpp.d \
.\libraries\EigenCalcForARM\StaticVector.cpp.d 


# Each subdirectory must supply rules for building sources it contributes
libraries\EigenCalcForARM\BasicMatrix.cpp.o: D:\looke\Arduino\libraries\EigenCalcForARM\BasicMatrix.cpp
	@echo 'Building file: $<'
	@echo 'Starting C++ compile'
	"D:\Develop\sloeber\/arduinoPlugin/packages/arduino/tools/avr-gcc/4.9.2-atmel3.5.4-arduino2/bin/avr-g++" -c -g -Os -Wall -Wextra -std=gnu++11 -fpermissive -fno-exceptions -ffunction-sections -fdata-sections -fno-threadsafe-statics -flto -mmcu=atmega328p -DF_CPU=16000000L -DARDUINO=10802 -DARDUINO_AVR_UNO -DARDUINO_ARCH_AVR   -I"D:\Develop\sloeber\arduinoPlugin\packages\arduino\hardware\avr\1.6.19\cores\arduino" -I"D:\looke\CppWorkspace\EigenCalcForARM\src" -I"D:\looke\SloeberWorkspace\MPU9250SPI" -I"D:\Develop\sloeber\arduinoPlugin\packages\arduino\hardware\avr\1.6.19\variants\standard" -I"D:\Develop\sloeber\arduinoPlugin\packages\arduino\hardware\avr\1.6.19\libraries\SPI" -I"D:\Develop\sloeber\arduinoPlugin\packages\arduino\hardware\avr\1.6.19\libraries\SPI\src" -I"D:\looke\Arduino\libraries\EigenCalcForARM" -I"D:\looke\Arduino\libraries\LowPassFilter" -I"D:\looke\Arduino\libraries\MPU9250SPI" -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" -D__IN_ECLIPSE__=1 -x c++ "$<"  -o  "$@"
	@echo 'Finished building: $<'
	@echo ' '

libraries\EigenCalcForARM\BasicVector.cpp.o: D:\looke\Arduino\libraries\EigenCalcForARM\BasicVector.cpp
	@echo 'Building file: $<'
	@echo 'Starting C++ compile'
	"D:\Develop\sloeber\/arduinoPlugin/packages/arduino/tools/avr-gcc/4.9.2-atmel3.5.4-arduino2/bin/avr-g++" -c -g -Os -Wall -Wextra -std=gnu++11 -fpermissive -fno-exceptions -ffunction-sections -fdata-sections -fno-threadsafe-statics -flto -mmcu=atmega328p -DF_CPU=16000000L -DARDUINO=10802 -DARDUINO_AVR_UNO -DARDUINO_ARCH_AVR   -I"D:\Develop\sloeber\arduinoPlugin\packages\arduino\hardware\avr\1.6.19\cores\arduino" -I"D:\looke\CppWorkspace\EigenCalcForARM\src" -I"D:\looke\SloeberWorkspace\MPU9250SPI" -I"D:\Develop\sloeber\arduinoPlugin\packages\arduino\hardware\avr\1.6.19\variants\standard" -I"D:\Develop\sloeber\arduinoPlugin\packages\arduino\hardware\avr\1.6.19\libraries\SPI" -I"D:\Develop\sloeber\arduinoPlugin\packages\arduino\hardware\avr\1.6.19\libraries\SPI\src" -I"D:\looke\Arduino\libraries\EigenCalcForARM" -I"D:\looke\Arduino\libraries\LowPassFilter" -I"D:\looke\Arduino\libraries\MPU9250SPI" -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" -D__IN_ECLIPSE__=1 -x c++ "$<"  -o  "$@"
	@echo 'Finished building: $<'
	@echo ' '

libraries\EigenCalcForARM\BigStaticMatrix.cpp.o: D:\looke\Arduino\libraries\EigenCalcForARM\BigStaticMatrix.cpp
	@echo 'Building file: $<'
	@echo 'Starting C++ compile'
	"D:\Develop\sloeber\/arduinoPlugin/packages/arduino/tools/avr-gcc/4.9.2-atmel3.5.4-arduino2/bin/avr-g++" -c -g -Os -Wall -Wextra -std=gnu++11 -fpermissive -fno-exceptions -ffunction-sections -fdata-sections -fno-threadsafe-statics -flto -mmcu=atmega328p -DF_CPU=16000000L -DARDUINO=10802 -DARDUINO_AVR_UNO -DARDUINO_ARCH_AVR   -I"D:\Develop\sloeber\arduinoPlugin\packages\arduino\hardware\avr\1.6.19\cores\arduino" -I"D:\looke\CppWorkspace\EigenCalcForARM\src" -I"D:\looke\SloeberWorkspace\MPU9250SPI" -I"D:\Develop\sloeber\arduinoPlugin\packages\arduino\hardware\avr\1.6.19\variants\standard" -I"D:\Develop\sloeber\arduinoPlugin\packages\arduino\hardware\avr\1.6.19\libraries\SPI" -I"D:\Develop\sloeber\arduinoPlugin\packages\arduino\hardware\avr\1.6.19\libraries\SPI\src" -I"D:\looke\Arduino\libraries\EigenCalcForARM" -I"D:\looke\Arduino\libraries\LowPassFilter" -I"D:\looke\Arduino\libraries\MPU9250SPI" -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" -D__IN_ECLIPSE__=1 -x c++ "$<"  -o  "$@"
	@echo 'Finished building: $<'
	@echo ' '

libraries\EigenCalcForARM\BigStaticVector.cpp.o: D:\looke\Arduino\libraries\EigenCalcForARM\BigStaticVector.cpp
	@echo 'Building file: $<'
	@echo 'Starting C++ compile'
	"D:\Develop\sloeber\/arduinoPlugin/packages/arduino/tools/avr-gcc/4.9.2-atmel3.5.4-arduino2/bin/avr-g++" -c -g -Os -Wall -Wextra -std=gnu++11 -fpermissive -fno-exceptions -ffunction-sections -fdata-sections -fno-threadsafe-statics -flto -mmcu=atmega328p -DF_CPU=16000000L -DARDUINO=10802 -DARDUINO_AVR_UNO -DARDUINO_ARCH_AVR   -I"D:\Develop\sloeber\arduinoPlugin\packages\arduino\hardware\avr\1.6.19\cores\arduino" -I"D:\looke\CppWorkspace\EigenCalcForARM\src" -I"D:\looke\SloeberWorkspace\MPU9250SPI" -I"D:\Develop\sloeber\arduinoPlugin\packages\arduino\hardware\avr\1.6.19\variants\standard" -I"D:\Develop\sloeber\arduinoPlugin\packages\arduino\hardware\avr\1.6.19\libraries\SPI" -I"D:\Develop\sloeber\arduinoPlugin\packages\arduino\hardware\avr\1.6.19\libraries\SPI\src" -I"D:\looke\Arduino\libraries\EigenCalcForARM" -I"D:\looke\Arduino\libraries\LowPassFilter" -I"D:\looke\Arduino\libraries\MPU9250SPI" -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" -D__IN_ECLIPSE__=1 -x c++ "$<"  -o  "$@"
	@echo 'Finished building: $<'
	@echo ' '

libraries\EigenCalcForARM\StaticMatrix.cpp.o: D:\looke\Arduino\libraries\EigenCalcForARM\StaticMatrix.cpp
	@echo 'Building file: $<'
	@echo 'Starting C++ compile'
	"D:\Develop\sloeber\/arduinoPlugin/packages/arduino/tools/avr-gcc/4.9.2-atmel3.5.4-arduino2/bin/avr-g++" -c -g -Os -Wall -Wextra -std=gnu++11 -fpermissive -fno-exceptions -ffunction-sections -fdata-sections -fno-threadsafe-statics -flto -mmcu=atmega328p -DF_CPU=16000000L -DARDUINO=10802 -DARDUINO_AVR_UNO -DARDUINO_ARCH_AVR   -I"D:\Develop\sloeber\arduinoPlugin\packages\arduino\hardware\avr\1.6.19\cores\arduino" -I"D:\looke\CppWorkspace\EigenCalcForARM\src" -I"D:\looke\SloeberWorkspace\MPU9250SPI" -I"D:\Develop\sloeber\arduinoPlugin\packages\arduino\hardware\avr\1.6.19\variants\standard" -I"D:\Develop\sloeber\arduinoPlugin\packages\arduino\hardware\avr\1.6.19\libraries\SPI" -I"D:\Develop\sloeber\arduinoPlugin\packages\arduino\hardware\avr\1.6.19\libraries\SPI\src" -I"D:\looke\Arduino\libraries\EigenCalcForARM" -I"D:\looke\Arduino\libraries\LowPassFilter" -I"D:\looke\Arduino\libraries\MPU9250SPI" -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" -D__IN_ECLIPSE__=1 -x c++ "$<"  -o  "$@"
	@echo 'Finished building: $<'
	@echo ' '

libraries\EigenCalcForARM\StaticVector.cpp.o: D:\looke\Arduino\libraries\EigenCalcForARM\StaticVector.cpp
	@echo 'Building file: $<'
	@echo 'Starting C++ compile'
	"D:\Develop\sloeber\/arduinoPlugin/packages/arduino/tools/avr-gcc/4.9.2-atmel3.5.4-arduino2/bin/avr-g++" -c -g -Os -Wall -Wextra -std=gnu++11 -fpermissive -fno-exceptions -ffunction-sections -fdata-sections -fno-threadsafe-statics -flto -mmcu=atmega328p -DF_CPU=16000000L -DARDUINO=10802 -DARDUINO_AVR_UNO -DARDUINO_ARCH_AVR   -I"D:\Develop\sloeber\arduinoPlugin\packages\arduino\hardware\avr\1.6.19\cores\arduino" -I"D:\looke\CppWorkspace\EigenCalcForARM\src" -I"D:\looke\SloeberWorkspace\MPU9250SPI" -I"D:\Develop\sloeber\arduinoPlugin\packages\arduino\hardware\avr\1.6.19\variants\standard" -I"D:\Develop\sloeber\arduinoPlugin\packages\arduino\hardware\avr\1.6.19\libraries\SPI" -I"D:\Develop\sloeber\arduinoPlugin\packages\arduino\hardware\avr\1.6.19\libraries\SPI\src" -I"D:\looke\Arduino\libraries\EigenCalcForARM" -I"D:\looke\Arduino\libraries\LowPassFilter" -I"D:\looke\Arduino\libraries\MPU9250SPI" -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" -D__IN_ECLIPSE__=1 -x c++ "$<"  -o  "$@"
	@echo 'Finished building: $<'
	@echo ' '


