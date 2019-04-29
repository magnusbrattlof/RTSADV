##
## Auto Generated makefile by CodeLite IDE
## any manual changes will be erased      
##
## Debug
ProjectName            :=RTS-Lab
ConfigurationName      :=Debug
WorkspacePath          :="/Users/mbrattlof/Google Drive/School/Chalmers 2018-2019/EDA422 - Parallel and distributed RTS/Labs/HWA1/Part4/TinyTimber"
ProjectPath            :="/Users/mbrattlof/Google Drive/School/Chalmers 2018-2019/EDA422 - Parallel and distributed RTS/Labs/HWA1/Part4/RTS-Lab"
IntermediateDirectory  :=./Debug
OutDir                 := $(IntermediateDirectory)
CurrentFileName        :=
CurrentFilePath        :=
CurrentFileFullPath    :=
User                   :=Magnus Brattlöf
Date                   :=29/04/2019
CodeLitePath           :="/Users/mbrattlof/Library/Application Support/CodeLite"
LinkerName             :=/Users/mbrattlof/GitHub/TinyTimber/gcc-arm-none-eabi-8-2018-q4-major/bin/arm-none-eabi-g++
SharedObjectLinkerName :=/Users/mbrattlof/GitHub/TinyTimber/gcc-arm-none-eabi-8-2018-q4-major/bin/arm-none-eabi-g++ -shared -fPIC
ObjectSuffix           :=.o
DependSuffix           :=.o.d
PreprocessSuffix       :=.i
DebugSwitch            :=-g 
IncludeSwitch          :=-I
LibrarySwitch          :=-l
OutputSwitch           :=-o 
LibraryPathSwitch      :=-L
PreprocessorSwitch     :=-D
SourceSwitch           :=-c 
OutputFile             :=$(IntermediateDirectory)/$(ProjectName).elf
Preprocessors          :=$(PreprocessorSwitch)STM32F40_41xxx 
ObjectSwitch           :=-o 
ArchiveOutputSwitch    := 
PreprocessOnlySwitch   :=-E
ObjectsFileList        :="RTS-Lab.txt"
PCHCompileFlags        :=
MakeDirCommand         :=mkdir -p
LinkOptions            :=  --specs=nano.specs -mthumb -o $(IntermediateDirectory)/$(ProjectName).elf  -mfloat-abi=hard -mfpu=fpv4-sp-d16 -mcpu=cortex-m4 -nostartfiles -T$(ProjectPath)/md407-ram.x -Wl,-Map=$(IntermediateDirectory)/$(ProjectName).map,--cref
IncludePath            :=  $(IncludeSwitch). $(IncludeSwitch)$(ProjectPath) $(IncludeSwitch)$(ProjectPath)/device/inc $(IncludeSwitch)$(ProjectPath)/driver/inc 
IncludePCH             := 
RcIncludePath          := 
Libs                   := 
ArLibs                 :=  
LibPath                := $(LibraryPathSwitch). 

##
## Common variables
## AR, CXX, CC, AS, CXXFLAGS and CFLAGS can be overriden using an environment variables
##
AR       := /Users/mbrattlof/GitHub/TinyTimber/gcc-arm-none-eabi-8-2018-q4-major/bin/arm-none-eabi-ar rcu
CXX      := /Users/mbrattlof/GitHub/TinyTimber/gcc-arm-none-eabi-8-2018-q4-major/bin/arm-none-eabi-g++
CC       := /Users/mbrattlof/GitHub/TinyTimber/gcc-arm-none-eabi-8-2018-q4-major/bin/arm-none-eabi-gcc
CXXFLAGS :=  -g -O0 -Wall $(Preprocessors)
CFLAGS   :=  -g -O0 -Wall -mthumb -mcpu=cortex-m4 -mfloat-abi=hard -mfpu=fpv4-sp-d16 -fverbose-asm $(Preprocessors)
ASFLAGS  := 
AS       := /Users/mbrattlof/GitHub/TinyTimber/gcc-arm-none-eabi-8-2018-q4-major/bin/arm-none-eabi-as


