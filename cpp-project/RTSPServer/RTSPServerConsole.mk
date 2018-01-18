##
## Auto Generated makefile by CodeLite IDE
## any manual changes will be erased      
##
## Debug
ProjectName            :=RTSPServerConsole
ConfigurationName      :=Debug
WorkspacePath          :=/home/fym/722/cpp-project
ProjectPath            :=/home/fym/722/cpp-project/RTSPServer
IntermediateDirectory  :=./Debug
OutDir                 := $(IntermediateDirectory)
CurrentFileName        :=
CurrentFilePath        :=
CurrentFileFullPath    :=
User                   :=Ubuntu 16.04 LTS
Date                   :=07/01/18
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
Preprocessors          :=$(PreprocessorSwitch)__linux__ 
ObjectSwitch           :=-o 
ArchiveOutputSwitch    := 
PreprocessOnlySwitch   :=-E
ObjectsFileList        :="RTSPServerConsole.txt"
PCHCompileFlags        :=
MakeDirCommand         :=mkdir -p
LinkOptions            :=  
IncludePath            :=  $(IncludeSwitch). $(IncludeSwitch)./ $(IncludeSwitch)./APIStubLib/ $(IncludeSwitch)./APIModules/ $(IncludeSwitch)./CommonUtilitiesLib/ $(IncludeSwitch)./Server.tproj/ $(IncludeSwitch)./QTFileLib/ $(IncludeSwitch)./RTPMetaInfoLib/ $(IncludeSwitch)./PrefsSourceLib/ $(IncludeSwitch)./APICommonCode/ $(IncludeSwitch)./HTTPUtilitiesLib/ $(IncludeSwitch)./RTCPUtilitiesLib/ $(IncludeSwitch)./RTSPClientLib/ $(IncludeSwitch)./APIModules/QTSSFileModule/ $(IncludeSwitch)./APIModules/QTSSHttpFileModule/ $(IncludeSwitch)./APIModules/QTSSAccessModule/ $(IncludeSwitch)./APIModules/QTSSAccessLogModule/ $(IncludeSwitch)./APIModules/QTSSPosixFileSysModule/ $(IncludeSwitch)./APIModules/QTSSAdminModule/ $(IncludeSwitch)./APIModules/QTSSReflectorModule/ $(IncludeSwitch)./APIModules/QTSSWebStatsModule/ $(IncludeSwitch)./APIModules/QTSSWebDebugModule/ $(IncludeSwitch)./APIModules/QTSSFlowControlModule/ $(IncludeSwitch)./interface/ 
IncludePCH             := 
RcIncludePath          := 
Libs                   := $(LibrarySwitch)dl $(LibrarySwitch)pthread $(LibrarySwitch)crypt 
ArLibs                 :=  "dl" "pthread" "crypt" 
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
Objects0=$(IntermediateDirectory)/APIModules_QTSSReflectorModule_RTPSessionOutput.cpp$(ObjectSuffix) $(IntermediateDirectory)/APIModules_QTSSReflectorModule_RCFSourceInfo.cpp$(ObjectSuffix) $(IntermediateDirectory)/APIModules_QTSSReflectorModule_ReflectorStream.cpp$(ObjectSuffix) $(IntermediateDirectory)/APIModules_QTSSReflectorModule_QTSSRelayModule.cpp$(ObjectSuffix) $(IntermediateDirectory)/APIModules_QTSSReflectorModule_RelayOutput.cpp$(ObjectSuffix) $(IntermediateDirectory)/APIModules_QTSSFlowControlModule_QTSSFlowControlModule.cpp$(ObjectSuffix) $(IntermediateDirectory)/APIModules_QTSSAccessModule_QTSSAccessModule.cpp$(ObjectSuffix) $(IntermediateDirectory)/APIModules_QTSSWebStatsModule_QTSSWebStatsModule.cpp$(ObjectSuffix) $(IntermediateDirectory)/APIModules_QTSSAccessModule_AccessChecker.cpp$(ObjectSuffix) $(IntermediateDirectory)/Server.tproj_RTPPacketResender.cpp$(ObjectSuffix) \
	$(IntermediateDirectory)/CommonUtilitiesLib_StrPtrLen.cpp$(ObjectSuffix) $(IntermediateDirectory)/CommonUtilitiesLib_TCPListenerSocket.cpp$(ObjectSuffix) $(IntermediateDirectory)/CommonUtilitiesLib_UserAgentParser.cpp$(ObjectSuffix) $(IntermediateDirectory)/CommonUtilitiesLib_SocketUtils.cpp$(ObjectSuffix) $(IntermediateDirectory)/Server.tproj_QTSServerInterface.cpp$(ObjectSuffix) $(IntermediateDirectory)/CommonUtilitiesLib_OSHeap.cpp$(ObjectSuffix) $(IntermediateDirectory)/CommonUtilitiesLib_OSQueue.cpp$(ObjectSuffix) $(IntermediateDirectory)/APIStubLib_QTSS_Private.cpp$(ObjectSuffix) $(IntermediateDirectory)/Server.tproj_QTSSDataConverter.cpp$(ObjectSuffix) $(IntermediateDirectory)/CommonUtilitiesLib_ConfParser.cpp$(ObjectSuffix) \
	$(IntermediateDirectory)/CommonUtilitiesLib_TCPSocket.cpp$(ObjectSuffix) $(IntermediateDirectory)/Server.tproj_QTSSExpirationDate.cpp$(ObjectSuffix) $(IntermediateDirectory)/CommonUtilitiesLib_OSRef.cpp$(ObjectSuffix) $(IntermediateDirectory)/APICommonCode_SDPSourceInfo.cpp$(ObjectSuffix) $(IntermediateDirectory)/CommonUtilitiesLib_md5.c$(ObjectSuffix) $(IntermediateDirectory)/RTCPUtilitiesLib_RTCPSRPacket.cpp$(ObjectSuffix) $(IntermediateDirectory)/CommonUtilitiesLib_ResizeableStringFormatter.cpp$(ObjectSuffix) $(IntermediateDirectory)/Server.tproj_RTCPTask.cpp$(ObjectSuffix) $(IntermediateDirectory)/CommonUtilitiesLib_OSMutexRW.cpp$(ObjectSuffix) $(IntermediateDirectory)/CommonUtilitiesLib_OSFileSource.cpp$(ObjectSuffix) \
	$(IntermediateDirectory)/APIModules_QTSSReflectorModule_RelaySession.cpp$(ObjectSuffix) $(IntermediateDirectory)/CommonUtilitiesLib_MyAssert.cpp$(ObjectSuffix) $(IntermediateDirectory)/CommonUtilitiesLib_daemon.c$(ObjectSuffix) $(IntermediateDirectory)/CommonUtilitiesLib_EventContext.cpp$(ObjectSuffix) $(IntermediateDirectory)/CommonUtilitiesLib_UDPSocketPool.cpp$(ObjectSuffix) $(IntermediateDirectory)/CommonUtilitiesLib_ev.cpp$(ObjectSuffix) $(IntermediateDirectory)/CommonUtilitiesLib_TimeoutTask.cpp$(ObjectSuffix) $(IntermediateDirectory)/PrefsSourceLib_FilePrefsSource.cpp$(ObjectSuffix) $(IntermediateDirectory)/CommonUtilitiesLib_StringTranslator.cpp$(ObjectSuffix) $(IntermediateDirectory)/CommonUtilitiesLib_base64.c$(ObjectSuffix) \
	$(IntermediateDirectory)/APICommonCode_SourceInfo.cpp$(ObjectSuffix) $(IntermediateDirectory)/CommonUtilitiesLib_IdleTask.cpp$(ObjectSuffix) $(IntermediateDirectory)/CommonUtilitiesLib_atomic.cpp$(ObjectSuffix) $(IntermediateDirectory)/APICommonCode_QTSSModuleUtils.cpp$(ObjectSuffix) 

Objects1=$(IntermediateDirectory)/RTSPClientLib_ClientSocket.cpp$(ObjectSuffix) $(IntermediateDirectory)/APIModules_QTSSReflectorModule_ReflectorSession.cpp$(ObjectSuffix) $(IntermediateDirectory)/APICommonCode_QTAccessFile.cpp$(ObjectSuffix) $(IntermediateDirectory)/CommonUtilitiesLib_OSBufferPool.cpp$(ObjectSuffix) $(IntermediateDirectory)/Server.tproj_win32main.cpp$(ObjectSuffix) $(IntermediateDirectory)/CommonUtilitiesLib_OSCodeFragment.cpp$(ObjectSuffix) \
	$(IntermediateDirectory)/APIModules_QTSSWebDebugModule_QTSSWebDebugModule.cpp$(ObjectSuffix) $(IntermediateDirectory)/CommonUtilitiesLib_UDPDemuxer.cpp$(ObjectSuffix) $(IntermediateDirectory)/APIModules_QTSSReflectorModule_SequenceNumberMap.cpp$(ObjectSuffix) $(IntermediateDirectory)/CommonUtilitiesLib_getopt.c$(ObjectSuffix) $(IntermediateDirectory)/CommonUtilitiesLib_OSMutex.cpp$(ObjectSuffix) $(IntermediateDirectory)/CommonUtilitiesLib_SDPUtils.cpp$(ObjectSuffix) $(IntermediateDirectory)/Server.tproj_QTSSUserProfile.cpp$(ObjectSuffix) $(IntermediateDirectory)/Server.tproj_RunServer.cpp$(ObjectSuffix) $(IntermediateDirectory)/CommonUtilitiesLib_DateTranslator.cpp$(ObjectSuffix) $(IntermediateDirectory)/APICommonCode_QTSSRollingLog.cpp$(ObjectSuffix) \
	$(IntermediateDirectory)/CommonUtilitiesLib_md5digest.cpp$(ObjectSuffix) $(IntermediateDirectory)/CommonUtilitiesLib_GetWord.c$(ObjectSuffix) $(IntermediateDirectory)/Server.tproj_QTSSDictionary.cpp$(ObjectSuffix) $(IntermediateDirectory)/CommonUtilitiesLib_StringFormatter.cpp$(ObjectSuffix) $(IntermediateDirectory)/Server.tproj_RTPSession.cpp$(ObjectSuffix) $(IntermediateDirectory)/CommonUtilitiesLib_StringParser.cpp$(ObjectSuffix) $(IntermediateDirectory)/CommonUtilitiesLib_Task.cpp$(ObjectSuffix) $(IntermediateDirectory)/CommonUtilitiesLib_QueryParamList.cpp$(ObjectSuffix) $(IntermediateDirectory)/CommonUtilitiesLib_OSCond.cpp$(ObjectSuffix) $(IntermediateDirectory)/CommonUtilitiesLib_OS.cpp$(ObjectSuffix) \
	$(IntermediateDirectory)/APIModules_QTSSReflectorModule_RelaySDPSourceInfo.cpp$(ObjectSuffix) $(IntermediateDirectory)/CommonUtilitiesLib_UDPSocket.cpp$(ObjectSuffix) $(IntermediateDirectory)/APIModules_QTSSPosixFileSysModule_QTSSPosixFileSysModule.cpp$(ObjectSuffix) $(IntermediateDirectory)/HTTPUtilitiesLib_HTTPProtocol.cpp$(ObjectSuffix) $(IntermediateDirectory)/CommonUtilitiesLib_OSThread.cpp$(ObjectSuffix) $(IntermediateDirectory)/HTTPUtilitiesLib_HTTPRequest.cpp$(ObjectSuffix) $(IntermediateDirectory)/Server.tproj_QTSSCallbacks.cpp$(ObjectSuffix) $(IntermediateDirectory)/Server.tproj_RTPBandwidthTracker.cpp$(ObjectSuffix) $(IntermediateDirectory)/Server.tproj_RTPStream.cpp$(ObjectSuffix) $(IntermediateDirectory)/OSMemoryLib_OSMemory.cpp$(ObjectSuffix) \
	$(IntermediateDirectory)/PrefsSourceLib_XMLPrefsParser.cpp$(ObjectSuffix) $(IntermediateDirectory)/PrefsSourceLib_XMLParser.cpp$(ObjectSuffix) $(IntermediateDirectory)/RTCPUtilitiesLib_RTCPPacket.cpp$(ObjectSuffix) $(IntermediateDirectory)/RTCPUtilitiesLib_RTCPAPPPacket.cpp$(ObjectSuffix) $(IntermediateDirectory)/RTCPUtilitiesLib_RTCPAckPacket.cpp$(ObjectSuffix) $(IntermediateDirectory)/Server.tproj_QTSSSocket.cpp$(ObjectSuffix) $(IntermediateDirectory)/RTPMetaInfoLib_RTPMetaInfoPacket.cpp$(ObjectSuffix) 

Objects2=$(IntermediateDirectory)/APIModules_QTSSReflectorModule_QTSSReflectorModule.cpp$(ObjectSuffix) $(IntermediateDirectory)/Server.tproj_RTSPSession.cpp$(ObjectSuffix) $(IntermediateDirectory)/CommonUtilitiesLib_Socket.cpp$(ObjectSuffix) \
	$(IntermediateDirectory)/RTSPClientLib_RTSPClient.cpp$(ObjectSuffix) $(IntermediateDirectory)/SafeStdLib_InternalStdLib.cpp$(ObjectSuffix) $(IntermediateDirectory)/CommonUtilitiesLib_Trim.c$(ObjectSuffix) $(IntermediateDirectory)/Server.tproj_RTSPRequest.cpp$(ObjectSuffix) $(IntermediateDirectory)/APIModules_QTSSReflectorModule_RTSPSourceInfo.cpp$(ObjectSuffix) $(IntermediateDirectory)/Server.tproj_RTSPSessionInterface.cpp$(ObjectSuffix) $(IntermediateDirectory)/Server.tproj_QTSSPrefs.cpp$(ObjectSuffix) $(IntermediateDirectory)/Server.tproj_RTSPRequestInterface.cpp$(ObjectSuffix) $(IntermediateDirectory)/Server.tproj_RTSPRequestStream.cpp$(ObjectSuffix) $(IntermediateDirectory)/Server.tproj_RTSPProtocol.cpp$(ObjectSuffix) \
	$(IntermediateDirectory)/Server.tproj_GenerateXMLPrefs.cpp$(ObjectSuffix) $(IntermediateDirectory)/Server.tproj_QTSSMessages.cpp$(ObjectSuffix) $(IntermediateDirectory)/Server.tproj_QTSSErrorLogModule.cpp$(ObjectSuffix) $(IntermediateDirectory)/Server.tproj_QTSSModule.cpp$(ObjectSuffix) $(IntermediateDirectory)/CommonUtilitiesLib_MakeDir.c$(ObjectSuffix) $(IntermediateDirectory)/Server.tproj_RTSPResponseStream.cpp$(ObjectSuffix) $(IntermediateDirectory)/Server.tproj_RTPOverbufferWindow.cpp$(ObjectSuffix) $(IntermediateDirectory)/RTSPClientLib_FakeRTSPClient.cpp$(ObjectSuffix) $(IntermediateDirectory)/Server.tproj_QTSServer.cpp$(ObjectSuffix) $(IntermediateDirectory)/RTSPClientLib_ClientSession.cpp$(ObjectSuffix) \
	$(IntermediateDirectory)/Server.tproj_QTSServerPrefs.cpp$(ObjectSuffix) $(IntermediateDirectory)/Server.tproj_QTSSFile.cpp$(ObjectSuffix) $(IntermediateDirectory)/Server.tproj_RTPSessionInterface.cpp$(ObjectSuffix) 



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

PostBuild:
	@echo Executing Post Build commands ...
	cp ./Debug/RTSPServerConsole ./bin
	@echo Done

MakeIntermediateDirs:
	@test -d ./Debug || $(MakeDirCommand) ./Debug


$(IntermediateDirectory)/.d:
	@test -d ./Debug || $(MakeDirCommand) ./Debug

PreBuild:


##
## Objects
##
$(IntermediateDirectory)/APIModules_QTSSReflectorModule_RTPSessionOutput.cpp$(ObjectSuffix): APIModules/QTSSReflectorModule/RTPSessionOutput.cpp $(IntermediateDirectory)/APIModules_QTSSReflectorModule_RTPSessionOutput.cpp$(DependSuffix)
	$(CXX) $(IncludePCH) $(SourceSwitch) "/home/fym/722/cpp-project/RTSPServer/APIModules/QTSSReflectorModule/RTPSessionOutput.cpp" $(CXXFLAGS) $(ObjectSwitch)$(IntermediateDirectory)/APIModules_QTSSReflectorModule_RTPSessionOutput.cpp$(ObjectSuffix) $(IncludePath)
$(IntermediateDirectory)/APIModules_QTSSReflectorModule_RTPSessionOutput.cpp$(DependSuffix): APIModules/QTSSReflectorModule/RTPSessionOutput.cpp
	@$(CXX) $(CXXFLAGS) $(IncludePCH) $(IncludePath) -MG -MP -MT$(IntermediateDirectory)/APIModules_QTSSReflectorModule_RTPSessionOutput.cpp$(ObjectSuffix) -MF$(IntermediateDirectory)/APIModules_QTSSReflectorModule_RTPSessionOutput.cpp$(DependSuffix) -MM APIModules/QTSSReflectorModule/RTPSessionOutput.cpp

$(IntermediateDirectory)/APIModules_QTSSReflectorModule_RTPSessionOutput.cpp$(PreprocessSuffix): APIModules/QTSSReflectorModule/RTPSessionOutput.cpp
	$(CXX) $(CXXFLAGS) $(IncludePCH) $(IncludePath) $(PreprocessOnlySwitch) $(OutputSwitch) $(IntermediateDirectory)/APIModules_QTSSReflectorModule_RTPSessionOutput.cpp$(PreprocessSuffix) APIModules/QTSSReflectorModule/RTPSessionOutput.cpp

$(IntermediateDirectory)/APIModules_QTSSReflectorModule_RCFSourceInfo.cpp$(ObjectSuffix): APIModules/QTSSReflectorModule/RCFSourceInfo.cpp $(IntermediateDirectory)/APIModules_QTSSReflectorModule_RCFSourceInfo.cpp$(DependSuffix)
	$(CXX) $(IncludePCH) $(SourceSwitch) "/home/fym/722/cpp-project/RTSPServer/APIModules/QTSSReflectorModule/RCFSourceInfo.cpp" $(CXXFLAGS) $(ObjectSwitch)$(IntermediateDirectory)/APIModules_QTSSReflectorModule_RCFSourceInfo.cpp$(ObjectSuffix) $(IncludePath)
$(IntermediateDirectory)/APIModules_QTSSReflectorModule_RCFSourceInfo.cpp$(DependSuffix): APIModules/QTSSReflectorModule/RCFSourceInfo.cpp
	@$(CXX) $(CXXFLAGS) $(IncludePCH) $(IncludePath) -MG -MP -MT$(IntermediateDirectory)/APIModules_QTSSReflectorModule_RCFSourceInfo.cpp$(ObjectSuffix) -MF$(IntermediateDirectory)/APIModules_QTSSReflectorModule_RCFSourceInfo.cpp$(DependSuffix) -MM APIModules/QTSSReflectorModule/RCFSourceInfo.cpp

$(IntermediateDirectory)/APIModules_QTSSReflectorModule_RCFSourceInfo.cpp$(PreprocessSuffix): APIModules/QTSSReflectorModule/RCFSourceInfo.cpp
	$(CXX) $(CXXFLAGS) $(IncludePCH) $(IncludePath) $(PreprocessOnlySwitch) $(OutputSwitch) $(IntermediateDirectory)/APIModules_QTSSReflectorModule_RCFSourceInfo.cpp$(PreprocessSuffix) APIModules/QTSSReflectorModule/RCFSourceInfo.cpp

$(IntermediateDirectory)/APIModules_QTSSReflectorModule_ReflectorStream.cpp$(ObjectSuffix): APIModules/QTSSReflectorModule/ReflectorStream.cpp $(IntermediateDirectory)/APIModules_QTSSReflectorModule_ReflectorStream.cpp$(DependSuffix)
	$(CXX) $(IncludePCH) $(SourceSwitch) "/home/fym/722/cpp-project/RTSPServer/APIModules/QTSSReflectorModule/ReflectorStream.cpp" $(CXXFLAGS) $(ObjectSwitch)$(IntermediateDirectory)/APIModules_QTSSReflectorModule_ReflectorStream.cpp$(ObjectSuffix) $(IncludePath)
$(IntermediateDirectory)/APIModules_QTSSReflectorModule_ReflectorStream.cpp$(DependSuffix): APIModules/QTSSReflectorModule/ReflectorStream.cpp
	@$(CXX) $(CXXFLAGS) $(IncludePCH) $(IncludePath) -MG -MP -MT$(IntermediateDirectory)/APIModules_QTSSReflectorModule_ReflectorStream.cpp$(ObjectSuffix) -MF$(IntermediateDirectory)/APIModules_QTSSReflectorModule_ReflectorStream.cpp$(DependSuffix) -MM APIModules/QTSSReflectorModule/ReflectorStream.cpp

$(IntermediateDirectory)/APIModules_QTSSReflectorModule_ReflectorStream.cpp$(PreprocessSuffix): APIModules/QTSSReflectorModule/ReflectorStream.cpp
	$(CXX) $(CXXFLAGS) $(IncludePCH) $(IncludePath) $(PreprocessOnlySwitch) $(OutputSwitch) $(IntermediateDirectory)/APIModules_QTSSReflectorModule_ReflectorStream.cpp$(PreprocessSuffix) APIModules/QTSSReflectorModule/ReflectorStream.cpp

$(IntermediateDirectory)/APIModules_QTSSReflectorModule_QTSSRelayModule.cpp$(ObjectSuffix): APIModules/QTSSReflectorModule/QTSSRelayModule.cpp $(IntermediateDirectory)/APIModules_QTSSReflectorModule_QTSSRelayModule.cpp$(DependSuffix)
	$(CXX) $(IncludePCH) $(SourceSwitch) "/home/fym/722/cpp-project/RTSPServer/APIModules/QTSSReflectorModule/QTSSRelayModule.cpp" $(CXXFLAGS) $(ObjectSwitch)$(IntermediateDirectory)/APIModules_QTSSReflectorModule_QTSSRelayModule.cpp$(ObjectSuffix) $(IncludePath)
$(IntermediateDirectory)/APIModules_QTSSReflectorModule_QTSSRelayModule.cpp$(DependSuffix): APIModules/QTSSReflectorModule/QTSSRelayModule.cpp
	@$(CXX) $(CXXFLAGS) $(IncludePCH) $(IncludePath) -MG -MP -MT$(IntermediateDirectory)/APIModules_QTSSReflectorModule_QTSSRelayModule.cpp$(ObjectSuffix) -MF$(IntermediateDirectory)/APIModules_QTSSReflectorModule_QTSSRelayModule.cpp$(DependSuffix) -MM APIModules/QTSSReflectorModule/QTSSRelayModule.cpp

$(IntermediateDirectory)/APIModules_QTSSReflectorModule_QTSSRelayModule.cpp$(PreprocessSuffix): APIModules/QTSSReflectorModule/QTSSRelayModule.cpp
	$(CXX) $(CXXFLAGS) $(IncludePCH) $(IncludePath) $(PreprocessOnlySwitch) $(OutputSwitch) $(IntermediateDirectory)/APIModules_QTSSReflectorModule_QTSSRelayModule.cpp$(PreprocessSuffix) APIModules/QTSSReflectorModule/QTSSRelayModule.cpp

$(IntermediateDirectory)/APIModules_QTSSReflectorModule_RelayOutput.cpp$(ObjectSuffix): APIModules/QTSSReflectorModule/RelayOutput.cpp $(IntermediateDirectory)/APIModules_QTSSReflectorModule_RelayOutput.cpp$(DependSuffix)
	$(CXX) $(IncludePCH) $(SourceSwitch) "/home/fym/722/cpp-project/RTSPServer/APIModules/QTSSReflectorModule/RelayOutput.cpp" $(CXXFLAGS) $(ObjectSwitch)$(IntermediateDirectory)/APIModules_QTSSReflectorModule_RelayOutput.cpp$(ObjectSuffix) $(IncludePath)
$(IntermediateDirectory)/APIModules_QTSSReflectorModule_RelayOutput.cpp$(DependSuffix): APIModules/QTSSReflectorModule/RelayOutput.cpp
	@$(CXX) $(CXXFLAGS) $(IncludePCH) $(IncludePath) -MG -MP -MT$(IntermediateDirectory)/APIModules_QTSSReflectorModule_RelayOutput.cpp$(ObjectSuffix) -MF$(IntermediateDirectory)/APIModules_QTSSReflectorModule_RelayOutput.cpp$(DependSuffix) -MM APIModules/QTSSReflectorModule/RelayOutput.cpp

$(IntermediateDirectory)/APIModules_QTSSReflectorModule_RelayOutput.cpp$(PreprocessSuffix): APIModules/QTSSReflectorModule/RelayOutput.cpp
	$(CXX) $(CXXFLAGS) $(IncludePCH) $(IncludePath) $(PreprocessOnlySwitch) $(OutputSwitch) $(IntermediateDirectory)/APIModules_QTSSReflectorModule_RelayOutput.cpp$(PreprocessSuffix) APIModules/QTSSReflectorModule/RelayOutput.cpp

