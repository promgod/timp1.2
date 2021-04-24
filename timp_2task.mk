##
## Auto Generated makefile by CodeLite IDE
## any manual changes will be erased      
##
## Debug
ProjectName            :=timp_2task
ConfigurationName      :=Debug
WorkspaceConfiguration := $(ConfigurationName)
WorkspacePath          :=/home/osboxes/Documents/Documents
ProjectPath            :=/home/osboxes/Documents/Documents/timp_2task
IntermediateDirectory  :=../build-$(ConfigurationName)/timp_2task
OutDir                 :=../build-$(ConfigurationName)/timp_2task
CurrentFileName        :=
CurrentFilePath        :=
CurrentFileFullPath    :=
User                   :=osboxes.org
Date                   :=04/24/21
CodeLitePath           :=/home/osboxes/.codelite
LinkerName             :=/usr/bin/g++
SharedObjectLinkerName :=/usr/bin/g++ -shared -fPIC
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
OutputFile             :=../build-$(ConfigurationName)/bin/$(ProjectName)
Preprocessors          :=
ObjectSwitch           :=-o 
ArchiveOutputSwitch    := 
PreprocessOnlySwitch   :=-E
ObjectsFileList        :=$(IntermediateDirectory)/ObjectsList.txt
PCHCompileFlags        :=
LinkOptions            :=  
IncludePath            :=  $(IncludeSwitch). $(IncludeSwitch). 
IncludePCH             := 
RcIncludePath          := 
Libs                   := 
ArLibs                 :=  
LibPath                := $(LibraryPathSwitch). 

##
## Common variables
## AR, CXX, CC, AS, CXXFLAGS and CFLAGS can be overriden using an environment variables
##
AR       := /usr/bin/ar rcu
CXX      := /usr/bin/g++
CC       := /usr/bin/gcc
CXXFLAGS :=  -g -O0 -Wall $(Preprocessors)
CFLAGS   :=  -g -O0 -Wall $(Preprocessors)
ASFLAGS  := 
AS       := /usr/bin/as


##
## User defined environment variables
##
CodeLiteDir:=/usr/share/codelite
Objects0=../build-$(ConfigurationName)/timp_2task/PermutationCipher.cpp$(ObjectSuffix) ../build-$(ConfigurationName)/timp_2task/main.cpp$(ObjectSuffix) 



Objects=$(Objects0) 

##
## Main Build Targets 
##
.PHONY: all clean PreBuild PrePreBuild PostBuild MakeIntermediateDirs
all: MakeIntermediateDirs $(OutputFile)

$(OutputFile): ../build-$(ConfigurationName)/timp_2task/.d $(Objects) 
	@mkdir -p "../build-$(ConfigurationName)/timp_2task"
	@echo "" > $(IntermediateDirectory)/.d
	@echo $(Objects0)  > $(ObjectsFileList)
	$(LinkerName) $(OutputSwitch)$(OutputFile) @$(ObjectsFileList) $(LibPath) $(Libs) $(LinkOptions)

MakeIntermediateDirs:
	@mkdir -p "../build-$(ConfigurationName)/timp_2task"
	@mkdir -p ""../build-$(ConfigurationName)/bin""

../build-$(ConfigurationName)/timp_2task/.d:
	@mkdir -p "../build-$(ConfigurationName)/timp_2task"

PreBuild:


##
## Objects
##
../build-$(ConfigurationName)/timp_2task/PermutationCipher.cpp$(ObjectSuffix): PermutationCipher.cpp ../build-$(ConfigurationName)/timp_2task/PermutationCipher.cpp$(DependSuffix)
	$(CXX) $(IncludePCH) $(SourceSwitch) "/home/osboxes/Documents/Documents/timp_2task/PermutationCipher.cpp" $(CXXFLAGS) $(ObjectSwitch)$(IntermediateDirectory)/PermutationCipher.cpp$(ObjectSuffix) $(IncludePath)
../build-$(ConfigurationName)/timp_2task/PermutationCipher.cpp$(DependSuffix): PermutationCipher.cpp
	@$(CXX) $(CXXFLAGS) $(IncludePCH) $(IncludePath) -MG -MP -MT../build-$(ConfigurationName)/timp_2task/PermutationCipher.cpp$(ObjectSuffix) -MF../build-$(ConfigurationName)/timp_2task/PermutationCipher.cpp$(DependSuffix) -MM PermutationCipher.cpp

../build-$(ConfigurationName)/timp_2task/PermutationCipher.cpp$(PreprocessSuffix): PermutationCipher.cpp
	$(CXX) $(CXXFLAGS) $(IncludePCH) $(IncludePath) $(PreprocessOnlySwitch) $(OutputSwitch) ../build-$(ConfigurationName)/timp_2task/PermutationCipher.cpp$(PreprocessSuffix) PermutationCipher.cpp

../build-$(ConfigurationName)/timp_2task/main.cpp$(ObjectSuffix): main.cpp ../build-$(ConfigurationName)/timp_2task/main.cpp$(DependSuffix)
	$(CXX) $(IncludePCH) $(SourceSwitch) "/home/osboxes/Documents/Documents/timp_2task/main.cpp" $(CXXFLAGS) $(ObjectSwitch)$(IntermediateDirectory)/main.cpp$(ObjectSuffix) $(IncludePath)
../build-$(ConfigurationName)/timp_2task/main.cpp$(DependSuffix): main.cpp
	@$(CXX) $(CXXFLAGS) $(IncludePCH) $(IncludePath) -MG -MP -MT../build-$(ConfigurationName)/timp_2task/main.cpp$(ObjectSuffix) -MF../build-$(ConfigurationName)/timp_2task/main.cpp$(DependSuffix) -MM main.cpp

../build-$(ConfigurationName)/timp_2task/main.cpp$(PreprocessSuffix): main.cpp
	$(CXX) $(CXXFLAGS) $(IncludePCH) $(IncludePath) $(PreprocessOnlySwitch) $(OutputSwitch) ../build-$(ConfigurationName)/timp_2task/main.cpp$(PreprocessSuffix) main.cpp


-include ../build-$(ConfigurationName)/timp_2task//*$(DependSuffix)
##
## Clean
##
clean:
	$(RM) -r $(IntermediateDirectory)


