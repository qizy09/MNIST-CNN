################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
O_SRCS += \
../MNIST.o \
../convolutionalneuralnet.o \
../distortions.o \
../fullyconnectedneuralnet.o \
../layer.o \
../main.o \
../neuralnet.o \
../training.o 

CPP_SRCS += \
../MNIST.cpp \
../convolutionalneuralnet.cpp \
../distortions.cpp \
../fullyconnectedneuralnet.cpp \
../layer.cpp \
../main.cpp \
../neuralnet.cpp \
../training.cpp 

OBJS += \
./MNIST.o \
./convolutionalneuralnet.o \
./distortions.o \
./fullyconnectedneuralnet.o \
./layer.o \
./main.o \
./neuralnet.o \
./training.o 

CPP_DEPS += \
./MNIST.d \
./convolutionalneuralnet.d \
./distortions.d \
./fullyconnectedneuralnet.d \
./layer.d \
./main.d \
./neuralnet.d \
./training.d 


# Each subdirectory must supply rules for building sources it contributes
%.o: ../%.cpp
	@echo 'Building file: $<'
	@echo 'Invoking: GCC C++ Compiler'
	g++ -I/usr/local/cuda/include -O0 -g3 -Wall -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@:%.o=%.d)" -o"$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