$(IntermediateDirectory)/APIModules_QTSSFlowControlModule_QTSSFlowControlModule.cpp$(ObjectSuffix): APIModules/QTSSFlowControlModule/QTSSFlowControlModule.cpp $(IntermediateDirectory)/APIModules_QTSSFlowControlModule_QTSSFlowControlModule.cpp$(DependSuffix)
	$(CXX) $(IncludePCH) $(SourceSwitch) "/home/fym/722/cpp-project/RTSPServer/APIModules/QTSSFlowControlModule/QTSSFlowControlModule.cpp" $(CXXFLAGS) $(ObjectSwitch)$(IntermediateDirectory)/APIModules_QTSSFlowControlModule_QTSSFlowControlModule.cpp$(ObjectSuffix) $(IncludePath)
$(IntermediateDirectory)/APIModules_QTSSFlowControlModule_QTSSFlowControlModule.cpp$(DependSuffix): APIModules/QTSSFlowControlModule/QTSSFlowControlModule.cpp
	@$(CXX) $(CXXFLAGS) $(IncludePCH) $(IncludePath) -MG -MP -MT$(IntermediateDirectory)/APIModules_QTSSFlowControlModule_QTSSFlowControlModule.cpp$(ObjectSuffix) -MF$(IntermediateDirectory)/APIModules_QTSSFlowControlModule_QTSSFlowControlModule.cpp$(DependSuffix) -MM APIModules/QTSSFlowControlModule/QTSSFlowControlModule.cpp

$(IntermediateDirectory)/APIModules_QTSSFlowControlModule_QTSSFlowControlModule.cpp$(PreprocessSuffix): APIModules/QTSSFlowControlModule/QTSSFlowControlModule.cpp
	$(CXX) $(CXXFLAGS) $(IncludePCH) $(IncludePath) $(PreprocessOnlySwitch) $(OutputSwitch) $(IntermediateDirectory)/APIModules_QTSSFlowControlModule_QTSSFlowControlModule.cpp$(PreprocessSuffix) APIModules/QTSSFlowControlModule/QTSSFlowControlModule.cpp

$(IntermediateDirectory)/APIModules_QTSSAccessModule_QTSSAccessModule.cpp$(ObjectSuffix): APIModules/QTSSAccessModule/QTSSAccessModule.cpp $(IntermediateDirectory)/APIModules_QTSSAccessModule_QTSSAccessModule.cpp$(DependSuffix)
	$(CXX) $(IncludePCH) $(SourceSwitch) "/home/fym/722/cpp-project/RTSPServer/APIModules/QTSSAccessModule/QTSSAccessModule.cpp" $(CXXFLAGS) $(ObjectSwitch)$(IntermediateDirectory)/APIModules_QTSSAccessModule_QTSSAccessModule.cpp$(ObjectSuffix) $(IncludePath)
$(IntermediateDirectory)/APIModules_QTSSAccessModule_QTSSAccessModule.cpp$(DependSuffix): APIModules/QTSSAccessModule/QTSSAccessModule.cpp
	@$(CXX) $(CXXFLAGS) $(IncludePCH) $(IncludePath) -MG -MP -MT$(IntermediateDirectory)/APIModules_QTSSAccessModule_QTSSAccessModule.cpp$(ObjectSuffix) -MF$(IntermediateDirectory)/APIModules_QTSSAccessModule_QTSSAccessModule.cpp$(DependSuffix) -MM APIModules/QTSSAccessModule/QTSSAccessModule.cpp

$(IntermediateDirectory)/APIModules_QTSSAccessModule_QTSSAccessModule.cpp$(PreprocessSuffix): APIModules/QTSSAccessModule/QTSSAccessModule.cpp
	$(CXX) $(CXXFLAGS) $(IncludePCH) $(IncludePath) $(PreprocessOnlySwitch) $(OutputSwitch) $(IntermediateDirectory)/APIModules_QTSSAccessModule_QTSSAccessModule.cpp$(PreprocessSuffix) APIModules/QTSSAccessModule/QTSSAccessModule.cpp

$(IntermediateDirectory)/APIModules_QTSSWebStatsModule_QTSSWebStatsModule.cpp$(ObjectSuffix): APIModules/QTSSWebStatsModule/QTSSWebStatsModule.cpp $(IntermediateDirectory)/APIModules_QTSSWebStatsModule_QTSSWebStatsModule.cpp$(DependSuffix)
	$(CXX) $(IncludePCH) $(SourceSwitch) "/home/fym/722/cpp-project/RTSPServer/APIModules/QTSSWebStatsModule/QTSSWebStatsModule.cpp" $(CXXFLAGS) $(ObjectSwitch)$(IntermediateDirectory)/APIModules_QTSSWebStatsModule_QTSSWebStatsModule.cpp$(ObjectSuffix) $(IncludePath)
$(IntermediateDirectory)/APIModules_QTSSWebStatsModule_QTSSWebStatsModule.cpp$(DependSuffix): APIModules/QTSSWebStatsModule/QTSSWebStatsModule.cpp
	@$(CXX) $(CXXFLAGS) $(IncludePCH) $(IncludePath) -MG -MP -MT$(IntermediateDirectory)/APIModules_QTSSWebStatsModule_QTSSWebStatsModule.cpp$(ObjectSuffix) -MF$(IntermediateDirectory)/APIModules_QTSSWebStatsModule_QTSSWebStatsModule.cpp$(DependSuffix) -MM APIModules/QTSSWebStatsModule/QTSSWebStatsModule.cpp

$(IntermediateDirectory)/APIModules_QTSSWebStatsModule_QTSSWebStatsModule.cpp$(PreprocessSuffix): APIModules/QTSSWebStatsModule/QTSSWebStatsModule.cpp
	$(CXX) $(CXXFLAGS) $(IncludePCH) $(IncludePath) $(PreprocessOnlySwitch) $(OutputSwitch) $(IntermediateDirectory)/APIModules_QTSSWebStatsModule_QTSSWebStatsModule.cpp$(PreprocessSuffix) APIModules/QTSSWebStatsModule/QTSSWebStatsModule.cpp

$(IntermediateDirectory)/APIModules_QTSSAccessModule_AccessChecker.cpp$(ObjectSuffix): APIModules/QTSSAccessModule/AccessChecker.cpp $(IntermediateDirectory)/APIModules_QTSSAccessModule_AccessChecker.cpp$(DependSuffix)
	$(CXX) $(IncludePCH) $(SourceSwitch) "/home/fym/722/cpp-project/RTSPServer/APIModules/QTSSAccessModule/AccessChecker.cpp" $(CXXFLAGS) $(ObjectSwitch)$(IntermediateDirectory)/APIModules_QTSSAccessModule_AccessChecker.cpp$(ObjectSuffix) $(IncludePath)
$(IntermediateDirectory)/APIModules_QTSSAccessModule_AccessChecker.cpp$(DependSuffix): APIModules/QTSSAccessModule/AccessChecker.cpp
	@$(CXX) $(CXXFLAGS) $(IncludePCH) $(IncludePath) -MG -MP -MT$(IntermediateDirectory)/APIModules_QTSSAccessModule_AccessChecker.cpp$(ObjectSuffix) -MF$(IntermediateDirectory)/APIModules_QTSSAccessModule_AccessChecker.cpp$(DependSuffix) -MM APIModules/QTSSAccessModule/AccessChecker.cpp

$(IntermediateDirectory)/APIModules_QTSSAccessModule_AccessChecker.cpp$(PreprocessSuffix): APIModules/QTSSAccessModule/AccessChecker.cpp
	$(CXX) $(CXXFLAGS) $(IncludePCH) $(IncludePath) $(PreprocessOnlySwitch) $(OutputSwitch) $(IntermediateDirectory)/APIModules_QTSSAccessModule_AccessChecker.cpp$(PreprocessSuffix) APIModules/QTSSAccessModule/AccessChecker.cpp

$(IntermediateDirectory)/Server.tproj_RTPPacketResender.cpp$(ObjectSuffix): Server.tproj/RTPPacketResender.cpp $(IntermediateDirectory)/Server.tproj_RTPPacketResender.cpp$(DependSuffix)
	$(CXX) $(IncludePCH) $(SourceSwitch) "/home/fym/722/cpp-project/RTSPServer/Server.tproj/RTPPacketResender.cpp" $(CXXFLAGS) $(ObjectSwitch)$(IntermediateDirectory)/Server.tproj_RTPPacketResender.cpp$(ObjectSuffix) $(IncludePath)
$(IntermediateDirectory)/Server.tproj_RTPPacketResender.cpp$(DependSuffix): Server.tproj/RTPPacketResender.cpp
	@$(CXX) $(CXXFLAGS) $(IncludePCH) $(IncludePath) -MG -MP -MT$(IntermediateDirectory)/Server.tproj_RTPPacketResender.cpp$(ObjectSuffix) -MF$(IntermediateDirectory)/Server.tproj_RTPPacketResender.cpp$(DependSuffix) -MM Server.tproj/RTPPacketResender.cpp

$(IntermediateDirectory)/Server.tproj_RTPPacketResender.cpp$(PreprocessSuffix): Server.tproj/RTPPacketResender.cpp
	$(CXX) $(CXXFLAGS) $(IncludePCH) $(IncludePath) $(PreprocessOnlySwitch) $(OutputSwitch) $(IntermediateDirectory)/Server.tproj_RTPPacketResender.cpp$(PreprocessSuffix) Server.tproj/RTPPacketResender.cpp

$(IntermediateDirectory)/CommonUtilitiesLib_StrPtrLen.cpp$(ObjectSuffix): CommonUtilitiesLib/StrPtrLen.cpp $(IntermediateDirectory)/CommonUtilitiesLib_StrPtrLen.cpp$(DependSuffix)
	$(CXX) $(IncludePCH) $(SourceSwitch) "/home/fym/722/cpp-project/RTSPServer/CommonUtilitiesLib/StrPtrLen.cpp" $(CXXFLAGS) $(ObjectSwitch)$(IntermediateDirectory)/CommonUtilitiesLib_StrPtrLen.cpp$(ObjectSuffix) $(IncludePath)
$(IntermediateDirectory)/CommonUtilitiesLib_StrPtrLen.cpp$(DependSuffix): CommonUtilitiesLib/StrPtrLen.cpp
	@$(CXX) $(CXXFLAGS) $(IncludePCH) $(IncludePath) -MG -MP -MT$(IntermediateDirectory)/CommonUtilitiesLib_StrPtrLen.cpp$(ObjectSuffix) -MF$(IntermediateDirectory)/CommonUtilitiesLib_StrPtrLen.cpp$(DependSuffix) -MM CommonUtilitiesLib/StrPtrLen.cpp

$(IntermediateDirectory)/CommonUtilitiesLib_StrPtrLen.cpp$(PreprocessSuffix): CommonUtilitiesLib/StrPtrLen.cpp
	$(CXX) $(CXXFLAGS) $(IncludePCH) $(IncludePath) $(PreprocessOnlySwitch) $(OutputSwitch) $(IntermediateDirectory)/CommonUtilitiesLib_StrPtrLen.cpp$(PreprocessSuffix) CommonUtilitiesLib/StrPtrLen.cpp

$(IntermediateDirectory)/CommonUtilitiesLib_TCPListenerSocket.cpp$(ObjectSuffix): CommonUtilitiesLib/TCPListenerSocket.cpp $(IntermediateDirectory)/CommonUtilitiesLib_TCPListenerSocket.cpp$(DependSuffix)
	$(CXX) $(IncludePCH) $(SourceSwitch) "/home/fym/722/cpp-project/RTSPServer/CommonUtilitiesLib/TCPListenerSocket.cpp" $(CXXFLAGS) $(ObjectSwitch)$(IntermediateDirectory)/CommonUtilitiesLib_TCPListenerSocket.cpp$(ObjectSuffix) $(IncludePath)
$(IntermediateDirectory)/CommonUtilitiesLib_TCPListenerSocket.cpp$(DependSuffix): CommonUtilitiesLib/TCPListenerSocket.cpp
	@$(CXX) $(CXXFLAGS) $(IncludePCH) $(IncludePath) -MG -MP -MT$(IntermediateDirectory)/CommonUtilitiesLib_TCPListenerSocket.cpp$(ObjectSuffix) -MF$(IntermediateDirectory)/CommonUtilitiesLib_TCPListenerSocket.cpp$(DependSuffix) -MM CommonUtilitiesLib/TCPListenerSocket.cpp

$(IntermediateDirectory)/CommonUtilitiesLib_TCPListenerSocket.cpp$(PreprocessSuffix): CommonUtilitiesLib/TCPListenerSocket.cpp
	$(CXX) $(CXXFLAGS) $(IncludePCH) $(IncludePath) $(PreprocessOnlySwitch) $(OutputSwitch) $(IntermediateDirectory)/CommonUtilitiesLib_TCPListenerSocket.cpp$(PreprocessSuffix) CommonUtilitiesLib/TCPListenerSocket.cpp

$(IntermediateDirectory)/CommonUtilitiesLib_UserAgentParser.cpp$(ObjectSuffix): CommonUtilitiesLib/UserAgentParser.cpp $(IntermediateDirectory)/CommonUtilitiesLib_UserAgentParser.cpp$(DependSuffix)
	$(CXX) $(IncludePCH) $(SourceSwitch) "/home/fym/722/cpp-project/RTSPServer/CommonUtilitiesLib/UserAgentParser.cpp" $(CXXFLAGS) $(ObjectSwitch)$(IntermediateDirectory)/CommonUtilitiesLib_UserAgentParser.cpp$(ObjectSuffix) $(IncludePath)
$(IntermediateDirectory)/CommonUtilitiesLib_UserAgentParser.cpp$(DependSuffix): CommonUtilitiesLib/UserAgentParser.cpp
	@$(CXX) $(CXXFLAGS) $(IncludePCH) $(IncludePath) -MG -MP -MT$(IntermediateDirectory)/CommonUtilitiesLib_UserAgentParser.cpp$(ObjectSuffix) -MF$(IntermediateDirectory)/CommonUtilitiesLib_UserAgentParser.cpp$(DependSuffix) -MM CommonUtilitiesLib/UserAgentParser.cpp

$(IntermediateDirectory)/CommonUtilitiesLib_UserAgentParser.cpp$(PreprocessSuffix): CommonUtilitiesLib/UserAgentParser.cpp
	$(CXX) $(CXXFLAGS) $(IncludePCH) $(IncludePath) $(PreprocessOnlySwitch) $(OutputSwitch) $(IntermediateDirectory)/CommonUtilitiesLib_UserAgentParser.cpp$(PreprocessSuffix) CommonUtilitiesLib/UserAgentParser.cpp

$(IntermediateDirectory)/CommonUtilitiesLib_SocketUtils.cpp$(ObjectSuffix): CommonUtilitiesLib/SocketUtils.cpp $(IntermediateDirectory)/CommonUtilitiesLib_SocketUtils.cpp$(DependSuffix)
	$(CXX) $(IncludePCH) $(SourceSwitch) "/home/fym/722/cpp-project/RTSPServer/CommonUtilitiesLib/SocketUtils.cpp" $(CXXFLAGS) $(ObjectSwitch)$(IntermediateDirectory)/CommonUtilitiesLib_SocketUtils.cpp$(ObjectSuffix) $(IncludePath)
$(IntermediateDirectory)/CommonUtilitiesLib_SocketUtils.cpp$(DependSuffix): CommonUtilitiesLib/SocketUtils.cpp
	@$(CXX) $(CXXFLAGS) $(IncludePCH) $(IncludePath) -MG -MP -MT$(IntermediateDirectory)/CommonUtilitiesLib_SocketUtils.cpp$(ObjectSuffix) -MF$(IntermediateDirectory)/CommonUtilitiesLib_SocketUtils.cpp$(DependSuffix) -MM CommonUtilitiesLib/SocketUtils.cpp

$(IntermediateDirectory)/CommonUtilitiesLib_SocketUtils.cpp$(PreprocessSuffix): CommonUtilitiesLib/SocketUtils.cpp
	$(CXX) $(CXXFLAGS) $(IncludePCH) $(IncludePath) $(PreprocessOnlySwitch) $(OutputSwitch) $(IntermediateDirectory)/CommonUtilitiesLib_SocketUtils.cpp$(PreprocessSuffix) CommonUtilitiesLib/SocketUtils.cpp

$(IntermediateDirectory)/Server.tproj_QTSServerInterface.cpp$(ObjectSuffix): Server.tproj/QTSServerInterface.cpp $(IntermediateDirectory)/Server.tproj_QTSServerInterface.cpp$(DependSuffix)
	$(CXX) $(IncludePCH) $(SourceSwitch) "/home/fym/722/cpp-project/RTSPServer/Server.tproj/QTSServerInterface.cpp" $(CXXFLAGS) $(ObjectSwitch)$(IntermediateDirectory)/Server.tproj_QTSServerInterface.cpp$(ObjectSuffix) $(IncludePath)
$(IntermediateDirectory)/Server.tproj_QTSServerInterface.cpp$(DependSuffix): Server.tproj/QTSServerInterface.cpp
	@$(CXX) $(CXXFLAGS) $(IncludePCH) $(IncludePath) -MG -MP -MT$(IntermediateDirectory)/Server.tproj_QTSServerInterface.cpp$(ObjectSuffix) -MF$(IntermediateDirectory)/Server.tproj_QTSServerInterface.cpp$(DependSuffix) -MM Server.tproj/QTSServerInterface.cpp

$(IntermediateDirectory)/Server.tproj_QTSServerInterface.cpp$(PreprocessSuffix): Server.tproj/QTSServerInterface.cpp
	$(CXX) $(CXXFLAGS) $(IncludePCH) $(IncludePath) $(PreprocessOnlySwitch) $(OutputSwitch) $(IntermediateDirectory)/Server.tproj_QTSServerInterface.cpp$(PreprocessSuffix) Server.tproj/QTSServerInterface.cpp

$(IntermediateDirectory)/CommonUtilitiesLib_OSHeap.cpp$(ObjectSuffix): CommonUtilitiesLib/OSHeap.cpp $(IntermediateDirectory)/CommonUtilitiesLib_OSHeap.cpp$(DependSuffix)
	$(CXX) $(IncludePCH) $(SourceSwitch) "/home/fym/722/cpp-project/RTSPServer/CommonUtilitiesLib/OSHeap.cpp" $(CXXFLAGS) $(ObjectSwitch)$(IntermediateDirectory)/CommonUtilitiesLib_OSHeap.cpp$(ObjectSuffix) $(IncludePath)
$(IntermediateDirectory)/CommonUtilitiesLib_OSHeap.cpp$(DependSuffix): CommonUtilitiesLib/OSHeap.cpp
	@$(CXX) $(CXXFLAGS) $(IncludePCH) $(IncludePath) -MG -MP -MT$(IntermediateDirectory)/CommonUtilitiesLib_OSHeap.cpp$(ObjectSuffix) -MF$(IntermediateDirectory)/CommonUtilitiesLib_OSHeap.cpp$(DependSuffix) -MM CommonUtilitiesLib/OSHeap.cpp

$(IntermediateDirectory)/CommonUtilitiesLib_OSHeap.cpp$(PreprocessSuffix): CommonUtilitiesLib/OSHeap.cpp
	$(CXX) $(CXXFLAGS) $(IncludePCH) $(IncludePath) $(PreprocessOnlySwitch) $(OutputSwitch) $(IntermediateDirectory)/CommonUtilitiesLib_OSHeap.cpp$(PreprocessSuffix) CommonUtilitiesLib/OSHeap.cpp

$(IntermediateDirectory)/CommonUtilitiesLib_OSQueue.cpp$(ObjectSuffix): CommonUtilitiesLib/OSQueue.cpp $(IntermediateDirectory)/CommonUtilitiesLib_OSQueue.cpp$(DependSuffix)
	$(CXX) $(IncludePCH) $(SourceSwitch) "/home/fym/722/cpp-project/RTSPServer/CommonUtilitiesLib/OSQueue.cpp" $(CXXFLAGS) $(ObjectSwitch)$(IntermediateDirectory)/CommonUtilitiesLib_OSQueue.cpp$(ObjectSuffix) $(IncludePath)
$(IntermediateDirectory)/CommonUtilitiesLib_OSQueue.cpp$(DependSuffix): CommonUtilitiesLib/OSQueue.cpp
	@$(CXX) $(CXXFLAGS) $(IncludePCH) $(IncludePath) -MG -MP -MT$(IntermediateDirectory)/CommonUtilitiesLib_OSQueue.cpp$(ObjectSuffix) -MF$(IntermediateDirectory)/CommonUtilitiesLib_OSQueue.cpp$(DependSuffix) -MM CommonUtilitiesLib/OSQueue.cpp

$(IntermediateDirectory)/CommonUtilitiesLib_OSQueue.cpp$(PreprocessSuffix): CommonUtilitiesLib/OSQueue.cpp
	$(CXX) $(CXXFLAGS) $(IncludePCH) $(IncludePath) $(PreprocessOnlySwitch) $(OutputSwitch) $(IntermediateDirectory)/CommonUtilitiesLib_OSQueue.cpp$(PreprocessSuffix) CommonUtilitiesLib/OSQueue.cpp

$(IntermediateDirectory)/APIStubLib_QTSS_Private.cpp$(ObjectSuffix): APIStubLib/QTSS_Private.cpp $(IntermediateDirectory)/APIStubLib_QTSS_Private.cpp$(DependSuffix)
	$(CXX) $(IncludePCH) $(SourceSwitch) "/home/fym/722/cpp-project/RTSPServer/APIStubLib/QTSS_Private.cpp" $(CXXFLAGS) $(ObjectSwitch)$(IntermediateDirectory)/APIStubLib_QTSS_Private.cpp$(ObjectSuffix) $(IncludePath)
$(IntermediateDirectory)/APIStubLib_QTSS_Private.cpp$(DependSuffix): APIStubLib/QTSS_Private.cpp
	@$(CXX) $(CXXFLAGS) $(IncludePCH) $(IncludePath) -MG -MP -MT$(IntermediateDirectory)/APIStubLib_QTSS_Private.cpp$(ObjectSuffix) -MF$(IntermediateDirectory)/APIStubLib_QTSS_Private.cpp$(DependSuffix) -MM APIStubLib/QTSS_Private.cpp

$(IntermediateDirectory)/APIStubLib_QTSS_Private.cpp$(PreprocessSuffix): APIStubLib/QTSS_Private.cpp
	$(CXX) $(CXXFLAGS) $(IncludePCH) $(IncludePath) $(PreprocessOnlySwitch) $(OutputSwitch) $(IntermediateDirectory)/APIStubLib_QTSS_Private.cpp$(PreprocessSuffix) APIStubLib/QTSS_Private.cpp

$(IntermediateDirectory)/Server.tproj_QTSSDataConverter.cpp$(ObjectSuffix): Server.tproj/QTSSDataConverter.cpp $(IntermediateDirectory)/Server.tproj_QTSSDataConverter.cpp$(DependSuffix)
	$(CXX) $(IncludePCH) $(SourceSwitch) "/home/fym/722/cpp-project/RTSPServer/Server.tproj/QTSSDataConverter.cpp" $(CXXFLAGS) $(ObjectSwitch)$(IntermediateDirectory)/Server.tproj_QTSSDataConverter.cpp$(ObjectSuffix) $(IncludePath)
$(IntermediateDirectory)/Server.tproj_QTSSDataConverter.cpp$(DependSuffix): Server.tproj/QTSSDataConverter.cpp
	@$(CXX) $(CXXFLAGS) $(IncludePCH) $(IncludePath) -MG -MP -MT$(IntermediateDirectory)/Server.tproj_QTSSDataConverter.cpp$(ObjectSuffix) -MF$(IntermediateDirectory)/Server.tproj_QTSSDataConverter.cpp$(DependSuffix) -MM Server.tproj/QTSSDataConverter.cpp

$(IntermediateDirectory)/Server.tproj_QTSSDataConverter.cpp$(PreprocessSuffix): Server.tproj/QTSSDataConverter.cpp
	$(CXX) $(CXXFLAGS) $(IncludePCH) $(IncludePath) $(PreprocessOnlySwitch) $(OutputSwitch) $(IntermediateDirectory)/Server.tproj_QTSSDataConverter.cpp$(PreprocessSuffix) Server.tproj/QTSSDataConverter.cpp

$(IntermediateDirectory)/CommonUtilitiesLib_ConfParser.cpp$(ObjectSuffix): CommonUtilitiesLib/ConfParser.cpp $(IntermediateDirectory)/CommonUtilitiesLib_ConfParser.cpp$(DependSuffix)
	$(CXX) $(IncludePCH) $(SourceSwitch) "/home/fym/722/cpp-project/RTSPServer/CommonUtilitiesLib/ConfParser.cpp" $(CXXFLAGS) $(ObjectSwitch)$(IntermediateDirectory)/CommonUtilitiesLib_ConfParser.cpp$(ObjectSuffix) $(IncludePath)
$(IntermediateDirectory)/CommonUtilitiesLib_ConfParser.cpp$(DependSuffix): CommonUtilitiesLib/ConfParser.cpp
	@$(CXX) $(CXXFLAGS) $(IncludePCH) $(IncludePath) -MG -MP -MT$(IntermediateDirectory)/CommonUtilitiesLib_ConfParser.cpp$(ObjectSuffix) -MF$(IntermediateDirectory)/CommonUtilitiesLib_ConfParser.cpp$(DependSuffix) -MM CommonUtilitiesLib/ConfParser.cpp

$(IntermediateDirectory)/CommonUtilitiesLib_ConfParser.cpp$(PreprocessSuffix): CommonUtilitiesLib/ConfParser.cpp
	$(CXX) $(CXXFLAGS) $(IncludePCH) $(IncludePath) $(PreprocessOnlySwitch) $(OutputSwitch) $(IntermediateDirectory)/CommonUtilitiesLib_ConfParser.cpp$(PreprocessSuffix) CommonUtilitiesLib/ConfParser.cpp