##
## User defined environment variables
##
CodeLiteDir:=/Applications/codelite.app/Contents/SharedSupport/
Objects0=$(IntermediateDirectory)/driver_src_stm32f4xx_exti.c$(ObjectSuffix) $(IntermediateDirectory)/driver_src_stm32f4xx_can.c$(ObjectSuffix) $(IntermediateDirectory)/sciTinyTimber.c$(ObjectSuffix) $(IntermediateDirectory)/driver_src_stm32f4xx_tim.c$(ObjectSuffix) $(IntermediateDirectory)/dispatch.s$(ObjectSuffix) $(IntermediateDirectory)/driver_src_stm32f4xx_rcc.c$(ObjectSuffix) $(IntermediateDirectory)/startup.c$(ObjectSuffix) $(IntermediateDirectory)/driver_src_stm32f4xx_gpio.c$(ObjectSuffix) $(IntermediateDirectory)/sioTinyTimber.c$(ObjectSuffix) $(IntermediateDirectory)/application.c$(ObjectSuffix) \
	$(IntermediateDirectory)/TinyTimber.c$(ObjectSuffix) $(IntermediateDirectory)/buffer.c$(ObjectSuffix) $(IntermediateDirectory)/driver_src_stm32f4xx_usart.c$(ObjectSuffix) $(IntermediateDirectory)/canTinyTimber.c$(ObjectSuffix) 



Objects=$(Objects0) 

##
## Main Build Targets 
##
.PHONY: all clean PreBuild PrePreBuild PostBuild MakeIntermediateDirs
all: $(OutputFile)

$(OutputFile): $(IntermediateDirectory)/.d $(Objects) 
	@$(MakeDirCommand) $(@D)
	@echo "" > $(IntermediateDirectory)/.d
	@echo $(Objects0)  > $(ObjectsFileList)
	$(LinkerName) $(OutputSwitch)$(OutputFile) @$(ObjectsFileList) $(LibPath) $(Libs) $(LinkOptions)

PostBuild:
	@echo Executing Post Build commands ...
	arm-none-eabi-objcopy -S -O srec  ./Debug/RTS-Lab.elf ./Debug/RTS-Lab.s19
	@echo Done

MakeIntermediateDirs:
	@test -d ./Debug || $(MakeDirCommand) ./Debug


$(IntermediateDirectory)/.d:
	@test -d ./Debug || $(MakeDirCommand) ./Debug

PreBuild:


##
## Objects
##
$(IntermediateDirectory)/driver_src_stm32f4xx_exti.c$(ObjectSuffix): driver/src/stm32f4xx_exti.c $(IntermediateDirectory)/driver_src_stm32f4xx_exti.c$(DependSuffix)
	$(CC) $(SourceSwitch) "/Users/mbrattlof/Google Drive/School/Chalmers 2018-2019/EDA422 - Parallel and distributed RTS/Labs/HWA1/Part4/RTS-Lab/driver/src/stm32f4xx_exti.c" $(CFLAGS) $(ObjectSwitch)$(IntermediateDirectory)/driver_src_stm32f4xx_exti.c$(ObjectSuffix) $(IncludePath)
$(IntermediateDirectory)/driver_src_stm32f4xx_exti.c$(DependSuffix): driver/src/stm32f4xx_exti.c
	@$(CC) $(CFLAGS) $(IncludePath) -MG -MP -MT$(IntermediateDirectory)/driver_src_stm32f4xx_exti.c$(ObjectSuffix) -MF$(IntermediateDirectory)/driver_src_stm32f4xx_exti.c$(DependSuffix) -MM driver/src/stm32f4xx_exti.c

$(IntermediateDirectory)/driver_src_stm32f4xx_exti.c$(PreprocessSuffix): driver/src/stm32f4xx_exti.c
	$(CC) $(CFLAGS) $(IncludePath) $(PreprocessOnlySwitch) $(OutputSwitch) $(IntermediateDirectory)/driver_src_stm32f4xx_exti.c$(PreprocessSuffix) driver/src/stm32f4xx_exti.c

$(IntermediateDirectory)/driver_src_stm32f4xx_can.c$(ObjectSuffix): driver/src/stm32f4xx_can.c $(IntermediateDirectory)/driver_src_stm32f4xx_can.c$(DependSuffix)
	$(CC) $(SourceSwitch) "/Users/mbrattlof/Google Drive/School/Chalmers 2018-2019/EDA422 - Parallel and distributed RTS/Labs/HWA1/Part4/RTS-Lab/driver/src/stm32f4xx_can.c" $(CFLAGS) $(ObjectSwitch)$(IntermediateDirectory)/driver_src_stm32f4xx_can.c$(ObjectSuffix) $(IncludePath)
