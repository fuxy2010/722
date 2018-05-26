##
## Auto Generated makefile by CodeLite IDE
## any manual changes will be erased      
##
## Debug
ProjectName            :=AudioMixer
ConfigurationName      :=Debug
WorkspacePath          :=/home/fym/722/cpp-project
ProjectPath            :=/home/fym/722/cpp-project/AudioMixer
IntermediateDirectory  :=./Debug
OutDir                 := $(IntermediateDirectory)
CurrentFileName        :=
CurrentFilePath        :=
CurrentFileFullPath    :=
User                   :=Ubuntu 16.04 LTS
Date                   :=26/05/18
CodeLitePath           :=/home/fym/.codelite
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
OutputFile             :=$(IntermediateDirectory)/$(ProjectName)
Preprocessors          :=$(PreprocessorSwitch)WEBRTC_LINUX $(PreprocessorSwitch)RTP_SUPPORT_THREAD $(PreprocessorSwitch)__ARMEL__ 
ObjectSwitch           :=-o 
ArchiveOutputSwitch    := 
PreprocessOnlySwitch   :=-E
ObjectsFileList        :="AudioMixer.txt"
PCHCompileFlags        :=
MakeDirCommand         :=mkdir -p
LinkOptions            :=  
IncludePath            :=  $(IncludeSwitch). $(IncludeSwitch)./ $(IncludeSwitch)./src/jrtplib/ $(IncludeSwitch)./src/module/ $(IncludeSwitch)./src/main/ $(IncludeSwitch)./src/misc/ $(IncludeSwitch)./src/ilbc/ $(IncludeSwitch)./src/codec/ $(IncludeSwitch)./src/thread/ $(IncludeSwitch)./src/task/ $(IncludeSwitch)./src/ns/ $(IncludeSwitch)./src/vad/ $(IncludeSwitch)/home/fym/722/rtfs/usr/include/ 
IncludePCH             := 
RcIncludePath          := 
Libs                   := $(LibrarySwitch)pthread $(LibrarySwitch)rt $(LibrarySwitch)asound 
ArLibs                 :=  "pthread" "rt" "asound" 
LibPath                := $(LibraryPathSwitch). $(LibraryPathSwitch)/home/fym/722/rtfs/usr/lib 

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
Objects0=$(IntermediateDirectory)/src_module_JRTPSession.cpp$(ObjectSuffix) $(IntermediateDirectory)/src_jrtplib_jmutex.cpp$(ObjectSuffix) $(IntermediateDirectory)/src_jrtplib_jthread.cpp$(ObjectSuffix) $(IntermediateDirectory)/src_main_UserAgent.cpp$(ObjectSuffix) $(IntermediateDirectory)/src_vad_spl_init.c$(ObjectSuffix) $(IntermediateDirectory)/src_vad_min_max_operations.c$(ObjectSuffix) $(IntermediateDirectory)/src_vad_get_scaling_square.c$(ObjectSuffix) $(IntermediateDirectory)/src_jrtplib_rtpabortdescriptors.cpp$(ObjectSuffix) $(IntermediateDirectory)/src_thread_LocalPlayThread.cpp$(ObjectSuffix) $(IntermediateDirectory)/src_thread_BaseThread.cpp$(ObjectSuffix) \
	$(IntermediateDirectory)/src_jrtplib_rtcpapppacket.cpp$(ObjectSuffix) $(IntermediateDirectory)/src_jrtplib_rtcpcompoundpacketbuilder.cpp$(ObjectSuffix) $(IntermediateDirectory)/src_jrtplib_rtpudpv6transmitter.cpp$(ObjectSuffix) $(IntermediateDirectory)/src_task_ConferenceTask.cpp$(ObjectSuffix) $(IntermediateDirectory)/src_jrtplib_rtcpsrpacket.cpp$(ObjectSuffix) $(IntermediateDirectory)/src_ns_fft4g.c$(ObjectSuffix) $(IntermediateDirectory)/src_misc_CommandContextParse.cpp$(ObjectSuffix) $(IntermediateDirectory)/src_vad_resample_fractional.c$(ObjectSuffix) $(IntermediateDirectory)/src_vad_vad_main.c$(ObjectSuffix) $(IntermediateDirectory)/src_thread_TaskThread.cpp$(ObjectSuffix) \
	$(IntermediateDirectory)/src_vad_vector_scaling_operations.c$(ObjectSuffix) $(IntermediateDirectory)/src_vad_vad_filterbank.c$(ObjectSuffix) $(IntermediateDirectory)/src_jrtplib_rtpudpv4transmitter.cpp$(ObjectSuffix) $(IntermediateDirectory)/src_vad_real_fft.c$(ObjectSuffix) $(IntermediateDirectory)/src_vad_energy.c$(ObjectSuffix) $(IntermediateDirectory)/src_thread_ConferenceMixThread.cpp$(ObjectSuffix) $(IntermediateDirectory)/src_vad_vad_gmm.c$(ObjectSuffix) $(IntermediateDirectory)/src_vad_cross_correlation.c$(ObjectSuffix) $(IntermediateDirectory)/src_vad_webrtc_vad.c$(ObjectSuffix) $(IntermediateDirectory)/src_codec_iLBCCodec.cpp$(ObjectSuffix) \
	$(IntermediateDirectory)/src_thread_LocalRecordThread.cpp$(ObjectSuffix) $(IntermediateDirectory)/src_thread_BroadcastThread.cpp$(ObjectSuffix) $(IntermediateDirectory)/src_misc_AES.cpp$(ObjectSuffix) $(IntermediateDirectory)/src_jrtplib_rtpsessionparams.cpp$(ObjectSuffix) $(IntermediateDirectory)/src_jrtplib_rtpsecuresession.cpp$(ObjectSuffix) $(IntermediateDirectory)/src_jrtplib_rtprandomurandom.cpp$(ObjectSuffix) $(IntermediateDirectory)/src_jrtplib_rtpcollisionlist.cpp$(ObjectSuffix) $(IntermediateDirectory)/src_vad_vad_core.c$(ObjectSuffix) $(IntermediateDirectory)/src_misc_ConfigBox.cpp$(ObjectSuffix) $(IntermediateDirectory)/src_vad_resample_48khz.c$(ObjectSuffix) \
	

Objects1=$(IntermediateDirectory)/src_vad_complex_bit_reverse.c$(ObjectSuffix) $(IntermediateDirectory)/src_codec_G711Codec.cpp$(ObjectSuffix) $(IntermediateDirectory)/src_jrtplib_rtpinternalsourcedata.cpp$(ObjectSuffix) $(IntermediateDirectory)/src_vad_complex_fft.c$(ObjectSuffix) $(IntermediateDirectory)/src_jrtplib_rtptimeutilities.cpp$(ObjectSuffix) $(IntermediateDirectory)/src_vad_division_operations.c$(ObjectSuffix) $(IntermediateDirectory)/src_vad_downsample_fast.c$(ObjectSuffix) $(IntermediateDirectory)/src_misc_MiscTool.cpp$(ObjectSuffix) $(IntermediateDirectory)/src_jrtplib_rtcppacket.cpp$(ObjectSuffix) $(IntermediateDirectory)/src_ns_ns_core.c$(ObjectSuffix) \
	$(IntermediateDirectory)/src_ns_noise_suppression.c$(ObjectSuffix) $(IntermediateDirectory)/src_main_ScheduleServer.cpp$(ObjectSuffix) $(IntermediateDirectory)/src_jrtplib_rtppollthread.cpp$(ObjectSuffix) $(IntermediateDirectory)/src_vad_resample_by_2_internal.c$(ObjectSuffix) $(IntermediateDirectory)/src_jrtplib_rtptcptransmitter.cpp$(ObjectSuffix) $(IntermediateDirectory)/src_jrtplib_rtptcpaddress.cpp$(ObjectSuffix) $(IntermediateDirectory)/interface.cpp$(ObjectSuffix) $(IntermediateDirectory)/src_vad_vad_sp.c$(ObjectSuffix) $(IntermediateDirectory)/src_jrtplib_rtpsources.cpp$(ObjectSuffix) $(IntermediateDirectory)/src_jrtplib_rtpsourcedata.cpp$(ObjectSuffix) \
	$(IntermediateDirectory)/src_jrtplib_rtpbyteaddress.cpp$(ObjectSuffix) $(IntermediateDirectory)/src_jrtplib_rtpsessionsources.cpp$(ObjectSuffix) $(IntermediateDirectory)/src_codec_PCMCodec.cpp$(ObjectSuffix) $(IntermediateDirectory)/src_jrtplib_rtcpcompoundpacket.cpp$(ObjectSuffix) $(IntermediateDirectory)/src_jrtplib_rtpsession.cpp$(ObjectSuffix) $(IntermediateDirectory)/src_jrtplib_rtprandomrands.cpp$(ObjectSuffix) $(IntermediateDirectory)/src_jrtplib_rtcpsdespacket.cpp$(ObjectSuffix) $(IntermediateDirectory)/src_jrtplib_rtprandomrand48.cpp$(ObjectSuffix) $(IntermediateDirectory)/src_jrtplib_rtpipv6destination.cpp$(ObjectSuffix) $(IntermediateDirectory)/src_jrtplib_rtperrors.cpp$(ObjectSuffix) \
	$(IntermediateDirectory)/main.cpp$(ObjectSuffix) $(IntermediateDirectory)/src_jrtplib_rtppacketbuilder.cpp$(ObjectSuffix) $(IntermediateDirectory)/src_jrtplib_rtppacket.cpp$(ObjectSuffix) $(IntermediateDirectory)/src_task_TestTask.cpp$(ObjectSuffix) $(IntermediateDirectory)/src_jrtplib_rtplibraryversion.cpp$(ObjectSuffix) $(IntermediateDirectory)/src_jrtplib_rtpdebug.cpp$(ObjectSuffix) $(IntermediateDirectory)/src_jrtplib_rtpipv6address.cpp$(ObjectSuffix) $(IntermediateDirectory)/src_jrtplib_rtcpscheduler.cpp$(ObjectSuffix) $(IntermediateDirectory)/src_jrtplib_rtpipv4destination.cpp$(ObjectSuffix) $(IntermediateDirectory)/src_jrtplib_rtpipv4address.cpp$(ObjectSuffix) \
	$(IntermediateDirectory)/src_jrtplib_rtprandom.cpp$(ObjectSuffix) $(IntermediateDirectory)/src_jrtplib_rtpexternaltransmitter.cpp$(ObjectSuffix) 

Objects2=$(IntermediateDirectory)/src_jrtplib_rtcprrpacket.cpp$(ObjectSuffix) $(IntermediateDirectory)/src_jrtplib_rtcppacketbuilder.cpp$(ObjectSuffix) $(IntermediateDirectory)/src_jrtplib_rtcpsdesinfo.cpp$(ObjectSuffix) $(IntermediateDirectory)/src_jrtplib_rtcpbyepacket.cpp$(ObjectSuffix) 



Objects=$(Objects0) $(Objects1) $(Objects2) 

##
## Main Build Targets 
##
.PHONY: all clean PreBuild PrePreBuild PostBuild MakeIntermediateDirs
all: $(OutputFile)

$(OutputFile): $(IntermediateDirectory)/.d $(Objects) 
	@$(MakeDirCommand) $(@D)
	@echo "" > $(IntermediateDirectory)/.d
	@echo $(Objects0)  > $(ObjectsFileList)
	@echo $(Objects1) >> $(ObjectsFileList)
	@echo $(Objects2) >> $(ObjectsFileList)
	$(LinkerName) $(OutputSwitch)$(OutputFile) @$(ObjectsFileList) $(LibPath) $(Libs) $(LinkOptions)

MakeIntermediateDirs:
	@test -d ./Debug || $(MakeDirCommand) ./Debug


$(IntermediateDirectory)/.d:
	@test -d ./Debug || $(MakeDirCommand) ./Debug

PreBuild:


##
## Objects
##
$(IntermediateDirectory)/src_module_JRTPSession.cpp$(ObjectSuffix): src/module/JRTPSession.cpp $(IntermediateDirectory)/src_module_JRTPSession.cpp$(DependSuffix)
	$(CXX) $(IncludePCH) $(SourceSwitch) "/home/fym/722/cpp-project/AudioMixer/src/module/JRTPSession.cpp" $(CXXFLAGS) $(ObjectSwitch)$(IntermediateDirectory)/src_module_JRTPSession.cpp$(ObjectSuffix) $(IncludePath)
$(IntermediateDirectory)/src_module_JRTPSession.cpp$(DependSuffix): src/module/JRTPSession.cpp
	@$(CXX) $(CXXFLAGS) $(IncludePCH) $(IncludePath) -MG -MP -MT$(IntermediateDirectory)/src_module_JRTPSession.cpp$(ObjectSuffix) -MF$(IntermediateDirectory)/src_module_JRTPSession.cpp$(DependSuffix) -MM src/module/JRTPSession.cpp

$(IntermediateDirectory)/src_module_JRTPSession.cpp$(PreprocessSuffix): src/module/JRTPSession.cpp
	$(CXX) $(CXXFLAGS) $(IncludePCH) $(IncludePath) $(PreprocessOnlySwitch) $(OutputSwitch) $(IntermediateDirectory)/src_module_JRTPSession.cpp$(PreprocessSuffix) src/module/JRTPSession.cpp

$(IntermediateDirectory)/src_jrtplib_jmutex.cpp$(ObjectSuffix): src/jrtplib/jmutex.cpp $(IntermediateDirectory)/src_jrtplib_jmutex.cpp$(DependSuffix)
	$(CXX) $(IncludePCH) $(SourceSwitch) "/home/fym/722/cpp-project/AudioMixer/src/jrtplib/jmutex.cpp" $(CXXFLAGS) $(ObjectSwitch)$(IntermediateDirectory)/src_jrtplib_jmutex.cpp$(ObjectSuffix) $(IncludePath)
$(IntermediateDirectory)/src_jrtplib_jmutex.cpp$(DependSuffix): src/jrtplib/jmutex.cpp
	@$(CXX) $(CXXFLAGS) $(IncludePCH) $(IncludePath) -MG -MP -MT$(IntermediateDirectory)/src_jrtplib_jmutex.cpp$(ObjectSuffix) -MF$(IntermediateDirectory)/src_jrtplib_jmutex.cpp$(DependSuffix) -MM src/jrtplib/jmutex.cpp

$(IntermediateDirectory)/src_jrtplib_jmutex.cpp$(PreprocessSuffix): src/jrtplib/jmutex.cpp
	$(CXX) $(CXXFLAGS) $(IncludePCH) $(IncludePath) $(PreprocessOnlySwitch) $(OutputSwitch) $(IntermediateDirectory)/src_jrtplib_jmutex.cpp$(PreprocessSuffix) src/jrtplib/jmutex.cpp

$(IntermediateDirectory)/src_jrtplib_jthread.cpp$(ObjectSuffix): src/jrtplib/jthread.cpp $(IntermediateDirectory)/src_jrtplib_jthread.cpp$(DependSuffix)
	$(CXX) $(IncludePCH) $(SourceSwitch) "/home/fym/722/cpp-project/AudioMixer/src/jrtplib/jthread.cpp" $(CXXFLAGS) $(ObjectSwitch)$(IntermediateDirectory)/src_jrtplib_jthread.cpp$(ObjectSuffix) $(IncludePath)
$(IntermediateDirectory)/src_jrtplib_jthread.cpp$(DependSuffix): src/jrtplib/jthread.cpp
	@$(CXX) $(CXXFLAGS) $(IncludePCH) $(IncludePath) -MG -MP -MT$(IntermediateDirectory)/src_jrtplib_jthread.cpp$(ObjectSuffix) -MF$(IntermediateDirectory)/src_jrtplib_jthread.cpp$(DependSuffix) -MM src/jrtplib/jthread.cpp

$(IntermediateDirectory)/src_jrtplib_jthread.cpp$(PreprocessSuffix): src/jrtplib/jthread.cpp
	$(CXX) $(CXXFLAGS) $(IncludePCH) $(IncludePath) $(PreprocessOnlySwitch) $(OutputSwitch) $(IntermediateDirectory)/src_jrtplib_jthread.cpp$(PreprocessSuffix) src/jrtplib/jthread.cpp

$(IntermediateDirectory)/src_main_UserAgent.cpp$(ObjectSuffix): src/main/UserAgent.cpp $(IntermediateDirectory)/src_main_UserAgent.cpp$(DependSuffix)
	$(CXX) $(IncludePCH) $(SourceSwitch) "/home/fym/722/cpp-project/AudioMixer/src/main/UserAgent.cpp" $(CXXFLAGS) $(ObjectSwitch)$(IntermediateDirectory)/src_main_UserAgent.cpp$(ObjectSuffix) $(IncludePath)
$(IntermediateDirectory)/src_main_UserAgent.cpp$(DependSuffix): src/main/UserAgent.cpp
	@$(CXX) $(CXXFLAGS) $(IncludePCH) $(IncludePath) -MG -MP -MT$(IntermediateDirectory)/src_main_UserAgent.cpp$(ObjectSuffix) -MF$(IntermediateDirectory)/src_main_UserAgent.cpp$(DependSuffix) -MM src/main/UserAgent.cpp

$(IntermediateDirectory)/src_main_UserAgent.cpp$(PreprocessSuffix): src/main/UserAgent.cpp
	$(CXX) $(CXXFLAGS) $(IncludePCH) $(IncludePath) $(PreprocessOnlySwitch) $(OutputSwitch) $(IntermediateDirectory)/src_main_UserAgent.cpp$(PreprocessSuffix) src/main/UserAgent.cpp