$(IntermediateDirectory)/CommonUtilitiesLib_TCPSocket.cpp$(ObjectSuffix): CommonUtilitiesLib/TCPSocket.cpp $(IntermediateDirectory)/CommonUtilitiesLib_TCPSocket.cpp$(DependSuffix)
	$(CXX) $(IncludePCH) $(SourceSwitch) "/home/fym/722/cpp-project/RTSPServer/CommonUtilitiesLib/TCPSocket.cpp" $(CXXFLAGS) $(ObjectSwitch)$(IntermediateDirectory)/CommonUtilitiesLib_TCPSocket.cpp$(ObjectSuffix) $(IncludePath)
$(IntermediateDirectory)/CommonUtilitiesLib_TCPSocket.cpp$(DependSuffix): CommonUtilitiesLib/TCPSocket.cpp
	@$(CXX) $(CXXFLAGS) $(IncludePCH) $(IncludePath) -MG -MP -MT$(IntermediateDirectory)/CommonUtilitiesLib_TCPSocket.cpp$(ObjectSuffix) -MF$(IntermediateDirectory)/CommonUtilitiesLib_TCPSocket.cpp$(DependSuffix) -MM CommonUtilitiesLib/TCPSocket.cpp

$(IntermediateDirectory)/CommonUtilitiesLib_TCPSocket.cpp$(PreprocessSuffix): CommonUtilitiesLib/TCPSocket.cpp
	$(CXX) $(CXXFLAGS) $(IncludePCH) $(IncludePath) $(PreprocessOnlySwitch) $(OutputSwitch) $(IntermediateDirectory)/CommonUtilitiesLib_TCPSocket.cpp$(PreprocessSuffix) CommonUtilitiesLib/TCPSocket.cpp

$(IntermediateDirectory)/Server.tproj_QTSSExpirationDate.cpp$(ObjectSuffix): Server.tproj/QTSSExpirationDate.cpp $(IntermediateDirectory)/Server.tproj_QTSSExpirationDate.cpp$(DependSuffix)
	$(CXX) $(IncludePCH) $(SourceSwitch) "/home/fym/722/cpp-project/RTSPServer/Server.tproj/QTSSExpirationDate.cpp" $(CXXFLAGS) $(ObjectSwitch)$(IntermediateDirectory)/Server.tproj_QTSSExpirationDate.cpp$(ObjectSuffix) $(IncludePath)
$(IntermediateDirectory)/Server.tproj_QTSSExpirationDate.cpp$(DependSuffix): Server.tproj/QTSSExpirationDate.cpp
	@$(CXX) $(CXXFLAGS) $(IncludePCH) $(IncludePath) -MG -MP -MT$(IntermediateDirectory)/Server.tproj_QTSSExpirationDate.cpp$(ObjectSuffix) -MF$(IntermediateDirectory)/Server.tproj_QTSSExpirationDate.cpp$(DependSuffix) -MM Server.tproj/QTSSExpirationDate.cpp

$(IntermediateDirectory)/Server.tproj_QTSSExpirationDate.cpp$(PreprocessSuffix): Server.tproj/QTSSExpirationDate.cpp
	$(CXX) $(CXXFLAGS) $(IncludePCH) $(IncludePath) $(PreprocessOnlySwitch) $(OutputSwitch) $(IntermediateDirectory)/Server.tproj_QTSSExpirationDate.cpp$(PreprocessSuffix) Server.tproj/QTSSExpirationDate.cpp

$(IntermediateDirectory)/CommonUtilitiesLib_OSRef.cpp$(ObjectSuffix): CommonUtilitiesLib/OSRef.cpp $(IntermediateDirectory)/CommonUtilitiesLib_OSRef.cpp$(DependSuffix)
	$(CXX) $(IncludePCH) $(SourceSwitch) "/home/fym/722/cpp-project/RTSPServer/CommonUtilitiesLib/OSRef.cpp" $(CXXFLAGS) $(ObjectSwitch)$(IntermediateDirectory)/CommonUtilitiesLib_OSRef.cpp$(ObjectSuffix) $(IncludePath)
$(IntermediateDirectory)/CommonUtilitiesLib_OSRef.cpp$(DependSuffix): CommonUtilitiesLib/OSRef.cpp
	@$(CXX) $(CXXFLAGS) $(IncludePCH) $(IncludePath) -MG -MP -MT$(IntermediateDirectory)/CommonUtilitiesLib_OSRef.cpp$(ObjectSuffix) -MF$(IntermediateDirectory)/CommonUtilitiesLib_OSRef.cpp$(DependSuffix) -MM CommonUtilitiesLib/OSRef.cpp

$(IntermediateDirectory)/CommonUtilitiesLib_OSRef.cpp$(PreprocessSuffix): CommonUtilitiesLib/OSRef.cpp
	$(CXX) $(CXXFLAGS) $(IncludePCH) $(IncludePath) $(PreprocessOnlySwitch) $(OutputSwitch) $(IntermediateDirectory)/CommonUtilitiesLib_OSRef.cpp$(PreprocessSuffix) CommonUtilitiesLib/OSRef.cpp

$(IntermediateDirectory)/APICommonCode_SDPSourceInfo.cpp$(ObjectSuffix): APICommonCode/SDPSourceInfo.cpp $(IntermediateDirectory)/APICommonCode_SDPSourceInfo.cpp$(DependSuffix)
	$(CXX) $(IncludePCH) $(SourceSwitch) "/home/fym/722/cpp-project/RTSPServer/APICommonCode/SDPSourceInfo.cpp" $(CXXFLAGS) $(ObjectSwitch)$(IntermediateDirectory)/APICommonCode_SDPSourceInfo.cpp$(ObjectSuffix) $(IncludePath)
$(IntermediateDirectory)/APICommonCode_SDPSourceInfo.cpp$(DependSuffix): APICommonCode/SDPSourceInfo.cpp
	@$(CXX) $(CXXFLAGS) $(IncludePCH) $(IncludePath) -MG -MP -MT$(IntermediateDirectory)/APICommonCode_SDPSourceInfo.cpp$(ObjectSuffix) -MF$(IntermediateDirectory)/APICommonCode_SDPSourceInfo.cpp$(DependSuffix) -MM APICommonCode/SDPSourceInfo.cpp

$(IntermediateDirectory)/APICommonCode_SDPSourceInfo.cpp$(PreprocessSuffix): APICommonCode/SDPSourceInfo.cpp
	$(CXX) $(CXXFLAGS) $(IncludePCH) $(IncludePath) $(PreprocessOnlySwitch) $(OutputSwitch) $(IntermediateDirectory)/APICommonCode_SDPSourceInfo.cpp$(PreprocessSuffix) APICommonCode/SDPSourceInfo.cpp

$(IntermediateDirectory)/CommonUtilitiesLib_md5.c$(ObjectSuffix): CommonUtilitiesLib/md5.c $(IntermediateDirectory)/CommonUtilitiesLib_md5.c$(DependSuffix)
	$(CC) $(SourceSwitch) "/home/fym/722/cpp-project/RTSPServer/CommonUtilitiesLib/md5.c" $(CFLAGS) $(ObjectSwitch)$(IntermediateDirectory)/CommonUtilitiesLib_md5.c$(ObjectSuffix) $(IncludePath)
$(IntermediateDirectory)/CommonUtilitiesLib_md5.c$(DependSuffix): CommonUtilitiesLib/md5.c
	@$(CC) $(CFLAGS) $(IncludePath) -MG -MP -MT$(IntermediateDirectory)/CommonUtilitiesLib_md5.c$(ObjectSuffix) -MF$(IntermediateDirectory)/CommonUtilitiesLib_md5.c$(DependSuffix) -MM CommonUtilitiesLib/md5.c

$(IntermediateDirectory)/CommonUtilitiesLib_md5.c$(PreprocessSuffix): CommonUtilitiesLib/md5.c
	$(CC) $(CFLAGS) $(IncludePath) $(PreprocessOnlySwitch) $(OutputSwitch) $(IntermediateDirectory)/CommonUtilitiesLib_md5.c$(PreprocessSuffix) CommonUtilitiesLib/md5.c

$(IntermediateDirectory)/RTCPUtilitiesLib_RTCPSRPacket.cpp$(ObjectSuffix): RTCPUtilitiesLib/RTCPSRPacket.cpp $(IntermediateDirectory)/RTCPUtilitiesLib_RTCPSRPacket.cpp$(DependSuffix)
	$(CXX) $(IncludePCH) $(SourceSwitch) "/home/fym/722/cpp-project/RTSPServer/RTCPUtilitiesLib/RTCPSRPacket.cpp" $(CXXFLAGS) $(ObjectSwitch)$(IntermediateDirectory)/RTCPUtilitiesLib_RTCPSRPacket.cpp$(ObjectSuffix) $(IncludePath)
$(IntermediateDirectory)/RTCPUtilitiesLib_RTCPSRPacket.cpp$(DependSuffix): RTCPUtilitiesLib/RTCPSRPacket.cpp
	@$(CXX) $(CXXFLAGS) $(IncludePCH) $(IncludePath) -MG -MP -MT$(IntermediateDirectory)/RTCPUtilitiesLib_RTCPSRPacket.cpp$(ObjectSuffix) -MF$(IntermediateDirectory)/RTCPUtilitiesLib_RTCPSRPacket.cpp$(DependSuffix) -MM RTCPUtilitiesLib/RTCPSRPacket.cpp

$(IntermediateDirectory)/RTCPUtilitiesLib_RTCPSRPacket.cpp$(PreprocessSuffix): RTCPUtilitiesLib/RTCPSRPacket.cpp
	$(CXX) $(CXXFLAGS) $(IncludePCH) $(IncludePath) $(PreprocessOnlySwitch) $(OutputSwitch) $(IntermediateDirectory)/RTCPUtilitiesLib_RTCPSRPacket.cpp$(PreprocessSuffix) RTCPUtilitiesLib/RTCPSRPacket.cpp

$(IntermediateDirectory)/CommonUtilitiesLib_ResizeableStringFormatter.cpp$(ObjectSuffix): CommonUtilitiesLib/ResizeableStringFormatter.cpp $(IntermediateDirectory)/CommonUtilitiesLib_ResizeableStringFormatter.cpp$(DependSuffix)
	$(CXX) $(IncludePCH) $(SourceSwitch) "/home/fym/722/cpp-project/RTSPServer/CommonUtilitiesLib/ResizeableStringFormatter.cpp" $(CXXFLAGS) $(ObjectSwitch)$(IntermediateDirectory)/CommonUtilitiesLib_ResizeableStringFormatter.cpp$(ObjectSuffix) $(IncludePath)
$(IntermediateDirectory)/CommonUtilitiesLib_ResizeableStringFormatter.cpp$(DependSuffix): CommonUtilitiesLib/ResizeableStringFormatter.cpp
	@$(CXX) $(CXXFLAGS) $(IncludePCH) $(IncludePath) -MG -MP -MT$(IntermediateDirectory)/CommonUtilitiesLib_ResizeableStringFormatter.cpp$(ObjectSuffix) -MF$(IntermediateDirectory)/CommonUtilitiesLib_ResizeableStringFormatter.cpp$(DependSuffix) -MM CommonUtilitiesLib/ResizeableStringFormatter.cpp

$(IntermediateDirectory)/CommonUtilitiesLib_ResizeableStringFormatter.cpp$(PreprocessSuffix): CommonUtilitiesLib/ResizeableStringFormatter.cpp
	$(CXX) $(CXXFLAGS) $(IncludePCH) $(IncludePath) $(PreprocessOnlySwitch) $(OutputSwitch) $(IntermediateDirectory)/CommonUtilitiesLib_ResizeableStringFormatter.cpp$(PreprocessSuffix) CommonUtilitiesLib/ResizeableStringFormatter.cpp

$(IntermediateDirectory)/Server.tproj_RTCPTask.cpp$(ObjectSuffix): Server.tproj/RTCPTask.cpp $(IntermediateDirectory)/Server.tproj_RTCPTask.cpp$(DependSuffix)
	$(CXX) $(IncludePCH) $(SourceSwitch) "/home/fym/722/cpp-project/RTSPServer/Server.tproj/RTCPTask.cpp" $(CXXFLAGS) $(ObjectSwitch)$(IntermediateDirectory)/Server.tproj_RTCPTask.cpp$(ObjectSuffix) $(IncludePath)
$(IntermediateDirectory)/Server.tproj_RTCPTask.cpp$(DependSuffix): Server.tproj/RTCPTask.cpp
	@$(CXX) $(CXXFLAGS) $(IncludePCH) $(IncludePath) -MG -MP -MT$(IntermediateDirectory)/Server.tproj_RTCPTask.cpp$(ObjectSuffix) -MF$(IntermediateDirectory)/Server.tproj_RTCPTask.cpp$(DependSuffix) -MM Server.tproj/RTCPTask.cpp

$(IntermediateDirectory)/Server.tproj_RTCPTask.cpp$(PreprocessSuffix): Server.tproj/RTCPTask.cpp
	$(CXX) $(CXXFLAGS) $(IncludePCH) $(IncludePath) $(PreprocessOnlySwitch) $(OutputSwitch) $(IntermediateDirectory)/Server.tproj_RTCPTask.cpp$(PreprocessSuffix) Server.tproj/RTCPTask.cpp

$(IntermediateDirectory)/CommonUtilitiesLib_OSMutexRW.cpp$(ObjectSuffix): CommonUtilitiesLib/OSMutexRW.cpp $(IntermediateDirectory)/CommonUtilitiesLib_OSMutexRW.cpp$(DependSuffix)
	$(CXX) $(IncludePCH) $(SourceSwitch) "/home/fym/722/cpp-project/RTSPServer/CommonUtilitiesLib/OSMutexRW.cpp" $(CXXFLAGS) $(ObjectSwitch)$(IntermediateDirectory)/CommonUtilitiesLib_OSMutexRW.cpp$(ObjectSuffix) $(IncludePath)
$(IntermediateDirectory)/CommonUtilitiesLib_OSMutexRW.cpp$(DependSuffix): CommonUtilitiesLib/OSMutexRW.cpp
	@$(CXX) $(CXXFLAGS) $(IncludePCH) $(IncludePath) -MG -MP -MT$(IntermediateDirectory)/CommonUtilitiesLib_OSMutexRW.cpp$(ObjectSuffix) -MF$(IntermediateDirectory)/CommonUtilitiesLib_OSMutexRW.cpp$(DependSuffix) -MM CommonUtilitiesLib/OSMutexRW.cpp

$(IntermediateDirectory)/CommonUtilitiesLib_OSMutexRW.cpp$(PreprocessSuffix): CommonUtilitiesLib/OSMutexRW.cpp
	$(CXX) $(CXXFLAGS) $(IncludePCH) $(IncludePath) $(PreprocessOnlySwitch) $(OutputSwitch) $(IntermediateDirectory)/CommonUtilitiesLib_OSMutexRW.cpp$(PreprocessSuffix) CommonUtilitiesLib/OSMutexRW.cpp

$(IntermediateDirectory)/CommonUtilitiesLib_OSFileSource.cpp$(ObjectSuffix): CommonUtilitiesLib/OSFileSource.cpp $(IntermediateDirectory)/CommonUtilitiesLib_OSFileSource.cpp$(DependSuffix)
	$(CXX) $(IncludePCH) $(SourceSwitch) "/home/fym/722/cpp-project/RTSPServer/CommonUtilitiesLib/OSFileSource.cpp" $(CXXFLAGS) $(ObjectSwitch)$(IntermediateDirectory)/CommonUtilitiesLib_OSFileSource.cpp$(ObjectSuffix) $(IncludePath)
$(IntermediateDirectory)/CommonUtilitiesLib_OSFileSource.cpp$(DependSuffix): CommonUtilitiesLib/OSFileSource.cpp
	@$(CXX) $(CXXFLAGS) $(IncludePCH) $(IncludePath) -MG -MP -MT$(IntermediateDirectory)/CommonUtilitiesLib_OSFileSource.cpp$(ObjectSuffix) -MF$(IntermediateDirectory)/CommonUtilitiesLib_OSFileSource.cpp$(DependSuffix) -MM CommonUtilitiesLib/OSFileSource.cpp

$(IntermediateDirectory)/CommonUtilitiesLib_OSFileSource.cpp$(PreprocessSuffix): CommonUtilitiesLib/OSFileSource.cpp
	$(CXX) $(CXXFLAGS) $(IncludePCH) $(IncludePath) $(PreprocessOnlySwitch) $(OutputSwitch) $(IntermediateDirectory)/CommonUtilitiesLib_OSFileSource.cpp$(PreprocessSuffix) CommonUtilitiesLib/OSFileSource.cpp

$(IntermediateDirectory)/APIModules_QTSSReflectorModule_RelaySession.cpp$(ObjectSuffix): APIModules/QTSSReflectorModule/RelaySession.cpp $(IntermediateDirectory)/APIModules_QTSSReflectorModule_RelaySession.cpp$(DependSuffix)
	$(CXX) $(IncludePCH) $(SourceSwitch) "/home/fym/722/cpp-project/RTSPServer/APIModules/QTSSReflectorModule/RelaySession.cpp" $(CXXFLAGS) $(ObjectSwitch)$(IntermediateDirectory)/APIModules_QTSSReflectorModule_RelaySession.cpp$(ObjectSuffix) $(IncludePath)
$(IntermediateDirectory)/APIModules_QTSSReflectorModule_RelaySession.cpp$(DependSuffix): APIModules/QTSSReflectorModule/RelaySession.cpp
	@$(CXX) $(CXXFLAGS) $(IncludePCH) $(IncludePath) -MG -MP -MT$(IntermediateDirectory)/APIModules_QTSSReflectorModule_RelaySession.cpp$(ObjectSuffix) -MF$(IntermediateDirectory)/APIModules_QTSSReflectorModule_RelaySession.cpp$(DependSuffix) -MM APIModules/QTSSReflectorModule/RelaySession.cpp

$(IntermediateDirectory)/APIModules_QTSSReflectorModule_RelaySession.cpp$(PreprocessSuffix): APIModules/QTSSReflectorModule/RelaySession.cpp
	$(CXX) $(CXXFLAGS) $(IncludePCH) $(IncludePath) $(PreprocessOnlySwitch) $(OutputSwitch) $(IntermediateDirectory)/APIModules_QTSSReflectorModule_RelaySession.cpp$(PreprocessSuffix) APIModules/QTSSReflectorModule/RelaySession.cpp

$(IntermediateDirectory)/CommonUtilitiesLib_MyAssert.cpp$(ObjectSuffix): CommonUtilitiesLib/MyAssert.cpp $(IntermediateDirectory)/CommonUtilitiesLib_MyAssert.cpp$(DependSuffix)
	$(CXX) $(IncludePCH) $(SourceSwitch) "/home/fym/722/cpp-project/RTSPServer/CommonUtilitiesLib/MyAssert.cpp" $(CXXFLAGS) $(ObjectSwitch)$(IntermediateDirectory)/CommonUtilitiesLib_MyAssert.cpp$(ObjectSuffix) $(IncludePath)
$(IntermediateDirectory)/CommonUtilitiesLib_MyAssert.cpp$(DependSuffix): CommonUtilitiesLib/MyAssert.cpp
	@$(CXX) $(CXXFLAGS) $(IncludePCH) $(IncludePath) -MG -MP -MT$(IntermediateDirectory)/CommonUtilitiesLib_MyAssert.cpp$(ObjectSuffix) -MF$(IntermediateDirectory)/CommonUtilitiesLib_MyAssert.cpp$(DependSuffix) -MM CommonUtilitiesLib/MyAssert.cpp

$(IntermediateDirectory)/CommonUtilitiesLib_MyAssert.cpp$(PreprocessSuffix): CommonUtilitiesLib/MyAssert.cpp
	$(CXX) $(CXXFLAGS) $(IncludePCH) $(IncludePath) $(PreprocessOnlySwitch) $(OutputSwitch) $(IntermediateDirectory)/CommonUtilitiesLib_MyAssert.cpp$(PreprocessSuffix) CommonUtilitiesLib/MyAssert.cpp

$(IntermediateDirectory)/CommonUtilitiesLib_daemon.c$(ObjectSuffix): CommonUtilitiesLib/daemon.c $(IntermediateDirectory)/CommonUtilitiesLib_daemon.c$(DependSuffix)
	$(CC) $(SourceSwitch) "/home/fym/722/cpp-project/RTSPServer/CommonUtilitiesLib/daemon.c" $(CFLAGS) $(ObjectSwitch)$(IntermediateDirectory)/CommonUtilitiesLib_daemon.c$(ObjectSuffix) $(IncludePath)
$(IntermediateDirectory)/CommonUtilitiesLib_daemon.c$(DependSuffix): CommonUtilitiesLib/daemon.c
	@$(CC) $(CFLAGS) $(IncludePath) -MG -MP -MT$(IntermediateDirectory)/CommonUtilitiesLib_daemon.c$(ObjectSuffix) -MF$(IntermediateDirectory)/CommonUtilitiesLib_daemon.c$(DependSuffix) -MM CommonUtilitiesLib/daemon.c

$(IntermediateDirectory)/CommonUtilitiesLib_daemon.c$(PreprocessSuffix): CommonUtilitiesLib/daemon.c
	$(CC) $(CFLAGS) $(IncludePath) $(PreprocessOnlySwitch) $(OutputSwitch) $(IntermediateDirectory)/CommonUtilitiesLib_daemon.c$(PreprocessSuffix) CommonUtilitiesLib/daemon.c

$(IntermediateDirectory)/CommonUtilitiesLib_EventContext.cpp$(ObjectSuffix): CommonUtilitiesLib/EventContext.cpp $(IntermediateDirectory)/CommonUtilitiesLib_EventContext.cpp$(DependSuffix)
	$(CXX) $(IncludePCH) $(SourceSwitch) "/home/fym/722/cpp-project/RTSPServer/CommonUtilitiesLib/EventContext.cpp" $(CXXFLAGS) $(ObjectSwitch)$(IntermediateDirectory)/CommonUtilitiesLib_EventContext.cpp$(ObjectSuffix) $(IncludePath)
$(IntermediateDirectory)/CommonUtilitiesLib_EventContext.cpp$(DependSuffix): CommonUtilitiesLib/EventContext.cpp
	@$(CXX) $(CXXFLAGS) $(IncludePCH) $(IncludePath) -MG -MP -MT$(IntermediateDirectory)/CommonUtilitiesLib_EventContext.cpp$(ObjectSuffix) -MF$(IntermediateDirectory)/CommonUtilitiesLib_EventContext.cpp$(DependSuffix) -MM CommonUtilitiesLib/EventContext.cpp

$(IntermediateDirectory)/CommonUtilitiesLib_EventContext.cpp$(PreprocessSuffix): CommonUtilitiesLib/EventContext.cpp
	$(CXX) $(CXXFLAGS) $(IncludePCH) $(IncludePath) $(PreprocessOnlySwitch) $(OutputSwitch) $(IntermediateDirectory)/CommonUtilitiesLib_EventContext.cpp$(PreprocessSuffix) CommonUtilitiesLib/EventContext.cpp

$(IntermediateDirectory)/CommonUtilitiesLib_UDPSocketPool.cpp$(ObjectSuffix): CommonUtilitiesLib/UDPSocketPool.cpp $(IntermediateDirectory)/CommonUtilitiesLib_UDPSocketPool.cpp$(DependSuffix)
	$(CXX) $(IncludePCH) $(SourceSwitch) "/home/fym/722/cpp-project/RTSPServer/CommonUtilitiesLib/UDPSocketPool.cpp" $(CXXFLAGS) $(ObjectSwitch)$(IntermediateDirectory)/CommonUtilitiesLib_UDPSocketPool.cpp$(ObjectSuffix) $(IncludePath)
$(IntermediateDirectory)/CommonUtilitiesLib_UDPSocketPool.cpp$(DependSuffix): CommonUtilitiesLib/UDPSocketPool.cpp
	@$(CXX) $(CXXFLAGS) $(IncludePCH) $(IncludePath) -MG -MP -MT$(IntermediateDirectory)/CommonUtilitiesLib_UDPSocketPool.cpp$(ObjectSuffix) -MF$(IntermediateDirectory)/CommonUtilitiesLib_UDPSocketPool.cpp$(DependSuffix) -MM CommonUtilitiesLib/UDPSocketPool.cpp

$(IntermediateDirectory)/CommonUtilitiesLib_UDPSocketPool.cpp$(PreprocessSuffix): CommonUtilitiesLib/UDPSocketPool.cpp
	$(CXX) $(CXXFLAGS) $(IncludePCH) $(IncludePath) $(PreprocessOnlySwitch) $(OutputSwitch) $(IntermediateDirectory)/CommonUtilitiesLib_UDPSocketPool.cpp$(PreprocessSuffix) CommonUtilitiesLib/UDPSocketPool.cpp

$(IntermediateDirectory)/CommonUtilitiesLib_ev.cpp$(ObjectSuffix): CommonUtilitiesLib/ev.cpp $(IntermediateDirectory)/CommonUtilitiesLib_ev.cpp$(DependSuffix)
	$(CXX) $(IncludePCH) $(SourceSwitch) "/home/fym/722/cpp-project/RTSPServer/CommonUtilitiesLib/ev.cpp" $(CXXFLAGS) $(ObjectSwitch)$(IntermediateDirectory)/CommonUtilitiesLib_ev.cpp$(ObjectSuffix) $(IncludePath)