$(IntermediateDirectory)/driver_src_stm32f4xx_can.c$(DependSuffix): driver/src/stm32f4xx_can.c
	@$(CC) $(CFLAGS) $(IncludePath) -MG -MP -MT$(IntermediateDirectory)/driver_src_stm32f4xx_can.c$(ObjectSuffix) -MF$(IntermediateDirectory)/driver_src_stm32f4xx_can.c$(DependSuffix) -MM driver/src/stm32f4xx_can.c

$(IntermediateDirectory)/driver_src_stm32f4xx_can.c$(PreprocessSuffix): driver/src/stm32f4xx_can.c
	$(CC) $(CFLAGS) $(IncludePath) $(PreprocessOnlySwitch) $(OutputSwitch) $(IntermediateDirectory)/driver_src_stm32f4xx_can.c$(PreprocessSuffix) driver/src/stm32f4xx_can.c

$(IntermediateDirectory)/sciTinyTimber.c$(ObjectSuffix): sciTinyTimber.c $(IntermediateDirectory)/sciTinyTimber.c$(DependSuffix)
	$(CC) $(SourceSwitch) "/Users/mbrattlof/Google Drive/School/Chalmers 2018-2019/EDA422 - Parallel and distributed RTS/Labs/HWA1/Part4/RTS-Lab/sciTinyTimber.c" $(CFLAGS) $(ObjectSwitch)$(IntermediateDirectory)/sciTinyTimber.c$(ObjectSuffix) $(IncludePath)
$(IntermediateDirectory)/sciTinyTimber.c$(DependSuffix): sciTinyTimber.c
	@$(CC) $(CFLAGS) $(IncludePath) -MG -MP -MT$(IntermediateDirectory)/sciTinyTimber.c$(ObjectSuffix) -MF$(IntermediateDirectory)/sciTinyTimber.c$(DependSuffix) -MM sciTinyTimber.c

$(IntermediateDirectory)/sciTinyTimber.c$(PreprocessSuffix): sciTinyTimber.c
	$(CC) $(CFLAGS) $(IncludePath) $(PreprocessOnlySwitch) $(OutputSwitch) $(IntermediateDirectory)/sciTinyTimber.c$(PreprocessSuffix) sciTinyTimber.c

$(IntermediateDirectory)/driver_src_stm32f4xx_tim.c$(ObjectSuffix): driver/src/stm32f4xx_tim.c $(IntermediateDirectory)/driver_src_stm32f4xx_tim.c$(DependSuffix)
	$(CC) $(SourceSwitch) "/Users/mbrattlof/Google Drive/School/Chalmers 2018-2019/EDA422 - Parallel and distributed RTS/Labs/HWA1/Part4/RTS-Lab/driver/src/stm32f4xx_tim.c" $(CFLAGS) $(ObjectSwitch)$(IntermediateDirectory)/driver_src_stm32f4xx_tim.c$(ObjectSuffix) $(IncludePath)
$(IntermediateDirectory)/driver_src_stm32f4xx_tim.c$(DependSuffix): driver/src/stm32f4xx_tim.c
	@$(CC) $(CFLAGS) $(IncludePath) -MG -MP -MT$(IntermediateDirectory)/driver_src_stm32f4xx_tim.c$(ObjectSuffix) -MF$(IntermediateDirectory)/driver_src_stm32f4xx_tim.c$(DependSuffix) -MM driver/src/stm32f4xx_tim.c

$(IntermediateDirectory)/driver_src_stm32f4xx_tim.c$(PreprocessSuffix): driver/src/stm32f4xx_tim.c
	$(CC) $(CFLAGS) $(IncludePath) $(PreprocessOnlySwitch) $(OutputSwitch) $(IntermediateDirectory)/driver_src_stm32f4xx_tim.c$(PreprocessSuffix) driver/src/stm32f4xx_tim.c

$(IntermediateDirectory)/dispatch.s$(ObjectSuffix): dispatch.s $(IntermediateDirectory)/dispatch.s$(DependSuffix)
	$(AS) "/Users/mbrattlof/Google Drive/School/Chalmers 2018-2019/EDA422 - Parallel and distributed RTS/Labs/HWA1/Part4/RTS-Lab/dispatch.s" $(ASFLAGS) $(ObjectSwitch)$(IntermediateDirectory)/dispatch.s$(ObjectSuffix) -I$(IncludePath)