$(IntermediateDirectory)/src_vad_spl_init.c$(ObjectSuffix): src/vad/spl_init.c $(IntermediateDirectory)/src_vad_spl_init.c$(DependSuffix)
	$(CC) $(SourceSwitch) "/home/fym/722/cpp-project/AudioMixer/src/vad/spl_init.c" $(CFLAGS) $(ObjectSwitch)$(IntermediateDirectory)/src_vad_spl_init.c$(ObjectSuffix) $(IncludePath)
$(IntermediateDirectory)/src_vad_spl_init.c$(DependSuffix): src/vad/spl_init.c
	@$(CC) $(CFLAGS) $(IncludePath) -MG -MP -MT$(IntermediateDirectory)/src_vad_spl_init.c$(ObjectSuffix) -MF$(IntermediateDirectory)/src_vad_spl_init.c$(DependSuffix) -MM src/vad/spl_init.c

$(IntermediateDirectory)/src_vad_spl_init.c$(PreprocessSuffix): src/vad/spl_init.c
	$(CC) $(CFLAGS) $(IncludePath) $(PreprocessOnlySwitch) $(OutputSwitch) $(IntermediateDirectory)/src_vad_spl_init.c$(PreprocessSuffix) src/vad/spl_init.c

$(IntermediateDirectory)/src_vad_min_max_operations.c$(ObjectSuffix): src/vad/min_max_operations.c $(IntermediateDirectory)/src_vad_min_max_operations.c$(DependSuffix)
	$(CC) $(SourceSwitch) "/home/fym/722/cpp-project/AudioMixer/src/vad/min_max_operations.c" $(CFLAGS) $(ObjectSwitch)$(IntermediateDirectory)/src_vad_min_max_operations.c$(ObjectSuffix) $(IncludePath)
$(IntermediateDirectory)/src_vad_min_max_operations.c$(DependSuffix): src/vad/min_max_operations.c
	@$(CC) $(CFLAGS) $(IncludePath) -MG -MP -MT$(IntermediateDirectory)/src_vad_min_max_operations.c$(ObjectSuffix) -MF$(IntermediateDirectory)/src_vad_min_max_operations.c$(DependSuffix) -MM src/vad/min_max_operations.c

$(IntermediateDirectory)/src_vad_min_max_operations.c$(PreprocessSuffix): src/vad/min_max_operations.c
	$(CC) $(CFLAGS) $(IncludePath) $(PreprocessOnlySwitch) $(OutputSwitch) $(IntermediateDirectory)/src_vad_min_max_operations.c$(PreprocessSuffix) src/vad/min_max_operations.c

$(IntermediateDirectory)/src_vad_get_scaling_square.c$(ObjectSuffix): src/vad/get_scaling_square.c $(IntermediateDirectory)/src_vad_get_scaling_square.c$(DependSuffix)
	$(CC) $(SourceSwitch) "/home/fym/722/cpp-project/AudioMixer/src/vad/get_scaling_square.c" $(CFLAGS) $(ObjectSwitch)$(IntermediateDirectory)/src_vad_get_scaling_square.c$(ObjectSuffix) $(IncludePath)
$(IntermediateDirectory)/src_vad_get_scaling_square.c$(DependSuffix): src/vad/get_scaling_square.c
	@$(CC) $(CFLAGS) $(IncludePath) -MG -MP -MT$(IntermediateDirectory)/src_vad_get_scaling_square.c$(ObjectSuffix) -MF$(IntermediateDirectory)/src_vad_get_scaling_square.c$(DependSuffix) -MM src/vad/get_scaling_square.c

$(IntermediateDirectory)/src_vad_get_scaling_square.c$(PreprocessSuffix): src/vad/get_scaling_square.c
	$(CC) $(CFLAGS) $(IncludePath) $(PreprocessOnlySwitch) $(OutputSwitch) $(IntermediateDirectory)/src_vad_get_scaling_square.c$(PreprocessSuffix) src/vad/get_scaling_square.c

$(IntermediateDirectory)/src_jrtplib_rtpabortdescriptors.cpp$(ObjectSuffix): src/jrtplib/rtpabortdescriptors.cpp $(IntermediateDirectory)/src_jrtplib_rtpabortdescriptors.cpp$(DependSuffix)
	$(CXX) $(IncludePCH) $(SourceSwitch) "/home/fym/722/cpp-project/AudioMixer/src/jrtplib/rtpabortdescriptors.cpp" $(CXXFLAGS) $(ObjectSwitch)$(IntermediateDirectory)/src_jrtplib_rtpabortdescriptors.cpp$(ObjectSuffix) $(IncludePath)
$(IntermediateDirectory)/src_jrtplib_rtpabortdescriptors.cpp$(DependSuffix): src/jrtplib/rtpabortdescriptors.cpp
	@$(CXX) $(CXXFLAGS) $(IncludePCH) $(IncludePath) -MG -MP -MT$(IntermediateDirectory)/src_jrtplib_rtpabortdescriptors.cpp$(ObjectSuffix) -MF$(IntermediateDirectory)/src_jrtplib_rtpabortdescriptors.cpp$(DependSuffix) -MM src/jrtplib/rtpabortdescriptors.cpp

$(IntermediateDirectory)/src_jrtplib_rtpabortdescriptors.cpp$(PreprocessSuffix): src/jrtplib/rtpabortdescriptors.cpp
	$(CXX) $(CXXFLAGS) $(IncludePCH) $(IncludePath) $(PreprocessOnlySwitch) $(OutputSwitch) $(IntermediateDirectory)/src_jrtplib_rtpabortdescriptors.cpp$(PreprocessSuffix) src/jrtplib/rtpabortdescriptors.cpp

$(IntermediateDirectory)/src_thread_LocalPlayThread.cpp$(ObjectSuffix): src/thread/LocalPlayThread.cpp $(IntermediateDirectory)/src_thread_LocalPlayThread.cpp$(DependSuffix)
	$(CXX) $(IncludePCH) $(SourceSwitch) "/home/fym/722/cpp-project/AudioMixer/src/thread/LocalPlayThread.cpp" $(CXXFLAGS) $(ObjectSwitch)$(IntermediateDirectory)/src_thread_LocalPlayThread.cpp$(ObjectSuffix) $(IncludePath)
$(IntermediateDirectory)/src_thread_LocalPlayThread.cpp$(DependSuffix): src/thread/LocalPlayThread.cpp
	@$(CXX) $(CXXFLAGS) $(IncludePCH) $(IncludePath) -MG -MP -MT$(IntermediateDirectory)/src_thread_LocalPlayThread.cpp$(ObjectSuffix) -MF$(IntermediateDirectory)/src_thread_LocalPlayThread.cpp$(DependSuffix) -MM src/thread/LocalPlayThread.cpp

$(IntermediateDirectory)/src_thread_LocalPlayThread.cpp$(PreprocessSuffix): src/thread/LocalPlayThread.cpp
	$(CXX) $(CXXFLAGS) $(IncludePCH) $(IncludePath) $(PreprocessOnlySwitch) $(OutputSwitch) $(IntermediateDirectory)/src_thread_LocalPlayThread.cpp$(PreprocessSuffix) src/thread/LocalPlayThread.cpp

$(IntermediateDirectory)/src_thread_BaseThread.cpp$(ObjectSuffix): src/thread/BaseThread.cpp $(IntermediateDirectory)/src_thread_BaseThread.cpp$(DependSuffix)
	$(CXX) $(IncludePCH) $(SourceSwitch) "/home/fym/722/cpp-project/AudioMixer/src/thread/BaseThread.cpp" $(CXXFLAGS) $(ObjectSwitch)$(IntermediateDirectory)/src_thread_BaseThread.cpp$(ObjectSuffix) $(IncludePath)
$(IntermediateDirectory)/src_thread_BaseThread.cpp$(DependSuffix): src/thread/BaseThread.cpp
	@$(CXX) $(CXXFLAGS) $(IncludePCH) $(IncludePath) -MG -MP -MT$(IntermediateDirectory)/src_thread_BaseThread.cpp$(ObjectSuffix) -MF$(IntermediateDirectory)/src_thread_BaseThread.cpp$(DependSuffix) -MM src/thread/BaseThread.cpp

$(IntermediateDirectory)/src_thread_BaseThread.cpp$(PreprocessSuffix): src/thread/BaseThread.cpp
	$(CXX) $(CXXFLAGS) $(IncludePCH) $(IncludePath) $(PreprocessOnlySwitch) $(OutputSwitch) $(IntermediateDirectory)/src_thread_BaseThread.cpp$(PreprocessSuffix) src/thread/BaseThread.cpp

$(IntermediateDirectory)/src_jrtplib_rtcpapppacket.cpp$(ObjectSuffix): src/jrtplib/rtcpapppacket.cpp $(IntermediateDirectory)/src_jrtplib_rtcpapppacket.cpp$(DependSuffix)
	$(CXX) $(IncludePCH) $(SourceSwitch) "/home/fym/722/cpp-project/AudioMixer/src/jrtplib/rtcpapppacket.cpp" $(CXXFLAGS) $(ObjectSwitch)$(IntermediateDirectory)/src_jrtplib_rtcpapppacket.cpp$(ObjectSuffix) $(IncludePath)
$(IntermediateDirectory)/src_jrtplib_rtcpapppacket.cpp$(DependSuffix): src/jrtplib/rtcpapppacket.cpp
	@$(CXX) $(CXXFLAGS) $(IncludePCH) $(IncludePath) -MG -MP -MT$(IntermediateDirectory)/src_jrtplib_rtcpapppacket.cpp$(ObjectSuffix) -MF$(IntermediateDirectory)/src_jrtplib_rtcpapppacket.cpp$(DependSuffix) -MM src/jrtplib/rtcpapppacket.cpp

$(IntermediateDirectory)/src_jrtplib_rtcpapppacket.cpp$(PreprocessSuffix): src/jrtplib/rtcpapppacket.cpp
	$(CXX) $(CXXFLAGS) $(IncludePCH) $(IncludePath) $(PreprocessOnlySwitch) $(OutputSwitch) $(IntermediateDirectory)/src_jrtplib_rtcpapppacket.cpp$(PreprocessSuffix) src/jrtplib/rtcpapppacket.cpp

$(IntermediateDirectory)/src_jrtplib_rtcpcompoundpacketbuilder.cpp$(ObjectSuffix): src/jrtplib/rtcpcompoundpacketbuilder.cpp $(IntermediateDirectory)/src_jrtplib_rtcpcompoundpacketbuilder.cpp$(DependSuffix)
	$(CXX) $(IncludePCH) $(SourceSwitch) "/home/fym/722/cpp-project/AudioMixer/src/jrtplib/rtcpcompoundpacketbuilder.cpp" $(CXXFLAGS) $(ObjectSwitch)$(IntermediateDirectory)/src_jrtplib_rtcpcompoundpacketbuilder.cpp$(ObjectSuffix) $(IncludePath)
$(IntermediateDirectory)/src_jrtplib_rtcpcompoundpacketbuilder.cpp$(DependSuffix): src/jrtplib/rtcpcompoundpacketbuilder.cpp
	@$(CXX) $(CXXFLAGS) $(IncludePCH) $(IncludePath) -MG -MP -MT$(IntermediateDirectory)/src_jrtplib_rtcpcompoundpacketbuilder.cpp$(ObjectSuffix) -MF$(IntermediateDirectory)/src_jrtplib_rtcpcompoundpacketbuilder.cpp$(DependSuffix) -MM src/jrtplib/rtcpcompoundpacketbuilder.cpp

$(IntermediateDirectory)/src_jrtplib_rtcpcompoundpacketbuilder.cpp$(PreprocessSuffix): src/jrtplib/rtcpcompoundpacketbuilder.cpp
	$(CXX) $(CXXFLAGS) $(IncludePCH) $(IncludePath) $(PreprocessOnlySwitch) $(OutputSwitch) $(IntermediateDirectory)/src_jrtplib_rtcpcompoundpacketbuilder.cpp$(PreprocessSuffix) src/jrtplib/rtcpcompoundpacketbuilder.cpp

$(IntermediateDirectory)/src_jrtplib_rtpudpv6transmitter.cpp$(ObjectSuffix): src/jrtplib/rtpudpv6transmitter.cpp $(IntermediateDirectory)/src_jrtplib_rtpudpv6transmitter.cpp$(DependSuffix)
	$(CXX) $(IncludePCH) $(SourceSwitch) "/home/fym/722/cpp-project/AudioMixer/src/jrtplib/rtpudpv6transmitter.cpp" $(CXXFLAGS) $(ObjectSwitch)$(IntermediateDirectory)/src_jrtplib_rtpudpv6transmitter.cpp$(ObjectSuffix) $(IncludePath)
$(IntermediateDirectory)/src_jrtplib_rtpudpv6transmitter.cpp$(DependSuffix): src/jrtplib/rtpudpv6transmitter.cpp
	@$(CXX) $(CXXFLAGS) $(IncludePCH) $(IncludePath) -MG -MP -MT$(IntermediateDirectory)/src_jrtplib_rtpudpv6transmitter.cpp$(ObjectSuffix) -MF$(IntermediateDirectory)/src_jrtplib_rtpudpv6transmitter.cpp$(DependSuffix) -MM src/jrtplib/rtpudpv6transmitter.cpp

$(IntermediateDirectory)/src_jrtplib_rtpudpv6transmitter.cpp$(PreprocessSuffix): src/jrtplib/rtpudpv6transmitter.cpp
	$(CXX) $(CXXFLAGS) $(IncludePCH) $(IncludePath) $(PreprocessOnlySwitch) $(OutputSwitch) $(IntermediateDirectory)/src_jrtplib_rtpudpv6transmitter.cpp$(PreprocessSuffix) src/jrtplib/rtpudpv6transmitter.cpp

$(IntermediateDirectory)/src_task_ConferenceTask.cpp$(ObjectSuffix): src/task/ConferenceTask.cpp $(IntermediateDirectory)/src_task_ConferenceTask.cpp$(DependSuffix)
	$(CXX) $(IncludePCH) $(SourceSwitch) "/home/fym/722/cpp-project/AudioMixer/src/task/ConferenceTask.cpp" $(CXXFLAGS) $(ObjectSwitch)$(IntermediateDirectory)/src_task_ConferenceTask.cpp$(ObjectSuffix) $(IncludePath)
$(IntermediateDirectory)/src_task_ConferenceTask.cpp$(DependSuffix): src/task/ConferenceTask.cpp
	@$(CXX) $(CXXFLAGS) $(IncludePCH) $(IncludePath) -MG -MP -MT$(IntermediateDirectory)/src_task_ConferenceTask.cpp$(ObjectSuffix) -MF$(IntermediateDirectory)/src_task_ConferenceTask.cpp$(DependSuffix) -MM src/task/ConferenceTask.cpp

$(IntermediateDirectory)/src_task_ConferenceTask.cpp$(PreprocessSuffix): src/task/ConferenceTask.cpp
	$(CXX) $(CXXFLAGS) $(IncludePCH) $(IncludePath) $(PreprocessOnlySwitch) $(OutputSwitch) $(IntermediateDirectory)/src_task_ConferenceTask.cpp$(PreprocessSuffix) src/task/ConferenceTask.cpp

$(IntermediateDirectory)/src_jrtplib_rtcpsrpacket.cpp$(ObjectSuffix): src/jrtplib/rtcpsrpacket.cpp $(IntermediateDirectory)/src_jrtplib_rtcpsrpacket.cpp$(DependSuffix)
	$(CXX) $(IncludePCH) $(SourceSwitch) "/home/fym/722/cpp-project/AudioMixer/src/jrtplib/rtcpsrpacket.cpp" $(CXXFLAGS) $(ObjectSwitch)$(IntermediateDirectory)/src_jrtplib_rtcpsrpacket.cpp$(ObjectSuffix) $(IncludePath)
$(IntermediateDirectory)/src_jrtplib_rtcpsrpacket.cpp$(DependSuffix): src/jrtplib/rtcpsrpacket.cpp
	@$(CXX) $(CXXFLAGS) $(IncludePCH) $(IncludePath) -MG -MP -MT$(IntermediateDirectory)/src_jrtplib_rtcpsrpacket.cpp$(ObjectSuffix) -MF$(IntermediateDirectory)/src_jrtplib_rtcpsrpacket.cpp$(DependSuffix) -MM src/jrtplib/rtcpsrpacket.cpp

$(IntermediateDirectory)/src_jrtplib_rtcpsrpacket.cpp$(PreprocessSuffix): src/jrtplib/rtcpsrpacket.cpp
	$(CXX) $(CXXFLAGS) $(IncludePCH) $(IncludePath) $(PreprocessOnlySwitch) $(OutputSwitch) $(IntermediateDirectory)/src_jrtplib_rtcpsrpacket.cpp$(PreprocessSuffix) src/jrtplib/rtcpsrpacket.cpp

$(IntermediateDirectory)/src_ns_fft4g.c$(ObjectSuffix): src/ns/fft4g.c $(IntermediateDirectory)/src_ns_fft4g.c$(DependSuffix)
	$(CC) $(SourceSwitch) "/home/fym/722/cpp-project/AudioMixer/src/ns/fft4g.c" $(CFLAGS) $(ObjectSwitch)$(IntermediateDirectory)/src_ns_fft4g.c$(ObjectSuffix) $(IncludePath)