$(IntermediateDirectory)/CommonUtilitiesLib_ev.cpp$(DependSuffix): CommonUtilitiesLib/ev.cpp
	@$(CXX) $(CXXFLAGS) $(IncludePCH) $(IncludePath) -MG -MP -MT$(IntermediateDirectory)/CommonUtilitiesLib_ev.cpp$(ObjectSuffix) -MF$(IntermediateDirectory)/CommonUtilitiesLib_ev.cpp$(DependSuffix) -MM CommonUtilitiesLib/ev.cpp

$(IntermediateDirectory)/CommonUtilitiesLib_ev.cpp$(PreprocessSuffix): CommonUtilitiesLib/ev.cpp
	$(CXX) $(CXXFLAGS) $(IncludePCH) $(IncludePath) $(PreprocessOnlySwitch) $(OutputSwitch) $(IntermediateDirectory)/CommonUtilitiesLib_ev.cpp$(PreprocessSuffix) CommonUtilitiesLib/ev.cpp

$(IntermediateDirectory)/CommonUtilitiesLib_TimeoutTask.cpp$(ObjectSuffix): CommonUtilitiesLib/TimeoutTask.cpp $(IntermediateDirectory)/CommonUtilitiesLib_TimeoutTask.cpp$(DependSuffix)
	$(CXX) $(IncludePCH) $(SourceSwitch) "/home/fym/722/cpp-project/RTSPServer/CommonUtilitiesLib/TimeoutTask.cpp" $(CXXFLAGS) $(ObjectSwitch)$(IntermediateDirectory)/CommonUtilitiesLib_TimeoutTask.cpp$(ObjectSuffix) $(IncludePath)
$(IntermediateDirectory)/CommonUtilitiesLib_TimeoutTask.cpp$(DependSuffix): CommonUtilitiesLib/TimeoutTask.cpp
	@$(CXX) $(CXXFLAGS) $(IncludePCH) $(IncludePath) -MG -MP -MT$(IntermediateDirectory)/CommonUtilitiesLib_TimeoutTask.cpp$(ObjectSuffix) -MF$(IntermediateDirectory)/CommonUtilitiesLib_TimeoutTask.cpp$(DependSuffix) -MM CommonUtilitiesLib/TimeoutTask.cpp

$(IntermediateDirectory)/CommonUtilitiesLib_TimeoutTask.cpp$(PreprocessSuffix): CommonUtilitiesLib/TimeoutTask.cpp
	$(CXX) $(CXXFLAGS) $(IncludePCH) $(IncludePath) $(PreprocessOnlySwitch) $(OutputSwitch) $(IntermediateDirectory)/CommonUtilitiesLib_TimeoutTask.cpp$(PreprocessSuffix) CommonUtilitiesLib/TimeoutTask.cpp

$(IntermediateDirectory)/PrefsSourceLib_FilePrefsSource.cpp$(ObjectSuffix): PrefsSourceLib/FilePrefsSource.cpp $(IntermediateDirectory)/PrefsSourceLib_FilePrefsSource.cpp$(DependSuffix)
	$(CXX) $(IncludePCH) $(SourceSwitch) "/home/fym/722/cpp-project/RTSPServer/PrefsSourceLib/FilePrefsSource.cpp" $(CXXFLAGS) $(ObjectSwitch)$(IntermediateDirectory)/PrefsSourceLib_FilePrefsSource.cpp$(ObjectSuffix) $(IncludePath)
$(IntermediateDirectory)/PrefsSourceLib_FilePrefsSource.cpp$(DependSuffix): PrefsSourceLib/FilePrefsSource.cpp
	@$(CXX) $(CXXFLAGS) $(IncludePCH) $(IncludePath) -MG -MP -MT$(IntermediateDirectory)/PrefsSourceLib_FilePrefsSource.cpp$(ObjectSuffix) -MF$(IntermediateDirectory)/PrefsSourceLib_FilePrefsSource.cpp$(DependSuffix) -MM PrefsSourceLib/FilePrefsSource.cpp

$(IntermediateDirectory)/PrefsSourceLib_FilePrefsSource.cpp$(PreprocessSuffix): PrefsSourceLib/FilePrefsSource.cpp
	$(CXX) $(CXXFLAGS) $(IncludePCH) $(IncludePath) $(PreprocessOnlySwitch) $(OutputSwitch) $(IntermediateDirectory)/PrefsSourceLib_FilePrefsSource.cpp$(PreprocessSuffix) PrefsSourceLib/FilePrefsSource.cpp

$(IntermediateDirectory)/CommonUtilitiesLib_StringTranslator.cpp$(ObjectSuffix): CommonUtilitiesLib/StringTranslator.cpp $(IntermediateDirectory)/CommonUtilitiesLib_StringTranslator.cpp$(DependSuffix)
	$(CXX) $(IncludePCH) $(SourceSwitch) "/home/fym/722/cpp-project/RTSPServer/CommonUtilitiesLib/StringTranslator.cpp" $(CXXFLAGS) $(ObjectSwitch)$(IntermediateDirectory)/CommonUtilitiesLib_StringTranslator.cpp$(ObjectSuffix) $(IncludePath)
$(IntermediateDirectory)/CommonUtilitiesLib_StringTranslator.cpp$(DependSuffix): CommonUtilitiesLib/StringTranslator.cpp
	@$(CXX) $(CXXFLAGS) $(IncludePCH) $(IncludePath) -MG -MP -MT$(IntermediateDirectory)/CommonUtilitiesLib_StringTranslator.cpp$(ObjectSuffix) -MF$(IntermediateDirectory)/CommonUtilitiesLib_StringTranslator.cpp$(DependSuffix) -MM CommonUtilitiesLib/StringTranslator.cpp

$(IntermediateDirectory)/CommonUtilitiesLib_StringTranslator.cpp$(PreprocessSuffix): CommonUtilitiesLib/StringTranslator.cpp
	$(CXX) $(CXXFLAGS) $(IncludePCH) $(IncludePath) $(PreprocessOnlySwitch) $(OutputSwitch) $(IntermediateDirectory)/CommonUtilitiesLib_StringTranslator.cpp$(PreprocessSuffix) CommonUtilitiesLib/StringTranslator.cpp

$(IntermediateDirectory)/CommonUtilitiesLib_base64.c$(ObjectSuffix): CommonUtilitiesLib/base64.c $(IntermediateDirectory)/CommonUtilitiesLib_base64.c$(DependSuffix)
	$(CC) $(SourceSwitch) "/home/fym/722/cpp-project/RTSPServer/CommonUtilitiesLib/base64.c" $(CFLAGS) $(ObjectSwitch)$(IntermediateDirectory)/CommonUtilitiesLib_base64.c$(ObjectSuffix) $(IncludePath)
$(IntermediateDirectory)/CommonUtilitiesLib_base64.c$(DependSuffix): CommonUtilitiesLib/base64.c
	@$(CC) $(CFLAGS) $(IncludePath) -MG -MP -MT$(IntermediateDirectory)/CommonUtilitiesLib_base64.c$(ObjectSuffix) -MF$(IntermediateDirectory)/CommonUtilitiesLib_base64.c$(DependSuffix) -MM CommonUtilitiesLib/base64.c

$(IntermediateDirectory)/CommonUtilitiesLib_base64.c$(PreprocessSuffix): CommonUtilitiesLib/base64.c
	$(CC) $(CFLAGS) $(IncludePath) $(PreprocessOnlySwitch) $(OutputSwitch) $(IntermediateDirectory)/CommonUtilitiesLib_base64.c$(PreprocessSuffix) CommonUtilitiesLib/base64.c

$(IntermediateDirectory)/APICommonCode_SourceInfo.cpp$(ObjectSuffix): APICommonCode/SourceInfo.cpp $(IntermediateDirectory)/APICommonCode_SourceInfo.cpp$(DependSuffix)
	$(CXX) $(IncludePCH) $(SourceSwitch) "/home/fym/722/cpp-project/RTSPServer/APICommonCode/SourceInfo.cpp" $(CXXFLAGS) $(ObjectSwitch)$(IntermediateDirectory)/APICommonCode_SourceInfo.cpp$(ObjectSuffix) $(IncludePath)
$(IntermediateDirectory)/APICommonCode_SourceInfo.cpp$(DependSuffix): APICommonCode/SourceInfo.cpp
	@$(CXX) $(CXXFLAGS) $(IncludePCH) $(IncludePath) -MG -MP -MT$(IntermediateDirectory)/APICommonCode_SourceInfo.cpp$(ObjectSuffix) -MF$(IntermediateDirectory)/APICommonCode_SourceInfo.cpp$(DependSuffix) -MM APICommonCode/SourceInfo.cpp

$(IntermediateDirectory)/APICommonCode_SourceInfo.cpp$(PreprocessSuffix): APICommonCode/SourceInfo.cpp
	$(CXX) $(CXXFLAGS) $(IncludePCH) $(IncludePath) $(PreprocessOnlySwitch) $(OutputSwitch) $(IntermediateDirectory)/APICommonCode_SourceInfo.cpp$(PreprocessSuffix) APICommonCode/SourceInfo.cpp

$(IntermediateDirectory)/CommonUtilitiesLib_IdleTask.cpp$(ObjectSuffix): CommonUtilitiesLib/IdleTask.cpp $(IntermediateDirectory)/CommonUtilitiesLib_IdleTask.cpp$(DependSuffix)
	$(CXX) $(IncludePCH) $(SourceSwitch) "/home/fym/722/cpp-project/RTSPServer/CommonUtilitiesLib/IdleTask.cpp" $(CXXFLAGS) $(ObjectSwitch)$(IntermediateDirectory)/CommonUtilitiesLib_IdleTask.cpp$(ObjectSuffix) $(IncludePath)
$(IntermediateDirectory)/CommonUtilitiesLib_IdleTask.cpp$(DependSuffix): CommonUtilitiesLib/IdleTask.cpp
	@$(CXX) $(CXXFLAGS) $(IncludePCH) $(IncludePath) -MG -MP -MT$(IntermediateDirectory)/CommonUtilitiesLib_IdleTask.cpp$(ObjectSuffix) -MF$(IntermediateDirectory)/CommonUtilitiesLib_IdleTask.cpp$(DependSuffix) -MM CommonUtilitiesLib/IdleTask.cpp

$(IntermediateDirectory)/CommonUtilitiesLib_IdleTask.cpp$(PreprocessSuffix): CommonUtilitiesLib/IdleTask.cpp
	$(CXX) $(CXXFLAGS) $(IncludePCH) $(IncludePath) $(PreprocessOnlySwitch) $(OutputSwitch) $(IntermediateDirectory)/CommonUtilitiesLib_IdleTask.cpp$(PreprocessSuffix) CommonUtilitiesLib/IdleTask.cpp

$(IntermediateDirectory)/CommonUtilitiesLib_atomic.cpp$(ObjectSuffix): CommonUtilitiesLib/atomic.cpp $(IntermediateDirectory)/CommonUtilitiesLib_atomic.cpp$(DependSuffix)
	$(CXX) $(IncludePCH) $(SourceSwitch) "/home/fym/722/cpp-project/RTSPServer/CommonUtilitiesLib/atomic.cpp" $(CXXFLAGS) $(ObjectSwitch)$(IntermediateDirectory)/CommonUtilitiesLib_atomic.cpp$(ObjectSuffix) $(IncludePath)
$(IntermediateDirectory)/CommonUtilitiesLib_atomic.cpp$(DependSuffix): CommonUtilitiesLib/atomic.cpp
	@$(CXX) $(CXXFLAGS) $(IncludePCH) $(IncludePath) -MG -MP -MT$(IntermediateDirectory)/CommonUtilitiesLib_atomic.cpp$(ObjectSuffix) -MF$(IntermediateDirectory)/CommonUtilitiesLib_atomic.cpp$(DependSuffix) -MM CommonUtilitiesLib/atomic.cpp

$(IntermediateDirectory)/CommonUtilitiesLib_atomic.cpp$(PreprocessSuffix): CommonUtilitiesLib/atomic.cpp
	$(CXX) $(CXXFLAGS) $(IncludePCH) $(IncludePath) $(PreprocessOnlySwitch) $(OutputSwitch) $(IntermediateDirectory)/CommonUtilitiesLib_atomic.cpp$(PreprocessSuffix) CommonUtilitiesLib/atomic.cpp

$(IntermediateDirectory)/APICommonCode_QTSSModuleUtils.cpp$(ObjectSuffix): APICommonCode/QTSSModuleUtils.cpp $(IntermediateDirectory)/APICommonCode_QTSSModuleUtils.cpp$(DependSuffix)
	$(CXX) $(IncludePCH) $(SourceSwitch) "/home/fym/722/cpp-project/RTSPServer/APICommonCode/QTSSModuleUtils.cpp" $(CXXFLAGS) $(ObjectSwitch)$(IntermediateDirectory)/APICommonCode_QTSSModuleUtils.cpp$(ObjectSuffix) $(IncludePath)
$(IntermediateDirectory)/APICommonCode_QTSSModuleUtils.cpp$(DependSuffix): APICommonCode/QTSSModuleUtils.cpp
	@$(CXX) $(CXXFLAGS) $(IncludePCH) $(IncludePath) -MG -MP -MT$(IntermediateDirectory)/APICommonCode_QTSSModuleUtils.cpp$(ObjectSuffix) -MF$(IntermediateDirectory)/APICommonCode_QTSSModuleUtils.cpp$(DependSuffix) -MM APICommonCode/QTSSModuleUtils.cpp

$(IntermediateDirectory)/APICommonCode_QTSSModuleUtils.cpp$(PreprocessSuffix): APICommonCode/QTSSModuleUtils.cpp
	$(CXX) $(CXXFLAGS) $(IncludePCH) $(IncludePath) $(PreprocessOnlySwitch) $(OutputSwitch) $(IntermediateDirectory)/APICommonCode_QTSSModuleUtils.cpp$(PreprocessSuffix) APICommonCode/QTSSModuleUtils.cpp

$(IntermediateDirectory)/RTSPClientLib_ClientSocket.cpp$(ObjectSuffix): RTSPClientLib/ClientSocket.cpp $(IntermediateDirectory)/RTSPClientLib_ClientSocket.cpp$(DependSuffix)
	$(CXX) $(IncludePCH) $(SourceSwitch) "/home/fym/722/cpp-project/RTSPServer/RTSPClientLib/ClientSocket.cpp" $(CXXFLAGS) $(ObjectSwitch)$(IntermediateDirectory)/RTSPClientLib_ClientSocket.cpp$(ObjectSuffix) $(IncludePath)
$(IntermediateDirectory)/RTSPClientLib_ClientSocket.cpp$(DependSuffix): RTSPClientLib/ClientSocket.cpp
	@$(CXX) $(CXXFLAGS) $(IncludePCH) $(IncludePath) -MG -MP -MT$(IntermediateDirectory)/RTSPClientLib_ClientSocket.cpp$(ObjectSuffix) -MF$(IntermediateDirectory)/RTSPClientLib_ClientSocket.cpp$(DependSuffix) -MM RTSPClientLib/ClientSocket.cpp

$(IntermediateDirectory)/RTSPClientLib_ClientSocket.cpp$(PreprocessSuffix): RTSPClientLib/ClientSocket.cpp
	$(CXX) $(CXXFLAGS) $(IncludePCH) $(IncludePath) $(PreprocessOnlySwitch) $(OutputSwitch) $(IntermediateDirectory)/RTSPClientLib_ClientSocket.cpp$(PreprocessSuffix) RTSPClientLib/ClientSocket.cpp

$(IntermediateDirectory)/APIModules_QTSSReflectorModule_ReflectorSession.cpp$(ObjectSuffix): APIModules/QTSSReflectorModule/ReflectorSession.cpp $(IntermediateDirectory)/APIModules_QTSSReflectorModule_ReflectorSession.cpp$(DependSuffix)
	$(CXX) $(IncludePCH) $(SourceSwitch) "/home/fym/722/cpp-project/RTSPServer/APIModules/QTSSReflectorModule/ReflectorSession.cpp" $(CXXFLAGS) $(ObjectSwitch)$(IntermediateDirectory)/APIModules_QTSSReflectorModule_ReflectorSession.cpp$(ObjectSuffix) $(IncludePath)
$(IntermediateDirectory)/APIModules_QTSSReflectorModule_ReflectorSession.cpp$(DependSuffix): APIModules/QTSSReflectorModule/ReflectorSession.cpp
	@$(CXX) $(CXXFLAGS) $(IncludePCH) $(IncludePath) -MG -MP -MT$(IntermediateDirectory)/APIModules_QTSSReflectorModule_ReflectorSession.cpp$(ObjectSuffix) -MF$(IntermediateDirectory)/APIModules_QTSSReflectorModule_ReflectorSession.cpp$(DependSuffix) -MM APIModules/QTSSReflectorModule/ReflectorSession.cpp

$(IntermediateDirectory)/APIModules_QTSSReflectorModule_ReflectorSession.cpp$(PreprocessSuffix): APIModules/QTSSReflectorModule/ReflectorSession.cpp
	$(CXX) $(CXXFLAGS) $(IncludePCH) $(IncludePath) $(PreprocessOnlySwitch) $(OutputSwitch) $(IntermediateDirectory)/APIModules_QTSSReflectorModule_ReflectorSession.cpp$(PreprocessSuffix) APIModules/QTSSReflectorModule/ReflectorSession.cpp

$(IntermediateDirectory)/APICommonCode_QTAccessFile.cpp$(ObjectSuffix): APICommonCode/QTAccessFile.cpp $(IntermediateDirectory)/APICommonCode_QTAccessFile.cpp$(DependSuffix)
	$(CXX) $(IncludePCH) $(SourceSwitch) "/home/fym/722/cpp-project/RTSPServer/APICommonCode/QTAccessFile.cpp" $(CXXFLAGS) $(ObjectSwitch)$(IntermediateDirectory)/APICommonCode_QTAccessFile.cpp$(ObjectSuffix) $(IncludePath)
$(IntermediateDirectory)/APICommonCode_QTAccessFile.cpp$(DependSuffix): APICommonCode/QTAccessFile.cpp
	@$(CXX) $(CXXFLAGS) $(IncludePCH) $(IncludePath) -MG -MP -MT$(IntermediateDirectory)/APICommonCode_QTAccessFile.cpp$(ObjectSuffix) -MF$(IntermediateDirectory)/APICommonCode_QTAccessFile.cpp$(DependSuffix) -MM APICommonCode/QTAccessFile.cpp

$(IntermediateDirectory)/APICommonCode_QTAccessFile.cpp$(PreprocessSuffix): APICommonCode/QTAccessFile.cpp
	$(CXX) $(CXXFLAGS) $(IncludePCH) $(IncludePath) $(PreprocessOnlySwitch) $(OutputSwitch) $(IntermediateDirectory)/APICommonCode_QTAccessFile.cpp$(PreprocessSuffix) APICommonCode/QTAccessFile.cpp

$(IntermediateDirectory)/CommonUtilitiesLib_OSBufferPool.cpp$(ObjectSuffix): CommonUtilitiesLib/OSBufferPool.cpp $(IntermediateDirectory)/CommonUtilitiesLib_OSBufferPool.cpp$(DependSuffix)
	$(CXX) $(IncludePCH) $(SourceSwitch) "/home/fym/722/cpp-project/RTSPServer/CommonUtilitiesLib/OSBufferPool.cpp" $(CXXFLAGS) $(ObjectSwitch)$(IntermediateDirectory)/CommonUtilitiesLib_OSBufferPool.cpp$(ObjectSuffix) $(IncludePath)
$(IntermediateDirectory)/CommonUtilitiesLib_OSBufferPool.cpp$(DependSuffix): CommonUtilitiesLib/OSBufferPool.cpp
	@$(CXX) $(CXXFLAGS) $(IncludePCH) $(IncludePath) -MG -MP -MT$(IntermediateDirectory)/CommonUtilitiesLib_OSBufferPool.cpp$(ObjectSuffix) -MF$(IntermediateDirectory)/CommonUtilitiesLib_OSBufferPool.cpp$(DependSuffix) -MM CommonUtilitiesLib/OSBufferPool.cpp

$(IntermediateDirectory)/CommonUtilitiesLib_OSBufferPool.cpp$(PreprocessSuffix): CommonUtilitiesLib/OSBufferPool.cpp
	$(CXX) $(CXXFLAGS) $(IncludePCH) $(IncludePath) $(PreprocessOnlySwitch) $(OutputSwitch) $(IntermediateDirectory)/CommonUtilitiesLib_OSBufferPool.cpp$(PreprocessSuffix) CommonUtilitiesLib/OSBufferPool.cpp

$(IntermediateDirectory)/Server.tproj_win32main.cpp$(ObjectSuffix): Server.tproj/win32main.cpp $(IntermediateDirectory)/Server.tproj_win32main.cpp$(DependSuffix)
	$(CXX) $(IncludePCH) $(SourceSwitch) "/home/fym/722/cpp-project/RTSPServer/Server.tproj/win32main.cpp" $(CXXFLAGS) $(ObjectSwitch)$(IntermediateDirectory)/Server.tproj_win32main.cpp$(ObjectSuffix) $(IncludePath)
$(IntermediateDirectory)/Server.tproj_win32main.cpp$(DependSuffix): Server.tproj/win32main.cpp
	@$(CXX) $(CXXFLAGS) $(IncludePCH) $(IncludePath) -MG -MP -MT$(IntermediateDirectory)/Server.tproj_win32main.cpp$(ObjectSuffix) -MF$(IntermediateDirectory)/Server.tproj_win32main.cpp$(DependSuffix) -MM Server.tproj/win32main.cpp

$(IntermediateDirectory)/Server.tproj_win32main.cpp$(PreprocessSuffix): Server.tproj/win32main.cpp
	$(CXX) $(CXXFLAGS) $(IncludePCH) $(IncludePath) $(PreprocessOnlySwitch) $(OutputSwitch) $(IntermediateDirectory)/Server.tproj_win32main.cpp$(PreprocessSuffix) Server.tproj/win32main.cpp

$(IntermediateDirectory)/CommonUtilitiesLib_OSCodeFragment.cpp$(ObjectSuffix): CommonUtilitiesLib/OSCodeFragment.cpp $(IntermediateDirectory)/CommonUtilitiesLib_OSCodeFragment.cpp$(DependSuffix)
	$(CXX) $(IncludePCH) $(SourceSwitch) "/home/fym/722/cpp-project/RTSPServer/CommonUtilitiesLib/OSCodeFragment.cpp" $(CXXFLAGS) $(ObjectSwitch)$(IntermediateDirectory)/CommonUtilitiesLib_OSCodeFragment.cpp$(ObjectSuffix) $(IncludePath)
$(IntermediateDirectory)/CommonUtilitiesLib_OSCodeFragment.cpp$(DependSuffix): CommonUtilitiesLib/OSCodeFragment.cpp
	@$(CXX) $(CXXFLAGS) $(IncludePCH) $(IncludePath) -MG -MP -MT$(IntermediateDirectory)/CommonUtilitiesLib_OSCodeFragment.cpp$(ObjectSuffix) -MF$(IntermediateDirectory)/CommonUtilitiesLib_OSCodeFragment.cpp$(DependSuffix) -MM CommonUtilitiesLib/OSCodeFragment.cpp

$(IntermediateDirectory)/CommonUtilitiesLib_OSCodeFragment.cpp$(PreprocessSuffix): CommonUtilitiesLib/OSCodeFragment.cpp
	$(CXX) $(CXXFLAGS) $(IncludePCH) $(IncludePath) $(PreprocessOnlySwitch) $(OutputSwitch) $(IntermediateDirectory)/CommonUtilitiesLib_OSCodeFragment.cpp$(PreprocessSuffix) CommonUtilitiesLib/OSCodeFragment.cpp

$(IntermediateDirectory)/APIModules_QTSSWebDebugModule_QTSSWebDebugModule.cpp$(ObjectSuffix): APIModules/QTSSWebDebugModule/QTSSWebDebugModule.cpp $(IntermediateDirectory)/APIModules_QTSSWebDebugModule_QTSSWebDebugModule.cpp$(DependSuffix)
	$(CXX) $(IncludePCH) $(SourceSwitch) "/home/fym/722/cpp-project/RTSPServer/APIModules/QTSSWebDebugModule/QTSSWebDebugModule.cpp" $(CXXFLAGS) $(ObjectSwitch)$(IntermediateDirectory)/APIModules_QTSSWebDebugModule_QTSSWebDebugModule.cpp$(ObjectSuffix) $(IncludePath)
$(IntermediateDirectory)/APIModules_QTSSWebDebugModule_QTSSWebDebugModule.cpp$(DependSuffix): APIModules/QTSSWebDebugModule/QTSSWebDebugModule.cpp
	@$(CXX) $(CXXFLAGS) $(IncludePCH) $(IncludePath) -MG -MP -MT$(IntermediateDirectory)/APIModules_QTSSWebDebugModule_QTSSWebDebugModule.cpp$(ObjectSuffix) -MF$(IntermediateDirectory)/APIModules_QTSSWebDebugModule_QTSSWebDebugModule.cpp$(DependSuffix) -MM APIModules/QTSSWebDebugModule/QTSSWebDebugModule.cpp

$(IntermediateDirectory)/APIModules_QTSSWebDebugModule_QTSSWebDebugModule.cpp$(PreprocessSuffix): APIModules/QTSSWebDebugModule/QTSSWebDebugModule.cpp
	$(CXX) $(CXXFLAGS) $(IncludePCH) $(IncludePath) $(PreprocessOnlySwitch) $(OutputSwitch) $(IntermediateDirectory)/APIModules_QTSSWebDebugModule_QTSSWebDebugModule.cpp$(PreprocessSuffix) APIModules/QTSSWebDebugModule/QTSSWebDebugModule.cpp