$(IntermediateDirectory)/dispatch.s$(DependSuffix): dispatch.s
	@$(CXX) $(CXXFLAGS) $(IncludePCH) $(IncludePath) -MG -MP -MT$(IntermediateDirectory)/dispatch.s$(ObjectSuffix) -MF$(IntermediateDirectory)/dispatch.s$(DependSuffix) -MM dispatch.s

$(IntermediateDirectory)/dispatch.s$(PreprocessSuffix): dispatch.s
	$(CXX) $(CXXFLAGS) $(IncludePCH) $(IncludePath) $(PreprocessOnlySwitch) $(OutputSwitch) $(IntermediateDirectory)/dispatch.s$(PreprocessSuffix) dispatch.s

$(IntermediateDirectory)/driver_src_stm32f4xx_rcc.c$(ObjectSuffix): driver/src/stm32f4xx_rcc.c $(IntermediateDirectory)/driver_src_stm32f4xx_rcc.c$(DependSuffix)
	$(CC) $(SourceSwitch) "/Users/mbrattlof/Google Drive/School/Chalmers 2018-2019/EDA422 - Parallel and distributed RTS/Labs/HWA1/Part4/RTS-Lab/driver/src/stm32f4xx_rcc.c" $(CFLAGS) $(ObjectSwitch)$(IntermediateDirectory)/driver_src_stm32f4xx_rcc.c$(ObjectSuffix) $(IncludePath)
$(IntermediateDirectory)/driver_src_stm32f4xx_rcc.c$(DependSuffix): driver/src/stm32f4xx_rcc.c
	@$(CC) $(CFLAGS) $(IncludePath) -MG -MP -MT$(IntermediateDirectory)/driver_src_stm32f4xx_rcc.c$(ObjectSuffix) -MF$(IntermediateDirectory)/driver_src_stm32f4xx_rcc.c$(DependSuffix) -MM driver/src/stm32f4xx_rcc.c

$(IntermediateDirectory)/driver_src_stm32f4xx_rcc.c$(PreprocessSuffix): driver/src/stm32f4xx_rcc.c
	$(CC) $(CFLAGS) $(IncludePath) $(PreprocessOnlySwitch) $(OutputSwitch) $(IntermediateDirectory)/driver_src_stm32f4xx_rcc.c$(PreprocessSuffix) driver/src/stm32f4xx_rcc.c

$(IntermediateDirectory)/startup.c$(ObjectSuffix): startup.c $(IntermediateDirectory)/startup.c$(DependSuffix)
	$(CC) $(SourceSwitch) "/Users/mbrattlof/Google Drive/School/Chalmers 2018-2019/EDA422 - Parallel and distributed RTS/Labs/HWA1/Part4/RTS-Lab/startup.c" $(CFLAGS) $(ObjectSwitch)$(IntermediateDirectory)/startup.c$(ObjectSuffix) $(IncludePath)
$(IntermediateDirectory)/startup.c$(DependSuffix): startup.c
	@$(CC) $(CFLAGS) $(IncludePath) -MG -MP -MT$(IntermediateDirectory)/startup.c$(ObjectSuffix) -MF$(IntermediateDirectory)/startup.c$(DependSuffix) -MM startup.c

$(IntermediateDirectory)/startup.c$(PreprocessSuffix): startup.c
	$(CC) $(CFLAGS) $(IncludePath) $(PreprocessOnlySwitch) $(OutputSwitch) $(IntermediateDirectory)/startup.c$(PreprocessSuffix) startup.c

$(IntermediateDirectory)/driver_src_stm32f4xx_gpio.c$(ObjectSuffix): driver/src/stm32f4xx_gpio.c $(IntermediateDirectory)/driver_src_stm32f4xx_gpio.c$(DependSuffix)
	$(CC) $(SourceSwitch) "/Users/mbrattlof/Google Drive/School/Chalmers 2018-2019/EDA422 - Parallel and distributed RTS/Labs/HWA1/Part4/RTS-Lab/driver/src/stm32f4xx_gpio.c" $(CFLAGS) $(ObjectSwitch)$(IntermediateDirectory)/driver_src_stm32f4xx_gpio.c$(ObjectSuffix) $(IncludePath)