$(IntermediateDirectory)/src_ns_fft4g.c$(DependSuffix): src/ns/fft4g.c
	@$(CC) $(CFLAGS) $(IncludePath) -MG -MP -MT$(IntermediateDirectory)/src_ns_fft4g.c$(ObjectSuffix) -MF$(IntermediateDirectory)/src_ns_fft4g.c$(DependSuffix) -MM src/ns/fft4g.c

$(IntermediateDirectory)/src_ns_fft4g.c$(PreprocessSuffix): src/ns/fft4g.c
	$(CC) $(CFLAGS) $(IncludePath) $(PreprocessOnlySwitch) $(OutputSwitch) $(IntermediateDirectory)/src_ns_fft4g.c$(PreprocessSuffix) src/ns/fft4g.c

$(IntermediateDirectory)/src_misc_CommandContextParse.cpp$(ObjectSuffix): src/misc/CommandContextParse.cpp $(IntermediateDirectory)/src_misc_CommandContextParse.cpp$(DependSuffix)
	$(CXX) $(IncludePCH) $(SourceSwitch) "/home/fym/722/cpp-project/AudioMixer/src/misc/CommandContextParse.cpp" $(CXXFLAGS) $(ObjectSwitch)$(IntermediateDirectory)/src_misc_CommandContextParse.cpp$(ObjectSuffix) $(IncludePath)
$(IntermediateDirectory)/src_misc_CommandContextParse.cpp$(DependSuffix): src/misc/CommandContextParse.cpp
	@$(CXX) $(CXXFLAGS) $(IncludePCH) $(IncludePath) -MG -MP -MT$(IntermediateDirectory)/src_misc_CommandContextParse.cpp$(ObjectSuffix) -MF$(IntermediateDirectory)/src_misc_CommandContextParse.cpp$(DependSuffix) -MM src/misc/CommandContextParse.cpp

$(IntermediateDirectory)/src_misc_CommandContextParse.cpp$(PreprocessSuffix): src/misc/CommandContextParse.cpp
	$(CXX) $(CXXFLAGS) $(IncludePCH) $(IncludePath) $(PreprocessOnlySwitch) $(OutputSwitch) $(IntermediateDirectory)/src_misc_CommandContextParse.cpp$(PreprocessSuffix) src/misc/CommandContextParse.cpp

$(IntermediateDirectory)/src_vad_resample_fractional.c$(ObjectSuffix): src/vad/resample_fractional.c $(IntermediateDirectory)/src_vad_resample_fractional.c$(DependSuffix)
	$(CC) $(SourceSwitch) "/home/fym/722/cpp-project/AudioMixer/src/vad/resample_fractional.c" $(CFLAGS) $(ObjectSwitch)$(IntermediateDirectory)/src_vad_resample_fractional.c$(ObjectSuffix) $(IncludePath)
$(IntermediateDirectory)/src_vad_resample_fractional.c$(DependSuffix): src/vad/resample_fractional.c
	@$(CC) $(CFLAGS) $(IncludePath) -MG -MP -MT$(IntermediateDirectory)/src_vad_resample_fractional.c$(ObjectSuffix) -MF$(IntermediateDirectory)/src_vad_resample_fractional.c$(DependSuffix) -MM src/vad/resample_fractional.c

$(IntermediateDirectory)/src_vad_resample_fractional.c$(PreprocessSuffix): src/vad/resample_fractional.c
	$(CC) $(CFLAGS) $(IncludePath) $(PreprocessOnlySwitch) $(OutputSwitch) $(IntermediateDirectory)/src_vad_resample_fractional.c$(PreprocessSuffix) src/vad/resample_fractional.c

$(IntermediateDirectory)/src_vad_vad_main.c$(ObjectSuffix): src/vad/vad_main.c $(IntermediateDirectory)/src_vad_vad_main.c$(DependSuffix)
	$(CC) $(SourceSwitch) "/home/fym/722/cpp-project/AudioMixer/src/vad/vad_main.c" $(CFLAGS) $(ObjectSwitch)$(IntermediateDirectory)/src_vad_vad_main.c$(ObjectSuffix) $(IncludePath)
$(IntermediateDirectory)/src_vad_vad_main.c$(DependSuffix): src/vad/vad_main.c
	@$(CC) $(CFLAGS) $(IncludePath) -MG -MP -MT$(IntermediateDirectory)/src_vad_vad_main.c$(ObjectSuffix) -MF$(IntermediateDirectory)/src_vad_vad_main.c$(DependSuffix) -MM src/vad/vad_main.c

$(IntermediateDirectory)/src_vad_vad_main.c$(PreprocessSuffix): src/vad/vad_main.c
	$(CC) $(CFLAGS) $(IncludePath) $(PreprocessOnlySwitch) $(OutputSwitch) $(IntermediateDirectory)/src_vad_vad_main.c$(PreprocessSuffix) src/vad/vad_main.c

$(IntermediateDirectory)/src_thread_TaskThread.cpp$(ObjectSuffix): src/thread/TaskThread.cpp $(IntermediateDirectory)/src_thread_TaskThread.cpp$(DependSuffix)
	$(CXX) $(IncludePCH) $(SourceSwitch) "/home/fym/722/cpp-project/AudioMixer/src/thread/TaskThread.cpp" $(CXXFLAGS) $(ObjectSwitch)$(IntermediateDirectory)/src_thread_TaskThread.cpp$(ObjectSuffix) $(IncludePath)
$(IntermediateDirectory)/src_thread_TaskThread.cpp$(DependSuffix): src/thread/TaskThread.cpp
	@$(CXX) $(CXXFLAGS) $(IncludePCH) $(IncludePath) -MG -MP -MT$(IntermediateDirectory)/src_thread_TaskThread.cpp$(ObjectSuffix) -MF$(IntermediateDirectory)/src_thread_TaskThread.cpp$(DependSuffix) -MM src/thread/TaskThread.cpp

$(IntermediateDirectory)/src_thread_TaskThread.cpp$(PreprocessSuffix): src/thread/TaskThread.cpp
	$(CXX) $(CXXFLAGS) $(IncludePCH) $(IncludePath) $(PreprocessOnlySwitch) $(OutputSwitch) $(IntermediateDirectory)/src_thread_TaskThread.cpp$(PreprocessSuffix) src/thread/TaskThread.cpp

$(IntermediateDirectory)/src_vad_vector_scaling_operations.c$(ObjectSuffix): src/vad/vector_scaling_operations.c $(IntermediateDirectory)/src_vad_vector_scaling_operations.c$(DependSuffix)
	$(CC) $(SourceSwitch) "/home/fym/722/cpp-project/AudioMixer/src/vad/vector_scaling_operations.c" $(CFLAGS) $(ObjectSwitch)$(IntermediateDirectory)/src_vad_vector_scaling_operations.c$(ObjectSuffix) $(IncludePath)
$(IntermediateDirectory)/src_vad_vector_scaling_operations.c$(DependSuffix): src/vad/vector_scaling_operations.c
	@$(CC) $(CFLAGS) $(IncludePath) -MG -MP -MT$(IntermediateDirectory)/src_vad_vector_scaling_operations.c$(ObjectSuffix) -MF$(IntermediateDirectory)/src_vad_vector_scaling_operations.c$(DependSuffix) -MM src/vad/vector_scaling_operations.c

$(IntermediateDirectory)/src_vad_vector_scaling_operations.c$(PreprocessSuffix): src/vad/vector_scaling_operations.c
	$(CC) $(CFLAGS) $(IncludePath) $(PreprocessOnlySwitch) $(OutputSwitch) $(IntermediateDirectory)/src_vad_vector_scaling_operations.c$(PreprocessSuffix) src/vad/vector_scaling_operations.c

$(IntermediateDirectory)/src_vad_vad_filterbank.c$(ObjectSuffix): src/vad/vad_filterbank.c $(IntermediateDirectory)/src_vad_vad_filterbank.c$(DependSuffix)
	$(CC) $(SourceSwitch) "/home/fym/722/cpp-project/AudioMixer/src/vad/vad_filterbank.c" $(CFLAGS) $(ObjectSwitch)$(IntermediateDirectory)/src_vad_vad_filterbank.c$(ObjectSuffix) $(IncludePath)
$(IntermediateDirectory)/src_vad_vad_filterbank.c$(DependSuffix): src/vad/vad_filterbank.c
	@$(CC) $(CFLAGS) $(IncludePath) -MG -MP -MT$(IntermediateDirectory)/src_vad_vad_filterbank.c$(ObjectSuffix) -MF$(IntermediateDirectory)/src_vad_vad_filterbank.c$(DependSuffix) -MM src/vad/vad_filterbank.c

$(IntermediateDirectory)/src_vad_vad_filterbank.c$(PreprocessSuffix): src/vad/vad_filterbank.c
	$(CC) $(CFLAGS) $(IncludePath) $(PreprocessOnlySwitch) $(OutputSwitch) $(IntermediateDirectory)/src_vad_vad_filterbank.c$(PreprocessSuffix) src/vad/vad_filterbank.c

$(IntermediateDirectory)/src_jrtplib_rtpudpv4transmitter.cpp$(ObjectSuffix): src/jrtplib/rtpudpv4transmitter.cpp $(IntermediateDirectory)/src_jrtplib_rtpudpv4transmitter.cpp$(DependSuffix)
	$(CXX) $(IncludePCH) $(SourceSwitch) "/home/fym/722/cpp-project/AudioMixer/src/jrtplib/rtpudpv4transmitter.cpp" $(CXXFLAGS) $(ObjectSwitch)$(IntermediateDirectory)/src_jrtplib_rtpudpv4transmitter.cpp$(ObjectSuffix) $(IncludePath)
$(IntermediateDirectory)/src_jrtplib_rtpudpv4transmitter.cpp$(DependSuffix): src/jrtplib/rtpudpv4transmitter.cpp
	@$(CXX) $(CXXFLAGS) $(IncludePCH) $(IncludePath) -MG -MP -MT$(IntermediateDirectory)/src_jrtplib_rtpudpv4transmitter.cpp$(ObjectSuffix) -MF$(IntermediateDirectory)/src_jrtplib_rtpudpv4transmitter.cpp$(DependSuffix) -MM src/jrtplib/rtpudpv4transmitter.cpp

$(IntermediateDirectory)/src_jrtplib_rtpudpv4transmitter.cpp$(PreprocessSuffix): src/jrtplib/rtpudpv4transmitter.cpp
	$(CXX) $(CXXFLAGS) $(IncludePCH) $(IncludePath) $(PreprocessOnlySwitch) $(OutputSwitch) $(IntermediateDirectory)/src_jrtplib_rtpudpv4transmitter.cpp$(PreprocessSuffix) src/jrtplib/rtpudpv4transmitter.cpp

$(IntermediateDirectory)/src_vad_real_fft.c$(ObjectSuffix): src/vad/real_fft.c $(IntermediateDirectory)/src_vad_real_fft.c$(DependSuffix)
	$(CC) $(SourceSwitch) "/home/fym/722/cpp-project/AudioMixer/src/vad/real_fft.c" $(CFLAGS) $(ObjectSwitch)$(IntermediateDirectory)/src_vad_real_fft.c$(ObjectSuffix) $(IncludePath)
$(IntermediateDirectory)/src_vad_real_fft.c$(DependSuffix): src/vad/real_fft.c
	@$(CC) $(CFLAGS) $(IncludePath) -MG -MP -MT$(IntermediateDirectory)/src_vad_real_fft.c$(ObjectSuffix) -MF$(IntermediateDirectory)/src_vad_real_fft.c$(DependSuffix) -MM src/vad/real_fft.c

$(IntermediateDirectory)/src_vad_real_fft.c$(PreprocessSuffix): src/vad/real_fft.c
	$(CC) $(CFLAGS) $(IncludePath) $(PreprocessOnlySwitch) $(OutputSwitch) $(IntermediateDirectory)/src_vad_real_fft.c$(PreprocessSuffix) src/vad/real_fft.c

$(IntermediateDirectory)/src_vad_energy.c$(ObjectSuffix): src/vad/energy.c $(IntermediateDirectory)/src_vad_energy.c$(DependSuffix)
	$(CC) $(SourceSwitch) "/home/fym/722/cpp-project/AudioMixer/src/vad/energy.c" $(CFLAGS) $(ObjectSwitch)$(IntermediateDirectory)/src_vad_energy.c$(ObjectSuffix) $(IncludePath)
$(IntermediateDirectory)/src_vad_energy.c$(DependSuffix): src/vad/energy.c
	@$(CC) $(CFLAGS) $(IncludePath) -MG -MP -MT$(IntermediateDirectory)/src_vad_energy.c$(ObjectSuffix) -MF$(IntermediateDirectory)/src_vad_energy.c$(DependSuffix) -MM src/vad/energy.c

$(IntermediateDirectory)/src_vad_energy.c$(PreprocessSuffix): src/vad/energy.c
	$(CC) $(CFLAGS) $(IncludePath) $(PreprocessOnlySwitch) $(OutputSwitch) $(IntermediateDirectory)/src_vad_energy.c$(PreprocessSuffix) src/vad/energy.c

$(IntermediateDirectory)/src_thread_ConferenceMixThread.cpp$(ObjectSuffix): src/thread/ConferenceMixThread.cpp $(IntermediateDirectory)/src_thread_ConferenceMixThread.cpp$(DependSuffix)
	$(CXX) $(IncludePCH) $(SourceSwitch) "/home/fym/722/cpp-project/AudioMixer/src/thread/ConferenceMixThread.cpp" $(CXXFLAGS) $(ObjectSwitch)$(IntermediateDirectory)/src_thread_ConferenceMixThread.cpp$(ObjectSuffix) $(IncludePath)
$(IntermediateDirectory)/src_thread_ConferenceMixThread.cpp$(DependSuffix): src/thread/ConferenceMixThread.cpp
	@$(CXX) $(CXXFLAGS) $(IncludePCH) $(IncludePath) -MG -MP -MT$(IntermediateDirectory)/src_thread_ConferenceMixThread.cpp$(ObjectSuffix) -MF$(IntermediateDirectory)/src_thread_ConferenceMixThread.cpp$(DependSuffix) -MM src/thread/ConferenceMixThread.cpp

$(IntermediateDirectory)/src_thread_ConferenceMixThread.cpp$(PreprocessSuffix): src/thread/ConferenceMixThread.cpp
	$(CXX) $(CXXFLAGS) $(IncludePCH) $(IncludePath) $(PreprocessOnlySwitch) $(OutputSwitch) $(IntermediateDirectory)/src_thread_ConferenceMixThread.cpp$(PreprocessSuffix) src/thread/ConferenceMixThread.cpp

$(IntermediateDirectory)/src_vad_vad_gmm.c$(ObjectSuffix): src/vad/vad_gmm.c $(IntermediateDirectory)/src_vad_vad_gmm.c$(DependSuffix)
	$(CC) $(SourceSwitch) "/home/fym/722/cpp-project/AudioMixer/src/vad/vad_gmm.c" $(CFLAGS) $(ObjectSwitch)$(IntermediateDirectory)/src_vad_vad_gmm.c$(ObjectSuffix) $(IncludePath)
$(IntermediateDirectory)/src_vad_vad_gmm.c$(DependSuffix): src/vad/vad_gmm.c
	@$(CC) $(CFLAGS) $(IncludePath) -MG -MP -MT$(IntermediateDirectory)/src_vad_vad_gmm.c$(ObjectSuffix) -MF$(IntermediateDirectory)/src_vad_vad_gmm.c$(DependSuffix) -MM src/vad/vad_gmm.c

$(IntermediateDirectory)/src_vad_vad_gmm.c$(PreprocessSuffix): src/vad/vad_gmm.c
	$(CC) $(CFLAGS) $(IncludePath) $(PreprocessOnlySwitch) $(OutputSwitch) $(IntermediateDirectory)/src_vad_vad_gmm.c$(PreprocessSuffix) src/vad/vad_gmm.c

$(IntermediateDirectory)/src_vad_cross_correlation.c$(ObjectSuffix): src/vad/cross_correlation.c $(IntermediateDirectory)/src_vad_cross_correlation.c$(DependSuffix)
	$(CC) $(SourceSwitch) "/home/fym/722/cpp-project/AudioMixer/src/vad/cross_correlation.c" $(CFLAGS) $(ObjectSwitch)$(IntermediateDirectory)/src_vad_cross_correlation.c$(ObjectSuffix) $(IncludePath)
$(IntermediateDirectory)/src_vad_cross_correlation.c$(DependSuffix): src/vad/cross_correlation.c
	@$(CC) $(CFLAGS) $(IncludePath) -MG -MP -MT$(IntermediateDirectory)/src_vad_cross_correlation.c$(ObjectSuffix) -MF$(IntermediateDirectory)/src_vad_cross_correlation.c$(DependSuffix) -MM src/vad/cross_correlation.c

$(IntermediateDirectory)/src_vad_cross_correlation.c$(PreprocessSuffix): src/vad/cross_correlation.c
	$(CC) $(CFLAGS) $(IncludePath) $(PreprocessOnlySwitch) $(OutputSwitch) $(IntermediateDirectory)/src_vad_cross_correlation.c$(PreprocessSuffix) src/vad/cross_correlation.c

$(IntermediateDirectory)/src_vad_webrtc_vad.c$(ObjectSuffix): src/vad/webrtc_vad.c $(IntermediateDirectory)/src_vad_webrtc_vad.c$(DependSuffix)
	$(CC) $(SourceSwitch) "/home/fym/722/cpp-project/AudioMixer/src/vad/webrtc_vad.c" $(CFLAGS) $(ObjectSwitch)$(IntermediateDirectory)/src_vad_webrtc_vad.c$(ObjectSuffix) $(IncludePath)