$(IntermediateDirectory)/CommonUtilitiesLib_UDPDemuxer.cpp$(ObjectSuffix): CommonUtilitiesLib/UDPDemuxer.cpp $(IntermediateDirectory)/CommonUtilitiesLib_UDPDemuxer.cpp$(DependSuffix)
	$(CXX) $(IncludePCH) $(SourceSwitch) "/home/fym/722/cpp-project/RTSPServer/CommonUtilitiesLib/UDPDemuxer.cpp" $(CXXFLAGS) $(ObjectSwitch)$(IntermediateDirectory)/CommonUtilitiesLib_UDPDemuxer.cpp$(ObjectSuffix) $(IncludePath)
$(IntermediateDirectory)/CommonUtilitiesLib_UDPDemuxer.cpp$(DependSuffix): CommonUtilitiesLib/UDPDemuxer.cpp
	@$(CXX) $(CXXFLAGS) $(IncludePCH) $(IncludePath) -MG -MP -MT$(IntermediateDirectory)/CommonUtilitiesLib_UDPDemuxer.cpp$(ObjectSuffix) -MF$(IntermediateDirectory)/CommonUtilitiesLib_UDPDemuxer.cpp$(DependSuffix) -MM CommonUtilitiesLib/UDPDemuxer.cpp

$(IntermediateDirectory)/CommonUtilitiesLib_UDPDemuxer.cpp$(PreprocessSuffix): CommonUtilitiesLib/UDPDemuxer.cpp
	$(CXX) $(CXXFLAGS) $(IncludePCH) $(IncludePath) $(PreprocessOnlySwitch) $(OutputSwitch) $(IntermediateDirectory)/CommonUtilitiesLib_UDPDemuxer.cpp$(PreprocessSuffix) CommonUtilitiesLib/UDPDemuxer.cpp

$(IntermediateDirectory)/APIModules_QTSSReflectorModule_SequenceNumberMap.cpp$(ObjectSuffix): APIModules/QTSSReflectorModule/SequenceNumberMap.cpp $(IntermediateDirectory)/APIModules_QTSSReflectorModule_SequenceNumberMap.cpp$(DependSuffix)
	$(CXX) $(IncludePCH) $(SourceSwitch) "/home/fym/722/cpp-project/RTSPServer/APIModules/QTSSReflectorModule/SequenceNumberMap.cpp" $(CXXFLAGS) $(ObjectSwitch)$(IntermediateDirectory)/APIModules_QTSSReflectorModule_SequenceNumberMap.cpp$(ObjectSuffix) $(IncludePath)
$(IntermediateDirectory)/APIModules_QTSSReflectorModule_SequenceNumberMap.cpp$(DependSuffix): APIModules/QTSSReflectorModule/SequenceNumberMap.cpp
	@$(CXX) $(CXXFLAGS) $(IncludePCH) $(IncludePath) -MG -MP -MT$(IntermediateDirectory)/APIModules_QTSSReflectorModule_SequenceNumberMap.cpp$(ObjectSuffix) -MF$(IntermediateDirectory)/APIModules_QTSSReflectorModule_SequenceNumberMap.cpp$(DependSuffix) -MM APIModules/QTSSReflectorModule/SequenceNumberMap.cpp

$(IntermediateDirectory)/APIModules_QTSSReflectorModule_SequenceNumberMap.cpp$(PreprocessSuffix): APIModules/QTSSReflectorModule/SequenceNumberMap.cpp
	$(CXX) $(CXXFLAGS) $(IncludePCH) $(IncludePath) $(PreprocessOnlySwitch) $(OutputSwitch) $(IntermediateDirectory)/APIModules_QTSSReflectorModule_SequenceNumberMap.cpp$(PreprocessSuffix) APIModules/QTSSReflectorModule/SequenceNumberMap.cpp

$(IntermediateDirectory)/CommonUtilitiesLib_getopt.c$(ObjectSuffix): CommonUtilitiesLib/getopt.c $(IntermediateDirectory)/CommonUtilitiesLib_getopt.c$(DependSuffix)
	$(CC) $(SourceSwitch) "/home/fym/722/cpp-project/RTSPServer/CommonUtilitiesLib/getopt.c" $(CFLAGS) $(ObjectSwitch)$(IntermediateDirectory)/CommonUtilitiesLib_getopt.c$(ObjectSuffix) $(IncludePath)
$(IntermediateDirectory)/CommonUtilitiesLib_getopt.c$(DependSuffix): CommonUtilitiesLib/getopt.c
	@$(CC) $(CFLAGS) $(IncludePath) -MG -MP -MT$(IntermediateDirectory)/CommonUtilitiesLib_getopt.c$(ObjectSuffix) -MF$(IntermediateDirectory)/CommonUtilitiesLib_getopt.c$(DependSuffix) -MM CommonUtilitiesLib/getopt.c

$(IntermediateDirectory)/CommonUtilitiesLib_getopt.c$(PreprocessSuffix): CommonUtilitiesLib/getopt.c
	$(CC) $(CFLAGS) $(IncludePath) $(PreprocessOnlySwitch) $(OutputSwitch) $(IntermediateDirectory)/CommonUtilitiesLib_getopt.c$(PreprocessSuffix) CommonUtilitiesLib/getopt.c

$(IntermediateDirectory)/CommonUtilitiesLib_OSMutex.cpp$(ObjectSuffix): CommonUtilitiesLib/OSMutex.cpp $(IntermediateDirectory)/CommonUtilitiesLib_OSMutex.cpp$(DependSuffix)
	$(CXX) $(IncludePCH) $(SourceSwitch) "/home/fym/722/cpp-project/RTSPServer/CommonUtilitiesLib/OSMutex.cpp" $(CXXFLAGS) $(ObjectSwitch)$(IntermediateDirectory)/CommonUtilitiesLib_OSMutex.cpp$(ObjectSuffix) $(IncludePath)
$(IntermediateDirectory)/CommonUtilitiesLib_OSMutex.cpp$(DependSuffix): CommonUtilitiesLib/OSMutex.cpp
	@$(CXX) $(CXXFLAGS) $(IncludePCH) $(IncludePath) -MG -MP -MT$(IntermediateDirectory)/CommonUtilitiesLib_OSMutex.cpp$(ObjectSuffix) -MF$(IntermediateDirectory)/CommonUtilitiesLib_OSMutex.cpp$(DependSuffix) -MM CommonUtilitiesLib/OSMutex.cpp

$(IntermediateDirectory)/CommonUtilitiesLib_OSMutex.cpp$(PreprocessSuffix): CommonUtilitiesLib/OSMutex.cpp
	$(CXX) $(CXXFLAGS) $(IncludePCH) $(IncludePath) $(PreprocessOnlySwitch) $(OutputSwitch) $(IntermediateDirectory)/CommonUtilitiesLib_OSMutex.cpp$(PreprocessSuffix) CommonUtilitiesLib/OSMutex.cpp

$(IntermediateDirectory)/CommonUtilitiesLib_SDPUtils.cpp$(ObjectSuffix): CommonUtilitiesLib/SDPUtils.cpp $(IntermediateDirectory)/CommonUtilitiesLib_SDPUtils.cpp$(DependSuffix)
	$(CXX) $(IncludePCH) $(SourceSwitch) "/home/fym/722/cpp-project/RTSPServer/CommonUtilitiesLib/SDPUtils.cpp" $(CXXFLAGS) $(ObjectSwitch)$(IntermediateDirectory)/CommonUtilitiesLib_SDPUtils.cpp$(ObjectSuffix) $(IncludePath)
$(IntermediateDirectory)/CommonUtilitiesLib_SDPUtils.cpp$(DependSuffix): CommonUtilitiesLib/SDPUtils.cpp
	@$(CXX) $(CXXFLAGS) $(IncludePCH) $(IncludePath) -MG -MP -MT$(IntermediateDirectory)/CommonUtilitiesLib_SDPUtils.cpp$(ObjectSuffix) -MF$(IntermediateDirectory)/CommonUtilitiesLib_SDPUtils.cpp$(DependSuffix) -MM CommonUtilitiesLib/SDPUtils.cpp

$(IntermediateDirectory)/CommonUtilitiesLib_SDPUtils.cpp$(PreprocessSuffix): CommonUtilitiesLib/SDPUtils.cpp
	$(CXX) $(CXXFLAGS) $(IncludePCH) $(IncludePath) $(PreprocessOnlySwitch) $(OutputSwitch) $(IntermediateDirectory)/CommonUtilitiesLib_SDPUtils.cpp$(PreprocessSuffix) CommonUtilitiesLib/SDPUtils.cpp

$(IntermediateDirectory)/Server.tproj_QTSSUserProfile.cpp$(ObjectSuffix): Server.tproj/QTSSUserProfile.cpp $(IntermediateDirectory)/Server.tproj_QTSSUserProfile.cpp$(DependSuffix)
	$(CXX) $(IncludePCH) $(SourceSwitch) "/home/fym/722/cpp-project/RTSPServer/Server.tproj/QTSSUserProfile.cpp" $(CXXFLAGS) $(ObjectSwitch)$(IntermediateDirectory)/Server.tproj_QTSSUserProfile.cpp$(ObjectSuffix) $(IncludePath)
$(IntermediateDirectory)/Server.tproj_QTSSUserProfile.cpp$(DependSuffix): Server.tproj/QTSSUserProfile.cpp
	@$(CXX) $(CXXFLAGS) $(IncludePCH) $(IncludePath) -MG -MP -MT$(IntermediateDirectory)/Server.tproj_QTSSUserProfile.cpp$(ObjectSuffix) -MF$(IntermediateDirectory)/Server.tproj_QTSSUserProfile.cpp$(DependSuffix) -MM Server.tproj/QTSSUserProfile.cpp

$(IntermediateDirectory)/Server.tproj_QTSSUserProfile.cpp$(PreprocessSuffix): Server.tproj/QTSSUserProfile.cpp
	$(CXX) $(CXXFLAGS) $(IncludePCH) $(IncludePath) $(PreprocessOnlySwitch) $(OutputSwitch) $(IntermediateDirectory)/Server.tproj_QTSSUserProfile.cpp$(PreprocessSuffix) Server.tproj/QTSSUserProfile.cpp

$(IntermediateDirectory)/Server.tproj_RunServer.cpp$(ObjectSuffix): Server.tproj/RunServer.cpp $(IntermediateDirectory)/Server.tproj_RunServer.cpp$(DependSuffix)
	$(CXX) $(IncludePCH) $(SourceSwitch) "/home/fym/722/cpp-project/RTSPServer/Server.tproj/RunServer.cpp" $(CXXFLAGS) $(ObjectSwitch)$(IntermediateDirectory)/Server.tproj_RunServer.cpp$(ObjectSuffix) $(IncludePath)
$(IntermediateDirectory)/Server.tproj_RunServer.cpp$(DependSuffix): Server.tproj/RunServer.cpp
	@$(CXX) $(CXXFLAGS) $(IncludePCH) $(IncludePath) -MG -MP -MT$(IntermediateDirectory)/Server.tproj_RunServer.cpp$(ObjectSuffix) -MF$(IntermediateDirectory)/Server.tproj_RunServer.cpp$(DependSuffix) -MM Server.tproj/RunServer.cpp

$(IntermediateDirectory)/Server.tproj_RunServer.cpp$(PreprocessSuffix): Server.tproj/RunServer.cpp
	$(CXX) $(CXXFLAGS) $(IncludePCH) $(IncludePath) $(PreprocessOnlySwitch) $(OutputSwitch) $(IntermediateDirectory)/Server.tproj_RunServer.cpp$(PreprocessSuffix) Server.tproj/RunServer.cpp

$(IntermediateDirectory)/CommonUtilitiesLib_DateTranslator.cpp$(ObjectSuffix): CommonUtilitiesLib/DateTranslator.cpp $(IntermediateDirectory)/CommonUtilitiesLib_DateTranslator.cpp$(DependSuffix)
	$(CXX) $(IncludePCH) $(SourceSwitch) "/home/fym/722/cpp-project/RTSPServer/CommonUtilitiesLib/DateTranslator.cpp" $(CXXFLAGS) $(ObjectSwitch)$(IntermediateDirectory)/CommonUtilitiesLib_DateTranslator.cpp$(ObjectSuffix) $(IncludePath)
$(IntermediateDirectory)/CommonUtilitiesLib_DateTranslator.cpp$(DependSuffix): CommonUtilitiesLib/DateTranslator.cpp
	@$(CXX) $(CXXFLAGS) $(IncludePCH) $(IncludePath) -MG -MP -MT$(IntermediateDirectory)/CommonUtilitiesLib_DateTranslator.cpp$(ObjectSuffix) -MF$(IntermediateDirectory)/CommonUtilitiesLib_DateTranslator.cpp$(DependSuffix) -MM CommonUtilitiesLib/DateTranslator.cpp

$(IntermediateDirectory)/CommonUtilitiesLib_DateTranslator.cpp$(PreprocessSuffix): CommonUtilitiesLib/DateTranslator.cpp
	$(CXX) $(CXXFLAGS) $(IncludePCH) $(IncludePath) $(PreprocessOnlySwitch) $(OutputSwitch) $(IntermediateDirectory)/CommonUtilitiesLib_DateTranslator.cpp$(PreprocessSuffix) CommonUtilitiesLib/DateTranslator.cpp

$(IntermediateDirectory)/APICommonCode_QTSSRollingLog.cpp$(ObjectSuffix): APICommonCode/QTSSRollingLog.cpp $(IntermediateDirectory)/APICommonCode_QTSSRollingLog.cpp$(DependSuffix)
	$(CXX) $(IncludePCH) $(SourceSwitch) "/home/fym/722/cpp-project/RTSPServer/APICommonCode/QTSSRollingLog.cpp" $(CXXFLAGS) $(ObjectSwitch)$(IntermediateDirectory)/APICommonCode_QTSSRollingLog.cpp$(ObjectSuffix) $(IncludePath)
$(IntermediateDirectory)/APICommonCode_QTSSRollingLog.cpp$(DependSuffix): APICommonCode/QTSSRollingLog.cpp
	@$(CXX) $(CXXFLAGS) $(IncludePCH) $(IncludePath) -MG -MP -MT$(IntermediateDirectory)/APICommonCode_QTSSRollingLog.cpp$(ObjectSuffix) -MF$(IntermediateDirectory)/APICommonCode_QTSSRollingLog.cpp$(DependSuffix) -MM APICommonCode/QTSSRollingLog.cpp

$(IntermediateDirectory)/APICommonCode_QTSSRollingLog.cpp$(PreprocessSuffix): APICommonCode/QTSSRollingLog.cpp
	$(CXX) $(CXXFLAGS) $(IncludePCH) $(IncludePath) $(PreprocessOnlySwitch) $(OutputSwitch) $(IntermediateDirectory)/APICommonCode_QTSSRollingLog.cpp$(PreprocessSuffix) APICommonCode/QTSSRollingLog.cpp

$(IntermediateDirectory)/CommonUtilitiesLib_md5digest.cpp$(ObjectSuffix): CommonUtilitiesLib/md5digest.cpp $(IntermediateDirectory)/CommonUtilitiesLib_md5digest.cpp$(DependSuffix)
	$(CXX) $(IncludePCH) $(SourceSwitch) "/home/fym/722/cpp-project/RTSPServer/CommonUtilitiesLib/md5digest.cpp" $(CXXFLAGS) $(ObjectSwitch)$(IntermediateDirectory)/CommonUtilitiesLib_md5digest.cpp$(ObjectSuffix) $(IncludePath)
$(IntermediateDirectory)/CommonUtilitiesLib_md5digest.cpp$(DependSuffix): CommonUtilitiesLib/md5digest.cpp
	@$(CXX) $(CXXFLAGS) $(IncludePCH) $(IncludePath) -MG -MP -MT$(IntermediateDirectory)/CommonUtilitiesLib_md5digest.cpp$(ObjectSuffix) -MF$(IntermediateDirectory)/CommonUtilitiesLib_md5digest.cpp$(DependSuffix) -MM CommonUtilitiesLib/md5digest.cpp

$(IntermediateDirectory)/CommonUtilitiesLib_md5digest.cpp$(PreprocessSuffix): CommonUtilitiesLib/md5digest.cpp
	$(CXX) $(CXXFLAGS) $(IncludePCH) $(IncludePath) $(PreprocessOnlySwitch) $(OutputSwitch) $(IntermediateDirectory)/CommonUtilitiesLib_md5digest.cpp$(PreprocessSuffix) CommonUtilitiesLib/md5digest.cpp

$(IntermediateDirectory)/CommonUtilitiesLib_GetWord.c$(ObjectSuffix): CommonUtilitiesLib/GetWord.c $(IntermediateDirectory)/CommonUtilitiesLib_GetWord.c$(DependSuffix)
	$(CC) $(SourceSwitch) "/home/fym/722/cpp-project/RTSPServer/CommonUtilitiesLib/GetWord.c" $(CFLAGS) $(ObjectSwitch)$(IntermediateDirectory)/CommonUtilitiesLib_GetWord.c$(ObjectSuffix) $(IncludePath)
$(IntermediateDirectory)/CommonUtilitiesLib_GetWord.c$(DependSuffix): CommonUtilitiesLib/GetWord.c
	@$(CC) $(CFLAGS) $(IncludePath) -MG -MP -MT$(IntermediateDirectory)/CommonUtilitiesLib_GetWord.c$(ObjectSuffix) -MF$(IntermediateDirectory)/CommonUtilitiesLib_GetWord.c$(DependSuffix) -MM CommonUtilitiesLib/GetWord.c

$(IntermediateDirectory)/CommonUtilitiesLib_GetWord.c$(PreprocessSuffix): CommonUtilitiesLib/GetWord.c
	$(CC) $(CFLAGS) $(IncludePath) $(PreprocessOnlySwitch) $(OutputSwitch) $(IntermediateDirectory)/CommonUtilitiesLib_GetWord.c$(PreprocessSuffix) CommonUtilitiesLib/GetWord.c

$(IntermediateDirectory)/Server.tproj_QTSSDictionary.cpp$(ObjectSuffix): Server.tproj/QTSSDictionary.cpp $(IntermediateDirectory)/Server.tproj_QTSSDictionary.cpp$(DependSuffix)
	$(CXX) $(IncludePCH) $(SourceSwitch) "/home/fym/722/cpp-project/RTSPServer/Server.tproj/QTSSDictionary.cpp" $(CXXFLAGS) $(ObjectSwitch)$(IntermediateDirectory)/Server.tproj_QTSSDictionary.cpp$(ObjectSuffix) $(IncludePath)
$(IntermediateDirectory)/Server.tproj_QTSSDictionary.cpp$(DependSuffix): Server.tproj/QTSSDictionary.cpp
	@$(CXX) $(CXXFLAGS) $(IncludePCH) $(IncludePath) -MG -MP -MT$(IntermediateDirectory)/Server.tproj_QTSSDictionary.cpp$(ObjectSuffix) -MF$(IntermediateDirectory)/Server.tproj_QTSSDictionary.cpp$(DependSuffix) -MM Server.tproj/QTSSDictionary.cpp

$(IntermediateDirectory)/Server.tproj_QTSSDictionary.cpp$(PreprocessSuffix): Server.tproj/QTSSDictionary.cpp
	$(CXX) $(CXXFLAGS) $(IncludePCH) $(IncludePath) $(PreprocessOnlySwitch) $(OutputSwitch) $(IntermediateDirectory)/Server.tproj_QTSSDictionary.cpp$(PreprocessSuffix) Server.tproj/QTSSDictionary.cpp

$(IntermediateDirectory)/CommonUtilitiesLib_StringFormatter.cpp$(ObjectSuffix): CommonUtilitiesLib/StringFormatter.cpp $(IntermediateDirectory)/CommonUtilitiesLib_StringFormatter.cpp$(DependSuffix)
	$(CXX) $(IncludePCH) $(SourceSwitch) "/home/fym/722/cpp-project/RTSPServer/CommonUtilitiesLib/StringFormatter.cpp" $(CXXFLAGS) $(ObjectSwitch)$(IntermediateDirectory)/CommonUtilitiesLib_StringFormatter.cpp$(ObjectSuffix) $(IncludePath)
$(IntermediateDirectory)/CommonUtilitiesLib_StringFormatter.cpp$(DependSuffix): CommonUtilitiesLib/StringFormatter.cpp
	@$(CXX) $(CXXFLAGS) $(IncludePCH) $(IncludePath) -MG -MP -MT$(IntermediateDirectory)/CommonUtilitiesLib_StringFormatter.cpp$(ObjectSuffix) -MF$(IntermediateDirectory)/CommonUtilitiesLib_StringFormatter.cpp$(DependSuffix) -MM CommonUtilitiesLib/StringFormatter.cpp

$(IntermediateDirectory)/CommonUtilitiesLib_StringFormatter.cpp$(PreprocessSuffix): CommonUtilitiesLib/StringFormatter.cpp
	$(CXX) $(CXXFLAGS) $(IncludePCH) $(IncludePath) $(PreprocessOnlySwitch) $(OutputSwitch) $(IntermediateDirectory)/CommonUtilitiesLib_StringFormatter.cpp$(PreprocessSuffix) CommonUtilitiesLib/StringFormatter.cpp

$(IntermediateDirectory)/Server.tproj_RTPSession.cpp$(ObjectSuffix): Server.tproj/RTPSession.cpp $(IntermediateDirectory)/Server.tproj_RTPSession.cpp$(DependSuffix)
	$(CXX) $(IncludePCH) $(SourceSwitch) "/home/fym/722/cpp-project/RTSPServer/Server.tproj/RTPSession.cpp" $(CXXFLAGS) $(ObjectSwitch)$(IntermediateDirectory)/Server.tproj_RTPSession.cpp$(ObjectSuffix) $(IncludePath)
$(IntermediateDirectory)/Server.tproj_RTPSession.cpp$(DependSuffix): Server.tproj/RTPSession.cpp
	@$(CXX) $(CXXFLAGS) $(IncludePCH) $(IncludePath) -MG -MP -MT$(IntermediateDirectory)/Server.tproj_RTPSession.cpp$(ObjectSuffix) -MF$(IntermediateDirectory)/Server.tproj_RTPSession.cpp$(DependSuffix) -MM Server.tproj/RTPSession.cpp

$(IntermediateDirectory)/Server.tproj_RTPSession.cpp$(PreprocessSuffix): Server.tproj/RTPSession.cpp
	$(CXX) $(CXXFLAGS) $(IncludePCH) $(IncludePath) $(PreprocessOnlySwitch) $(OutputSwitch) $(IntermediateDirectory)/Server.tproj_RTPSession.cpp$(PreprocessSuffix) Server.tproj/RTPSession.cpp

$(IntermediateDirectory)/CommonUtilitiesLib_StringParser.cpp$(ObjectSuffix): CommonUtilitiesLib/StringParser.cpp $(IntermediateDirectory)/CommonUtilitiesLib_StringParser.cpp$(DependSuffix)
	$(CXX) $(IncludePCH) $(SourceSwitch) "/home/fym/722/cpp-project/RTSPServer/CommonUtilitiesLib/StringParser.cpp" $(CXXFLAGS) $(ObjectSwitch)$(IntermediateDirectory)/CommonUtilitiesLib_StringParser.cpp$(ObjectSuffix) $(IncludePath)
$(IntermediateDirectory)/CommonUtilitiesLib_StringParser.cpp$(DependSuffix): CommonUtilitiesLib/StringParser.cpp
	@$(CXX) $(CXXFLAGS) $(IncludePCH) $(IncludePath) -MG -MP -MT$(IntermediateDirectory)/CommonUtilitiesLib_StringParser.cpp$(ObjectSuffix) -MF$(IntermediateDirectory)/CommonUtilitiesLib_StringParser.cpp$(DependSuffix) -MM CommonUtilitiesLib/StringParser.cpp

$(IntermediateDirectory)/CommonUtilitiesLib_StringParser.cpp$(PreprocessSuffix): CommonUtilitiesLib/StringParser.cpp
	$(CXX) $(CXXFLAGS) $(IncludePCH) $(IncludePath) $(PreprocessOnlySwitch) $(OutputSwitch) $(IntermediateDirectory)/CommonUtilitiesLib_StringParser.cpp$(PreprocessSuffix) CommonUtilitiesLib/StringParser.cpp

$(IntermediateDirectory)/CommonUtilitiesLib_Task.cpp$(ObjectSuffix): CommonUtilitiesLib/Task.cpp $(IntermediateDirectory)/CommonUtilitiesLib_Task.cpp$(DependSuffix)
	$(CXX) $(IncludePCH) $(SourceSwitch) "/home/fym/722/cpp-project/RTSPServer/CommonUtilitiesLib/Task.cpp" $(CXXFLAGS) $(ObjectSwitch)$(IntermediateDirectory)/CommonUtilitiesLib_Task.cpp$(ObjectSuffix) $(IncludePath)
$(IntermediateDirectory)/CommonUtilitiesLib_Task.cpp$(DependSuffix): CommonUtilitiesLib/Task.cpp
	@$(CXX) $(CXXFLAGS) $(IncludePCH) $(IncludePath) -MG -MP -MT$(IntermediateDirectory)/CommonUtilitiesLib_Task.cpp$(ObjectSuffix) -MF$(IntermediateDirectory)/CommonUtilitiesLib_Task.cpp$(DependSuffix) -MM CommonUtilitiesLib/Task.cpp

