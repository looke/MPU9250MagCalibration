################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
INO_SRCS += \
..\MPU9250MagCalibration.ino 

CPP_SRCS += \
..\.ino.cpp \
..\MPU9250MagCali.cpp 

LINK_OBJ += \
.\.ino.cpp.o \
.\MPU9250MagCali.cpp.o 

INO_DEPS += \
.\MPU9250MagCalibration.ino.d 

CPP_DEPS += \
.\.ino.cpp.d \
.\MPU9250MagCali.cpp.d 


# Each subdirectory must supply rules for building sources it contributes
.ino.cpp.o: ..\.ino.cpp
	@echo 'Building file: $<'
	@echo 'Starting C++ compile'
	"D:\Develop\sloeber\/arduinoPlugin/packages/arduino/tools/avr-gcc/4.9.2-atmel3.5.4-arduino2/bin/avr-g++" -c -g -Os -Wall -Wextra -std=gnu++11 -fpermissive -fno-exceptions -ffunction-sections -fdata-sections -fno-threadsafe-statics -flto -mmcu=atmega328p -DF_CPU=16000000L -DARDUINO=10802 -DARDUINO_AVR_UNO -DARDUINO_ARCH_AVR   -I"D:\Develop\sloeber\arduinoPlugin\packages\arduino\hardware\avr\1.6.19\cores\arduino" -I"D:\looke\CppWorkspace\EigenCalcForARM\src" -I"D:\looke\SloeberWorkspace\MPU9250SPI" -I"D:\Develop\sloeber\arduinoPlugin\packages\arduino\hardware\avr\1.6.19\variants\standard" -I"D:\Develop\sloeber\arduinoPlugin\packages\arduino\hardware\avr\1.6.19\libraries\SPI" -I"D:\Develop\sloeber\arduinoPlugin\packages\arduino\hardware\avr\1.6.19\libraries\SPI\src" -I"D:\looke\Arduino\libraries\EigenCalcForARM" -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" -D__IN_ECLIPSE__=1 -x c++ "$<"  -o  "$@"
	@echo 'Finished building: $<'
	@echo ' '

MPU9250MagCali.cpp.o: ..\MPU9250MagCali.cpp
	@echo 'Building file: $<'
	@echo 'Starting C++ compile'
	"D:\Develop\sloeber\/arduinoPlugin/packages/arduino/tools/avr-gcc/4.9.2-atmel3.5.4-arduino2/bin/avr-g++" -c -g -Os -Wall -Wextra -std=gnu++11 -fpermissive -fno-exceptions -ffunction-sections -fdata-sections -fno-threadsafe-statics -flto -mmcu=atmega328p -DF_CPU=16000000L -DARDUINO=10802 -DARDUINO_AVR_UNO -DARDUINO_ARCH_AVR   -I"D:\Develop\sloeber\arduinoPlugin\packages\arduino\hardware\avr\1.6.19\cores\arduino" -I"D:\looke\CppWorkspace\EigenCalcForARM\src" -I"D:\looke\SloeberWorkspace\MPU9250SPI" -I"D:\Develop\sloeber\arduinoPlugin\packages\arduino\hardware\avr\1.6.19\variants\standard" -I"D:\Develop\sloeber\arduinoPlugin\packages\arduino\hardware\avr\1.6.19\libraries\SPI" -I"D:\Develop\sloeber\arduinoPlugin\packages\arduino\hardware\avr\1.6.19\libraries\SPI\src" -I"D:\looke\Arduino\libraries\EigenCalcForARM" -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" -D__IN_ECLIPSE__=1 -x c++ "$<"  -o  "$@"
	@echo 'Finished building: $<'
	@echo ' '

MPU9250MagCalibration.o: ..\MPU9250MagCalibration.ino
	@echo 'Building file: $<'
	@echo 'Starting C++ compile'
	"D:\Develop\sloeber\/arduinoPlugin/packages/arduino/tools/avr-gcc/4.9.2-atmel3.5.4-arduino2/bin/avr-g++" -c -g -Os -Wall -Wextra -std=gnu++11 -fpermissive -fno-exceptions -ffunction-sections -fdata-sections -fno-threadsafe-statics -flto -mmcu=atmega328p -DF_CPU=16000000L -DARDUINO=10802 -DARDUINO_AVR_UNO -DARDUINO_ARCH_AVR   -I"D:\Develop\sloeber\arduinoPlugin\packages\arduino\hardware\avr\1.6.19\cores\arduino" -I"D:\looke\CppWorkspace\EigenCalcForARM\src" -I"D:\looke\SloeberWorkspace\MPU9250SPI" -I"D:\Develop\sloeber\arduinoPlugin\packages\arduino\hardware\avr\1.6.19\variants\standard" -I"D:\Develop\sloeber\arduinoPlugin\packages\arduino\hardware\avr\1.6.19\libraries\SPI" -I"D:\Develop\sloeber\arduinoPlugin\packages\arduino\hardware\avr\1.6.19\libraries\SPI\src" -I"D:\looke\Arduino\libraries\EigenCalcForARM" -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" -D__IN_ECLIPSE__=1 -x c++ "$<"  -o  "$@"
	@echo 'Finished building: $<'
	@echo ' '