$(IntermediateDirectory)/src_vad_webrtc_vad.c$(DependSuffix): src/vad/webrtc_vad.c
	@$(CC) $(CFLAGS) $(IncludePath) -MG -MP -MT$(IntermediateDirectory)/src_vad_webrtc_vad.c$(ObjectSuffix) -MF$(IntermediateDirectory)/src_vad_webrtc_vad.c$(DependSuffix) -MM src/vad/webrtc_vad.c

$(IntermediateDirectory)/src_vad_webrtc_vad.c$(PreprocessSuffix): src/vad/webrtc_vad.c
	$(CC) $(CFLAGS) $(IncludePath) $(PreprocessOnlySwitch) $(OutputSwitch) $(IntermediateDirectory)/src_vad_webrtc_vad.c$(PreprocessSuffix) src/vad/webrtc_vad.c

$(IntermediateDirectory)/src_codec_iLBCCodec.cpp$(ObjectSuffix): src/codec/iLBCCodec.cpp $(IntermediateDirectory)/src_codec_iLBCCodec.cpp$(DependSuffix)
	$(CXX) $(IncludePCH) $(SourceSwitch) "/home/fym/722/cpp-project/AudioMixer/src/codec/iLBCCodec.cpp" $(CXXFLAGS) $(ObjectSwitch)$(IntermediateDirectory)/src_codec_iLBCCodec.cpp$(ObjectSuffix) $(IncludePath)
$(IntermediateDirectory)/src_codec_iLBCCodec.cpp$(DependSuffix): src/codec/iLBCCodec.cpp
	@$(CXX) $(CXXFLAGS) $(IncludePCH) $(IncludePath) -MG -MP -MT$(IntermediateDirectory)/src_codec_iLBCCodec.cpp$(ObjectSuffix) -MF$(IntermediateDirectory)/src_codec_iLBCCodec.cpp$(DependSuffix) -MM src/codec/iLBCCodec.cpp

$(IntermediateDirectory)/src_codec_iLBCCodec.cpp$(PreprocessSuffix): src/codec/iLBCCodec.cpp
	$(CXX) $(CXXFLAGS) $(IncludePCH) $(IncludePath) $(PreprocessOnlySwitch) $(OutputSwitch) $(IntermediateDirectory)/src_codec_iLBCCodec.cpp$(PreprocessSuffix) src/codec/iLBCCodec.cpp

$(IntermediateDirectory)/src_thread_LocalRecordThread.cpp$(ObjectSuffix): src/thread/LocalRecordThread.cpp $(IntermediateDirectory)/src_thread_LocalRecordThread.cpp$(DependSuffix)
	$(CXX) $(IncludePCH) $(SourceSwitch) "/home/fym/722/cpp-project/AudioMixer/src/thread/LocalRecordThread.cpp" $(CXXFLAGS) $(ObjectSwitch)$(IntermediateDirectory)/src_thread_LocalRecordThread.cpp$(ObjectSuffix) $(IncludePath)
$(IntermediateDirectory)/src_thread_LocalRecordThread.cpp$(DependSuffix): src/thread/LocalRecordThread.cpp
	@$(CXX) $(CXXFLAGS) $(IncludePCH) $(IncludePath) -MG -MP -MT$(IntermediateDirectory)/src_thread_LocalRecordThread.cpp$(ObjectSuffix) -MF$(IntermediateDirectory)/src_thread_LocalRecordThread.cpp$(DependSuffix) -MM src/thread/LocalRecordThread.cpp

$(IntermediateDirectory)/src_thread_LocalRecordThread.cpp$(PreprocessSuffix): src/thread/LocalRecordThread.cpp
	$(CXX) $(CXXFLAGS) $(IncludePCH) $(IncludePath) $(PreprocessOnlySwitch) $(OutputSwitch) $(IntermediateDirectory)/src_thread_LocalRecordThread.cpp$(PreprocessSuffix) src/thread/LocalRecordThread.cpp

$(IntermediateDirectory)/src_thread_BroadcastThread.cpp$(ObjectSuffix): src/thread/BroadcastThread.cpp $(IntermediateDirectory)/src_thread_BroadcastThread.cpp$(DependSuffix)
	$(CXX) $(IncludePCH) $(SourceSwitch) "/home/fym/722/cpp-project/AudioMixer/src/thread/BroadcastThread.cpp" $(CXXFLAGS) $(ObjectSwitch)$(IntermediateDirectory)/src_thread_BroadcastThread.cpp$(ObjectSuffix) $(IncludePath)
$(IntermediateDirectory)/src_thread_BroadcastThread.cpp$(DependSuffix): src/thread/BroadcastThread.cpp
	@$(CXX) $(CXXFLAGS) $(IncludePCH) $(IncludePath) -MG -MP -MT$(IntermediateDirectory)/src_thread_BroadcastThread.cpp$(ObjectSuffix) -MF$(IntermediateDirectory)/src_thread_BroadcastThread.cpp$(DependSuffix) -MM src/thread/BroadcastThread.cpp

$(IntermediateDirectory)/src_thread_BroadcastThread.cpp$(PreprocessSuffix): src/thread/BroadcastThread.cpp
	$(CXX) $(CXXFLAGS) $(IncludePCH) $(IncludePath) $(PreprocessOnlySwitch) $(OutputSwitch) $(IntermediateDirectory)/src_thread_BroadcastThread.cpp$(PreprocessSuffix) src/thread/BroadcastThread.cpp

$(IntermediateDirectory)/src_misc_AES.cpp$(ObjectSuffix): src/misc/AES.cpp $(IntermediateDirectory)/src_misc_AES.cpp$(DependSuffix)
	$(CXX) $(IncludePCH) $(SourceSwitch) "/home/fym/722/cpp-project/AudioMixer/src/misc/AES.cpp" $(CXXFLAGS) $(ObjectSwitch)$(IntermediateDirectory)/src_misc_AES.cpp$(ObjectSuffix) $(IncludePath)
$(IntermediateDirectory)/src_misc_AES.cpp$(DependSuffix): src/misc/AES.cpp
	@$(CXX) $(CXXFLAGS) $(IncludePCH) $(IncludePath) -MG -MP -MT$(IntermediateDirectory)/src_misc_AES.cpp$(ObjectSuffix) -MF$(IntermediateDirectory)/src_misc_AES.cpp$(DependSuffix) -MM src/misc/AES.cpp

$(IntermediateDirectory)/src_misc_AES.cpp$(PreprocessSuffix): src/misc/AES.cpp
	$(CXX) $(CXXFLAGS) $(IncludePCH) $(IncludePath) $(PreprocessOnlySwitch) $(OutputSwitch) $(IntermediateDirectory)/src_misc_AES.cpp$(PreprocessSuffix) src/misc/AES.cpp

$(IntermediateDirectory)/src_jrtplib_rtpsessionparams.cpp$(ObjectSuffix): src/jrtplib/rtpsessionparams.cpp $(IntermediateDirectory)/src_jrtplib_rtpsessionparams.cpp$(DependSuffix)
	$(CXX) $(IncludePCH) $(SourceSwitch) "/home/fym/722/cpp-project/AudioMixer/src/jrtplib/rtpsessionparams.cpp" $(CXXFLAGS) $(ObjectSwitch)$(IntermediateDirectory)/src_jrtplib_rtpsessionparams.cpp$(ObjectSuffix) $(IncludePath)
$(IntermediateDirectory)/src_jrtplib_rtpsessionparams.cpp$(DependSuffix): src/jrtplib/rtpsessionparams.cpp
	@$(CXX) $(CXXFLAGS) $(IncludePCH) $(IncludePath) -MG -MP -MT$(IntermediateDirectory)/src_jrtplib_rtpsessionparams.cpp$(ObjectSuffix) -MF$(IntermediateDirectory)/src_jrtplib_rtpsessionparams.cpp$(DependSuffix) -MM src/jrtplib/rtpsessionparams.cpp

$(IntermediateDirectory)/src_jrtplib_rtpsessionparams.cpp$(PreprocessSuffix): src/jrtplib/rtpsessionparams.cpp
	$(CXX) $(CXXFLAGS) $(IncludePCH) $(IncludePath) $(PreprocessOnlySwitch) $(OutputSwitch) $(IntermediateDirectory)/src_jrtplib_rtpsessionparams.cpp$(PreprocessSuffix) src/jrtplib/rtpsessionparams.cpp

$(IntermediateDirectory)/src_jrtplib_rtpsecuresession.cpp$(ObjectSuffix): src/jrtplib/rtpsecuresession.cpp $(IntermediateDirectory)/src_jrtplib_rtpsecuresession.cpp$(DependSuffix)
	$(CXX) $(IncludePCH) $(SourceSwitch) "/home/fym/722/cpp-project/AudioMixer/src/jrtplib/rtpsecuresession.cpp" $(CXXFLAGS) $(ObjectSwitch)$(IntermediateDirectory)/src_jrtplib_rtpsecuresession.cpp$(ObjectSuffix) $(IncludePath)
$(IntermediateDirectory)/src_jrtplib_rtpsecuresession.cpp$(DependSuffix): src/jrtplib/rtpsecuresession.cpp
	@$(CXX) $(CXXFLAGS) $(IncludePCH) $(IncludePath) -MG -MP -MT$(IntermediateDirectory)/src_jrtplib_rtpsecuresession.cpp$(ObjectSuffix) -MF$(IntermediateDirectory)/src_jrtplib_rtpsecuresession.cpp$(DependSuffix) -MM src/jrtplib/rtpsecuresession.cpp

$(IntermediateDirectory)/src_jrtplib_rtpsecuresession.cpp$(PreprocessSuffix): src/jrtplib/rtpsecuresession.cpp
	$(CXX) $(CXXFLAGS) $(IncludePCH) $(IncludePath) $(PreprocessOnlySwitch) $(OutputSwitch) $(IntermediateDirectory)/src_jrtplib_rtpsecuresession.cpp$(PreprocessSuffix) src/jrtplib/rtpsecuresession.cpp

$(IntermediateDirectory)/src_jrtplib_rtprandomurandom.cpp$(ObjectSuffix): src/jrtplib/rtprandomurandom.cpp $(IntermediateDirectory)/src_jrtplib_rtprandomurandom.cpp$(DependSuffix)
	$(CXX) $(IncludePCH) $(SourceSwitch) "/home/fym/722/cpp-project/AudioMixer/src/jrtplib/rtprandomurandom.cpp" $(CXXFLAGS) $(ObjectSwitch)$(IntermediateDirectory)/src_jrtplib_rtprandomurandom.cpp$(ObjectSuffix) $(IncludePath)
$(IntermediateDirectory)/src_jrtplib_rtprandomurandom.cpp$(DependSuffix): src/jrtplib/rtprandomurandom.cpp
	@$(CXX) $(CXXFLAGS) $(IncludePCH) $(IncludePath) -MG -MP -MT$(IntermediateDirectory)/src_jrtplib_rtprandomurandom.cpp$(ObjectSuffix) -MF$(IntermediateDirectory)/src_jrtplib_rtprandomurandom.cpp$(DependSuffix) -MM src/jrtplib/rtprandomurandom.cpp

$(IntermediateDirectory)/src_jrtplib_rtprandomurandom.cpp$(PreprocessSuffix): src/jrtplib/rtprandomurandom.cpp
	$(CXX) $(CXXFLAGS) $(IncludePCH) $(IncludePath) $(PreprocessOnlySwitch) $(OutputSwitch) $(IntermediateDirectory)/src_jrtplib_rtprandomurandom.cpp$(PreprocessSuffix) src/jrtplib/rtprandomurandom.cpp

$(IntermediateDirectory)/src_jrtplib_rtpcollisionlist.cpp$(ObjectSuffix): src/jrtplib/rtpcollisionlist.cpp $(IntermediateDirectory)/src_jrtplib_rtpcollisionlist.cpp$(DependSuffix)
	$(CXX) $(IncludePCH) $(SourceSwitch) "/home/fym/722/cpp-project/AudioMixer/src/jrtplib/rtpcollisionlist.cpp" $(CXXFLAGS) $(ObjectSwitch)$(IntermediateDirectory)/src_jrtplib_rtpcollisionlist.cpp$(ObjectSuffix) $(IncludePath)
$(IntermediateDirectory)/src_jrtplib_rtpcollisionlist.cpp$(DependSuffix): src/jrtplib/rtpcollisionlist.cpp
	@$(CXX) $(CXXFLAGS) $(IncludePCH) $(IncludePath) -MG -MP -MT$(IntermediateDirectory)/src_jrtplib_rtpcollisionlist.cpp$(ObjectSuffix) -MF$(IntermediateDirectory)/src_jrtplib_rtpcollisionlist.cpp$(DependSuffix) -MM src/jrtplib/rtpcollisionlist.cpp

$(IntermediateDirectory)/src_jrtplib_rtpcollisionlist.cpp$(PreprocessSuffix): src/jrtplib/rtpcollisionlist.cpp
	$(CXX) $(CXXFLAGS) $(IncludePCH) $(IncludePath) $(PreprocessOnlySwitch) $(OutputSwitch) $(IntermediateDirectory)/src_jrtplib_rtpcollisionlist.cpp$(PreprocessSuffix) src/jrtplib/rtpcollisionlist.cpp

$(IntermediateDirectory)/src_vad_vad_core.c$(ObjectSuffix): src/vad/vad_core.c $(IntermediateDirectory)/src_vad_vad_core.c$(DependSuffix)
	$(CC) $(SourceSwitch) "/home/fym/722/cpp-project/AudioMixer/src/vad/vad_core.c" $(CFLAGS) $(ObjectSwitch)$(IntermediateDirectory)/src_vad_vad_core.c$(ObjectSuffix) $(IncludePath)
$(IntermediateDirectory)/src_vad_vad_core.c$(DependSuffix): src/vad/vad_core.c
	@$(CC) $(CFLAGS) $(IncludePath) -MG -MP -MT$(IntermediateDirectory)/src_vad_vad_core.c$(ObjectSuffix) -MF$(IntermediateDirectory)/src_vad_vad_core.c$(DependSuffix) -MM src/vad/vad_core.c

$(IntermediateDirectory)/src_vad_vad_core.c$(PreprocessSuffix): src/vad/vad_core.c
	$(CC) $(CFLAGS) $(IncludePath) $(PreprocessOnlySwitch) $(OutputSwitch) $(IntermediateDirectory)/src_vad_vad_core.c$(PreprocessSuffix) src/vad/vad_core.c

$(IntermediateDirectory)/src_misc_ConfigBox.cpp$(ObjectSuffix): src/misc/ConfigBox.cpp $(IntermediateDirectory)/src_misc_ConfigBox.cpp$(DependSuffix)
	$(CXX) $(IncludePCH) $(SourceSwitch) "/home/fym/722/cpp-project/AudioMixer/src/misc/ConfigBox.cpp" $(CXXFLAGS) $(ObjectSwitch)$(IntermediateDirectory)/src_misc_ConfigBox.cpp$(ObjectSuffix) $(IncludePath)
$(IntermediateDirectory)/src_misc_ConfigBox.cpp$(DependSuffix): src/misc/ConfigBox.cpp
	@$(CXX) $(CXXFLAGS) $(IncludePCH) $(IncludePath) -MG -MP -MT$(IntermediateDirectory)/src_misc_ConfigBox.cpp$(ObjectSuffix) -MF$(IntermediateDirectory)/src_misc_ConfigBox.cpp$(DependSuffix) -MM src/misc/ConfigBox.cpp

$(IntermediateDirectory)/src_misc_ConfigBox.cpp$(PreprocessSuffix): src/misc/ConfigBox.cpp
	$(CXX) $(CXXFLAGS) $(IncludePCH) $(IncludePath) $(PreprocessOnlySwitch) $(OutputSwitch) $(IntermediateDirectory)/src_misc_ConfigBox.cpp$(PreprocessSuffix) src/misc/ConfigBox.cpp

$(IntermediateDirectory)/src_vad_resample_48khz.c$(ObjectSuffix): src/vad/resample_48khz.c $(IntermediateDirectory)/src_vad_resample_48khz.c$(DependSuffix)
	$(CC) $(SourceSwitch) "/home/fym/722/cpp-project/AudioMixer/src/vad/resample_48khz.c" $(CFLAGS) $(ObjectSwitch)$(IntermediateDirectory)/src_vad_resample_48khz.c$(ObjectSuffix) $(IncludePath)
$(IntermediateDirectory)/src_vad_resample_48khz.c$(DependSuffix): src/vad/resample_48khz.c
	@$(CC) $(CFLAGS) $(IncludePath) -MG -MP -MT$(IntermediateDirectory)/src_vad_resample_48khz.c$(ObjectSuffix) -MF$(IntermediateDirectory)/src_vad_resample_48khz.c$(DependSuffix) -MM src/vad/resample_48khz.c

$(IntermediateDirectory)/src_vad_resample_48khz.c$(PreprocessSuffix): src/vad/resample_48khz.c
	$(CC) $(CFLAGS) $(IncludePath) $(PreprocessOnlySwitch) $(OutputSwitch) $(IntermediateDirectory)/src_vad_resample_48khz.c$(PreprocessSuffix) src/vad/resample_48khz.c