$(IntermediateDirectory)/CommonUtilitiesLib_Task.cpp$(PreprocessSuffix): CommonUtilitiesLib/Task.cpp
	$(CXX) $(CXXFLAGS) $(IncludePCH) $(IncludePath) $(PreprocessOnlySwitch) $(OutputSwitch) $(IntermediateDirectory)/CommonUtilitiesLib_Task.cpp$(PreprocessSuffix) CommonUtilitiesLib/Task.cpp

$(IntermediateDirectory)/CommonUtilitiesLib_QueryParamList.cpp$(ObjectSuffix): CommonUtilitiesLib/QueryParamList.cpp $(IntermediateDirectory)/CommonUtilitiesLib_QueryParamList.cpp$(DependSuffix)
	$(CXX) $(IncludePCH) $(SourceSwitch) "/home/fym/722/cpp-project/RTSPServer/CommonUtilitiesLib/QueryParamList.cpp" $(CXXFLAGS) $(ObjectSwitch)$(IntermediateDirectory)/CommonUtilitiesLib_QueryParamList.cpp$(ObjectSuffix) $(IncludePath)
$(IntermediateDirectory)/CommonUtilitiesLib_QueryParamList.cpp$(DependSuffix): CommonUtilitiesLib/QueryParamList.cpp
	@$(CXX) $(CXXFLAGS) $(IncludePCH) $(IncludePath) -MG -MP -MT$(IntermediateDirectory)/CommonUtilitiesLib_QueryParamList.cpp$(ObjectSuffix) -MF$(IntermediateDirectory)/CommonUtilitiesLib_QueryParamList.cpp$(DependSuffix) -MM CommonUtilitiesLib/QueryParamList.cpp

$(IntermediateDirectory)/CommonUtilitiesLib_QueryParamList.cpp$(PreprocessSuffix): CommonUtilitiesLib/QueryParamList.cpp
	$(CXX) $(CXXFLAGS) $(IncludePCH) $(IncludePath) $(PreprocessOnlySwitch) $(OutputSwitch) $(IntermediateDirectory)/CommonUtilitiesLib_QueryParamList.cpp$(PreprocessSuffix) CommonUtilitiesLib/QueryParamList.cpp

$(IntermediateDirectory)/CommonUtilitiesLib_OSCond.cpp$(ObjectSuffix): CommonUtilitiesLib/OSCond.cpp $(IntermediateDirectory)/CommonUtilitiesLib_OSCond.cpp$(DependSuffix)
	$(CXX) $(IncludePCH) $(SourceSwitch) "/home/fym/722/cpp-project/RTSPServer/CommonUtilitiesLib/OSCond.cpp" $(CXXFLAGS) $(ObjectSwitch)$(IntermediateDirectory)/CommonUtilitiesLib_OSCond.cpp$(ObjectSuffix) $(IncludePath)
$(IntermediateDirectory)/CommonUtilitiesLib_OSCond.cpp$(DependSuffix): CommonUtilitiesLib/OSCond.cpp
	@$(CXX) $(CXXFLAGS) $(IncludePCH) $(IncludePath) -MG -MP -MT$(IntermediateDirectory)/CommonUtilitiesLib_OSCond.cpp$(ObjectSuffix) -MF$(IntermediateDirectory)/CommonUtilitiesLib_OSCond.cpp$(DependSuffix) -MM CommonUtilitiesLib/OSCond.cpp

$(IntermediateDirectory)/CommonUtilitiesLib_OSCond.cpp$(PreprocessSuffix): CommonUtilitiesLib/OSCond.cpp
	$(CXX) $(CXXFLAGS) $(IncludePCH) $(IncludePath) $(PreprocessOnlySwitch) $(OutputSwitch) $(IntermediateDirectory)/CommonUtilitiesLib_OSCond.cpp$(PreprocessSuffix) CommonUtilitiesLib/OSCond.cpp

$(IntermediateDirectory)/CommonUtilitiesLib_OS.cpp$(ObjectSuffix): CommonUtilitiesLib/OS.cpp $(IntermediateDirectory)/CommonUtilitiesLib_OS.cpp$(DependSuffix)
	$(CXX) $(IncludePCH) $(SourceSwitch) "/home/fym/722/cpp-project/RTSPServer/CommonUtilitiesLib/OS.cpp" $(CXXFLAGS) $(ObjectSwitch)$(IntermediateDirectory)/CommonUtilitiesLib_OS.cpp$(ObjectSuffix) $(IncludePath)
$(IntermediateDirectory)/CommonUtilitiesLib_OS.cpp$(DependSuffix): CommonUtilitiesLib/OS.cpp
	@$(CXX) $(CXXFLAGS) $(IncludePCH) $(IncludePath) -MG -MP -MT$(IntermediateDirectory)/CommonUtilitiesLib_OS.cpp$(ObjectSuffix) -MF$(IntermediateDirectory)/CommonUtilitiesLib_OS.cpp$(DependSuffix) -MM CommonUtilitiesLib/OS.cpp

$(IntermediateDirectory)/CommonUtilitiesLib_OS.cpp$(PreprocessSuffix): CommonUtilitiesLib/OS.cpp
	$(CXX) $(CXXFLAGS) $(IncludePCH) $(IncludePath) $(PreprocessOnlySwitch) $(OutputSwitch) $(IntermediateDirectory)/CommonUtilitiesLib_OS.cpp$(PreprocessSuffix) CommonUtilitiesLib/OS.cpp

$(IntermediateDirectory)/APIModules_QTSSReflectorModule_RelaySDPSourceInfo.cpp$(ObjectSuffix): APIModules/QTSSReflectorModule/RelaySDPSourceInfo.cpp $(IntermediateDirectory)/APIModules_QTSSReflectorModule_RelaySDPSourceInfo.cpp$(DependSuffix)
	$(CXX) $(IncludePCH) $(SourceSwitch) "/home/fym/722/cpp-project/RTSPServer/APIModules/QTSSReflectorModule/RelaySDPSourceInfo.cpp" $(CXXFLAGS) $(ObjectSwitch)$(IntermediateDirectory)/APIModules_QTSSReflectorModule_RelaySDPSourceInfo.cpp$(ObjectSuffix) $(IncludePath)
$(IntermediateDirectory)/APIModules_QTSSReflectorModule_RelaySDPSourceInfo.cpp$(DependSuffix): APIModules/QTSSReflectorModule/RelaySDPSourceInfo.cpp
	@$(CXX) $(CXXFLAGS) $(IncludePCH) $(IncludePath) -MG -MP -MT$(IntermediateDirectory)/APIModules_QTSSReflectorModule_RelaySDPSourceInfo.cpp$(ObjectSuffix) -MF$(IntermediateDirectory)/APIModules_QTSSReflectorModule_RelaySDPSourceInfo.cpp$(DependSuffix) -MM APIModules/QTSSReflectorModule/RelaySDPSourceInfo.cpp

$(IntermediateDirectory)/APIModules_QTSSReflectorModule_RelaySDPSourceInfo.cpp$(PreprocessSuffix): APIModules/QTSSReflectorModule/RelaySDPSourceInfo.cpp
	$(CXX) $(CXXFLAGS) $(IncludePCH) $(IncludePath) $(PreprocessOnlySwitch) $(OutputSwitch) $(IntermediateDirectory)/APIModules_QTSSReflectorModule_RelaySDPSourceInfo.cpp$(PreprocessSuffix) APIModules/QTSSReflectorModule/RelaySDPSourceInfo.cpp

$(IntermediateDirectory)/CommonUtilitiesLib_UDPSocket.cpp$(ObjectSuffix): CommonUtilitiesLib/UDPSocket.cpp $(IntermediateDirectory)/CommonUtilitiesLib_UDPSocket.cpp$(DependSuffix)
	$(CXX) $(IncludePCH) $(SourceSwitch) "/home/fym/722/cpp-project/RTSPServer/CommonUtilitiesLib/UDPSocket.cpp" $(CXXFLAGS) $(ObjectSwitch)$(IntermediateDirectory)/CommonUtilitiesLib_UDPSocket.cpp$(ObjectSuffix) $(IncludePath)
$(IntermediateDirectory)/CommonUtilitiesLib_UDPSocket.cpp$(DependSuffix): CommonUtilitiesLib/UDPSocket.cpp
	@$(CXX) $(CXXFLAGS) $(IncludePCH) $(IncludePath) -MG -MP -MT$(IntermediateDirectory)/CommonUtilitiesLib_UDPSocket.cpp$(ObjectSuffix) -MF$(IntermediateDirectory)/CommonUtilitiesLib_UDPSocket.cpp$(DependSuffix) -MM CommonUtilitiesLib/UDPSocket.cpp

$(IntermediateDirectory)/CommonUtilitiesLib_UDPSocket.cpp$(PreprocessSuffix): CommonUtilitiesLib/UDPSocket.cpp
	$(CXX) $(CXXFLAGS) $(IncludePCH) $(IncludePath) $(PreprocessOnlySwitch) $(OutputSwitch) $(IntermediateDirectory)/CommonUtilitiesLib_UDPSocket.cpp$(PreprocessSuffix) CommonUtilitiesLib/UDPSocket.cpp

$(IntermediateDirectory)/APIModules_QTSSPosixFileSysModule_QTSSPosixFileSysModule.cpp$(ObjectSuffix): APIModules/QTSSPosixFileSysModule/QTSSPosixFileSysModule.cpp $(IntermediateDirectory)/APIModules_QTSSPosixFileSysModule_QTSSPosixFileSysModule.cpp$(DependSuffix)
	$(CXX) $(IncludePCH) $(SourceSwitch) "/home/fym/722/cpp-project/RTSPServer/APIModules/QTSSPosixFileSysModule/QTSSPosixFileSysModule.cpp" $(CXXFLAGS) $(ObjectSwitch)$(IntermediateDirectory)/APIModules_QTSSPosixFileSysModule_QTSSPosixFileSysModule.cpp$(ObjectSuffix) $(IncludePath)
$(IntermediateDirectory)/APIModules_QTSSPosixFileSysModule_QTSSPosixFileSysModule.cpp$(DependSuffix): APIModules/QTSSPosixFileSysModule/QTSSPosixFileSysModule.cpp
	@$(CXX) $(CXXFLAGS) $(IncludePCH) $(IncludePath) -MG -MP -MT$(IntermediateDirectory)/APIModules_QTSSPosixFileSysModule_QTSSPosixFileSysModule.cpp$(ObjectSuffix) -MF$(IntermediateDirectory)/APIModules_QTSSPosixFileSysModule_QTSSPosixFileSysModule.cpp$(DependSuffix) -MM APIModules/QTSSPosixFileSysModule/QTSSPosixFileSysModule.cpp

$(IntermediateDirectory)/APIModules_QTSSPosixFileSysModule_QTSSPosixFileSysModule.cpp$(PreprocessSuffix): APIModules/QTSSPosixFileSysModule/QTSSPosixFileSysModule.cpp
	$(CXX) $(CXXFLAGS) $(IncludePCH) $(IncludePath) $(PreprocessOnlySwitch) $(OutputSwitch) $(IntermediateDirectory)/APIModules_QTSSPosixFileSysModule_QTSSPosixFileSysModule.cpp$(PreprocessSuffix) APIModules/QTSSPosixFileSysModule/QTSSPosixFileSysModule.cpp

$(IntermediateDirectory)/HTTPUtilitiesLib_HTTPProtocol.cpp$(ObjectSuffix): HTTPUtilitiesLib/HTTPProtocol.cpp $(IntermediateDirectory)/HTTPUtilitiesLib_HTTPProtocol.cpp$(DependSuffix)
	$(CXX) $(IncludePCH) $(SourceSwitch) "/home/fym/722/cpp-project/RTSPServer/HTTPUtilitiesLib/HTTPProtocol.cpp" $(CXXFLAGS) $(ObjectSwitch)$(IntermediateDirectory)/HTTPUtilitiesLib_HTTPProtocol.cpp$(ObjectSuffix) $(IncludePath)
$(IntermediateDirectory)/HTTPUtilitiesLib_HTTPProtocol.cpp$(DependSuffix): HTTPUtilitiesLib/HTTPProtocol.cpp
	@$(CXX) $(CXXFLAGS) $(IncludePCH) $(IncludePath) -MG -MP -MT$(IntermediateDirectory)/HTTPUtilitiesLib_HTTPProtocol.cpp$(ObjectSuffix) -MF$(IntermediateDirectory)/HTTPUtilitiesLib_HTTPProtocol.cpp$(DependSuffix) -MM HTTPUtilitiesLib/HTTPProtocol.cpp

$(IntermediateDirectory)/HTTPUtilitiesLib_HTTPProtocol.cpp$(PreprocessSuffix): HTTPUtilitiesLib/HTTPProtocol.cpp
	$(CXX) $(CXXFLAGS) $(IncludePCH) $(IncludePath) $(PreprocessOnlySwitch) $(OutputSwitch) $(IntermediateDirectory)/HTTPUtilitiesLib_HTTPProtocol.cpp$(PreprocessSuffix) HTTPUtilitiesLib/HTTPProtocol.cpp

$(IntermediateDirectory)/CommonUtilitiesLib_OSThread.cpp$(ObjectSuffix): CommonUtilitiesLib/OSThread.cpp $(IntermediateDirectory)/CommonUtilitiesLib_OSThread.cpp$(DependSuffix)
	$(CXX) $(IncludePCH) $(SourceSwitch) "/home/fym/722/cpp-project/RTSPServer/CommonUtilitiesLib/OSThread.cpp" $(CXXFLAGS) $(ObjectSwitch)$(IntermediateDirectory)/CommonUtilitiesLib_OSThread.cpp$(ObjectSuffix) $(IncludePath)
$(IntermediateDirectory)/CommonUtilitiesLib_OSThread.cpp$(DependSuffix): CommonUtilitiesLib/OSThread.cpp
	@$(CXX) $(CXXFLAGS) $(IncludePCH) $(IncludePath) -MG -MP -MT$(IntermediateDirectory)/CommonUtilitiesLib_OSThread.cpp$(ObjectSuffix) -MF$(IntermediateDirectory)/CommonUtilitiesLib_OSThread.cpp$(DependSuffix) -MM CommonUtilitiesLib/OSThread.cpp

$(IntermediateDirectory)/CommonUtilitiesLib_OSThread.cpp$(PreprocessSuffix): CommonUtilitiesLib/OSThread.cpp
	$(CXX) $(CXXFLAGS) $(IncludePCH) $(IncludePath) $(PreprocessOnlySwitch) $(OutputSwitch) $(IntermediateDirectory)/CommonUtilitiesLib_OSThread.cpp$(PreprocessSuffix) CommonUtilitiesLib/OSThread.cpp

$(IntermediateDirectory)/HTTPUtilitiesLib_HTTPRequest.cpp$(ObjectSuffix): HTTPUtilitiesLib/HTTPRequest.cpp $(IntermediateDirectory)/HTTPUtilitiesLib_HTTPRequest.cpp$(DependSuffix)
	$(CXX) $(IncludePCH) $(SourceSwitch) "/home/fym/722/cpp-project/RTSPServer/HTTPUtilitiesLib/HTTPRequest.cpp" $(CXXFLAGS) $(ObjectSwitch)$(IntermediateDirectory)/HTTPUtilitiesLib_HTTPRequest.cpp$(ObjectSuffix) $(IncludePath)
$(IntermediateDirectory)/HTTPUtilitiesLib_HTTPRequest.cpp$(DependSuffix): HTTPUtilitiesLib/HTTPRequest.cpp
	@$(CXX) $(CXXFLAGS) $(IncludePCH) $(IncludePath) -MG -MP -MT$(IntermediateDirectory)/HTTPUtilitiesLib_HTTPRequest.cpp$(ObjectSuffix) -MF$(IntermediateDirectory)/HTTPUtilitiesLib_HTTPRequest.cpp$(DependSuffix) -MM HTTPUtilitiesLib/HTTPRequest.cpp

$(IntermediateDirectory)/HTTPUtilitiesLib_HTTPRequest.cpp$(PreprocessSuffix): HTTPUtilitiesLib/HTTPRequest.cpp
	$(CXX) $(CXXFLAGS) $(IncludePCH) $(IncludePath) $(PreprocessOnlySwitch) $(OutputSwitch) $(IntermediateDirectory)/HTTPUtilitiesLib_HTTPRequest.cpp$(PreprocessSuffix) HTTPUtilitiesLib/HTTPRequest.cpp

$(IntermediateDirectory)/Server.tproj_QTSSCallbacks.cpp$(ObjectSuffix): Server.tproj/QTSSCallbacks.cpp $(IntermediateDirectory)/Server.tproj_QTSSCallbacks.cpp$(DependSuffix)
	$(CXX) $(IncludePCH) $(SourceSwitch) "/home/fym/722/cpp-project/RTSPServer/Server.tproj/QTSSCallbacks.cpp" $(CXXFLAGS) $(ObjectSwitch)$(IntermediateDirectory)/Server.tproj_QTSSCallbacks.cpp$(ObjectSuffix) $(IncludePath)
$(IntermediateDirectory)/Server.tproj_QTSSCallbacks.cpp$(DependSuffix): Server.tproj/QTSSCallbacks.cpp
	@$(CXX) $(CXXFLAGS) $(IncludePCH) $(IncludePath) -MG -MP -MT$(IntermediateDirectory)/Server.tproj_QTSSCallbacks.cpp$(ObjectSuffix) -MF$(IntermediateDirectory)/Server.tproj_QTSSCallbacks.cpp$(DependSuffix) -MM Server.tproj/QTSSCallbacks.cpp

$(IntermediateDirectory)/Server.tproj_QTSSCallbacks.cpp$(PreprocessSuffix): Server.tproj/QTSSCallbacks.cpp
	$(CXX) $(CXXFLAGS) $(IncludePCH) $(IncludePath) $(PreprocessOnlySwitch) $(OutputSwitch) $(IntermediateDirectory)/Server.tproj_QTSSCallbacks.cpp$(PreprocessSuffix) Server.tproj/QTSSCallbacks.cpp

$(IntermediateDirectory)/Server.tproj_RTPBandwidthTracker.cpp$(ObjectSuffix): Server.tproj/RTPBandwidthTracker.cpp $(IntermediateDirectory)/Server.tproj_RTPBandwidthTracker.cpp$(DependSuffix)
	$(CXX) $(IncludePCH) $(SourceSwitch) "/home/fym/722/cpp-project/RTSPServer/Server.tproj/RTPBandwidthTracker.cpp" $(CXXFLAGS) $(ObjectSwitch)$(IntermediateDirectory)/Server.tproj_RTPBandwidthTracker.cpp$(ObjectSuffix) $(IncludePath)
$(IntermediateDirectory)/Server.tproj_RTPBandwidthTracker.cpp$(DependSuffix): Server.tproj/RTPBandwidthTracker.cpp
	@$(CXX) $(CXXFLAGS) $(IncludePCH) $(IncludePath) -MG -MP -MT$(IntermediateDirectory)/Server.tproj_RTPBandwidthTracker.cpp$(ObjectSuffix) -MF$(IntermediateDirectory)/Server.tproj_RTPBandwidthTracker.cpp$(DependSuffix) -MM Server.tproj/RTPBandwidthTracker.cpp

$(IntermediateDirectory)/Server.tproj_RTPBandwidthTracker.cpp$(PreprocessSuffix): Server.tproj/RTPBandwidthTracker.cpp
	$(CXX) $(CXXFLAGS) $(IncludePCH) $(IncludePath) $(PreprocessOnlySwitch) $(OutputSwitch) $(IntermediateDirectory)/Server.tproj_RTPBandwidthTracker.cpp$(PreprocessSuffix) Server.tproj/RTPBandwidthTracker.cpp

$(IntermediateDirectory)/Server.tproj_RTPStream.cpp$(ObjectSuffix): Server.tproj/RTPStream.cpp $(IntermediateDirectory)/Server.tproj_RTPStream.cpp$(DependSuffix)
	$(CXX) $(IncludePCH) $(SourceSwitch) "/home/fym/722/cpp-project/RTSPServer/Server.tproj/RTPStream.cpp" $(CXXFLAGS) $(ObjectSwitch)$(IntermediateDirectory)/Server.tproj_RTPStream.cpp$(ObjectSuffix) $(IncludePath)
$(IntermediateDirectory)/Server.tproj_RTPStream.cpp$(DependSuffix): Server.tproj/RTPStream.cpp
	@$(CXX) $(CXXFLAGS) $(IncludePCH) $(IncludePath) -MG -MP -MT$(IntermediateDirectory)/Server.tproj_RTPStream.cpp$(ObjectSuffix) -MF$(IntermediateDirectory)/Server.tproj_RTPStream.cpp$(DependSuffix) -MM Server.tproj/RTPStream.cpp

$(IntermediateDirectory)/Server.tproj_RTPStream.cpp$(PreprocessSuffix): Server.tproj/RTPStream.cpp
	$(CXX) $(CXXFLAGS) $(IncludePCH) $(IncludePath) $(PreprocessOnlySwitch) $(OutputSwitch) $(IntermediateDirectory)/Server.tproj_RTPStream.cpp$(PreprocessSuffix) Server.tproj/RTPStream.cpp

$(IntermediateDirectory)/OSMemoryLib_OSMemory.cpp$(ObjectSuffix): OSMemoryLib/OSMemory.cpp $(IntermediateDirectory)/OSMemoryLib_OSMemory.cpp$(DependSuffix)
	$(CXX) $(IncludePCH) $(SourceSwitch) "/home/fym/722/cpp-project/RTSPServer/OSMemoryLib/OSMemory.cpp" $(CXXFLAGS) $(ObjectSwitch)$(IntermediateDirectory)/OSMemoryLib_OSMemory.cpp$(ObjectSuffix) $(IncludePath)
$(IntermediateDirectory)/OSMemoryLib_OSMemory.cpp$(DependSuffix): OSMemoryLib/OSMemory.cpp
	@$(CXX) $(CXXFLAGS) $(IncludePCH) $(IncludePath) -MG -MP -MT$(IntermediateDirectory)/OSMemoryLib_OSMemory.cpp$(ObjectSuffix) -MF$(IntermediateDirectory)/OSMemoryLib_OSMemory.cpp$(DependSuffix) -MM OSMemoryLib/OSMemory.cpp

$(IntermediateDirectory)/OSMemoryLib_OSMemory.cpp$(PreprocessSuffix): OSMemoryLib/OSMemory.cpp
	$(CXX) $(CXXFLAGS) $(IncludePCH) $(IncludePath) $(PreprocessOnlySwitch) $(OutputSwitch) $(IntermediateDirectory)/OSMemoryLib_OSMemory.cpp$(PreprocessSuffix) OSMemoryLib/OSMemory.cpp

$(IntermediateDirectory)/PrefsSourceLib_XMLPrefsParser.cpp$(ObjectSuffix): PrefsSourceLib/XMLPrefsParser.cpp $(IntermediateDirectory)/PrefsSourceLib_XMLPrefsParser.cpp$(DependSuffix)
	$(CXX) $(IncludePCH) $(SourceSwitch) "/home/fym/722/cpp-project/RTSPServer/PrefsSourceLib/XMLPrefsParser.cpp" $(CXXFLAGS) $(ObjectSwitch)$(IntermediateDirectory)/PrefsSourceLib_XMLPrefsParser.cpp$(ObjectSuffix) $(IncludePath)
$(IntermediateDirectory)/PrefsSourceLib_XMLPrefsParser.cpp$(DependSuffix): PrefsSourceLib/XMLPrefsParser.cpp
	@$(CXX) $(CXXFLAGS) $(IncludePCH) $(IncludePath) -MG -MP -MT$(IntermediateDirectory)/PrefsSourceLib_XMLPrefsParser.cpp$(ObjectSuffix) -MF$(IntermediateDirectory)/PrefsSourceLib_XMLPrefsParser.cpp$(DependSuffix) -MM PrefsSourceLib/XMLPrefsParser.cpp

$(IntermediateDirectory)/PrefsSourceLib_XMLPrefsParser.cpp$(PreprocessSuffix): PrefsSourceLib/XMLPrefsParser.cpp
	$(CXX) $(CXXFLAGS) $(IncludePCH) $(IncludePath) $(PreprocessOnlySwitch) $(OutputSwitch) $(IntermediateDirectory)/PrefsSourceLib_XMLPrefsParser.cpp$(PreprocessSuffix) PrefsSourceLib/XMLPrefsParser.cpp

$(IntermediateDirectory)/PrefsSourceLib_XMLParser.cpp$(ObjectSuffix): PrefsSourceLib/XMLParser.cpp $(IntermediateDirectory)/PrefsSourceLib_XMLParser.cpp$(DependSuffix)
	$(CXX) $(IncludePCH) $(SourceSwitch) "/home/fym/722/cpp-project/RTSPServer/PrefsSourceLib/XMLParser.cpp" $(CXXFLAGS) $(ObjectSwitch)$(IntermediateDirectory)/PrefsSourceLib_XMLParser.cpp$(ObjectSuffix) $(IncludePath)
$(IntermediateDirectory)/PrefsSourceLib_XMLParser.cpp$(DependSuffix): PrefsSourceLib/XMLParser.cpp
	@$(CXX) $(CXXFLAGS) $(IncludePCH) $(IncludePath) -MG -MP -MT$(IntermediateDirectory)/PrefsSourceLib_XMLParser.cpp$(ObjectSuffix) -MF$(IntermediateDirectory)/PrefsSourceLib_XMLParser.cpp$(DependSuffix) -MM PrefsSourceLib/XMLParser.cpp

$(IntermediateDirectory)/PrefsSourceLib_XMLParser.cpp$(PreprocessSuffix): PrefsSourceLib/XMLParser.cpp
	$(CXX) $(CXXFLAGS) $(IncludePCH) $(IncludePath) $(PreprocessOnlySwitch) $(OutputSwitch) $(IntermediateDirectory)/PrefsSourceLib_XMLParser.cpp$(PreprocessSuffix) PrefsSourceLib/XMLParser.cpp