$(IntermediateDirectory)/driver_src_stm32f4xx_gpio.c$(DependSuffix): driver/src/stm32f4xx_gpio.c
	@$(CC) $(CFLAGS) $(IncludePath) -MG -MP -MT$(IntermediateDirectory)/driver_src_stm32f4xx_gpio.c$(ObjectSuffix) -MF$(IntermediateDirectory)/driver_src_stm32f4xx_gpio.c$(DependSuffix) -MM driver/src/stm32f4xx_gpio.c

$(IntermediateDirectory)/driver_src_stm32f4xx_gpio.c$(PreprocessSuffix): driver/src/stm32f4xx_gpio.c
	$(CC) $(CFLAGS) $(IncludePath) $(PreprocessOnlySwitch) $(OutputSwitch) $(IntermediateDirectory)/driver_src_stm32f4xx_gpio.c$(PreprocessSuffix) driver/src/stm32f4xx_gpio.c

$(IntermediateDirectory)/sioTinyTimber.c$(ObjectSuffix): sioTinyTimber.c $(IntermediateDirectory)/sioTinyTimber.c$(DependSuffix)
	$(CC) $(SourceSwitch) "/Users/mbrattlof/Google Drive/School/Chalmers 2018-2019/EDA422 - Parallel and distributed RTS/Labs/HWA1/Part4/RTS-Lab/sioTinyTimber.c" $(CFLAGS) $(ObjectSwitch)$(IntermediateDirectory)/sioTinyTimber.c$(ObjectSuffix) $(IncludePath)
$(IntermediateDirectory)/sioTinyTimber.c$(DependSuffix): sioTinyTimber.c
	@$(CC) $(CFLAGS) $(IncludePath) -MG -MP -MT$(IntermediateDirectory)/sioTinyTimber.c$(ObjectSuffix) -MF$(IntermediateDirectory)/sioTinyTimber.c$(DependSuffix) -MM sioTinyTimber.c

$(IntermediateDirectory)/sioTinyTimber.c$(PreprocessSuffix): sioTinyTimber.c
	$(CC) $(CFLAGS) $(IncludePath) $(PreprocessOnlySwitch) $(OutputSwitch) $(IntermediateDirectory)/sioTinyTimber.c$(PreprocessSuffix) sioTinyTimber.c

$(IntermediateDirectory)/application.c$(ObjectSuffix): application.c $(IntermediateDirectory)/application.c$(DependSuffix)
	$(CC) $(SourceSwitch) "/Users/mbrattlof/Google Drive/School/Chalmers 2018-2019/EDA422 - Parallel and distributed RTS/Labs/HWA1/Part4/RTS-Lab/application.c" $(CFLAGS) $(ObjectSwitch)$(IntermediateDirectory)/application.c$(ObjectSuffix) $(IncludePath)
$(IntermediateDirectory)/application.c$(DependSuffix): application.c
	@$(CC) $(CFLAGS) $(IncludePath) -MG -MP -MT$(IntermediateDirectory)/application.c$(ObjectSuffix) -MF$(IntermediateDirectory)/application.c$(DependSuffix) -MM application.c

$(IntermediateDirectory)/application.c$(PreprocessSuffix): application.c
	$(CC) $(CFLAGS) $(IncludePath) $(PreprocessOnlySwitch) $(OutputSwitch) $(IntermediateDirectory)/application.c$(PreprocessSuffix) application.c

$(IntermediateDirectory)/TinyTimber.c$(ObjectSuffix): TinyTimber.c $(IntermediateDirectory)/TinyTimber.c$(DependSuffix)
	$(CC) $(SourceSwitch) "/Users/mbrattlof/Google Drive/School/Chalmers 2018-2019/EDA422 - Parallel and distributed RTS/Labs/HWA1/Part4/RTS-Lab/TinyTimber.c" $(CFLAGS) $(ObjectSwitch)$(IntermediateDirectory)/TinyTimber.c$(ObjectSuffix) $(IncludePath)
$(IntermediateDirectory)/TinyTimber.c$(DependSuffix): TinyTimber.c
	@$(CC) $(CFLAGS) $(IncludePath) -MG -MP -MT$(IntermediateDirectory)/TinyTimber.c$(ObjectSuffix) -MF$(IntermediateDirectory)/TinyTimber.c$(DependSuffix) -MM TinyTimber.c

$(IntermediateDirectory)/TinyTimber.c$(PreprocessSuffix): TinyTimber.c
	$(CC) $(CFLAGS) $(IncludePath) $(PreprocessOnlySwitch) $(OutputSwitch) $(IntermediateDirectory)/TinyTimber.c$(PreprocessSuffix) TinyTimber.c