$(IntermediateDirectory)/src_vad_complex_bit_reverse.c$(ObjectSuffix): src/vad/complex_bit_reverse.c $(IntermediateDirectory)/src_vad_complex_bit_reverse.c$(DependSuffix)
	$(CC) $(SourceSwitch) "/home/fym/722/cpp-project/AudioMixer/src/vad/complex_bit_reverse.c" $(CFLAGS) $(ObjectSwitch)$(IntermediateDirectory)/src_vad_complex_bit_reverse.c$(ObjectSuffix) $(IncludePath)
$(IntermediateDirectory)/src_vad_complex_bit_reverse.c$(DependSuffix): src/vad/complex_bit_reverse.c
	@$(CC) $(CFLAGS) $(IncludePath) -MG -MP -MT$(IntermediateDirectory)/src_vad_complex_bit_reverse.c$(ObjectSuffix) -MF$(IntermediateDirectory)/src_vad_complex_bit_reverse.c$(DependSuffix) -MM src/vad/complex_bit_reverse.c

$(IntermediateDirectory)/src_vad_complex_bit_reverse.c$(PreprocessSuffix): src/vad/complex_bit_reverse.c
	$(CC) $(CFLAGS) $(IncludePath) $(PreprocessOnlySwitch) $(OutputSwitch) $(IntermediateDirectory)/src_vad_complex_bit_reverse.c$(PreprocessSuffix) src/vad/complex_bit_reverse.c

$(IntermediateDirectory)/src_codec_G711Codec.cpp$(ObjectSuffix): src/codec/G711Codec.cpp $(IntermediateDirectory)/src_codec_G711Codec.cpp$(DependSuffix)
	$(CXX) $(IncludePCH) $(SourceSwitch) "/home/fym/722/cpp-project/AudioMixer/src/codec/G711Codec.cpp" $(CXXFLAGS) $(ObjectSwitch)$(IntermediateDirectory)/src_codec_G711Codec.cpp$(ObjectSuffix) $(IncludePath)
$(IntermediateDirectory)/src_codec_G711Codec.cpp$(DependSuffix): src/codec/G711Codec.cpp
	@$(CXX) $(CXXFLAGS) $(IncludePCH) $(IncludePath) -MG -MP -MT$(IntermediateDirectory)/src_codec_G711Codec.cpp$(ObjectSuffix) -MF$(IntermediateDirectory)/src_codec_G711Codec.cpp$(DependSuffix) -MM src/codec/G711Codec.cpp

$(IntermediateDirectory)/src_codec_G711Codec.cpp$(PreprocessSuffix): src/codec/G711Codec.cpp
	$(CXX) $(CXXFLAGS) $(IncludePCH) $(IncludePath) $(PreprocessOnlySwitch) $(OutputSwitch) $(IntermediateDirectory)/src_codec_G711Codec.cpp$(PreprocessSuffix) src/codec/G711Codec.cpp

$(IntermediateDirectory)/src_jrtplib_rtpinternalsourcedata.cpp$(ObjectSuffix): src/jrtplib/rtpinternalsourcedata.cpp $(IntermediateDirectory)/src_jrtplib_rtpinternalsourcedata.cpp$(DependSuffix)
	$(CXX) $(IncludePCH) $(SourceSwitch) "/home/fym/722/cpp-project/AudioMixer/src/jrtplib/rtpinternalsourcedata.cpp" $(CXXFLAGS) $(ObjectSwitch)$(IntermediateDirectory)/src_jrtplib_rtpinternalsourcedata.cpp$(ObjectSuffix) $(IncludePath)
$(IntermediateDirectory)/src_jrtplib_rtpinternalsourcedata.cpp$(DependSuffix): src/jrtplib/rtpinternalsourcedata.cpp
	@$(CXX) $(CXXFLAGS) $(IncludePCH) $(IncludePath) -MG -MP -MT$(IntermediateDirectory)/src_jrtplib_rtpinternalsourcedata.cpp$(ObjectSuffix) -MF$(IntermediateDirectory)/src_jrtplib_rtpinternalsourcedata.cpp$(DependSuffix) -MM src/jrtplib/rtpinternalsourcedata.cpp

$(IntermediateDirectory)/src_jrtplib_rtpinternalsourcedata.cpp$(PreprocessSuffix): src/jrtplib/rtpinternalsourcedata.cpp
	$(CXX) $(CXXFLAGS) $(IncludePCH) $(IncludePath) $(PreprocessOnlySwitch) $(OutputSwitch) $(IntermediateDirectory)/src_jrtplib_rtpinternalsourcedata.cpp$(PreprocessSuffix) src/jrtplib/rtpinternalsourcedata.cpp

$(IntermediateDirectory)/src_vad_complex_fft.c$(ObjectSuffix): src/vad/complex_fft.c $(IntermediateDirectory)/src_vad_complex_fft.c$(DependSuffix)
	$(CC) $(SourceSwitch) "/home/fym/722/cpp-project/AudioMixer/src/vad/complex_fft.c" $(CFLAGS) $(ObjectSwitch)$(IntermediateDirectory)/src_vad_complex_fft.c$(ObjectSuffix) $(IncludePath)
$(IntermediateDirectory)/src_vad_complex_fft.c$(DependSuffix): src/vad/complex_fft.c
	@$(CC) $(CFLAGS) $(IncludePath) -MG -MP -MT$(IntermediateDirectory)/src_vad_complex_fft.c$(ObjectSuffix) -MF$(IntermediateDirectory)/src_vad_complex_fft.c$(DependSuffix) -MM src/vad/complex_fft.c

$(IntermediateDirectory)/src_vad_complex_fft.c$(PreprocessSuffix): src/vad/complex_fft.c
	$(CC) $(CFLAGS) $(IncludePath) $(PreprocessOnlySwitch) $(OutputSwitch) $(IntermediateDirectory)/src_vad_complex_fft.c$(PreprocessSuffix) src/vad/complex_fft.c

$(IntermediateDirectory)/src_jrtplib_rtptimeutilities.cpp$(ObjectSuffix): src/jrtplib/rtptimeutilities.cpp $(IntermediateDirectory)/src_jrtplib_rtptimeutilities.cpp$(DependSuffix)
	$(CXX) $(IncludePCH) $(SourceSwitch) "/home/fym/722/cpp-project/AudioMixer/src/jrtplib/rtptimeutilities.cpp" $(CXXFLAGS) $(ObjectSwitch)$(IntermediateDirectory)/src_jrtplib_rtptimeutilities.cpp$(ObjectSuffix) $(IncludePath)
$(IntermediateDirectory)/src_jrtplib_rtptimeutilities.cpp$(DependSuffix): src/jrtplib/rtptimeutilities.cpp
	@$(CXX) $(CXXFLAGS) $(IncludePCH) $(IncludePath) -MG -MP -MT$(IntermediateDirectory)/src_jrtplib_rtptimeutilities.cpp$(ObjectSuffix) -MF$(IntermediateDirectory)/src_jrtplib_rtptimeutilities.cpp$(DependSuffix) -MM src/jrtplib/rtptimeutilities.cpp

$(IntermediateDirectory)/src_jrtplib_rtptimeutilities.cpp$(PreprocessSuffix): src/jrtplib/rtptimeutilities.cpp
	$(CXX) $(CXXFLAGS) $(IncludePCH) $(IncludePath) $(PreprocessOnlySwitch) $(OutputSwitch) $(IntermediateDirectory)/src_jrtplib_rtptimeutilities.cpp$(PreprocessSuffix) src/jrtplib/rtptimeutilities.cpp

$(IntermediateDirectory)/src_vad_division_operations.c$(ObjectSuffix): src/vad/division_operations.c $(IntermediateDirectory)/src_vad_division_operations.c$(DependSuffix)
	$(CC) $(SourceSwitch) "/home/fym/722/cpp-project/AudioMixer/src/vad/division_operations.c" $(CFLAGS) $(ObjectSwitch)$(IntermediateDirectory)/src_vad_division_operations.c$(ObjectSuffix) $(IncludePath)
$(IntermediateDirectory)/src_vad_division_operations.c$(DependSuffix): src/vad/division_operations.c
	@$(CC) $(CFLAGS) $(IncludePath) -MG -MP -MT$(IntermediateDirectory)/src_vad_division_operations.c$(ObjectSuffix) -MF$(IntermediateDirectory)/src_vad_division_operations.c$(DependSuffix) -MM src/vad/division_operations.c

$(IntermediateDirectory)/src_vad_division_operations.c$(PreprocessSuffix): src/vad/division_operations.c
	$(CC) $(CFLAGS) $(IncludePath) $(PreprocessOnlySwitch) $(OutputSwitch) $(IntermediateDirectory)/src_vad_division_operations.c$(PreprocessSuffix) src/vad/division_operations.c

$(IntermediateDirectory)/src_vad_downsample_fast.c$(ObjectSuffix): src/vad/downsample_fast.c $(IntermediateDirectory)/src_vad_downsample_fast.c$(DependSuffix)
	$(CC) $(SourceSwitch) "/home/fym/722/cpp-project/AudioMixer/src/vad/downsample_fast.c" $(CFLAGS) $(ObjectSwitch)$(IntermediateDirectory)/src_vad_downsample_fast.c$(ObjectSuffix) $(IncludePath)
$(IntermediateDirectory)/src_vad_downsample_fast.c$(DependSuffix): src/vad/downsample_fast.c
	@$(CC) $(CFLAGS) $(IncludePath) -MG -MP -MT$(IntermediateDirectory)/src_vad_downsample_fast.c$(ObjectSuffix) -MF$(IntermediateDirectory)/src_vad_downsample_fast.c$(DependSuffix) -MM src/vad/downsample_fast.c

$(IntermediateDirectory)/src_vad_downsample_fast.c$(PreprocessSuffix): src/vad/downsample_fast.c
	$(CC) $(CFLAGS) $(IncludePath) $(PreprocessOnlySwitch) $(OutputSwitch) $(IntermediateDirectory)/src_vad_downsample_fast.c$(PreprocessSuffix) src/vad/downsample_fast.c

$(IntermediateDirectory)/src_misc_MiscTool.cpp$(ObjectSuffix): src/misc/MiscTool.cpp $(IntermediateDirectory)/src_misc_MiscTool.cpp$(DependSuffix)
	$(CXX) $(IncludePCH) $(SourceSwitch) "/home/fym/722/cpp-project/AudioMixer/src/misc/MiscTool.cpp" $(CXXFLAGS) $(ObjectSwitch)$(IntermediateDirectory)/src_misc_MiscTool.cpp$(ObjectSuffix) $(IncludePath)
$(IntermediateDirectory)/src_misc_MiscTool.cpp$(DependSuffix): src/misc/MiscTool.cpp
	@$(CXX) $(CXXFLAGS) $(IncludePCH) $(IncludePath) -MG -MP -MT$(IntermediateDirectory)/src_misc_MiscTool.cpp$(ObjectSuffix) -MF$(IntermediateDirectory)/src_misc_MiscTool.cpp$(DependSuffix) -MM src/misc/MiscTool.cpp

$(IntermediateDirectory)/src_misc_MiscTool.cpp$(PreprocessSuffix): src/misc/MiscTool.cpp
	$(CXX) $(CXXFLAGS) $(IncludePCH) $(IncludePath) $(PreprocessOnlySwitch) $(OutputSwitch) $(IntermediateDirectory)/src_misc_MiscTool.cpp$(PreprocessSuffix) src/misc/MiscTool.cpp

$(IntermediateDirectory)/src_jrtplib_rtcppacket.cpp$(ObjectSuffix): src/jrtplib/rtcppacket.cpp $(IntermediateDirectory)/src_jrtplib_rtcppacket.cpp$(DependSuffix)
	$(CXX) $(IncludePCH) $(SourceSwitch) "/home/fym/722/cpp-project/AudioMixer/src/jrtplib/rtcppacket.cpp" $(CXXFLAGS) $(ObjectSwitch)$(IntermediateDirectory)/src_jrtplib_rtcppacket.cpp$(ObjectSuffix) $(IncludePath)
$(IntermediateDirectory)/src_jrtplib_rtcppacket.cpp$(DependSuffix): src/jrtplib/rtcppacket.cpp
	@$(CXX) $(CXXFLAGS) $(IncludePCH) $(IncludePath) -MG -MP -MT$(IntermediateDirectory)/src_jrtplib_rtcppacket.cpp$(ObjectSuffix) -MF$(IntermediateDirectory)/src_jrtplib_rtcppacket.cpp$(DependSuffix) -MM src/jrtplib/rtcppacket.cpp

$(IntermediateDirectory)/src_jrtplib_rtcppacket.cpp$(PreprocessSuffix): src/jrtplib/rtcppacket.cpp
	$(CXX) $(CXXFLAGS) $(IncludePCH) $(IncludePath) $(PreprocessOnlySwitch) $(OutputSwitch) $(IntermediateDirectory)/src_jrtplib_rtcppacket.cpp$(PreprocessSuffix) src/jrtplib/rtcppacket.cpp

$(IntermediateDirectory)/src_ns_ns_core.c$(ObjectSuffix): src/ns/ns_core.c $(IntermediateDirectory)/src_ns_ns_core.c$(DependSuffix)
	$(CC) $(SourceSwitch) "/home/fym/722/cpp-project/AudioMixer/src/ns/ns_core.c" $(CFLAGS) $(ObjectSwitch)$(IntermediateDirectory)/src_ns_ns_core.c$(ObjectSuffix) $(IncludePath)
$(IntermediateDirectory)/src_ns_ns_core.c$(DependSuffix): src/ns/ns_core.c
	@$(CC) $(CFLAGS) $(IncludePath) -MG -MP -MT$(IntermediateDirectory)/src_ns_ns_core.c$(ObjectSuffix) -MF$(IntermediateDirectory)/src_ns_ns_core.c$(DependSuffix) -MM src/ns/ns_core.c

$(IntermediateDirectory)/src_ns_ns_core.c$(PreprocessSuffix): src/ns/ns_core.c
	$(CC) $(CFLAGS) $(IncludePath) $(PreprocessOnlySwitch) $(OutputSwitch) $(IntermediateDirectory)/src_ns_ns_core.c$(PreprocessSuffix) src/ns/ns_core.c

$(IntermediateDirectory)/src_ns_noise_suppression.c$(ObjectSuffix): src/ns/noise_suppression.c $(IntermediateDirectory)/src_ns_noise_suppression.c$(DependSuffix)
	$(CC) $(SourceSwitch) "/home/fym/722/cpp-project/AudioMixer/src/ns/noise_suppression.c" $(CFLAGS) $(ObjectSwitch)$(IntermediateDirectory)/src_ns_noise_suppression.c$(ObjectSuffix) $(IncludePath)
$(IntermediateDirectory)/src_ns_noise_suppression.c$(DependSuffix): src/ns/noise_suppression.c
	@$(CC) $(CFLAGS) $(IncludePath) -MG -MP -MT$(IntermediateDirectory)/src_ns_noise_suppression.c$(ObjectSuffix) -MF$(IntermediateDirectory)/src_ns_noise_suppression.c$(DependSuffix) -MM src/ns/noise_suppression.c

$(IntermediateDirectory)/src_ns_noise_suppression.c$(PreprocessSuffix): src/ns/noise_suppression.c
	$(CC) $(CFLAGS) $(IncludePath) $(PreprocessOnlySwitch) $(OutputSwitch) $(IntermediateDirectory)/src_ns_noise_suppression.c$(PreprocessSuffix) src/ns/noise_suppression.c

$(IntermediateDirectory)/src_main_ScheduleServer.cpp$(ObjectSuffix): src/main/ScheduleServer.cpp $(IntermediateDirectory)/src_main_ScheduleServer.cpp$(DependSuffix)
	$(CXX) $(IncludePCH) $(SourceSwitch) "/home/fym/722/cpp-project/AudioMixer/src/main/ScheduleServer.cpp" $(CXXFLAGS) $(ObjectSwitch)$(IntermediateDirectory)/src_main_ScheduleServer.cpp$(ObjectSuffix) $(IncludePath)
$(IntermediateDirectory)/src_main_ScheduleServer.cpp$(DependSuffix): src/main/ScheduleServer.cpp
	@$(CXX) $(CXXFLAGS) $(IncludePCH) $(IncludePath) -MG -MP -MT$(IntermediateDirectory)/src_main_ScheduleServer.cpp$(ObjectSuffix) -MF$(IntermediateDirectory)/src_main_ScheduleServer.cpp$(DependSuffix) -MM src/main/ScheduleServer.cpp

$(IntermediateDirectory)/src_main_ScheduleServer.cpp$(PreprocessSuffix): src/main/ScheduleServer.cpp
	$(CXX) $(CXXFLAGS) $(IncludePCH) $(IncludePath) $(PreprocessOnlySwitch) $(OutputSwitch) $(IntermediateDirectory)/src_main_ScheduleServer.cpp$(PreprocessSuffix) src/main/ScheduleServer.cpp

$(IntermediateDirectory)/src_jrtplib_rtppollthread.cpp$(ObjectSuffix): src/jrtplib/rtppollthread.cpp $(IntermediateDirectory)/src_jrtplib_rtppollthread.cpp$(DependSuffix)
	$(CXX) $(IncludePCH) $(SourceSwitch) "/home/fym/722/cpp-project/AudioMixer/src/jrtplib/rtppollthread.cpp" $(CXXFLAGS) $(ObjectSwitch)$(IntermediateDirectory)/src_jrtplib_rtppollthread.cpp$(ObjectSuffix) $(IncludePath)