$(IntermediateDirectory)/RTCPUtilitiesLib_RTCPPacket.cpp$(ObjectSuffix): RTCPUtilitiesLib/RTCPPacket.cpp $(IntermediateDirectory)/RTCPUtilitiesLib_RTCPPacket.cpp$(DependSuffix)
	$(CXX) $(IncludePCH) $(SourceSwitch) "/home/fym/722/cpp-project/RTSPServer/RTCPUtilitiesLib/RTCPPacket.cpp" $(CXXFLAGS) $(ObjectSwitch)$(IntermediateDirectory)/RTCPUtilitiesLib_RTCPPacket.cpp$(ObjectSuffix) $(IncludePath)
$(IntermediateDirectory)/RTCPUtilitiesLib_RTCPPacket.cpp$(DependSuffix): RTCPUtilitiesLib/RTCPPacket.cpp
	@$(CXX) $(CXXFLAGS) $(IncludePCH) $(IncludePath) -MG -MP -MT$(IntermediateDirectory)/RTCPUtilitiesLib_RTCPPacket.cpp$(ObjectSuffix) -MF$(IntermediateDirectory)/RTCPUtilitiesLib_RTCPPacket.cpp$(DependSuffix) -MM RTCPUtilitiesLib/RTCPPacket.cpp

$(IntermediateDirectory)/RTCPUtilitiesLib_RTCPPacket.cpp$(PreprocessSuffix): RTCPUtilitiesLib/RTCPPacket.cpp
	$(CXX) $(CXXFLAGS) $(IncludePCH) $(IncludePath) $(PreprocessOnlySwitch) $(OutputSwitch) $(IntermediateDirectory)/RTCPUtilitiesLib_RTCPPacket.cpp$(PreprocessSuffix) RTCPUtilitiesLib/RTCPPacket.cpp

$(IntermediateDirectory)/RTCPUtilitiesLib_RTCPAPPPacket.cpp$(ObjectSuffix): RTCPUtilitiesLib/RTCPAPPPacket.cpp $(IntermediateDirectory)/RTCPUtilitiesLib_RTCPAPPPacket.cpp$(DependSuffix)
	$(CXX) $(IncludePCH) $(SourceSwitch) "/home/fym/722/cpp-project/RTSPServer/RTCPUtilitiesLib/RTCPAPPPacket.cpp" $(CXXFLAGS) $(ObjectSwitch)$(IntermediateDirectory)/RTCPUtilitiesLib_RTCPAPPPacket.cpp$(ObjectSuffix) $(IncludePath)
$(IntermediateDirectory)/RTCPUtilitiesLib_RTCPAPPPacket.cpp$(DependSuffix): RTCPUtilitiesLib/RTCPAPPPacket.cpp
	@$(CXX) $(CXXFLAGS) $(IncludePCH) $(IncludePath) -MG -MP -MT$(IntermediateDirectory)/RTCPUtilitiesLib_RTCPAPPPacket.cpp$(ObjectSuffix) -MF$(IntermediateDirectory)/RTCPUtilitiesLib_RTCPAPPPacket.cpp$(DependSuffix) -MM RTCPUtilitiesLib/RTCPAPPPacket.cpp

$(IntermediateDirectory)/RTCPUtilitiesLib_RTCPAPPPacket.cpp$(PreprocessSuffix): RTCPUtilitiesLib/RTCPAPPPacket.cpp
	$(CXX) $(CXXFLAGS) $(IncludePCH) $(IncludePath) $(PreprocessOnlySwitch) $(OutputSwitch) $(IntermediateDirectory)/RTCPUtilitiesLib_RTCPAPPPacket.cpp$(PreprocessSuffix) RTCPUtilitiesLib/RTCPAPPPacket.cpp

$(IntermediateDirectory)/RTCPUtilitiesLib_RTCPAckPacket.cpp$(ObjectSuffix): RTCPUtilitiesLib/RTCPAckPacket.cpp $(IntermediateDirectory)/RTCPUtilitiesLib_RTCPAckPacket.cpp$(DependSuffix)
	$(CXX) $(IncludePCH) $(SourceSwitch) "/home/fym/722/cpp-project/RTSPServer/RTCPUtilitiesLib/RTCPAckPacket.cpp" $(CXXFLAGS) $(ObjectSwitch)$(IntermediateDirectory)/RTCPUtilitiesLib_RTCPAckPacket.cpp$(ObjectSuffix) $(IncludePath)
$(IntermediateDirectory)/RTCPUtilitiesLib_RTCPAckPacket.cpp$(DependSuffix): RTCPUtilitiesLib/RTCPAckPacket.cpp
	@$(CXX) $(CXXFLAGS) $(IncludePCH) $(IncludePath) -MG -MP -MT$(IntermediateDirectory)/RTCPUtilitiesLib_RTCPAckPacket.cpp$(ObjectSuffix) -MF$(IntermediateDirectory)/RTCPUtilitiesLib_RTCPAckPacket.cpp$(DependSuffix) -MM RTCPUtilitiesLib/RTCPAckPacket.cpp

$(IntermediateDirectory)/RTCPUtilitiesLib_RTCPAckPacket.cpp$(PreprocessSuffix): RTCPUtilitiesLib/RTCPAckPacket.cpp
	$(CXX) $(CXXFLAGS) $(IncludePCH) $(IncludePath) $(PreprocessOnlySwitch) $(OutputSwitch) $(IntermediateDirectory)/RTCPUtilitiesLib_RTCPAckPacket.cpp$(PreprocessSuffix) RTCPUtilitiesLib/RTCPAckPacket.cpp

$(IntermediateDirectory)/Server.tproj_QTSSSocket.cpp$(ObjectSuffix): Server.tproj/QTSSSocket.cpp $(IntermediateDirectory)/Server.tproj_QTSSSocket.cpp$(DependSuffix)
	$(CXX) $(IncludePCH) $(SourceSwitch) "/home/fym/722/cpp-project/RTSPServer/Server.tproj/QTSSSocket.cpp" $(CXXFLAGS) $(ObjectSwitch)$(IntermediateDirectory)/Server.tproj_QTSSSocket.cpp$(ObjectSuffix) $(IncludePath)
$(IntermediateDirectory)/Server.tproj_QTSSSocket.cpp$(DependSuffix): Server.tproj/QTSSSocket.cpp
	@$(CXX) $(CXXFLAGS) $(IncludePCH) $(IncludePath) -MG -MP -MT$(IntermediateDirectory)/Server.tproj_QTSSSocket.cpp$(ObjectSuffix) -MF$(IntermediateDirectory)/Server.tproj_QTSSSocket.cpp$(DependSuffix) -MM Server.tproj/QTSSSocket.cpp

$(IntermediateDirectory)/Server.tproj_QTSSSocket.cpp$(PreprocessSuffix): Server.tproj/QTSSSocket.cpp
	$(CXX) $(CXXFLAGS) $(IncludePCH) $(IncludePath) $(PreprocessOnlySwitch) $(OutputSwitch) $(IntermediateDirectory)/Server.tproj_QTSSSocket.cpp$(PreprocessSuffix) Server.tproj/QTSSSocket.cpp

$(IntermediateDirectory)/RTPMetaInfoLib_RTPMetaInfoPacket.cpp$(ObjectSuffix): RTPMetaInfoLib/RTPMetaInfoPacket.cpp $(IntermediateDirectory)/RTPMetaInfoLib_RTPMetaInfoPacket.cpp$(DependSuffix)
	$(CXX) $(IncludePCH) $(SourceSwitch) "/home/fym/722/cpp-project/RTSPServer/RTPMetaInfoLib/RTPMetaInfoPacket.cpp" $(CXXFLAGS) $(ObjectSwitch)$(IntermediateDirectory)/RTPMetaInfoLib_RTPMetaInfoPacket.cpp$(ObjectSuffix) $(IncludePath)
$(IntermediateDirectory)/RTPMetaInfoLib_RTPMetaInfoPacket.cpp$(DependSuffix): RTPMetaInfoLib/RTPMetaInfoPacket.cpp
	@$(CXX) $(CXXFLAGS) $(IncludePCH) $(IncludePath) -MG -MP -MT$(IntermediateDirectory)/RTPMetaInfoLib_RTPMetaInfoPacket.cpp$(ObjectSuffix) -MF$(IntermediateDirectory)/RTPMetaInfoLib_RTPMetaInfoPacket.cpp$(DependSuffix) -MM RTPMetaInfoLib/RTPMetaInfoPacket.cpp

$(IntermediateDirectory)/RTPMetaInfoLib_RTPMetaInfoPacket.cpp$(PreprocessSuffix): RTPMetaInfoLib/RTPMetaInfoPacket.cpp
	$(CXX) $(CXXFLAGS) $(IncludePCH) $(IncludePath) $(PreprocessOnlySwitch) $(OutputSwitch) $(IntermediateDirectory)/RTPMetaInfoLib_RTPMetaInfoPacket.cpp$(PreprocessSuffix) RTPMetaInfoLib/RTPMetaInfoPacket.cpp

$(IntermediateDirectory)/APIModules_QTSSReflectorModule_QTSSReflectorModule.cpp$(ObjectSuffix): APIModules/QTSSReflectorModule/QTSSReflectorModule.cpp $(IntermediateDirectory)/APIModules_QTSSReflectorModule_QTSSReflectorModule.cpp$(DependSuffix)
	$(CXX) $(IncludePCH) $(SourceSwitch) "/home/fym/722/cpp-project/RTSPServer/APIModules/QTSSReflectorModule/QTSSReflectorModule.cpp" $(CXXFLAGS) $(ObjectSwitch)$(IntermediateDirectory)/APIModules_QTSSReflectorModule_QTSSReflectorModule.cpp$(ObjectSuffix) $(IncludePath)
$(IntermediateDirectory)/APIModules_QTSSReflectorModule_QTSSReflectorModule.cpp$(DependSuffix): APIModules/QTSSReflectorModule/QTSSReflectorModule.cpp
	@$(CXX) $(CXXFLAGS) $(IncludePCH) $(IncludePath) -MG -MP -MT$(IntermediateDirectory)/APIModules_QTSSReflectorModule_QTSSReflectorModule.cpp$(ObjectSuffix) -MF$(IntermediateDirectory)/APIModules_QTSSReflectorModule_QTSSReflectorModule.cpp$(DependSuffix) -MM APIModules/QTSSReflectorModule/QTSSReflectorModule.cpp

$(IntermediateDirectory)/APIModules_QTSSReflectorModule_QTSSReflectorModule.cpp$(PreprocessSuffix): APIModules/QTSSReflectorModule/QTSSReflectorModule.cpp
	$(CXX) $(CXXFLAGS) $(IncludePCH) $(IncludePath) $(PreprocessOnlySwitch) $(OutputSwitch) $(IntermediateDirectory)/APIModules_QTSSReflectorModule_QTSSReflectorModule.cpp$(PreprocessSuffix) APIModules/QTSSReflectorModule/QTSSReflectorModule.cpp

$(IntermediateDirectory)/Server.tproj_RTSPSession.cpp$(ObjectSuffix): Server.tproj/RTSPSession.cpp $(IntermediateDirectory)/Server.tproj_RTSPSession.cpp$(DependSuffix)
	$(CXX) $(IncludePCH) $(SourceSwitch) "/home/fym/722/cpp-project/RTSPServer/Server.tproj/RTSPSession.cpp" $(CXXFLAGS) $(ObjectSwitch)$(IntermediateDirectory)/Server.tproj_RTSPSession.cpp$(ObjectSuffix) $(IncludePath)
$(IntermediateDirectory)/Server.tproj_RTSPSession.cpp$(DependSuffix): Server.tproj/RTSPSession.cpp
	@$(CXX) $(CXXFLAGS) $(IncludePCH) $(IncludePath) -MG -MP -MT$(IntermediateDirectory)/Server.tproj_RTSPSession.cpp$(ObjectSuffix) -MF$(IntermediateDirectory)/Server.tproj_RTSPSession.cpp$(DependSuffix) -MM Server.tproj/RTSPSession.cpp

$(IntermediateDirectory)/Server.tproj_RTSPSession.cpp$(PreprocessSuffix): Server.tproj/RTSPSession.cpp
	$(CXX) $(CXXFLAGS) $(IncludePCH) $(IncludePath) $(PreprocessOnlySwitch) $(OutputSwitch) $(IntermediateDirectory)/Server.tproj_RTSPSession.cpp$(PreprocessSuffix) Server.tproj/RTSPSession.cpp

$(IntermediateDirectory)/CommonUtilitiesLib_Socket.cpp$(ObjectSuffix): CommonUtilitiesLib/Socket.cpp $(IntermediateDirectory)/CommonUtilitiesLib_Socket.cpp$(DependSuffix)
	$(CXX) $(IncludePCH) $(SourceSwitch) "/home/fym/722/cpp-project/RTSPServer/CommonUtilitiesLib/Socket.cpp" $(CXXFLAGS) $(ObjectSwitch)$(IntermediateDirectory)/CommonUtilitiesLib_Socket.cpp$(ObjectSuffix) $(IncludePath)
$(IntermediateDirectory)/CommonUtilitiesLib_Socket.cpp$(DependSuffix): CommonUtilitiesLib/Socket.cpp
	@$(CXX) $(CXXFLAGS) $(IncludePCH) $(IncludePath) -MG -MP -MT$(IntermediateDirectory)/CommonUtilitiesLib_Socket.cpp$(ObjectSuffix) -MF$(IntermediateDirectory)/CommonUtilitiesLib_Socket.cpp$(DependSuffix) -MM CommonUtilitiesLib/Socket.cpp

$(IntermediateDirectory)/CommonUtilitiesLib_Socket.cpp$(PreprocessSuffix): CommonUtilitiesLib/Socket.cpp
	$(CXX) $(CXXFLAGS) $(IncludePCH) $(IncludePath) $(PreprocessOnlySwitch) $(OutputSwitch) $(IntermediateDirectory)/CommonUtilitiesLib_Socket.cpp$(PreprocessSuffix) CommonUtilitiesLib/Socket.cpp

$(IntermediateDirectory)/RTSPClientLib_RTSPClient.cpp$(ObjectSuffix): RTSPClientLib/RTSPClient.cpp $(IntermediateDirectory)/RTSPClientLib_RTSPClient.cpp$(DependSuffix)
	$(CXX) $(IncludePCH) $(SourceSwitch) "/home/fym/722/cpp-project/RTSPServer/RTSPClientLib/RTSPClient.cpp" $(CXXFLAGS) $(ObjectSwitch)$(IntermediateDirectory)/RTSPClientLib_RTSPClient.cpp$(ObjectSuffix) $(IncludePath)
$(IntermediateDirectory)/RTSPClientLib_RTSPClient.cpp$(DependSuffix): RTSPClientLib/RTSPClient.cpp
	@$(CXX) $(CXXFLAGS) $(IncludePCH) $(IncludePath) -MG -MP -MT$(IntermediateDirectory)/RTSPClientLib_RTSPClient.cpp$(ObjectSuffix) -MF$(IntermediateDirectory)/RTSPClientLib_RTSPClient.cpp$(DependSuffix) -MM RTSPClientLib/RTSPClient.cpp

$(IntermediateDirectory)/RTSPClientLib_RTSPClient.cpp$(PreprocessSuffix): RTSPClientLib/RTSPClient.cpp
	$(CXX) $(CXXFLAGS) $(IncludePCH) $(IncludePath) $(PreprocessOnlySwitch) $(OutputSwitch) $(IntermediateDirectory)/RTSPClientLib_RTSPClient.cpp$(PreprocessSuffix) RTSPClientLib/RTSPClient.cpp

$(IntermediateDirectory)/SafeStdLib_InternalStdLib.cpp$(ObjectSuffix): SafeStdLib/InternalStdLib.cpp $(IntermediateDirectory)/SafeStdLib_InternalStdLib.cpp$(DependSuffix)
	$(CXX) $(IncludePCH) $(SourceSwitch) "/home/fym/722/cpp-project/RTSPServer/SafeStdLib/InternalStdLib.cpp" $(CXXFLAGS) $(ObjectSwitch)$(IntermediateDirectory)/SafeStdLib_InternalStdLib.cpp$(ObjectSuffix) $(IncludePath)
$(IntermediateDirectory)/SafeStdLib_InternalStdLib.cpp$(DependSuffix): SafeStdLib/InternalStdLib.cpp
	@$(CXX) $(CXXFLAGS) $(IncludePCH) $(IncludePath) -MG -MP -MT$(IntermediateDirectory)/SafeStdLib_InternalStdLib.cpp$(ObjectSuffix) -MF$(IntermediateDirectory)/SafeStdLib_InternalStdLib.cpp$(DependSuffix) -MM SafeStdLib/InternalStdLib.cpp

$(IntermediateDirectory)/SafeStdLib_InternalStdLib.cpp$(PreprocessSuffix): SafeStdLib/InternalStdLib.cpp
	$(CXX) $(CXXFLAGS) $(IncludePCH) $(IncludePath) $(PreprocessOnlySwitch) $(OutputSwitch) $(IntermediateDirectory)/SafeStdLib_InternalStdLib.cpp$(PreprocessSuffix) SafeStdLib/InternalStdLib.cpp

$(IntermediateDirectory)/CommonUtilitiesLib_Trim.c$(ObjectSuffix): CommonUtilitiesLib/Trim.c $(IntermediateDirectory)/CommonUtilitiesLib_Trim.c$(DependSuffix)
	$(CC) $(SourceSwitch) "/home/fym/722/cpp-project/RTSPServer/CommonUtilitiesLib/Trim.c" $(CFLAGS) $(ObjectSwitch)$(IntermediateDirectory)/CommonUtilitiesLib_Trim.c$(ObjectSuffix) $(IncludePath)
$(IntermediateDirectory)/CommonUtilitiesLib_Trim.c$(DependSuffix): CommonUtilitiesLib/Trim.c
	@$(CC) $(CFLAGS) $(IncludePath) -MG -MP -MT$(IntermediateDirectory)/CommonUtilitiesLib_Trim.c$(ObjectSuffix) -MF$(IntermediateDirectory)/CommonUtilitiesLib_Trim.c$(DependSuffix) -MM CommonUtilitiesLib/Trim.c

$(IntermediateDirectory)/CommonUtilitiesLib_Trim.c$(PreprocessSuffix): CommonUtilitiesLib/Trim.c
	$(CC) $(CFLAGS) $(IncludePath) $(PreprocessOnlySwitch) $(OutputSwitch) $(IntermediateDirectory)/CommonUtilitiesLib_Trim.c$(PreprocessSuffix) CommonUtilitiesLib/Trim.c

$(IntermediateDirectory)/Server.tproj_RTSPRequest.cpp$(ObjectSuffix): Server.tproj/RTSPRequest.cpp $(IntermediateDirectory)/Server.tproj_RTSPRequest.cpp$(DependSuffix)
	$(CXX) $(IncludePCH) $(SourceSwitch) "/home/fym/722/cpp-project/RTSPServer/Server.tproj/RTSPRequest.cpp" $(CXXFLAGS) $(ObjectSwitch)$(IntermediateDirectory)/Server.tproj_RTSPRequest.cpp$(ObjectSuffix) $(IncludePath)
$(IntermediateDirectory)/Server.tproj_RTSPRequest.cpp$(DependSuffix): Server.tproj/RTSPRequest.cpp
	@$(CXX) $(CXXFLAGS) $(IncludePCH) $(IncludePath) -MG -MP -MT$(IntermediateDirectory)/Server.tproj_RTSPRequest.cpp$(ObjectSuffix) -MF$(IntermediateDirectory)/Server.tproj_RTSPRequest.cpp$(DependSuffix) -MM Server.tproj/RTSPRequest.cpp

$(IntermediateDirectory)/Server.tproj_RTSPRequest.cpp$(PreprocessSuffix): Server.tproj/RTSPRequest.cpp
	$(CXX) $(CXXFLAGS) $(IncludePCH) $(IncludePath) $(PreprocessOnlySwitch) $(OutputSwitch) $(IntermediateDirectory)/Server.tproj_RTSPRequest.cpp$(PreprocessSuffix) Server.tproj/RTSPRequest.cpp

$(IntermediateDirectory)/APIModules_QTSSReflectorModule_RTSPSourceInfo.cpp$(ObjectSuffix): APIModules/QTSSReflectorModule/RTSPSourceInfo.cpp $(IntermediateDirectory)/APIModules_QTSSReflectorModule_RTSPSourceInfo.cpp$(DependSuffix)
	$(CXX) $(IncludePCH) $(SourceSwitch) "/home/fym/722/cpp-project/RTSPServer/APIModules/QTSSReflectorModule/RTSPSourceInfo.cpp" $(CXXFLAGS) $(ObjectSwitch)$(IntermediateDirectory)/APIModules_QTSSReflectorModule_RTSPSourceInfo.cpp$(ObjectSuffix) $(IncludePath)
$(IntermediateDirectory)/APIModules_QTSSReflectorModule_RTSPSourceInfo.cpp$(DependSuffix): APIModules/QTSSReflectorModule/RTSPSourceInfo.cpp
	@$(CXX) $(CXXFLAGS) $(IncludePCH) $(IncludePath) -MG -MP -MT$(IntermediateDirectory)/APIModules_QTSSReflectorModule_RTSPSourceInfo.cpp$(ObjectSuffix) -MF$(IntermediateDirectory)/APIModules_QTSSReflectorModule_RTSPSourceInfo.cpp$(DependSuffix) -MM APIModules/QTSSReflectorModule/RTSPSourceInfo.cpp

$(IntermediateDirectory)/APIModules_QTSSReflectorModule_RTSPSourceInfo.cpp$(PreprocessSuffix): APIModules/QTSSReflectorModule/RTSPSourceInfo.cpp
	$(CXX) $(CXXFLAGS) $(IncludePCH) $(IncludePath) $(PreprocessOnlySwitch) $(OutputSwitch) $(IntermediateDirectory)/APIModules_QTSSReflectorModule_RTSPSourceInfo.cpp$(PreprocessSuffix) APIModules/QTSSReflectorModule/RTSPSourceInfo.cpp

$(IntermediateDirectory)/Server.tproj_RTSPSessionInterface.cpp$(ObjectSuffix): Server.tproj/RTSPSessionInterface.cpp $(IntermediateDirectory)/Server.tproj_RTSPSessionInterface.cpp$(DependSuffix)
	$(CXX) $(IncludePCH) $(SourceSwitch) "/home/fym/722/cpp-project/RTSPServer/Server.tproj/RTSPSessionInterface.cpp" $(CXXFLAGS) $(ObjectSwitch)$(IntermediateDirectory)/Server.tproj_RTSPSessionInterface.cpp$(ObjectSuffix) $(IncludePath)
$(IntermediateDirectory)/Server.tproj_RTSPSessionInterface.cpp$(DependSuffix): Server.tproj/RTSPSessionInterface.cpp
	@$(CXX) $(CXXFLAGS) $(IncludePCH) $(IncludePath) -MG -MP -MT$(IntermediateDirectory)/Server.tproj_RTSPSessionInterface.cpp$(ObjectSuffix) -MF$(IntermediateDirectory)/Server.tproj_RTSPSessionInterface.cpp$(DependSuffix) -MM Server.tproj/RTSPSessionInterface.cpp

$(IntermediateDirectory)/Server.tproj_RTSPSessionInterface.cpp$(PreprocessSuffix): Server.tproj/RTSPSessionInterface.cpp
	$(CXX) $(CXXFLAGS) $(IncludePCH) $(IncludePath) $(PreprocessOnlySwitch) $(OutputSwitch) $(IntermediateDirectory)/Server.tproj_RTSPSessionInterface.cpp$(PreprocessSuffix) Server.tproj/RTSPSessionInterface.cpp

$(IntermediateDirectory)/Server.tproj_QTSSPrefs.cpp$(ObjectSuffix): Server.tproj/QTSSPrefs.cpp $(IntermediateDirectory)/Server.tproj_QTSSPrefs.cpp$(DependSuffix)
	$(CXX) $(IncludePCH) $(SourceSwitch) "/home/fym/722/cpp-project/RTSPServer/Server.tproj/QTSSPrefs.cpp" $(CXXFLAGS) $(ObjectSwitch)$(IntermediateDirectory)/Server.tproj_QTSSPrefs.cpp$(ObjectSuffix) $(IncludePath)
$(IntermediateDirectory)/Server.tproj_QTSSPrefs.cpp$(DependSuffix): Server.tproj/QTSSPrefs.cpp
	@$(CXX) $(CXXFLAGS) $(IncludePCH) $(IncludePath) -MG -MP -MT$(IntermediateDirectory)/Server.tproj_QTSSPrefs.cpp$(ObjectSuffix) -MF$(IntermediateDirectory)/Server.tproj_QTSSPrefs.cpp$(DependSuffix) -MM Server.tproj/QTSSPrefs.cpp

$(IntermediateDirectory)/Server.tproj_QTSSPrefs.cpp$(PreprocessSuffix): Server.tproj/QTSSPrefs.cpp
	$(CXX) $(CXXFLAGS) $(IncludePCH) $(IncludePath) $(PreprocessOnlySwitch) $(OutputSwitch) $(IntermediateDirectory)/Server.tproj_QTSSPrefs.cpp$(PreprocessSuffix) Server.tproj/QTSSPrefs.cpp