$(IntermediateDirectory)/buffer.c$(ObjectSuffix): buffer.c $(IntermediateDirectory)/buffer.c$(DependSuffix)
	$(CC) $(SourceSwitch) "/Users/mbrattlof/Google Drive/School/Chalmers 2018-2019/EDA422 - Parallel and distributed RTS/Labs/HWA1/Part4/RTS-Lab/buffer.c" $(CFLAGS) $(ObjectSwitch)$(IntermediateDirectory)/buffer.c$(ObjectSuffix) $(IncludePath)
$(IntermediateDirectory)/buffer.c$(DependSuffix): buffer.c
	@$(CC) $(CFLAGS) $(IncludePath) -MG -MP -MT$(IntermediateDirectory)/buffer.c$(ObjectSuffix) -MF$(IntermediateDirectory)/buffer.c$(DependSuffix) -MM buffer.c

$(IntermediateDirectory)/buffer.c$(PreprocessSuffix): buffer.c
	$(CC) $(CFLAGS) $(IncludePath) $(PreprocessOnlySwitch) $(OutputSwitch) $(IntermediateDirectory)/buffer.c$(PreprocessSuffix) buffer.c

$(IntermediateDirectory)/driver_src_stm32f4xx_usart.c$(ObjectSuffix): driver/src/stm32f4xx_usart.c $(IntermediateDirectory)/driver_src_stm32f4xx_usart.c$(DependSuffix)
	$(CC) $(SourceSwitch) "/Users/mbrattlof/Google Drive/School/Chalmers 2018-2019/EDA422 - Parallel and distributed RTS/Labs/HWA1/Part4/RTS-Lab/driver/src/stm32f4xx_usart.c" $(CFLAGS) $(ObjectSwitch)$(IntermediateDirectory)/driver_src_stm32f4xx_usart.c$(ObjectSuffix) $(IncludePath)
$(IntermediateDirectory)/driver_src_stm32f4xx_usart.c$(DependSuffix): driver/src/stm32f4xx_usart.c
	@$(CC) $(CFLAGS) $(IncludePath) -MG -MP -MT$(IntermediateDirectory)/driver_src_stm32f4xx_usart.c$(ObjectSuffix) -MF$(IntermediateDirectory)/driver_src_stm32f4xx_usart.c$(DependSuffix) -MM driver/src/stm32f4xx_usart.c

$(IntermediateDirectory)/driver_src_stm32f4xx_usart.c$(PreprocessSuffix): driver/src/stm32f4xx_usart.c
	$(CC) $(CFLAGS) $(IncludePath) $(PreprocessOnlySwitch) $(OutputSwitch) $(IntermediateDirectory)/driver_src_stm32f4xx_usart.c$(PreprocessSuffix) driver/src/stm32f4xx_usart.c

$(IntermediateDirectory)/canTinyTimber.c$(ObjectSuffix): canTinyTimber.c $(IntermediateDirectory)/canTinyTimber.c$(DependSuffix)
	$(CC) $(SourceSwitch) "/Users/mbrattlof/Google Drive/School/Chalmers 2018-2019/EDA422 - Parallel and distributed RTS/Labs/HWA1/Part4/RTS-Lab/canTinyTimber.c" $(CFLAGS) $(ObjectSwitch)$(IntermediateDirectory)/canTinyTimber.c$(ObjectSuffix) $(IncludePath)
$(IntermediateDirectory)/canTinyTimber.c$(DependSuffix): canTinyTimber.c
	@$(CC) $(CFLAGS) $(IncludePath) -MG -MP -MT$(IntermediateDirectory)/canTinyTimber.c$(ObjectSuffix) -MF$(IntermediateDirectory)/canTinyTimber.c$(DependSuffix) -MM canTinyTimber.c

$(IntermediateDirectory)/canTinyTimber.c$(PreprocessSuffix): canTinyTimber.c
	$(CC) $(CFLAGS) $(IncludePath) $(PreprocessOnlySwitch) $(OutputSwitch) $(IntermediateDirectory)/canTinyTimber.c$(PreprocessSuffix) canTinyTimber.c


-include $(IntermediateDirectory)/*$(DependSuffix)
##
## Clean
##
clean:
	$(RM) -r ./Debug/