$(IntermediateDirectory)/src_jrtplib_rtppollthread.cpp$(DependSuffix): src/jrtplib/rtppollthread.cpp
	@$(CXX) $(CXXFLAGS) $(IncludePCH) $(IncludePath) -MG -MP -MT$(IntermediateDirectory)/src_jrtplib_rtppollthread.cpp$(ObjectSuffix) -MF$(IntermediateDirectory)/src_jrtplib_rtppollthread.cpp$(DependSuffix) -MM src/jrtplib/rtppollthread.cpp

$(IntermediateDirectory)/src_jrtplib_rtppollthread.cpp$(PreprocessSuffix): src/jrtplib/rtppollthread.cpp
	$(CXX) $(CXXFLAGS) $(IncludePCH) $(IncludePath) $(PreprocessOnlySwitch) $(OutputSwitch) $(IntermediateDirectory)/src_jrtplib_rtppollthread.cpp$(PreprocessSuffix) src/jrtplib/rtppollthread.cpp

$(IntermediateDirectory)/src_vad_resample_by_2_internal.c$(ObjectSuffix): src/vad/resample_by_2_internal.c $(IntermediateDirectory)/src_vad_resample_by_2_internal.c$(DependSuffix)
	$(CC) $(SourceSwitch) "/home/fym/722/cpp-project/AudioMixer/src/vad/resample_by_2_internal.c" $(CFLAGS) $(ObjectSwitch)$(IntermediateDirectory)/src_vad_resample_by_2_internal.c$(ObjectSuffix) $(IncludePath)
$(IntermediateDirectory)/src_vad_resample_by_2_internal.c$(DependSuffix): src/vad/resample_by_2_internal.c
	@$(CC) $(CFLAGS) $(IncludePath) -MG -MP -MT$(IntermediateDirectory)/src_vad_resample_by_2_internal.c$(ObjectSuffix) -MF$(IntermediateDirectory)/src_vad_resample_by_2_internal.c$(DependSuffix) -MM src/vad/resample_by_2_internal.c

$(IntermediateDirectory)/src_vad_resample_by_2_internal.c$(PreprocessSuffix): src/vad/resample_by_2_internal.c
	$(CC) $(CFLAGS) $(IncludePath) $(PreprocessOnlySwitch) $(OutputSwitch) $(IntermediateDirectory)/src_vad_resample_by_2_internal.c$(PreprocessSuffix) src/vad/resample_by_2_internal.c

$(IntermediateDirectory)/src_jrtplib_rtptcptransmitter.cpp$(ObjectSuffix): src/jrtplib/rtptcptransmitter.cpp $(IntermediateDirectory)/src_jrtplib_rtptcptransmitter.cpp$(DependSuffix)
	$(CXX) $(IncludePCH) $(SourceSwitch) "/home/fym/722/cpp-project/AudioMixer/src/jrtplib/rtptcptransmitter.cpp" $(CXXFLAGS) $(ObjectSwitch)$(IntermediateDirectory)/src_jrtplib_rtptcptransmitter.cpp$(ObjectSuffix) $(IncludePath)
$(IntermediateDirectory)/src_jrtplib_rtptcptransmitter.cpp$(DependSuffix): src/jrtplib/rtptcptransmitter.cpp
	@$(CXX) $(CXXFLAGS) $(IncludePCH) $(IncludePath) -MG -MP -MT$(IntermediateDirectory)/src_jrtplib_rtptcptransmitter.cpp$(ObjectSuffix) -MF$(IntermediateDirectory)/src_jrtplib_rtptcptransmitter.cpp$(DependSuffix) -MM src/jrtplib/rtptcptransmitter.cpp

$(IntermediateDirectory)/src_jrtplib_rtptcptransmitter.cpp$(PreprocessSuffix): src/jrtplib/rtptcptransmitter.cpp
	$(CXX) $(CXXFLAGS) $(IncludePCH) $(IncludePath) $(PreprocessOnlySwitch) $(OutputSwitch) $(IntermediateDirectory)/src_jrtplib_rtptcptransmitter.cpp$(PreprocessSuffix) src/jrtplib/rtptcptransmitter.cpp

$(IntermediateDirectory)/src_jrtplib_rtptcpaddress.cpp$(ObjectSuffix): src/jrtplib/rtptcpaddress.cpp $(IntermediateDirectory)/src_jrtplib_rtptcpaddress.cpp$(DependSuffix)
	$(CXX) $(IncludePCH) $(SourceSwitch) "/home/fym/722/cpp-project/AudioMixer/src/jrtplib/rtptcpaddress.cpp" $(CXXFLAGS) $(ObjectSwitch)$(IntermediateDirectory)/src_jrtplib_rtptcpaddress.cpp$(ObjectSuffix) $(IncludePath)
$(IntermediateDirectory)/src_jrtplib_rtptcpaddress.cpp$(DependSuffix): src/jrtplib/rtptcpaddress.cpp
	@$(CXX) $(CXXFLAGS) $(IncludePCH) $(IncludePath) -MG -MP -MT$(IntermediateDirectory)/src_jrtplib_rtptcpaddress.cpp$(ObjectSuffix) -MF$(IntermediateDirectory)/src_jrtplib_rtptcpaddress.cpp$(DependSuffix) -MM src/jrtplib/rtptcpaddress.cpp

$(IntermediateDirectory)/src_jrtplib_rtptcpaddress.cpp$(PreprocessSuffix): src/jrtplib/rtptcpaddress.cpp
	$(CXX) $(CXXFLAGS) $(IncludePCH) $(IncludePath) $(PreprocessOnlySwitch) $(OutputSwitch) $(IntermediateDirectory)/src_jrtplib_rtptcpaddress.cpp$(PreprocessSuffix) src/jrtplib/rtptcpaddress.cpp

$(IntermediateDirectory)/interface.cpp$(ObjectSuffix): interface.cpp $(IntermediateDirectory)/interface.cpp$(DependSuffix)
	$(CXX) $(IncludePCH) $(SourceSwitch) "/home/fym/722/cpp-project/AudioMixer/interface.cpp" $(CXXFLAGS) $(ObjectSwitch)$(IntermediateDirectory)/interface.cpp$(ObjectSuffix) $(IncludePath)
$(IntermediateDirectory)/interface.cpp$(DependSuffix): interface.cpp
	@$(CXX) $(CXXFLAGS) $(IncludePCH) $(IncludePath) -MG -MP -MT$(IntermediateDirectory)/interface.cpp$(ObjectSuffix) -MF$(IntermediateDirectory)/interface.cpp$(DependSuffix) -MM interface.cpp

$(IntermediateDirectory)/interface.cpp$(PreprocessSuffix): interface.cpp
	$(CXX) $(CXXFLAGS) $(IncludePCH) $(IncludePath) $(PreprocessOnlySwitch) $(OutputSwitch) $(IntermediateDirectory)/interface.cpp$(PreprocessSuffix) interface.cpp

$(IntermediateDirectory)/src_vad_vad_sp.c$(ObjectSuffix): src/vad/vad_sp.c $(IntermediateDirectory)/src_vad_vad_sp.c$(DependSuffix)
	$(CC) $(SourceSwitch) "/home/fym/722/cpp-project/AudioMixer/src/vad/vad_sp.c" $(CFLAGS) $(ObjectSwitch)$(IntermediateDirectory)/src_vad_vad_sp.c$(ObjectSuffix) $(IncludePath)
$(IntermediateDirectory)/src_vad_vad_sp.c$(DependSuffix): src/vad/vad_sp.c
	@$(CC) $(CFLAGS) $(IncludePath) -MG -MP -MT$(IntermediateDirectory)/src_vad_vad_sp.c$(ObjectSuffix) -MF$(IntermediateDirectory)/src_vad_vad_sp.c$(DependSuffix) -MM src/vad/vad_sp.c

$(IntermediateDirectory)/src_vad_vad_sp.c$(PreprocessSuffix): src/vad/vad_sp.c
	$(CC) $(CFLAGS) $(IncludePath) $(PreprocessOnlySwitch) $(OutputSwitch) $(IntermediateDirectory)/src_vad_vad_sp.c$(PreprocessSuffix) src/vad/vad_sp.c

$(IntermediateDirectory)/src_jrtplib_rtpsources.cpp$(ObjectSuffix): src/jrtplib/rtpsources.cpp $(IntermediateDirectory)/src_jrtplib_rtpsources.cpp$(DependSuffix)
	$(CXX) $(IncludePCH) $(SourceSwitch) "/home/fym/722/cpp-project/AudioMixer/src/jrtplib/rtpsources.cpp" $(CXXFLAGS) $(ObjectSwitch)$(IntermediateDirectory)/src_jrtplib_rtpsources.cpp$(ObjectSuffix) $(IncludePath)
$(IntermediateDirectory)/src_jrtplib_rtpsources.cpp$(DependSuffix): src/jrtplib/rtpsources.cpp
	@$(CXX) $(CXXFLAGS) $(IncludePCH) $(IncludePath) -MG -MP -MT$(IntermediateDirectory)/src_jrtplib_rtpsources.cpp$(ObjectSuffix) -MF$(IntermediateDirectory)/src_jrtplib_rtpsources.cpp$(DependSuffix) -MM src/jrtplib/rtpsources.cpp

$(IntermediateDirectory)/src_jrtplib_rtpsources.cpp$(PreprocessSuffix): src/jrtplib/rtpsources.cpp
	$(CXX) $(CXXFLAGS) $(IncludePCH) $(IncludePath) $(PreprocessOnlySwitch) $(OutputSwitch) $(IntermediateDirectory)/src_jrtplib_rtpsources.cpp$(PreprocessSuffix) src/jrtplib/rtpsources.cpp

$(IntermediateDirectory)/src_jrtplib_rtpsourcedata.cpp$(ObjectSuffix): src/jrtplib/rtpsourcedata.cpp $(IntermediateDirectory)/src_jrtplib_rtpsourcedata.cpp$(DependSuffix)
	$(CXX) $(IncludePCH) $(SourceSwitch) "/home/fym/722/cpp-project/AudioMixer/src/jrtplib/rtpsourcedata.cpp" $(CXXFLAGS) $(ObjectSwitch)$(IntermediateDirectory)/src_jrtplib_rtpsourcedata.cpp$(ObjectSuffix) $(IncludePath)
$(IntermediateDirectory)/src_jrtplib_rtpsourcedata.cpp$(DependSuffix): src/jrtplib/rtpsourcedata.cpp
	@$(CXX) $(CXXFLAGS) $(IncludePCH) $(IncludePath) -MG -MP -MT$(IntermediateDirectory)/src_jrtplib_rtpsourcedata.cpp$(ObjectSuffix) -MF$(IntermediateDirectory)/src_jrtplib_rtpsourcedata.cpp$(DependSuffix) -MM src/jrtplib/rtpsourcedata.cpp

$(IntermediateDirectory)/src_jrtplib_rtpsourcedata.cpp$(PreprocessSuffix): src/jrtplib/rtpsourcedata.cpp
	$(CXX) $(CXXFLAGS) $(IncludePCH) $(IncludePath) $(PreprocessOnlySwitch) $(OutputSwitch) $(IntermediateDirectory)/src_jrtplib_rtpsourcedata.cpp$(PreprocessSuffix) src/jrtplib/rtpsourcedata.cpp

$(IntermediateDirectory)/src_jrtplib_rtpbyteaddress.cpp$(ObjectSuffix): src/jrtplib/rtpbyteaddress.cpp $(IntermediateDirectory)/src_jrtplib_rtpbyteaddress.cpp$(DependSuffix)
	$(CXX) $(IncludePCH) $(SourceSwitch) "/home/fym/722/cpp-project/AudioMixer/src/jrtplib/rtpbyteaddress.cpp" $(CXXFLAGS) $(ObjectSwitch)$(IntermediateDirectory)/src_jrtplib_rtpbyteaddress.cpp$(ObjectSuffix) $(IncludePath)
$(IntermediateDirectory)/src_jrtplib_rtpbyteaddress.cpp$(DependSuffix): src/jrtplib/rtpbyteaddress.cpp
	@$(CXX) $(CXXFLAGS) $(IncludePCH) $(IncludePath) -MG -MP -MT$(IntermediateDirectory)/src_jrtplib_rtpbyteaddress.cpp$(ObjectSuffix) -MF$(IntermediateDirectory)/src_jrtplib_rtpbyteaddress.cpp$(DependSuffix) -MM src/jrtplib/rtpbyteaddress.cpp

$(IntermediateDirectory)/src_jrtplib_rtpbyteaddress.cpp$(PreprocessSuffix): src/jrtplib/rtpbyteaddress.cpp
	$(CXX) $(CXXFLAGS) $(IncludePCH) $(IncludePath) $(PreprocessOnlySwitch) $(OutputSwitch) $(IntermediateDirectory)/src_jrtplib_rtpbyteaddress.cpp$(PreprocessSuffix) src/jrtplib/rtpbyteaddress.cpp

$(IntermediateDirectory)/src_jrtplib_rtpsessionsources.cpp$(ObjectSuffix): src/jrtplib/rtpsessionsources.cpp $(IntermediateDirectory)/src_jrtplib_rtpsessionsources.cpp$(DependSuffix)
	$(CXX) $(IncludePCH) $(SourceSwitch) "/home/fym/722/cpp-project/AudioMixer/src/jrtplib/rtpsessionsources.cpp" $(CXXFLAGS) $(ObjectSwitch)$(IntermediateDirectory)/src_jrtplib_rtpsessionsources.cpp$(ObjectSuffix) $(IncludePath)
$(IntermediateDirectory)/src_jrtplib_rtpsessionsources.cpp$(DependSuffix): src/jrtplib/rtpsessionsources.cpp
	@$(CXX) $(CXXFLAGS) $(IncludePCH) $(IncludePath) -MG -MP -MT$(IntermediateDirectory)/src_jrtplib_rtpsessionsources.cpp$(ObjectSuffix) -MF$(IntermediateDirectory)/src_jrtplib_rtpsessionsources.cpp$(DependSuffix) -MM src/jrtplib/rtpsessionsources.cpp

$(IntermediateDirectory)/src_jrtplib_rtpsessionsources.cpp$(PreprocessSuffix): src/jrtplib/rtpsessionsources.cpp
	$(CXX) $(CXXFLAGS) $(IncludePCH) $(IncludePath) $(PreprocessOnlySwitch) $(OutputSwitch) $(IntermediateDirectory)/src_jrtplib_rtpsessionsources.cpp$(PreprocessSuffix) src/jrtplib/rtpsessionsources.cpp

$(IntermediateDirectory)/src_codec_PCMCodec.cpp$(ObjectSuffix): src/codec/PCMCodec.cpp $(IntermediateDirectory)/src_codec_PCMCodec.cpp$(DependSuffix)
	$(CXX) $(IncludePCH) $(SourceSwitch) "/home/fym/722/cpp-project/AudioMixer/src/codec/PCMCodec.cpp" $(CXXFLAGS) $(ObjectSwitch)$(IntermediateDirectory)/src_codec_PCMCodec.cpp$(ObjectSuffix) $(IncludePath)
$(IntermediateDirectory)/src_codec_PCMCodec.cpp$(DependSuffix): src/codec/PCMCodec.cpp
	@$(CXX) $(CXXFLAGS) $(IncludePCH) $(IncludePath) -MG -MP -MT$(IntermediateDirectory)/src_codec_PCMCodec.cpp$(ObjectSuffix) -MF$(IntermediateDirectory)/src_codec_PCMCodec.cpp$(DependSuffix) -MM src/codec/PCMCodec.cpp

$(IntermediateDirectory)/src_codec_PCMCodec.cpp$(PreprocessSuffix): src/codec/PCMCodec.cpp
	$(CXX) $(CXXFLAGS) $(IncludePCH) $(IncludePath) $(PreprocessOnlySwitch) $(OutputSwitch) $(IntermediateDirectory)/src_codec_PCMCodec.cpp$(PreprocessSuffix) src/codec/PCMCodec.cpp

$(IntermediateDirectory)/src_jrtplib_rtcpcompoundpacket.cpp$(ObjectSuffix): src/jrtplib/rtcpcompoundpacket.cpp $(IntermediateDirectory)/src_jrtplib_rtcpcompoundpacket.cpp$(DependSuffix)
	$(CXX) $(IncludePCH) $(SourceSwitch) "/home/fym/722/cpp-project/AudioMixer/src/jrtplib/rtcpcompoundpacket.cpp" $(CXXFLAGS) $(ObjectSwitch)$(IntermediateDirectory)/src_jrtplib_rtcpcompoundpacket.cpp$(ObjectSuffix) $(IncludePath)
$(IntermediateDirectory)/src_jrtplib_rtcpcompoundpacket.cpp$(DependSuffix): src/jrtplib/rtcpcompoundpacket.cpp
	@$(CXX) $(CXXFLAGS) $(IncludePCH) $(IncludePath) -MG -MP -MT$(IntermediateDirectory)/src_jrtplib_rtcpcompoundpacket.cpp$(ObjectSuffix) -MF$(IntermediateDirectory)/src_jrtplib_rtcpcompoundpacket.cpp$(DependSuffix) -MM src/jrtplib/rtcpcompoundpacket.cpp

$(IntermediateDirectory)/src_jrtplib_rtcpcompoundpacket.cpp$(PreprocessSuffix): src/jrtplib/rtcpcompoundpacket.cpp
	$(CXX) $(CXXFLAGS) $(IncludePCH) $(IncludePath) $(PreprocessOnlySwitch) $(OutputSwitch) $(IntermediateDirectory)/src_jrtplib_rtcpcompoundpacket.cpp$(PreprocessSuffix) src/jrtplib/rtcpcompoundpacket.cpp