$(IntermediateDirectory)/Server.tproj_RTSPRequestInterface.cpp$(ObjectSuffix): Server.tproj/RTSPRequestInterface.cpp $(IntermediateDirectory)/Server.tproj_RTSPRequestInterface.cpp$(DependSuffix)
	$(CXX) $(IncludePCH) $(SourceSwitch) "/home/fym/722/cpp-project/RTSPServer/Server.tproj/RTSPRequestInterface.cpp" $(CXXFLAGS) $(ObjectSwitch)$(IntermediateDirectory)/Server.tproj_RTSPRequestInterface.cpp$(ObjectSuffix) $(IncludePath)
$(IntermediateDirectory)/Server.tproj_RTSPRequestInterface.cpp$(DependSuffix): Server.tproj/RTSPRequestInterface.cpp
	@$(CXX) $(CXXFLAGS) $(IncludePCH) $(IncludePath) -MG -MP -MT$(IntermediateDirectory)/Server.tproj_RTSPRequestInterface.cpp$(ObjectSuffix) -MF$(IntermediateDirectory)/Server.tproj_RTSPRequestInterface.cpp$(DependSuffix) -MM Server.tproj/RTSPRequestInterface.cpp

$(IntermediateDirectory)/Server.tproj_RTSPRequestInterface.cpp$(PreprocessSuffix): Server.tproj/RTSPRequestInterface.cpp
	$(CXX) $(CXXFLAGS) $(IncludePCH) $(IncludePath) $(PreprocessOnlySwitch) $(OutputSwitch) $(IntermediateDirectory)/Server.tproj_RTSPRequestInterface.cpp$(PreprocessSuffix) Server.tproj/RTSPRequestInterface.cpp

$(IntermediateDirectory)/Server.tproj_RTSPRequestStream.cpp$(ObjectSuffix): Server.tproj/RTSPRequestStream.cpp $(IntermediateDirectory)/Server.tproj_RTSPRequestStream.cpp$(DependSuffix)
	$(CXX) $(IncludePCH) $(SourceSwitch) "/home/fym/722/cpp-project/RTSPServer/Server.tproj/RTSPRequestStream.cpp" $(CXXFLAGS) $(ObjectSwitch)$(IntermediateDirectory)/Server.tproj_RTSPRequestStream.cpp$(ObjectSuffix) $(IncludePath)
$(IntermediateDirectory)/Server.tproj_RTSPRequestStream.cpp$(DependSuffix): Server.tproj/RTSPRequestStream.cpp
	@$(CXX) $(CXXFLAGS) $(IncludePCH) $(IncludePath) -MG -MP -MT$(IntermediateDirectory)/Server.tproj_RTSPRequestStream.cpp$(ObjectSuffix) -MF$(IntermediateDirectory)/Server.tproj_RTSPRequestStream.cpp$(DependSuffix) -MM Server.tproj/RTSPRequestStream.cpp

$(IntermediateDirectory)/Server.tproj_RTSPRequestStream.cpp$(PreprocessSuffix): Server.tproj/RTSPRequestStream.cpp
	$(CXX) $(CXXFLAGS) $(IncludePCH) $(IncludePath) $(PreprocessOnlySwitch) $(OutputSwitch) $(IntermediateDirectory)/Server.tproj_RTSPRequestStream.cpp$(PreprocessSuffix) Server.tproj/RTSPRequestStream.cpp

$(IntermediateDirectory)/Server.tproj_RTSPProtocol.cpp$(ObjectSuffix): Server.tproj/RTSPProtocol.cpp $(IntermediateDirectory)/Server.tproj_RTSPProtocol.cpp$(DependSuffix)
	$(CXX) $(IncludePCH) $(SourceSwitch) "/home/fym/722/cpp-project/RTSPServer/Server.tproj/RTSPProtocol.cpp" $(CXXFLAGS) $(ObjectSwitch)$(IntermediateDirectory)/Server.tproj_RTSPProtocol.cpp$(ObjectSuffix) $(IncludePath)
$(IntermediateDirectory)/Server.tproj_RTSPProtocol.cpp$(DependSuffix): Server.tproj/RTSPProtocol.cpp
	@$(CXX) $(CXXFLAGS) $(IncludePCH) $(IncludePath) -MG -MP -MT$(IntermediateDirectory)/Server.tproj_RTSPProtocol.cpp$(ObjectSuffix) -MF$(IntermediateDirectory)/Server.tproj_RTSPProtocol.cpp$(DependSuffix) -MM Server.tproj/RTSPProtocol.cpp

$(IntermediateDirectory)/Server.tproj_RTSPProtocol.cpp$(PreprocessSuffix): Server.tproj/RTSPProtocol.cpp
	$(CXX) $(CXXFLAGS) $(IncludePCH) $(IncludePath) $(PreprocessOnlySwitch) $(OutputSwitch) $(IntermediateDirectory)/Server.tproj_RTSPProtocol.cpp$(PreprocessSuffix) Server.tproj/RTSPProtocol.cpp

$(IntermediateDirectory)/Server.tproj_GenerateXMLPrefs.cpp$(ObjectSuffix): Server.tproj/GenerateXMLPrefs.cpp $(IntermediateDirectory)/Server.tproj_GenerateXMLPrefs.cpp$(DependSuffix)
	$(CXX) $(IncludePCH) $(SourceSwitch) "/home/fym/722/cpp-project/RTSPServer/Server.tproj/GenerateXMLPrefs.cpp" $(CXXFLAGS) $(ObjectSwitch)$(IntermediateDirectory)/Server.tproj_GenerateXMLPrefs.cpp$(ObjectSuffix) $(IncludePath)
$(IntermediateDirectory)/Server.tproj_GenerateXMLPrefs.cpp$(DependSuffix): Server.tproj/GenerateXMLPrefs.cpp
	@$(CXX) $(CXXFLAGS) $(IncludePCH) $(IncludePath) -MG -MP -MT$(IntermediateDirectory)/Server.tproj_GenerateXMLPrefs.cpp$(ObjectSuffix) -MF$(IntermediateDirectory)/Server.tproj_GenerateXMLPrefs.cpp$(DependSuffix) -MM Server.tproj/GenerateXMLPrefs.cpp

$(IntermediateDirectory)/Server.tproj_GenerateXMLPrefs.cpp$(PreprocessSuffix): Server.tproj/GenerateXMLPrefs.cpp
	$(CXX) $(CXXFLAGS) $(IncludePCH) $(IncludePath) $(PreprocessOnlySwitch) $(OutputSwitch) $(IntermediateDirectory)/Server.tproj_GenerateXMLPrefs.cpp$(PreprocessSuffix) Server.tproj/GenerateXMLPrefs.cpp

$(IntermediateDirectory)/Server.tproj_QTSSMessages.cpp$(ObjectSuffix): Server.tproj/QTSSMessages.cpp $(IntermediateDirectory)/Server.tproj_QTSSMessages.cpp$(DependSuffix)
	$(CXX) $(IncludePCH) $(SourceSwitch) "/home/fym/722/cpp-project/RTSPServer/Server.tproj/QTSSMessages.cpp" $(CXXFLAGS) $(ObjectSwitch)$(IntermediateDirectory)/Server.tproj_QTSSMessages.cpp$(ObjectSuffix) $(IncludePath)
$(IntermediateDirectory)/Server.tproj_QTSSMessages.cpp$(DependSuffix): Server.tproj/QTSSMessages.cpp
	@$(CXX) $(CXXFLAGS) $(IncludePCH) $(IncludePath) -MG -MP -MT$(IntermediateDirectory)/Server.tproj_QTSSMessages.cpp$(ObjectSuffix) -MF$(IntermediateDirectory)/Server.tproj_QTSSMessages.cpp$(DependSuffix) -MM Server.tproj/QTSSMessages.cpp

$(IntermediateDirectory)/Server.tproj_QTSSMessages.cpp$(PreprocessSuffix): Server.tproj/QTSSMessages.cpp
	$(CXX) $(CXXFLAGS) $(IncludePCH) $(IncludePath) $(PreprocessOnlySwitch) $(OutputSwitch) $(IntermediateDirectory)/Server.tproj_QTSSMessages.cpp$(PreprocessSuffix) Server.tproj/QTSSMessages.cpp

$(IntermediateDirectory)/Server.tproj_QTSSErrorLogModule.cpp$(ObjectSuffix): Server.tproj/QTSSErrorLogModule.cpp $(IntermediateDirectory)/Server.tproj_QTSSErrorLogModule.cpp$(DependSuffix)
	$(CXX) $(IncludePCH) $(SourceSwitch) "/home/fym/722/cpp-project/RTSPServer/Server.tproj/QTSSErrorLogModule.cpp" $(CXXFLAGS) $(ObjectSwitch)$(IntermediateDirectory)/Server.tproj_QTSSErrorLogModule.cpp$(ObjectSuffix) $(IncludePath)
$(IntermediateDirectory)/Server.tproj_QTSSErrorLogModule.cpp$(DependSuffix): Server.tproj/QTSSErrorLogModule.cpp
	@$(CXX) $(CXXFLAGS) $(IncludePCH) $(IncludePath) -MG -MP -MT$(IntermediateDirectory)/Server.tproj_QTSSErrorLogModule.cpp$(ObjectSuffix) -MF$(IntermediateDirectory)/Server.tproj_QTSSErrorLogModule.cpp$(DependSuffix) -MM Server.tproj/QTSSErrorLogModule.cpp

$(IntermediateDirectory)/Server.tproj_QTSSErrorLogModule.cpp$(PreprocessSuffix): Server.tproj/QTSSErrorLogModule.cpp
	$(CXX) $(CXXFLAGS) $(IncludePCH) $(IncludePath) $(PreprocessOnlySwitch) $(OutputSwitch) $(IntermediateDirectory)/Server.tproj_QTSSErrorLogModule.cpp$(PreprocessSuffix) Server.tproj/QTSSErrorLogModule.cpp

$(IntermediateDirectory)/Server.tproj_QTSSModule.cpp$(ObjectSuffix): Server.tproj/QTSSModule.cpp $(IntermediateDirectory)/Server.tproj_QTSSModule.cpp$(DependSuffix)
	$(CXX) $(IncludePCH) $(SourceSwitch) "/home/fym/722/cpp-project/RTSPServer/Server.tproj/QTSSModule.cpp" $(CXXFLAGS) $(ObjectSwitch)$(IntermediateDirectory)/Server.tproj_QTSSModule.cpp$(ObjectSuffix) $(IncludePath)
$(IntermediateDirectory)/Server.tproj_QTSSModule.cpp$(DependSuffix): Server.tproj/QTSSModule.cpp
	@$(CXX) $(CXXFLAGS) $(IncludePCH) $(IncludePath) -MG -MP -MT$(IntermediateDirectory)/Server.tproj_QTSSModule.cpp$(ObjectSuffix) -MF$(IntermediateDirectory)/Server.tproj_QTSSModule.cpp$(DependSuffix) -MM Server.tproj/QTSSModule.cpp

$(IntermediateDirectory)/Server.tproj_QTSSModule.cpp$(PreprocessSuffix): Server.tproj/QTSSModule.cpp
	$(CXX) $(CXXFLAGS) $(IncludePCH) $(IncludePath) $(PreprocessOnlySwitch) $(OutputSwitch) $(IntermediateDirectory)/Server.tproj_QTSSModule.cpp$(PreprocessSuffix) Server.tproj/QTSSModule.cpp

$(IntermediateDirectory)/CommonUtilitiesLib_MakeDir.c$(ObjectSuffix): CommonUtilitiesLib/MakeDir.c $(IntermediateDirectory)/CommonUtilitiesLib_MakeDir.c$(DependSuffix)
	$(CC) $(SourceSwitch) "/home/fym/722/cpp-project/RTSPServer/CommonUtilitiesLib/MakeDir.c" $(CFLAGS) $(ObjectSwitch)$(IntermediateDirectory)/CommonUtilitiesLib_MakeDir.c$(ObjectSuffix) $(IncludePath)
$(IntermediateDirectory)/CommonUtilitiesLib_MakeDir.c$(DependSuffix): CommonUtilitiesLib/MakeDir.c
	@$(CC) $(CFLAGS) $(IncludePath) -MG -MP -MT$(IntermediateDirectory)/CommonUtilitiesLib_MakeDir.c$(ObjectSuffix) -MF$(IntermediateDirectory)/CommonUtilitiesLib_MakeDir.c$(DependSuffix) -MM CommonUtilitiesLib/MakeDir.c

$(IntermediateDirectory)/CommonUtilitiesLib_MakeDir.c$(PreprocessSuffix): CommonUtilitiesLib/MakeDir.c
	$(CC) $(CFLAGS) $(IncludePath) $(PreprocessOnlySwitch) $(OutputSwitch) $(IntermediateDirectory)/CommonUtilitiesLib_MakeDir.c$(PreprocessSuffix) CommonUtilitiesLib/MakeDir.c

$(IntermediateDirectory)/Server.tproj_RTSPResponseStream.cpp$(ObjectSuffix): Server.tproj/RTSPResponseStream.cpp $(IntermediateDirectory)/Server.tproj_RTSPResponseStream.cpp$(DependSuffix)
	$(CXX) $(IncludePCH) $(SourceSwitch) "/home/fym/722/cpp-project/RTSPServer/Server.tproj/RTSPResponseStream.cpp" $(CXXFLAGS) $(ObjectSwitch)$(IntermediateDirectory)/Server.tproj_RTSPResponseStream.cpp$(ObjectSuffix) $(IncludePath)
$(IntermediateDirectory)/Server.tproj_RTSPResponseStream.cpp$(DependSuffix): Server.tproj/RTSPResponseStream.cpp
	@$(CXX) $(CXXFLAGS) $(IncludePCH) $(IncludePath) -MG -MP -MT$(IntermediateDirectory)/Server.tproj_RTSPResponseStream.cpp$(ObjectSuffix) -MF$(IntermediateDirectory)/Server.tproj_RTSPResponseStream.cpp$(DependSuffix) -MM Server.tproj/RTSPResponseStream.cpp

$(IntermediateDirectory)/Server.tproj_RTSPResponseStream.cpp$(PreprocessSuffix): Server.tproj/RTSPResponseStream.cpp
	$(CXX) $(CXXFLAGS) $(IncludePCH) $(IncludePath) $(PreprocessOnlySwitch) $(OutputSwitch) $(IntermediateDirectory)/Server.tproj_RTSPResponseStream.cpp$(PreprocessSuffix) Server.tproj/RTSPResponseStream.cpp

$(IntermediateDirectory)/Server.tproj_RTPOverbufferWindow.cpp$(ObjectSuffix): Server.tproj/RTPOverbufferWindow.cpp $(IntermediateDirectory)/Server.tproj_RTPOverbufferWindow.cpp$(DependSuffix)
	$(CXX) $(IncludePCH) $(SourceSwitch) "/home/fym/722/cpp-project/RTSPServer/Server.tproj/RTPOverbufferWindow.cpp" $(CXXFLAGS) $(ObjectSwitch)$(IntermediateDirectory)/Server.tproj_RTPOverbufferWindow.cpp$(ObjectSuffix) $(IncludePath)
$(IntermediateDirectory)/Server.tproj_RTPOverbufferWindow.cpp$(DependSuffix): Server.tproj/RTPOverbufferWindow.cpp
	@$(CXX) $(CXXFLAGS) $(IncludePCH) $(IncludePath) -MG -MP -MT$(IntermediateDirectory)/Server.tproj_RTPOverbufferWindow.cpp$(ObjectSuffix) -MF$(IntermediateDirectory)/Server.tproj_RTPOverbufferWindow.cpp$(DependSuffix) -MM Server.tproj/RTPOverbufferWindow.cpp

$(IntermediateDirectory)/Server.tproj_RTPOverbufferWindow.cpp$(PreprocessSuffix): Server.tproj/RTPOverbufferWindow.cpp
	$(CXX) $(CXXFLAGS) $(IncludePCH) $(IncludePath) $(PreprocessOnlySwitch) $(OutputSwitch) $(IntermediateDirectory)/Server.tproj_RTPOverbufferWindow.cpp$(PreprocessSuffix) Server.tproj/RTPOverbufferWindow.cpp

$(IntermediateDirectory)/RTSPClientLib_FakeRTSPClient.cpp$(ObjectSuffix): RTSPClientLib/FakeRTSPClient.cpp $(IntermediateDirectory)/RTSPClientLib_FakeRTSPClient.cpp$(DependSuffix)
	$(CXX) $(IncludePCH) $(SourceSwitch) "/home/fym/722/cpp-project/RTSPServer/RTSPClientLib/FakeRTSPClient.cpp" $(CXXFLAGS) $(ObjectSwitch)$(IntermediateDirectory)/RTSPClientLib_FakeRTSPClient.cpp$(ObjectSuffix) $(IncludePath)
$(IntermediateDirectory)/RTSPClientLib_FakeRTSPClient.cpp$(DependSuffix): RTSPClientLib/FakeRTSPClient.cpp
	@$(CXX) $(CXXFLAGS) $(IncludePCH) $(IncludePath) -MG -MP -MT$(IntermediateDirectory)/RTSPClientLib_FakeRTSPClient.cpp$(ObjectSuffix) -MF$(IntermediateDirectory)/RTSPClientLib_FakeRTSPClient.cpp$(DependSuffix) -MM RTSPClientLib/FakeRTSPClient.cpp

$(IntermediateDirectory)/RTSPClientLib_FakeRTSPClient.cpp$(PreprocessSuffix): RTSPClientLib/FakeRTSPClient.cpp
	$(CXX) $(CXXFLAGS) $(IncludePCH) $(IncludePath) $(PreprocessOnlySwitch) $(OutputSwitch) $(IntermediateDirectory)/RTSPClientLib_FakeRTSPClient.cpp$(PreprocessSuffix) RTSPClientLib/FakeRTSPClient.cpp

$(IntermediateDirectory)/Server.tproj_QTSServer.cpp$(ObjectSuffix): Server.tproj/QTSServer.cpp $(IntermediateDirectory)/Server.tproj_QTSServer.cpp$(DependSuffix)
	$(CXX) $(IncludePCH) $(SourceSwitch) "/home/fym/722/cpp-project/RTSPServer/Server.tproj/QTSServer.cpp" $(CXXFLAGS) $(ObjectSwitch)$(IntermediateDirectory)/Server.tproj_QTSServer.cpp$(ObjectSuffix) $(IncludePath)
$(IntermediateDirectory)/Server.tproj_QTSServer.cpp$(DependSuffix): Server.tproj/QTSServer.cpp
	@$(CXX) $(CXXFLAGS) $(IncludePCH) $(IncludePath) -MG -MP -MT$(IntermediateDirectory)/Server.tproj_QTSServer.cpp$(ObjectSuffix) -MF$(IntermediateDirectory)/Server.tproj_QTSServer.cpp$(DependSuffix) -MM Server.tproj/QTSServer.cpp

$(IntermediateDirectory)/Server.tproj_QTSServer.cpp$(PreprocessSuffix): Server.tproj/QTSServer.cpp
	$(CXX) $(CXXFLAGS) $(IncludePCH) $(IncludePath) $(PreprocessOnlySwitch) $(OutputSwitch) $(IntermediateDirectory)/Server.tproj_QTSServer.cpp$(PreprocessSuffix) Server.tproj/QTSServer.cpp

$(IntermediateDirectory)/RTSPClientLib_ClientSession.cpp$(ObjectSuffix): RTSPClientLib/ClientSession.cpp $(IntermediateDirectory)/RTSPClientLib_ClientSession.cpp$(DependSuffix)
	$(CXX) $(IncludePCH) $(SourceSwitch) "/home/fym/722/cpp-project/RTSPServer/RTSPClientLib/ClientSession.cpp" $(CXXFLAGS) $(ObjectSwitch)$(IntermediateDirectory)/RTSPClientLib_ClientSession.cpp$(ObjectSuffix) $(IncludePath)
$(IntermediateDirectory)/RTSPClientLib_ClientSession.cpp$(DependSuffix): RTSPClientLib/ClientSession.cpp
	@$(CXX) $(CXXFLAGS) $(IncludePCH) $(IncludePath) -MG -MP -MT$(IntermediateDirectory)/RTSPClientLib_ClientSession.cpp$(ObjectSuffix) -MF$(IntermediateDirectory)/RTSPClientLib_ClientSession.cpp$(DependSuffix) -MM RTSPClientLib/ClientSession.cpp

$(IntermediateDirectory)/RTSPClientLib_ClientSession.cpp$(PreprocessSuffix): RTSPClientLib/ClientSession.cpp
	$(CXX) $(CXXFLAGS) $(IncludePCH) $(IncludePath) $(PreprocessOnlySwitch) $(OutputSwitch) $(IntermediateDirectory)/RTSPClientLib_ClientSession.cpp$(PreprocessSuffix) RTSPClientLib/ClientSession.cpp

$(IntermediateDirectory)/Server.tproj_QTSServerPrefs.cpp$(ObjectSuffix): Server.tproj/QTSServerPrefs.cpp $(IntermediateDirectory)/Server.tproj_QTSServerPrefs.cpp$(DependSuffix)
	$(CXX) $(IncludePCH) $(SourceSwitch) "/home/fym/722/cpp-project/RTSPServer/Server.tproj/QTSServerPrefs.cpp" $(CXXFLAGS) $(ObjectSwitch)$(IntermediateDirectory)/Server.tproj_QTSServerPrefs.cpp$(ObjectSuffix) $(IncludePath)
$(IntermediateDirectory)/Server.tproj_QTSServerPrefs.cpp$(DependSuffix): Server.tproj/QTSServerPrefs.cpp
	@$(CXX) $(CXXFLAGS) $(IncludePCH) $(IncludePath) -MG -MP -MT$(IntermediateDirectory)/Server.tproj_QTSServerPrefs.cpp$(ObjectSuffix) -MF$(IntermediateDirectory)/Server.tproj_QTSServerPrefs.cpp$(DependSuffix) -MM Server.tproj/QTSServerPrefs.cpp

$(IntermediateDirectory)/Server.tproj_QTSServerPrefs.cpp$(PreprocessSuffix): Server.tproj/QTSServerPrefs.cpp
	$(CXX) $(CXXFLAGS) $(IncludePCH) $(IncludePath) $(PreprocessOnlySwitch) $(OutputSwitch) $(IntermediateDirectory)/Server.tproj_QTSServerPrefs.cpp$(PreprocessSuffix) Server.tproj/QTSServerPrefs.cpp

$(IntermediateDirectory)/Server.tproj_QTSSFile.cpp$(ObjectSuffix): Server.tproj/QTSSFile.cpp $(IntermediateDirectory)/Server.tproj_QTSSFile.cpp$(DependSuffix)
	$(CXX) $(IncludePCH) $(SourceSwitch) "/home/fym/722/cpp-project/RTSPServer/Server.tproj/QTSSFile.cpp" $(CXXFLAGS) $(ObjectSwitch)$(IntermediateDirectory)/Server.tproj_QTSSFile.cpp$(ObjectSuffix) $(IncludePath)
$(IntermediateDirectory)/Server.tproj_QTSSFile.cpp$(DependSuffix): Server.tproj/QTSSFile.cpp
	@$(CXX) $(CXXFLAGS) $(IncludePCH) $(IncludePath) -MG -MP -MT$(IntermediateDirectory)/Server.tproj_QTSSFile.cpp$(ObjectSuffix) -MF$(IntermediateDirectory)/Server.tproj_QTSSFile.cpp$(DependSuffix) -MM Server.tproj/QTSSFile.cpp

$(IntermediateDirectory)/Server.tproj_QTSSFile.cpp$(PreprocessSuffix): Server.tproj/QTSSFile.cpp
	$(CXX) $(CXXFLAGS) $(IncludePCH) $(IncludePath) $(PreprocessOnlySwitch) $(OutputSwitch) $(IntermediateDirectory)/Server.tproj_QTSSFile.cpp$(PreprocessSuffix) Server.tproj/QTSSFile.cpp

$(IntermediateDirectory)/Server.tproj_RTPSessionInterface.cpp$(ObjectSuffix): Server.tproj/RTPSessionInterface.cpp $(IntermediateDirectory)/Server.tproj_RTPSessionInterface.cpp$(DependSuffix)
	$(CXX) $(IncludePCH) $(SourceSwitch) "/home/fym/722/cpp-project/RTSPServer/Server.tproj/RTPSessionInterface.cpp" $(CXXFLAGS) $(ObjectSwitch)$(IntermediateDirectory)/Server.tproj_RTPSessionInterface.cpp$(ObjectSuffix) $(IncludePath)
$(IntermediateDirectory)/Server.tproj_RTPSessionInterface.cpp$(DependSuffix): Server.tproj/RTPSessionInterface.cpp
	@$(CXX) $(CXXFLAGS) $(IncludePCH) $(IncludePath) -MG -MP -MT$(IntermediateDirectory)/Server.tproj_RTPSessionInterface.cpp$(ObjectSuffix) -MF$(IntermediateDirectory)/Server.tproj_RTPSessionInterface.cpp$(DependSuffix) -MM Server.tproj/RTPSessionInterface.cpp

$(IntermediateDirectory)/Server.tproj_RTPSessionInterface.cpp$(PreprocessSuffix): Server.tproj/RTPSessionInterface.cpp
	$(CXX) $(CXXFLAGS) $(IncludePCH) $(IncludePath) $(PreprocessOnlySwitch) $(OutputSwitch) $(IntermediateDirectory)/Server.tproj_RTPSessionInterface.cpp$(PreprocessSuffix) Server.tproj/RTPSessionInterface.cpp


-include $(IntermediateDirectory)/*$(DependSuffix)
##
## Clean
##
clean:
	$(RM) -r ./Debug/