$(IntermediateDirectory)/src_jrtplib_rtpsession.cpp$(ObjectSuffix): src/jrtplib/rtpsession.cpp $(IntermediateDirectory)/src_jrtplib_rtpsession.cpp$(DependSuffix)
	$(CXX) $(IncludePCH) $(SourceSwitch) "/home/fym/722/cpp-project/AudioMixer/src/jrtplib/rtpsession.cpp" $(CXXFLAGS) $(ObjectSwitch)$(IntermediateDirectory)/src_jrtplib_rtpsession.cpp$(ObjectSuffix) $(IncludePath)
$(IntermediateDirectory)/src_jrtplib_rtpsession.cpp$(DependSuffix): src/jrtplib/rtpsession.cpp
	@$(CXX) $(CXXFLAGS) $(IncludePCH) $(IncludePath) -MG -MP -MT$(IntermediateDirectory)/src_jrtplib_rtpsession.cpp$(ObjectSuffix) -MF$(IntermediateDirectory)/src_jrtplib_rtpsession.cpp$(DependSuffix) -MM src/jrtplib/rtpsession.cpp

$(IntermediateDirectory)/src_jrtplib_rtpsession.cpp$(PreprocessSuffix): src/jrtplib/rtpsession.cpp
	$(CXX) $(CXXFLAGS) $(IncludePCH) $(IncludePath) $(PreprocessOnlySwitch) $(OutputSwitch) $(IntermediateDirectory)/src_jrtplib_rtpsession.cpp$(PreprocessSuffix) src/jrtplib/rtpsession.cpp

$(IntermediateDirectory)/src_jrtplib_rtprandomrands.cpp$(ObjectSuffix): src/jrtplib/rtprandomrands.cpp $(IntermediateDirectory)/src_jrtplib_rtprandomrands.cpp$(DependSuffix)
	$(CXX) $(IncludePCH) $(SourceSwitch) "/home/fym/722/cpp-project/AudioMixer/src/jrtplib/rtprandomrands.cpp" $(CXXFLAGS) $(ObjectSwitch)$(IntermediateDirectory)/src_jrtplib_rtprandomrands.cpp$(ObjectSuffix) $(IncludePath)
$(IntermediateDirectory)/src_jrtplib_rtprandomrands.cpp$(DependSuffix): src/jrtplib/rtprandomrands.cpp
	@$(CXX) $(CXXFLAGS) $(IncludePCH) $(IncludePath) -MG -MP -MT$(IntermediateDirectory)/src_jrtplib_rtprandomrands.cpp$(ObjectSuffix) -MF$(IntermediateDirectory)/src_jrtplib_rtprandomrands.cpp$(DependSuffix) -MM src/jrtplib/rtprandomrands.cpp

$(IntermediateDirectory)/src_jrtplib_rtprandomrands.cpp$(PreprocessSuffix): src/jrtplib/rtprandomrands.cpp
	$(CXX) $(CXXFLAGS) $(IncludePCH) $(IncludePath) $(PreprocessOnlySwitch) $(OutputSwitch) $(IntermediateDirectory)/src_jrtplib_rtprandomrands.cpp$(PreprocessSuffix) src/jrtplib/rtprandomrands.cpp

$(IntermediateDirectory)/src_jrtplib_rtcpsdespacket.cpp$(ObjectSuffix): src/jrtplib/rtcpsdespacket.cpp $(IntermediateDirectory)/src_jrtplib_rtcpsdespacket.cpp$(DependSuffix)
	$(CXX) $(IncludePCH) $(SourceSwitch) "/home/fym/722/cpp-project/AudioMixer/src/jrtplib/rtcpsdespacket.cpp" $(CXXFLAGS) $(ObjectSwitch)$(IntermediateDirectory)/src_jrtplib_rtcpsdespacket.cpp$(ObjectSuffix) $(IncludePath)
$(IntermediateDirectory)/src_jrtplib_rtcpsdespacket.cpp$(DependSuffix): src/jrtplib/rtcpsdespacket.cpp
	@$(CXX) $(CXXFLAGS) $(IncludePCH) $(IncludePath) -MG -MP -MT$(IntermediateDirectory)/src_jrtplib_rtcpsdespacket.cpp$(ObjectSuffix) -MF$(IntermediateDirectory)/src_jrtplib_rtcpsdespacket.cpp$(DependSuffix) -MM src/jrtplib/rtcpsdespacket.cpp

$(IntermediateDirectory)/src_jrtplib_rtcpsdespacket.cpp$(PreprocessSuffix): src/jrtplib/rtcpsdespacket.cpp
	$(CXX) $(CXXFLAGS) $(IncludePCH) $(IncludePath) $(PreprocessOnlySwitch) $(OutputSwitch) $(IntermediateDirectory)/src_jrtplib_rtcpsdespacket.cpp$(PreprocessSuffix) src/jrtplib/rtcpsdespacket.cpp

$(IntermediateDirectory)/src_jrtplib_rtprandomrand48.cpp$(ObjectSuffix): src/jrtplib/rtprandomrand48.cpp $(IntermediateDirectory)/src_jrtplib_rtprandomrand48.cpp$(DependSuffix)
	$(CXX) $(IncludePCH) $(SourceSwitch) "/home/fym/722/cpp-project/AudioMixer/src/jrtplib/rtprandomrand48.cpp" $(CXXFLAGS) $(ObjectSwitch)$(IntermediateDirectory)/src_jrtplib_rtprandomrand48.cpp$(ObjectSuffix) $(IncludePath)
$(IntermediateDirectory)/src_jrtplib_rtprandomrand48.cpp$(DependSuffix): src/jrtplib/rtprandomrand48.cpp
	@$(CXX) $(CXXFLAGS) $(IncludePCH) $(IncludePath) -MG -MP -MT$(IntermediateDirectory)/src_jrtplib_rtprandomrand48.cpp$(ObjectSuffix) -MF$(IntermediateDirectory)/src_jrtplib_rtprandomrand48.cpp$(DependSuffix) -MM src/jrtplib/rtprandomrand48.cpp

$(IntermediateDirectory)/src_jrtplib_rtprandomrand48.cpp$(PreprocessSuffix): src/jrtplib/rtprandomrand48.cpp
	$(CXX) $(CXXFLAGS) $(IncludePCH) $(IncludePath) $(PreprocessOnlySwitch) $(OutputSwitch) $(IntermediateDirectory)/src_jrtplib_rtprandomrand48.cpp$(PreprocessSuffix) src/jrtplib/rtprandomrand48.cpp

$(IntermediateDirectory)/src_jrtplib_rtpipv6destination.cpp$(ObjectSuffix): src/jrtplib/rtpipv6destination.cpp $(IntermediateDirectory)/src_jrtplib_rtpipv6destination.cpp$(DependSuffix)
	$(CXX) $(IncludePCH) $(SourceSwitch) "/home/fym/722/cpp-project/AudioMixer/src/jrtplib/rtpipv6destination.cpp" $(CXXFLAGS) $(ObjectSwitch)$(IntermediateDirectory)/src_jrtplib_rtpipv6destination.cpp$(ObjectSuffix) $(IncludePath)
$(IntermediateDirectory)/src_jrtplib_rtpipv6destination.cpp$(DependSuffix): src/jrtplib/rtpipv6destination.cpp
	@$(CXX) $(CXXFLAGS) $(IncludePCH) $(IncludePath) -MG -MP -MT$(IntermediateDirectory)/src_jrtplib_rtpipv6destination.cpp$(ObjectSuffix) -MF$(IntermediateDirectory)/src_jrtplib_rtpipv6destination.cpp$(DependSuffix) -MM src/jrtplib/rtpipv6destination.cpp

$(IntermediateDirectory)/src_jrtplib_rtpipv6destination.cpp$(PreprocessSuffix): src/jrtplib/rtpipv6destination.cpp
	$(CXX) $(CXXFLAGS) $(IncludePCH) $(IncludePath) $(PreprocessOnlySwitch) $(OutputSwitch) $(IntermediateDirectory)/src_jrtplib_rtpipv6destination.cpp$(PreprocessSuffix) src/jrtplib/rtpipv6destination.cpp

$(IntermediateDirectory)/src_jrtplib_rtperrors.cpp$(ObjectSuffix): src/jrtplib/rtperrors.cpp $(IntermediateDirectory)/src_jrtplib_rtperrors.cpp$(DependSuffix)
	$(CXX) $(IncludePCH) $(SourceSwitch) "/home/fym/722/cpp-project/AudioMixer/src/jrtplib/rtperrors.cpp" $(CXXFLAGS) $(ObjectSwitch)$(IntermediateDirectory)/src_jrtplib_rtperrors.cpp$(ObjectSuffix) $(IncludePath)
$(IntermediateDirectory)/src_jrtplib_rtperrors.cpp$(DependSuffix): src/jrtplib/rtperrors.cpp
	@$(CXX) $(CXXFLAGS) $(IncludePCH) $(IncludePath) -MG -MP -MT$(IntermediateDirectory)/src_jrtplib_rtperrors.cpp$(ObjectSuffix) -MF$(IntermediateDirectory)/src_jrtplib_rtperrors.cpp$(DependSuffix) -MM src/jrtplib/rtperrors.cpp

$(IntermediateDirectory)/src_jrtplib_rtperrors.cpp$(PreprocessSuffix): src/jrtplib/rtperrors.cpp
	$(CXX) $(CXXFLAGS) $(IncludePCH) $(IncludePath) $(PreprocessOnlySwitch) $(OutputSwitch) $(IntermediateDirectory)/src_jrtplib_rtperrors.cpp$(PreprocessSuffix) src/jrtplib/rtperrors.cpp

$(IntermediateDirectory)/main.cpp$(ObjectSuffix): main.cpp $(IntermediateDirectory)/main.cpp$(DependSuffix)
	$(CXX) $(IncludePCH) $(SourceSwitch) "/home/fym/722/cpp-project/AudioMixer/main.cpp" $(CXXFLAGS) $(ObjectSwitch)$(IntermediateDirectory)/main.cpp$(ObjectSuffix) $(IncludePath)
$(IntermediateDirectory)/main.cpp$(DependSuffix): main.cpp
	@$(CXX) $(CXXFLAGS) $(IncludePCH) $(IncludePath) -MG -MP -MT$(IntermediateDirectory)/main.cpp$(ObjectSuffix) -MF$(IntermediateDirectory)/main.cpp$(DependSuffix) -MM main.cpp

$(IntermediateDirectory)/main.cpp$(PreprocessSuffix): main.cpp
	$(CXX) $(CXXFLAGS) $(IncludePCH) $(IncludePath) $(PreprocessOnlySwitch) $(OutputSwitch) $(IntermediateDirectory)/main.cpp$(PreprocessSuffix) main.cpp

$(IntermediateDirectory)/src_jrtplib_rtppacketbuilder.cpp$(ObjectSuffix): src/jrtplib/rtppacketbuilder.cpp $(IntermediateDirectory)/src_jrtplib_rtppacketbuilder.cpp$(DependSuffix)
	$(CXX) $(IncludePCH) $(SourceSwitch) "/home/fym/722/cpp-project/AudioMixer/src/jrtplib/rtppacketbuilder.cpp" $(CXXFLAGS) $(ObjectSwitch)$(IntermediateDirectory)/src_jrtplib_rtppacketbuilder.cpp$(ObjectSuffix) $(IncludePath)
$(IntermediateDirectory)/src_jrtplib_rtppacketbuilder.cpp$(DependSuffix): src/jrtplib/rtppacketbuilder.cpp
	@$(CXX) $(CXXFLAGS) $(IncludePCH) $(IncludePath) -MG -MP -MT$(IntermediateDirectory)/src_jrtplib_rtppacketbuilder.cpp$(ObjectSuffix) -MF$(IntermediateDirectory)/src_jrtplib_rtppacketbuilder.cpp$(DependSuffix) -MM src/jrtplib/rtppacketbuilder.cpp

$(IntermediateDirectory)/src_jrtplib_rtppacketbuilder.cpp$(PreprocessSuffix): src/jrtplib/rtppacketbuilder.cpp
	$(CXX) $(CXXFLAGS) $(IncludePCH) $(IncludePath) $(PreprocessOnlySwitch) $(OutputSwitch) $(IntermediateDirectory)/src_jrtplib_rtppacketbuilder.cpp$(PreprocessSuffix) src/jrtplib/rtppacketbuilder.cpp

$(IntermediateDirectory)/src_jrtplib_rtppacket.cpp$(ObjectSuffix): src/jrtplib/rtppacket.cpp $(IntermediateDirectory)/src_jrtplib_rtppacket.cpp$(DependSuffix)
	$(CXX) $(IncludePCH) $(SourceSwitch) "/home/fym/722/cpp-project/AudioMixer/src/jrtplib/rtppacket.cpp" $(CXXFLAGS) $(ObjectSwitch)$(IntermediateDirectory)/src_jrtplib_rtppacket.cpp$(ObjectSuffix) $(IncludePath)
$(IntermediateDirectory)/src_jrtplib_rtppacket.cpp$(DependSuffix): src/jrtplib/rtppacket.cpp
	@$(CXX) $(CXXFLAGS) $(IncludePCH) $(IncludePath) -MG -MP -MT$(IntermediateDirectory)/src_jrtplib_rtppacket.cpp$(ObjectSuffix) -MF$(IntermediateDirectory)/src_jrtplib_rtppacket.cpp$(DependSuffix) -MM src/jrtplib/rtppacket.cpp

$(IntermediateDirectory)/src_jrtplib_rtppacket.cpp$(PreprocessSuffix): src/jrtplib/rtppacket.cpp
	$(CXX) $(CXXFLAGS) $(IncludePCH) $(IncludePath) $(PreprocessOnlySwitch) $(OutputSwitch) $(IntermediateDirectory)/src_jrtplib_rtppacket.cpp$(PreprocessSuffix) src/jrtplib/rtppacket.cpp

$(IntermediateDirectory)/src_task_TestTask.cpp$(ObjectSuffix): src/task/TestTask.cpp $(IntermediateDirectory)/src_task_TestTask.cpp$(DependSuffix)
	$(CXX) $(IncludePCH) $(SourceSwitch) "/home/fym/722/cpp-project/AudioMixer/src/task/TestTask.cpp" $(CXXFLAGS) $(ObjectSwitch)$(IntermediateDirectory)/src_task_TestTask.cpp$(ObjectSuffix) $(IncludePath)
$(IntermediateDirectory)/src_task_TestTask.cpp$(DependSuffix): src/task/TestTask.cpp
	@$(CXX) $(CXXFLAGS) $(IncludePCH) $(IncludePath) -MG -MP -MT$(IntermediateDirectory)/src_task_TestTask.cpp$(ObjectSuffix) -MF$(IntermediateDirectory)/src_task_TestTask.cpp$(DependSuffix) -MM src/task/TestTask.cpp

$(IntermediateDirectory)/src_task_TestTask.cpp$(PreprocessSuffix): src/task/TestTask.cpp
	$(CXX) $(CXXFLAGS) $(IncludePCH) $(IncludePath) $(PreprocessOnlySwitch) $(OutputSwitch) $(IntermediateDirectory)/src_task_TestTask.cpp$(PreprocessSuffix) src/task/TestTask.cpp

$(IntermediateDirectory)/src_jrtplib_rtplibraryversion.cpp$(ObjectSuffix): src/jrtplib/rtplibraryversion.cpp $(IntermediateDirectory)/src_jrtplib_rtplibraryversion.cpp$(DependSuffix)
	$(CXX) $(IncludePCH) $(SourceSwitch) "/home/fym/722/cpp-project/AudioMixer/src/jrtplib/rtplibraryversion.cpp" $(CXXFLAGS) $(ObjectSwitch)$(IntermediateDirectory)/src_jrtplib_rtplibraryversion.cpp$(ObjectSuffix) $(IncludePath)
$(IntermediateDirectory)/src_jrtplib_rtplibraryversion.cpp$(DependSuffix): src/jrtplib/rtplibraryversion.cpp
	@$(CXX) $(CXXFLAGS) $(IncludePCH) $(IncludePath) -MG -MP -MT$(IntermediateDirectory)/src_jrtplib_rtplibraryversion.cpp$(ObjectSuffix) -MF$(IntermediateDirectory)/src_jrtplib_rtplibraryversion.cpp$(DependSuffix) -MM src/jrtplib/rtplibraryversion.cpp

$(IntermediateDirectory)/src_jrtplib_rtplibraryversion.cpp$(PreprocessSuffix): src/jrtplib/rtplibraryversion.cpp
	$(CXX) $(CXXFLAGS) $(IncludePCH) $(IncludePath) $(PreprocessOnlySwitch) $(OutputSwitch) $(IntermediateDirectory)/src_jrtplib_rtplibraryversion.cpp$(PreprocessSuffix) src/jrtplib/rtplibraryversion.cpp

$(IntermediateDirectory)/src_jrtplib_rtpdebug.cpp$(ObjectSuffix): src/jrtplib/rtpdebug.cpp $(IntermediateDirectory)/src_jrtplib_rtpdebug.cpp$(DependSuffix)
	$(CXX) $(IncludePCH) $(SourceSwitch) "/home/fym/722/cpp-project/AudioMixer/src/jrtplib/rtpdebug.cpp" $(CXXFLAGS) $(ObjectSwitch)$(IntermediateDirectory)/src_jrtplib_rtpdebug.cpp$(ObjectSuffix) $(IncludePath)
$(IntermediateDirectory)/src_jrtplib_rtpdebug.cpp$(DependSuffix): src/jrtplib/rtpdebug.cpp
	@$(CXX) $(CXXFLAGS) $(IncludePCH) $(IncludePath) -MG -MP -MT$(IntermediateDirectory)/src_jrtplib_rtpdebug.cpp$(ObjectSuffix) -MF$(IntermediateDirectory)/src_jrtplib_rtpdebug.cpp$(DependSuffix) -MM src/jrtplib/rtpdebug.cpp

$(IntermediateDirectory)/src_jrtplib_rtpdebug.cpp$(PreprocessSuffix): src/jrtplib/rtpdebug.cpp
	$(CXX) $(CXXFLAGS) $(IncludePCH) $(IncludePath) $(PreprocessOnlySwitch) $(OutputSwitch) $(IntermediateDirectory)/src_jrtplib_rtpdebug.cpp$(PreprocessSuffix) src/jrtplib/rtpdebug.cpp

$(IntermediateDirectory)/src_jrtplib_rtpipv6address.cpp$(ObjectSuffix): src/jrtplib/rtpipv6address.cpp $(IntermediateDirectory)/src_jrtplib_rtpipv6address.cpp$(DependSuffix)
	$(CXX) $(IncludePCH) $(SourceSwitch) "/home/fym/722/cpp-project/AudioMixer/src/jrtplib/rtpipv6address.cpp" $(CXXFLAGS) $(ObjectSwitch)$(IntermediateDirectory)/src_jrtplib_rtpipv6address.cpp$(ObjectSuffix) $(IncludePath)
$(IntermediateDirectory)/src_jrtplib_rtpipv6address.cpp$(DependSuffix): src/jrtplib/rtpipv6address.cpp
	@$(CXX) $(CXXFLAGS) $(IncludePCH) $(IncludePath) -MG -MP -MT$(IntermediateDirectory)/src_jrtplib_rtpipv6address.cpp$(ObjectSuffix) -MF$(IntermediateDirectory)/src_jrtplib_rtpipv6address.cpp$(DependSuffix) -MM src/jrtplib/rtpipv6address.cpp

$(IntermediateDirectory)/src_jrtplib_rtpipv6address.cpp$(PreprocessSuffix): src/jrtplib/rtpipv6address.cpp
	$(CXX) $(CXXFLAGS) $(IncludePCH) $(IncludePath) $(PreprocessOnlySwitch) $(OutputSwitch) $(IntermediateDirectory)/src_jrtplib_rtpipv6address.cpp$(PreprocessSuffix) src/jrtplib/rtpipv6address.cpp

$(IntermediateDirectory)/src_jrtplib_rtcpscheduler.cpp$(ObjectSuffix): src/jrtplib/rtcpscheduler.cpp $(IntermediateDirectory)/src_jrtplib_rtcpscheduler.cpp$(DependSuffix)
	$(CXX) $(IncludePCH) $(SourceSwitch) "/home/fym/722/cpp-project/AudioMixer/src/jrtplib/rtcpscheduler.cpp" $(CXXFLAGS) $(ObjectSwitch)$(IntermediateDirectory)/src_jrtplib_rtcpscheduler.cpp$(ObjectSuffix) $(IncludePath)
$(IntermediateDirectory)/src_jrtplib_rtcpscheduler.cpp$(DependSuffix): src/jrtplib/rtcpscheduler.cpp
	@$(CXX) $(CXXFLAGS) $(IncludePCH) $(IncludePath) -MG -MP -MT$(IntermediateDirectory)/src_jrtplib_rtcpscheduler.cpp$(ObjectSuffix) -MF$(IntermediateDirectory)/src_jrtplib_rtcpscheduler.cpp$(DependSuffix) -MM src/jrtplib/rtcpscheduler.cpp

$(IntermediateDirectory)/src_jrtplib_rtcpscheduler.cpp$(PreprocessSuffix): src/jrtplib/rtcpscheduler.cpp
	$(CXX) $(CXXFLAGS) $(IncludePCH) $(IncludePath) $(PreprocessOnlySwitch) $(OutputSwitch) $(IntermediateDirectory)/src_jrtplib_rtcpscheduler.cpp$(PreprocessSuffix) src/jrtplib/rtcpscheduler.cpp

$(IntermediateDirectory)/src_jrtplib_rtpipv4destination.cpp$(ObjectSuffix): src/jrtplib/rtpipv4destination.cpp $(IntermediateDirectory)/src_jrtplib_rtpipv4destination.cpp$(DependSuffix)
	$(CXX) $(IncludePCH) $(SourceSwitch) "/home/fym/722/cpp-project/AudioMixer/src/jrtplib/rtpipv4destination.cpp" $(CXXFLAGS) $(ObjectSwitch)$(IntermediateDirectory)/src_jrtplib_rtpipv4destination.cpp$(ObjectSuffix) $(IncludePath)
$(IntermediateDirectory)/src_jrtplib_rtpipv4destination.cpp$(DependSuffix): src/jrtplib/rtpipv4destination.cpp
	@$(CXX) $(CXXFLAGS) $(IncludePCH) $(IncludePath) -MG -MP -MT$(IntermediateDirectory)/src_jrtplib_rtpipv4destination.cpp$(ObjectSuffix) -MF$(IntermediateDirectory)/src_jrtplib_rtpipv4destination.cpp$(DependSuffix) -MM src/jrtplib/rtpipv4destination.cpp

$(IntermediateDirectory)/src_jrtplib_rtpipv4destination.cpp$(PreprocessSuffix): src/jrtplib/rtpipv4destination.cpp
	$(CXX) $(CXXFLAGS) $(IncludePCH) $(IncludePath) $(PreprocessOnlySwitch) $(OutputSwitch) $(IntermediateDirectory)/src_jrtplib_rtpipv4destination.cpp$(PreprocessSuffix) src/jrtplib/rtpipv4destination.cpp

$(IntermediateDirectory)/src_jrtplib_rtpipv4address.cpp$(ObjectSuffix): src/jrtplib/rtpipv4address.cpp $(IntermediateDirectory)/src_jrtplib_rtpipv4address.cpp$(DependSuffix)
	$(CXX) $(IncludePCH) $(SourceSwitch) "/home/fym/722/cpp-project/AudioMixer/src/jrtplib/rtpipv4address.cpp" $(CXXFLAGS) $(ObjectSwitch)$(IntermediateDirectory)/src_jrtplib_rtpipv4address.cpp$(ObjectSuffix) $(IncludePath)
$(IntermediateDirectory)/src_jrtplib_rtpipv4address.cpp$(DependSuffix): src/jrtplib/rtpipv4address.cpp
	@$(CXX) $(CXXFLAGS) $(IncludePCH) $(IncludePath) -MG -MP -MT$(IntermediateDirectory)/src_jrtplib_rtpipv4address.cpp$(ObjectSuffix) -MF$(IntermediateDirectory)/src_jrtplib_rtpipv4address.cpp$(DependSuffix) -MM src/jrtplib/rtpipv4address.cpp

$(IntermediateDirectory)/src_jrtplib_rtpipv4address.cpp$(PreprocessSuffix): src/jrtplib/rtpipv4address.cpp
	$(CXX) $(CXXFLAGS) $(IncludePCH) $(IncludePath) $(PreprocessOnlySwitch) $(OutputSwitch) $(IntermediateDirectory)/src_jrtplib_rtpipv4address.cpp$(PreprocessSuffix) src/jrtplib/rtpipv4address.cpp

$(IntermediateDirectory)/src_jrtplib_rtprandom.cpp$(ObjectSuffix): src/jrtplib/rtprandom.cpp $(IntermediateDirectory)/src_jrtplib_rtprandom.cpp$(DependSuffix)
	$(CXX) $(IncludePCH) $(SourceSwitch) "/home/fym/722/cpp-project/AudioMixer/src/jrtplib/rtprandom.cpp" $(CXXFLAGS) $(ObjectSwitch)$(IntermediateDirectory)/src_jrtplib_rtprandom.cpp$(ObjectSuffix) $(IncludePath)
$(IntermediateDirectory)/src_jrtplib_rtprandom.cpp$(DependSuffix): src/jrtplib/rtprandom.cpp
	@$(CXX) $(CXXFLAGS) $(IncludePCH) $(IncludePath) -MG -MP -MT$(IntermediateDirectory)/src_jrtplib_rtprandom.cpp$(ObjectSuffix) -MF$(IntermediateDirectory)/src_jrtplib_rtprandom.cpp$(DependSuffix) -MM src/jrtplib/rtprandom.cpp

$(IntermediateDirectory)/src_jrtplib_rtprandom.cpp$(PreprocessSuffix): src/jrtplib/rtprandom.cpp
	$(CXX) $(CXXFLAGS) $(IncludePCH) $(IncludePath) $(PreprocessOnlySwitch) $(OutputSwitch) $(IntermediateDirectory)/src_jrtplib_rtprandom.cpp$(PreprocessSuffix) src/jrtplib/rtprandom.cpp

$(IntermediateDirectory)/src_jrtplib_rtpexternaltransmitter.cpp$(ObjectSuffix): src/jrtplib/rtpexternaltransmitter.cpp $(IntermediateDirectory)/src_jrtplib_rtpexternaltransmitter.cpp$(DependSuffix)
	$(CXX) $(IncludePCH) $(SourceSwitch) "/home/fym/722/cpp-project/AudioMixer/src/jrtplib/rtpexternaltransmitter.cpp" $(CXXFLAGS) $(ObjectSwitch)$(IntermediateDirectory)/src_jrtplib_rtpexternaltransmitter.cpp$(ObjectSuffix) $(IncludePath)
$(IntermediateDirectory)/src_jrtplib_rtpexternaltransmitter.cpp$(DependSuffix): src/jrtplib/rtpexternaltransmitter.cpp
	@$(CXX) $(CXXFLAGS) $(IncludePCH) $(IncludePath) -MG -MP -MT$(IntermediateDirectory)/src_jrtplib_rtpexternaltransmitter.cpp$(ObjectSuffix) -MF$(IntermediateDirectory)/src_jrtplib_rtpexternaltransmitter.cpp$(DependSuffix) -MM src/jrtplib/rtpexternaltransmitter.cpp

$(IntermediateDirectory)/src_jrtplib_rtpexternaltransmitter.cpp$(PreprocessSuffix): src/jrtplib/rtpexternaltransmitter.cpp
	$(CXX) $(CXXFLAGS) $(IncludePCH) $(IncludePath) $(PreprocessOnlySwitch) $(OutputSwitch) $(IntermediateDirectory)/src_jrtplib_rtpexternaltransmitter.cpp$(PreprocessSuffix) src/jrtplib/rtpexternaltransmitter.cpp

$(IntermediateDirectory)/src_jrtplib_rtcprrpacket.cpp$(ObjectSuffix): src/jrtplib/rtcprrpacket.cpp $(IntermediateDirectory)/src_jrtplib_rtcprrpacket.cpp$(DependSuffix)
	$(CXX) $(IncludePCH) $(SourceSwitch) "/home/fym/722/cpp-project/AudioMixer/src/jrtplib/rtcprrpacket.cpp" $(CXXFLAGS) $(ObjectSwitch)$(IntermediateDirectory)/src_jrtplib_rtcprrpacket.cpp$(ObjectSuffix) $(IncludePath)
$(IntermediateDirectory)/src_jrtplib_rtcprrpacket.cpp$(DependSuffix): src/jrtplib/rtcprrpacket.cpp
	@$(CXX) $(CXXFLAGS) $(IncludePCH) $(IncludePath) -MG -MP -MT$(IntermediateDirectory)/src_jrtplib_rtcprrpacket.cpp$(ObjectSuffix) -MF$(IntermediateDirectory)/src_jrtplib_rtcprrpacket.cpp$(DependSuffix) -MM src/jrtplib/rtcprrpacket.cpp

$(IntermediateDirectory)/src_jrtplib_rtcprrpacket.cpp$(PreprocessSuffix): src/jrtplib/rtcprrpacket.cpp
	$(CXX) $(CXXFLAGS) $(IncludePCH) $(IncludePath) $(PreprocessOnlySwitch) $(OutputSwitch) $(IntermediateDirectory)/src_jrtplib_rtcprrpacket.cpp$(PreprocessSuffix) src/jrtplib/rtcprrpacket.cpp

$(IntermediateDirectory)/src_jrtplib_rtcppacketbuilder.cpp$(ObjectSuffix): src/jrtplib/rtcppacketbuilder.cpp $(IntermediateDirectory)/src_jrtplib_rtcppacketbuilder.cpp$(DependSuffix)
	$(CXX) $(IncludePCH) $(SourceSwitch) "/home/fym/722/cpp-project/AudioMixer/src/jrtplib/rtcppacketbuilder.cpp" $(CXXFLAGS) $(ObjectSwitch)$(IntermediateDirectory)/src_jrtplib_rtcppacketbuilder.cpp$(ObjectSuffix) $(IncludePath)
$(IntermediateDirectory)/src_jrtplib_rtcppacketbuilder.cpp$(DependSuffix): src/jrtplib/rtcppacketbuilder.cpp
	@$(CXX) $(CXXFLAGS) $(IncludePCH) $(IncludePath) -MG -MP -MT$(IntermediateDirectory)/src_jrtplib_rtcppacketbuilder.cpp$(ObjectSuffix) -MF$(IntermediateDirectory)/src_jrtplib_rtcppacketbuilder.cpp$(DependSuffix) -MM src/jrtplib/rtcppacketbuilder.cpp

$(IntermediateDirectory)/src_jrtplib_rtcppacketbuilder.cpp$(PreprocessSuffix): src/jrtplib/rtcppacketbuilder.cpp
	$(CXX) $(CXXFLAGS) $(IncludePCH) $(IncludePath) $(PreprocessOnlySwitch) $(OutputSwitch) $(IntermediateDirectory)/src_jrtplib_rtcppacketbuilder.cpp$(PreprocessSuffix) src/jrtplib/rtcppacketbuilder.cpp

$(IntermediateDirectory)/src_jrtplib_rtcpsdesinfo.cpp$(ObjectSuffix): src/jrtplib/rtcpsdesinfo.cpp $(IntermediateDirectory)/src_jrtplib_rtcpsdesinfo.cpp$(DependSuffix)
	$(CXX) $(IncludePCH) $(SourceSwitch) "/home/fym/722/cpp-project/AudioMixer/src/jrtplib/rtcpsdesinfo.cpp" $(CXXFLAGS) $(ObjectSwitch)$(IntermediateDirectory)/src_jrtplib_rtcpsdesinfo.cpp$(ObjectSuffix) $(IncludePath)
$(IntermediateDirectory)/src_jrtplib_rtcpsdesinfo.cpp$(DependSuffix): src/jrtplib/rtcpsdesinfo.cpp
	@$(CXX) $(CXXFLAGS) $(IncludePCH) $(IncludePath) -MG -MP -MT$(IntermediateDirectory)/src_jrtplib_rtcpsdesinfo.cpp$(ObjectSuffix) -MF$(IntermediateDirectory)/src_jrtplib_rtcpsdesinfo.cpp$(DependSuffix) -MM src/jrtplib/rtcpsdesinfo.cpp

$(IntermediateDirectory)/src_jrtplib_rtcpsdesinfo.cpp$(PreprocessSuffix): src/jrtplib/rtcpsdesinfo.cpp
	$(CXX) $(CXXFLAGS) $(IncludePCH) $(IncludePath) $(PreprocessOnlySwitch) $(OutputSwitch) $(IntermediateDirectory)/src_jrtplib_rtcpsdesinfo.cpp$(PreprocessSuffix) src/jrtplib/rtcpsdesinfo.cpp

$(IntermediateDirectory)/src_jrtplib_rtcpbyepacket.cpp$(ObjectSuffix): src/jrtplib/rtcpbyepacket.cpp $(IntermediateDirectory)/src_jrtplib_rtcpbyepacket.cpp$(DependSuffix)
	$(CXX) $(IncludePCH) $(SourceSwitch) "/home/fym/722/cpp-project/AudioMixer/src/jrtplib/rtcpbyepacket.cpp" $(CXXFLAGS) $(ObjectSwitch)$(IntermediateDirectory)/src_jrtplib_rtcpbyepacket.cpp$(ObjectSuffix) $(IncludePath)
$(IntermediateDirectory)/src_jrtplib_rtcpbyepacket.cpp$(DependSuffix): src/jrtplib/rtcpbyepacket.cpp
	@$(CXX) $(CXXFLAGS) $(IncludePCH) $(IncludePath) -MG -MP -MT$(IntermediateDirectory)/src_jrtplib_rtcpbyepacket.cpp$(ObjectSuffix) -MF$(IntermediateDirectory)/src_jrtplib_rtcpbyepacket.cpp$(DependSuffix) -MM src/jrtplib/rtcpbyepacket.cpp

$(IntermediateDirectory)/src_jrtplib_rtcpbyepacket.cpp$(PreprocessSuffix): src/jrtplib/rtcpbyepacket.cpp
	$(CXX) $(CXXFLAGS) $(IncludePCH) $(IncludePath) $(PreprocessOnlySwitch) $(OutputSwitch) $(IntermediateDirectory)/src_jrtplib_rtcpbyepacket.cpp$(PreprocessSuffix) src/jrtplib/rtcpbyepacket.cpp


-include $(IntermediateDirectory)/*$(DependSuffix)
##
## Clean
##
clean:
	$(RM) -r ./Debug/


