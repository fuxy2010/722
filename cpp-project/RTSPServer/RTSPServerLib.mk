##
## Auto Generated makefile by CodeLite IDE
## any manual changes will be erased      
##
## Debug
ProjectName            :=RTSPServerLib
ConfigurationName      :=Debug
WorkspacePath          := "/home/fym/cpp-project"
ProjectPath            := "/home/fym/cpp-project/RTSPServer"
IntermediateDirectory  :=./Debug
OutDir                 := $(IntermediateDirectory)
CurrentFileName        :=
CurrentFilePath        :=
CurrentFileFullPath    :=
User                   :=FYM
Date                   :=12/27/13
CodeLitePath           :="/home/fym/.codelite"
LinkerName             :=g++
SharedObjectLinkerName :=g++ -shared -fPIC
ObjectSuffix           :=.o
DependSuffix           :=.o.d
PreprocessSuffix       :=.o.i
DebugSwitch            :=-gstab
IncludeSwitch          :=-I
LibrarySwitch          :=-l
OutputSwitch           :=-o 
LibraryPathSwitch      :=-L
PreprocessorSwitch     :=-D
SourceSwitch           :=-c 
OutputFile             :=$(IntermediateDirectory)/lib$(ProjectName).a
Preprocessors          :=$(PreprocessorSwitch)__linux__ 
ObjectSwitch           :=-o 
ArchiveOutputSwitch    := 
PreprocessOnlySwitch   :=-E 
ObjectsFileList        :="RTSPServerLib.txt"
PCHCompileFlags        :=
MakeDirCommand         :=mkdir -p
LinkOptions            :=  
IncludePath            :=  $(IncludeSwitch). $(IncludeSwitch)./ $(IncludeSwitch)./APIStubLib/ $(IncludeSwitch)./APIModules/ $(IncludeSwitch)./CommonUtilitiesLib/ $(IncludeSwitch)./Server.tproj/ $(IncludeSwitch)./QTFileLib/ $(IncludeSwitch)./RTPMetaInfoLib/ $(IncludeSwitch)./PrefsSourceLib/ $(IncludeSwitch)./APICommonCode/ $(IncludeSwitch)./HTTPUtilitiesLib/ $(IncludeSwitch)./RTCPUtilitiesLib/ $(IncludeSwitch)./RTSPClientLib/ $(IncludeSwitch)./APIModules/QTSSFileModule/ $(IncludeSwitch)./APIModules/QTSSHttpFileModule/ $(IncludeSwitch)./APIModules/QTSSAccessModule/ $(IncludeSwitch)./APIModules/QTSSAccessLogModule/ $(IncludeSwitch)./APIModules/QTSSPosixFileSysModule/ $(IncludeSwitch)./APIModules/QTSSAdminModule/ $(IncludeSwitch)./APIModules/QTSSReflectorModule/ $(IncludeSwitch)./APIModules/QTSSWebStatsModule/ $(IncludeSwitch)./APIModules/QTSSWebDebugModule/ $(IncludeSwitch)./APIModules/QTSSFlowControlModule/ $(IncludeSwitch)./interface/ 
IncludePCH             := 
RcIncludePath          := 
Libs                   := 
ArLibs                 :=  
LibPath                := $(LibraryPathSwitch). 

##
## Common variables
## AR, CXX, CC, AS, CXXFLAGS and CFLAGS can be overriden using an environment variables
##
AR       := ar rcus
CXX      := g++
CC       := gcc
CXXFLAGS :=  -g $(Preprocessors)
CFLAGS   :=  -g $(Preprocessors)
ASFLAGS  := 
AS       := as


##
## User defined environment variables
##
CodeLiteDir:=/usr/share/codelite
Objects0=$(IntermediateDirectory)/APICommonCode_QTSSModuleUtils$(ObjectSuffix) $(IntermediateDirectory)/APICommonCode_QTAccessFile$(ObjectSuffix) $(IntermediateDirectory)/APICommonCode_QTSSRollingLog$(ObjectSuffix) $(IntermediateDirectory)/APICommonCode_SourceInfo$(ObjectSuffix) $(IntermediateDirectory)/APICommonCode_SDPSourceInfo$(ObjectSuffix) $(IntermediateDirectory)/APIStubLib_QTSS_Private$(ObjectSuffix) $(IntermediateDirectory)/CommonUtilitiesLib_ev$(ObjectSuffix) $(IntermediateDirectory)/CommonUtilitiesLib_base64$(ObjectSuffix) $(IntermediateDirectory)/CommonUtilitiesLib_MyAssert$(ObjectSuffix) $(IntermediateDirectory)/CommonUtilitiesLib_getopt$(ObjectSuffix) \
	$(IntermediateDirectory)/CommonUtilitiesLib_UDPDemuxer$(ObjectSuffix) $(IntermediateDirectory)/CommonUtilitiesLib_StringFormatter$(ObjectSuffix) $(IntermediateDirectory)/CommonUtilitiesLib_SDPUtils$(ObjectSuffix) $(IntermediateDirectory)/CommonUtilitiesLib_StringParser$(ObjectSuffix) $(IntermediateDirectory)/CommonUtilitiesLib_DateTranslator$(ObjectSuffix) $(IntermediateDirectory)/CommonUtilitiesLib_QueryParamList$(ObjectSuffix) $(IntermediateDirectory)/CommonUtilitiesLib_OSCodeFragment$(ObjectSuffix) $(IntermediateDirectory)/CommonUtilitiesLib_OSBufferPool$(ObjectSuffix) $(IntermediateDirectory)/CommonUtilitiesLib_UDPSocketPool$(ObjectSuffix) $(IntermediateDirectory)/CommonUtilitiesLib_StringTranslator$(ObjectSuffix) \
	$(IntermediateDirectory)/CommonUtilitiesLib_OSCond$(ObjectSuffix) $(IntermediateDirectory)/CommonUtilitiesLib_IdleTask$(ObjectSuffix) $(IntermediateDirectory)/CommonUtilitiesLib_UDPSocket$(ObjectSuffix) $(IntermediateDirectory)/CommonUtilitiesLib_Trim$(ObjectSuffix) $(IntermediateDirectory)/CommonUtilitiesLib_TimeoutTask$(ObjectSuffix) $(IntermediateDirectory)/CommonUtilitiesLib_UserAgentParser$(ObjectSuffix) $(IntermediateDirectory)/CommonUtilitiesLib_OS$(ObjectSuffix) $(IntermediateDirectory)/CommonUtilitiesLib_Socket$(ObjectSuffix) $(IntermediateDirectory)/CommonUtilitiesLib_OSMutex$(ObjectSuffix) $(IntermediateDirectory)/CommonUtilitiesLib_OSFileSource$(ObjectSuffix) \
	$(IntermediateDirectory)/CommonUtilitiesLib_GetWord$(ObjectSuffix) $(IntermediateDirectory)/CommonUtilitiesLib_OSMutexRW$(ObjectSuffix) $(IntermediateDirectory)/CommonUtilitiesLib_atomic$(ObjectSuffix) $(IntermediateDirectory)/CommonUtilitiesLib_ResizeableStringFormatter$(ObjectSuffix) $(IntermediateDirectory)/CommonUtilitiesLib_md5$(ObjectSuffix) $(IntermediateDirectory)/CommonUtilitiesLib_md5digest$(ObjectSuffix) $(IntermediateDirectory)/CommonUtilitiesLib_Task$(ObjectSuffix) $(IntermediateDirectory)/CommonUtilitiesLib_OSRef$(ObjectSuffix) $(IntermediateDirectory)/CommonUtilitiesLib_TCPSocket$(ObjectSuffix) $(IntermediateDirectory)/CommonUtilitiesLib_ConfParser$(ObjectSuffix) \
	$(IntermediateDirectory)/CommonUtilitiesLib_OSQueue$(ObjectSuffix) $(IntermediateDirectory)/CommonUtilitiesLib_OSHeap$(ObjectSuffix) $(IntermediateDirectory)/CommonUtilitiesLib_MakeDir$(ObjectSuffix) $(IntermediateDirectory)/CommonUtilitiesLib_SocketUtils$(ObjectSuffix) $(IntermediateDirectory)/CommonUtilitiesLib_daemon$(ObjectSuffix) $(IntermediateDirectory)/CommonUtilitiesLib_TCPListenerSocket$(ObjectSuffix) $(IntermediateDirectory)/CommonUtilitiesLib_StrPtrLen$(ObjectSuffix) $(IntermediateDirectory)/CommonUtilitiesLib_EventContext$(ObjectSuffix) 

Objects1=$(IntermediateDirectory)/CommonUtilitiesLib_OSThread$(ObjectSuffix) $(IntermediateDirectory)/HTTPUtilitiesLib_HTTPProtocol$(ObjectSuffix) \
	$(IntermediateDirectory)/HTTPUtilitiesLib_HTTPRequest$(ObjectSuffix) $(IntermediateDirectory)/OSMemoryLib_OSMemory$(ObjectSuffix) $(IntermediateDirectory)/PrefsSourceLib_FilePrefsSource$(ObjectSuffix) $(IntermediateDirectory)/PrefsSourceLib_XMLPrefsParser$(ObjectSuffix) $(IntermediateDirectory)/PrefsSourceLib_XMLParser$(ObjectSuffix) $(IntermediateDirectory)/RTCPUtilitiesLib_RTCPPacket$(ObjectSuffix) $(IntermediateDirectory)/RTCPUtilitiesLib_RTCPAPPPacket$(ObjectSuffix) $(IntermediateDirectory)/RTCPUtilitiesLib_RTCPAckPacket$(ObjectSuffix) $(IntermediateDirectory)/RTCPUtilitiesLib_RTCPSRPacket$(ObjectSuffix) $(IntermediateDirectory)/RTPMetaInfoLib_RTPMetaInfoPacket$(ObjectSuffix) \
	$(IntermediateDirectory)/RTSPClientLib_ClientSession$(ObjectSuffix) $(IntermediateDirectory)/RTSPClientLib_FakeRTSPClient$(ObjectSuffix) $(IntermediateDirectory)/RTSPClientLib_ClientSocket$(ObjectSuffix) $(IntermediateDirectory)/RTSPClientLib_RTSPClient$(ObjectSuffix) $(IntermediateDirectory)/SafeStdLib_InternalStdLib$(ObjectSuffix) $(IntermediateDirectory)/Server.tproj_QTSSDictionary$(ObjectSuffix) $(IntermediateDirectory)/Server.tproj_RTSPRequestStream$(ObjectSuffix) $(IntermediateDirectory)/Server.tproj_RTCPTask$(ObjectSuffix) $(IntermediateDirectory)/Server.tproj_QTSSPrefs$(ObjectSuffix) $(IntermediateDirectory)/Server.tproj_RTSPProtocol$(ObjectSuffix) \
	$(IntermediateDirectory)/Server.tproj_RTPBandwidthTracker$(ObjectSuffix) $(IntermediateDirectory)/Server.tproj_GenerateXMLPrefs$(ObjectSuffix) $(IntermediateDirectory)/Server.tproj_RTSPRequest$(ObjectSuffix) $(IntermediateDirectory)/Server.tproj_QTSSSocket$(ObjectSuffix) $(IntermediateDirectory)/Server.tproj_QTSSMessages$(ObjectSuffix) $(IntermediateDirectory)/Server.tproj_QTSSUserProfile$(ObjectSuffix) $(IntermediateDirectory)/Server.tproj_RTPStream$(ObjectSuffix) $(IntermediateDirectory)/Server.tproj_QTSSErrorLogModule$(ObjectSuffix) $(IntermediateDirectory)/Server.tproj_RTSPRequestInterface$(ObjectSuffix) $(IntermediateDirectory)/Server.tproj_QTSSModule$(ObjectSuffix) \
	$(IntermediateDirectory)/Server.tproj_QTSSExpirationDate$(ObjectSuffix) $(IntermediateDirectory)/Server.tproj_QTSServerInterface$(ObjectSuffix) $(IntermediateDirectory)/Server.tproj_RTSPResponseStream$(ObjectSuffix) $(IntermediateDirectory)/Server.tproj_RTSPSessionInterface$(ObjectSuffix) $(IntermediateDirectory)/Server.tproj_RTSPSession$(ObjectSuffix) $(IntermediateDirectory)/Server.tproj_QTSSDataConverter$(ObjectSuffix) $(IntermediateDirectory)/Server.tproj_RTPOverbufferWindow$(ObjectSuffix) $(IntermediateDirectory)/Server.tproj_QTSServer$(ObjectSuffix) $(IntermediateDirectory)/Server.tproj_QTSSCallbacks$(ObjectSuffix) $(IntermediateDirectory)/Server.tproj_QTSServerPrefs$(ObjectSuffix) \
	$(IntermediateDirectory)/Server.tproj_QTSSFile$(ObjectSuffix) $(IntermediateDirectory)/Server.tproj_RTPSessionInterface$(ObjectSuffix) $(IntermediateDirectory)/Server.tproj_RTPSession$(ObjectSuffix) $(IntermediateDirectory)/Server.tproj_RTPPacketResender$(ObjectSuffix) 

Objects2=$(IntermediateDirectory)/Server.tproj_RunServerLib$(ObjectSuffix) $(IntermediateDirectory)/Server.tproj_Win32LibMain$(ObjectSuffix) $(IntermediateDirectory)/QTSSAccessModule_QTSSAccessModule$(ObjectSuffix) $(IntermediateDirectory)/QTSSAccessModule_AccessChecker$(ObjectSuffix) $(IntermediateDirectory)/QTSSWebDebugModule_QTSSWebDebugModule$(ObjectSuffix) $(IntermediateDirectory)/QTSSFlowControlModule_QTSSFlowControlModule$(ObjectSuffix) \
	$(IntermediateDirectory)/QTSSReflectorModule_RelayOutput$(ObjectSuffix) $(IntermediateDirectory)/QTSSReflectorModule_RelaySDPSourceInfo$(ObjectSuffix) $(IntermediateDirectory)/QTSSReflectorModule_QTSSReflectorModule$(ObjectSuffix) $(IntermediateDirectory)/QTSSReflectorModule_SequenceNumberMap$(ObjectSuffix) $(IntermediateDirectory)/QTSSReflectorModule_RelaySession$(ObjectSuffix) $(IntermediateDirectory)/QTSSReflectorModule_RTSPSourceInfo$(ObjectSuffix) $(IntermediateDirectory)/QTSSReflectorModule_QTSSRelayModule$(ObjectSuffix) $(IntermediateDirectory)/QTSSReflectorModule_ReflectorStream$(ObjectSuffix) $(IntermediateDirectory)/QTSSReflectorModule_RCFSourceInfo$(ObjectSuffix) $(IntermediateDirectory)/QTSSReflectorModule_ReflectorSession$(ObjectSuffix) \
	$(IntermediateDirectory)/QTSSReflectorModule_RTPSessionOutput$(ObjectSuffix) $(IntermediateDirectory)/QTSSWebStatsModule_QTSSWebStatsModule$(ObjectSuffix) $(IntermediateDirectory)/QTSSPosixFileSysModule_QTSSPosixFileSysModule$(ObjectSuffix) 



Objects=$(Objects0) $(Objects1) $(Objects2) 

##
## Main Build Targets 
##
.PHONY: all clean PreBuild PrePreBuild PostBuild
all: $(IntermediateDirectory) $(OutputFile)

$(OutputFile): $(Objects)
	@$(MakeDirCommand) $(@D)
	@echo "" > $(IntermediateDirectory)/.d
	@echo $(Objects0)  > $(ObjectsFileList)
	@echo $(Objects1) >> $(ObjectsFileList)
	@echo $(Objects2) >> $(ObjectsFileList)
	$(AR) $(ArchiveOutputSwitch)$(OutputFile) @$(ObjectsFileList) $(ArLibs)
	@$(MakeDirCommand) "/home/fym/cpp-project/.build-debug"
	@echo rebuilt > "/home/fym/cpp-project/.build-debug/RTSPServerLib"

PostBuild:
	@echo Executing Post Build commands ...
	cp ./interface/RTSPServer.h ./bin
	cp ./Debug/libRTSPServerLib.a ./bin
	@echo Done

./Debug:
	@test -d ./Debug || $(MakeDirCommand) ./Debug

PreBuild:


##
## Objects
##
$(IntermediateDirectory)/APICommonCode_QTSSModuleUtils$(ObjectSuffix): APICommonCode/QTSSModuleUtils.cpp $(IntermediateDirectory)/APICommonCode_QTSSModuleUtils$(DependSuffix)
	$(CXX) $(IncludePCH) $(SourceSwitch) "/home/fym/cpp-project/RTSPServer/APICommonCode/QTSSModuleUtils.cpp" $(CXXFLAGS) $(ObjectSwitch)$(IntermediateDirectory)/APICommonCode_QTSSModuleUtils$(ObjectSuffix) $(IncludePath)
$(IntermediateDirectory)/APICommonCode_QTSSModuleUtils$(DependSuffix): APICommonCode/QTSSModuleUtils.cpp
	@$(CXX) $(CXXFLAGS) $(IncludePCH) $(IncludePath) -MG -MP -MT$(IntermediateDirectory)/APICommonCode_QTSSModuleUtils$(ObjectSuffix) -MF$(IntermediateDirectory)/APICommonCode_QTSSModuleUtils$(DependSuffix) -MM "APICommonCode/QTSSModuleUtils.cpp"

$(IntermediateDirectory)/APICommonCode_QTSSModuleUtils$(PreprocessSuffix): APICommonCode/QTSSModuleUtils.cpp
	@$(CXX) $(CXXFLAGS) $(IncludePCH) $(IncludePath) $(PreprocessOnlySwitch) $(OutputSwitch) $(IntermediateDirectory)/APICommonCode_QTSSModuleUtils$(PreprocessSuffix) "APICommonCode/QTSSModuleUtils.cpp"

$(IntermediateDirectory)/APICommonCode_QTAccessFile$(ObjectSuffix): APICommonCode/QTAccessFile.cpp $(IntermediateDirectory)/APICommonCode_QTAccessFile$(DependSuffix)
	$(CXX) $(IncludePCH) $(SourceSwitch) "/home/fym/cpp-project/RTSPServer/APICommonCode/QTAccessFile.cpp" $(CXXFLAGS) $(ObjectSwitch)$(IntermediateDirectory)/APICommonCode_QTAccessFile$(ObjectSuffix) $(IncludePath)
$(IntermediateDirectory)/APICommonCode_QTAccessFile$(DependSuffix): APICommonCode/QTAccessFile.cpp
	@$(CXX) $(CXXFLAGS) $(IncludePCH) $(IncludePath) -MG -MP -MT$(IntermediateDirectory)/APICommonCode_QTAccessFile$(ObjectSuffix) -MF$(IntermediateDirectory)/APICommonCode_QTAccessFile$(DependSuffix) -MM "APICommonCode/QTAccessFile.cpp"

$(IntermediateDirectory)/APICommonCode_QTAccessFile$(PreprocessSuffix): APICommonCode/QTAccessFile.cpp
	@$(CXX) $(CXXFLAGS) $(IncludePCH) $(IncludePath) $(PreprocessOnlySwitch) $(OutputSwitch) $(IntermediateDirectory)/APICommonCode_QTAccessFile$(PreprocessSuffix) "APICommonCode/QTAccessFile.cpp"

$(IntermediateDirectory)/APICommonCode_QTSSRollingLog$(ObjectSuffix): APICommonCode/QTSSRollingLog.cpp $(IntermediateDirectory)/APICommonCode_QTSSRollingLog$(DependSuffix)
	$(CXX) $(IncludePCH) $(SourceSwitch) "/home/fym/cpp-project/RTSPServer/APICommonCode/QTSSRollingLog.cpp" $(CXXFLAGS) $(ObjectSwitch)$(IntermediateDirectory)/APICommonCode_QTSSRollingLog$(ObjectSuffix) $(IncludePath)
$(IntermediateDirectory)/APICommonCode_QTSSRollingLog$(DependSuffix): APICommonCode/QTSSRollingLog.cpp
	@$(CXX) $(CXXFLAGS) $(IncludePCH) $(IncludePath) -MG -MP -MT$(IntermediateDirectory)/APICommonCode_QTSSRollingLog$(ObjectSuffix) -MF$(IntermediateDirectory)/APICommonCode_QTSSRollingLog$(DependSuffix) -MM "APICommonCode/QTSSRollingLog.cpp"

$(IntermediateDirectory)/APICommonCode_QTSSRollingLog$(PreprocessSuffix): APICommonCode/QTSSRollingLog.cpp
	@$(CXX) $(CXXFLAGS) $(IncludePCH) $(IncludePath) $(PreprocessOnlySwitch) $(OutputSwitch) $(IntermediateDirectory)/APICommonCode_QTSSRollingLog$(PreprocessSuffix) "APICommonCode/QTSSRollingLog.cpp"

$(IntermediateDirectory)/APICommonCode_SourceInfo$(ObjectSuffix): APICommonCode/SourceInfo.cpp $(IntermediateDirectory)/APICommonCode_SourceInfo$(DependSuffix)
	$(CXX) $(IncludePCH) $(SourceSwitch) "/home/fym/cpp-project/RTSPServer/APICommonCode/SourceInfo.cpp" $(CXXFLAGS) $(ObjectSwitch)$(IntermediateDirectory)/APICommonCode_SourceInfo$(ObjectSuffix) $(IncludePath)
$(IntermediateDirectory)/APICommonCode_SourceInfo$(DependSuffix): APICommonCode/SourceInfo.cpp
	@$(CXX) $(CXXFLAGS) $(IncludePCH) $(IncludePath) -MG -MP -MT$(IntermediateDirectory)/APICommonCode_SourceInfo$(ObjectSuffix) -MF$(IntermediateDirectory)/APICommonCode_SourceInfo$(DependSuffix) -MM "APICommonCode/SourceInfo.cpp"

$(IntermediateDirectory)/APICommonCode_SourceInfo$(PreprocessSuffix): APICommonCode/SourceInfo.cpp
	@$(CXX) $(CXXFLAGS) $(IncludePCH) $(IncludePath) $(PreprocessOnlySwitch) $(OutputSwitch) $(IntermediateDirectory)/APICommonCode_SourceInfo$(PreprocessSuffix) "APICommonCode/SourceInfo.cpp"

$(IntermediateDirectory)/APICommonCode_SDPSourceInfo$(ObjectSuffix): APICommonCode/SDPSourceInfo.cpp $(IntermediateDirectory)/APICommonCode_SDPSourceInfo$(DependSuffix)
	$(CXX) $(IncludePCH) $(SourceSwitch) "/home/fym/cpp-project/RTSPServer/APICommonCode/SDPSourceInfo.cpp" $(CXXFLAGS) $(ObjectSwitch)$(IntermediateDirectory)/APICommonCode_SDPSourceInfo$(ObjectSuffix) $(IncludePath)
$(IntermediateDirectory)/APICommonCode_SDPSourceInfo$(DependSuffix): APICommonCode/SDPSourceInfo.cpp
	@$(CXX) $(CXXFLAGS) $(IncludePCH) $(IncludePath) -MG -MP -MT$(IntermediateDirectory)/APICommonCode_SDPSourceInfo$(ObjectSuffix) -MF$(IntermediateDirectory)/APICommonCode_SDPSourceInfo$(DependSuffix) -MM "APICommonCode/SDPSourceInfo.cpp"

$(IntermediateDirectory)/APICommonCode_SDPSourceInfo$(PreprocessSuffix): APICommonCode/SDPSourceInfo.cpp
	@$(CXX) $(CXXFLAGS) $(IncludePCH) $(IncludePath) $(PreprocessOnlySwitch) $(OutputSwitch) $(IntermediateDirectory)/APICommonCode_SDPSourceInfo$(PreprocessSuffix) "APICommonCode/SDPSourceInfo.cpp"

$(IntermediateDirectory)/APIStubLib_QTSS_Private$(ObjectSuffix): APIStubLib/QTSS_Private.cpp $(IntermediateDirectory)/APIStubLib_QTSS_Private$(DependSuffix)
	$(CXX) $(IncludePCH) $(SourceSwitch) "/home/fym/cpp-project/RTSPServer/APIStubLib/QTSS_Private.cpp" $(CXXFLAGS) $(ObjectSwitch)$(IntermediateDirectory)/APIStubLib_QTSS_Private$(ObjectSuffix) $(IncludePath)
$(IntermediateDirectory)/APIStubLib_QTSS_Private$(DependSuffix): APIStubLib/QTSS_Private.cpp
	@$(CXX) $(CXXFLAGS) $(IncludePCH) $(IncludePath) -MG -MP -MT$(IntermediateDirectory)/APIStubLib_QTSS_Private$(ObjectSuffix) -MF$(IntermediateDirectory)/APIStubLib_QTSS_Private$(DependSuffix) -MM "APIStubLib/QTSS_Private.cpp"

$(IntermediateDirectory)/APIStubLib_QTSS_Private$(PreprocessSuffix): APIStubLib/QTSS_Private.cpp
	@$(CXX) $(CXXFLAGS) $(IncludePCH) $(IncludePath) $(PreprocessOnlySwitch) $(OutputSwitch) $(IntermediateDirectory)/APIStubLib_QTSS_Private$(PreprocessSuffix) "APIStubLib/QTSS_Private.cpp"

$(IntermediateDirectory)/CommonUtilitiesLib_ev$(ObjectSuffix): CommonUtilitiesLib/ev.cpp $(IntermediateDirectory)/CommonUtilitiesLib_ev$(DependSuffix)
	$(CXX) $(IncludePCH) $(SourceSwitch) "/home/fym/cpp-project/RTSPServer/CommonUtilitiesLib/ev.cpp" $(CXXFLAGS) $(ObjectSwitch)$(IntermediateDirectory)/CommonUtilitiesLib_ev$(ObjectSuffix) $(IncludePath)
$(IntermediateDirectory)/CommonUtilitiesLib_ev$(DependSuffix): CommonUtilitiesLib/ev.cpp
	@$(CXX) $(CXXFLAGS) $(IncludePCH) $(IncludePath) -MG -MP -MT$(IntermediateDirectory)/CommonUtilitiesLib_ev$(ObjectSuffix) -MF$(IntermediateDirectory)/CommonUtilitiesLib_ev$(DependSuffix) -MM "CommonUtilitiesLib/ev.cpp"

$(IntermediateDirectory)/CommonUtilitiesLib_ev$(PreprocessSuffix): CommonUtilitiesLib/ev.cpp
	@$(CXX) $(CXXFLAGS) $(IncludePCH) $(IncludePath) $(PreprocessOnlySwitch) $(OutputSwitch) $(IntermediateDirectory)/CommonUtilitiesLib_ev$(PreprocessSuffix) "CommonUtilitiesLib/ev.cpp"

$(IntermediateDirectory)/CommonUtilitiesLib_base64$(ObjectSuffix): CommonUtilitiesLib/base64.c $(IntermediateDirectory)/CommonUtilitiesLib_base64$(DependSuffix)
	$(CC) $(SourceSwitch) "/home/fym/cpp-project/RTSPServer/CommonUtilitiesLib/base64.c" $(CFLAGS) $(ObjectSwitch)$(IntermediateDirectory)/CommonUtilitiesLib_base64$(ObjectSuffix) $(IncludePath)
$(IntermediateDirectory)/CommonUtilitiesLib_base64$(DependSuffix): CommonUtilitiesLib/base64.c
	@$(CC) $(CFLAGS) $(IncludePath) -MG -MP -MT$(IntermediateDirectory)/CommonUtilitiesLib_base64$(ObjectSuffix) -MF$(IntermediateDirectory)/CommonUtilitiesLib_base64$(DependSuffix) -MM "CommonUtilitiesLib/base64.c"

$(IntermediateDirectory)/CommonUtilitiesLib_base64$(PreprocessSuffix): CommonUtilitiesLib/base64.c
	@$(CC) $(CFLAGS) $(IncludePath) $(PreprocessOnlySwitch) $(OutputSwitch) $(IntermediateDirectory)/CommonUtilitiesLib_base64$(PreprocessSuffix) "CommonUtilitiesLib/base64.c"

$(IntermediateDirectory)/CommonUtilitiesLib_MyAssert$(ObjectSuffix): CommonUtilitiesLib/MyAssert.cpp $(IntermediateDirectory)/CommonUtilitiesLib_MyAssert$(DependSuffix)
	$(CXX) $(IncludePCH) $(SourceSwitch) "/home/fym/cpp-project/RTSPServer/CommonUtilitiesLib/MyAssert.cpp" $(CXXFLAGS) $(ObjectSwitch)$(IntermediateDirectory)/CommonUtilitiesLib_MyAssert$(ObjectSuffix) $(IncludePath)
$(IntermediateDirectory)/CommonUtilitiesLib_MyAssert$(DependSuffix): CommonUtilitiesLib/MyAssert.cpp
	@$(CXX) $(CXXFLAGS) $(IncludePCH) $(IncludePath) -MG -MP -MT$(IntermediateDirectory)/CommonUtilitiesLib_MyAssert$(ObjectSuffix) -MF$(IntermediateDirectory)/CommonUtilitiesLib_MyAssert$(DependSuffix) -MM "CommonUtilitiesLib/MyAssert.cpp"

$(IntermediateDirectory)/CommonUtilitiesLib_MyAssert$(PreprocessSuffix): CommonUtilitiesLib/MyAssert.cpp
	@$(CXX) $(CXXFLAGS) $(IncludePCH) $(IncludePath) $(PreprocessOnlySwitch) $(OutputSwitch) $(IntermediateDirectory)/CommonUtilitiesLib_MyAssert$(PreprocessSuffix) "CommonUtilitiesLib/MyAssert.cpp"

$(IntermediateDirectory)/CommonUtilitiesLib_getopt$(ObjectSuffix): CommonUtilitiesLib/getopt.c $(IntermediateDirectory)/CommonUtilitiesLib_getopt$(DependSuffix)
	$(CC) $(SourceSwitch) "/home/fym/cpp-project/RTSPServer/CommonUtilitiesLib/getopt.c" $(CFLAGS) $(ObjectSwitch)$(IntermediateDirectory)/CommonUtilitiesLib_getopt$(ObjectSuffix) $(IncludePath)
$(IntermediateDirectory)/CommonUtilitiesLib_getopt$(DependSuffix): CommonUtilitiesLib/getopt.c
	@$(CC) $(CFLAGS) $(IncludePath) -MG -MP -MT$(IntermediateDirectory)/CommonUtilitiesLib_getopt$(ObjectSuffix) -MF$(IntermediateDirectory)/CommonUtilitiesLib_getopt$(DependSuffix) -MM "CommonUtilitiesLib/getopt.c"

$(IntermediateDirectory)/CommonUtilitiesLib_getopt$(PreprocessSuffix): CommonUtilitiesLib/getopt.c
	@$(CC) $(CFLAGS) $(IncludePath) $(PreprocessOnlySwitch) $(OutputSwitch) $(IntermediateDirectory)/CommonUtilitiesLib_getopt$(PreprocessSuffix) "CommonUtilitiesLib/getopt.c"

$(IntermediateDirectory)/CommonUtilitiesLib_UDPDemuxer$(ObjectSuffix): CommonUtilitiesLib/UDPDemuxer.cpp $(IntermediateDirectory)/CommonUtilitiesLib_UDPDemuxer$(DependSuffix)
	$(CXX) $(IncludePCH) $(SourceSwitch) "/home/fym/cpp-project/RTSPServer/CommonUtilitiesLib/UDPDemuxer.cpp" $(CXXFLAGS) $(ObjectSwitch)$(IntermediateDirectory)/CommonUtilitiesLib_UDPDemuxer$(ObjectSuffix) $(IncludePath)
$(IntermediateDirectory)/CommonUtilitiesLib_UDPDemuxer$(DependSuffix): CommonUtilitiesLib/UDPDemuxer.cpp
	@$(CXX) $(CXXFLAGS) $(IncludePCH) $(IncludePath) -MG -MP -MT$(IntermediateDirectory)/CommonUtilitiesLib_UDPDemuxer$(ObjectSuffix) -MF$(IntermediateDirectory)/CommonUtilitiesLib_UDPDemuxer$(DependSuffix) -MM "CommonUtilitiesLib/UDPDemuxer.cpp"

$(IntermediateDirectory)/CommonUtilitiesLib_UDPDemuxer$(PreprocessSuffix): CommonUtilitiesLib/UDPDemuxer.cpp
	@$(CXX) $(CXXFLAGS) $(IncludePCH) $(IncludePath) $(PreprocessOnlySwitch) $(OutputSwitch) $(IntermediateDirectory)/CommonUtilitiesLib_UDPDemuxer$(PreprocessSuffix) "CommonUtilitiesLib/UDPDemuxer.cpp"

$(IntermediateDirectory)/CommonUtilitiesLib_StringFormatter$(ObjectSuffix): CommonUtilitiesLib/StringFormatter.cpp $(IntermediateDirectory)/CommonUtilitiesLib_StringFormatter$(DependSuffix)
	$(CXX) $(IncludePCH) $(SourceSwitch) "/home/fym/cpp-project/RTSPServer/CommonUtilitiesLib/StringFormatter.cpp" $(CXXFLAGS) $(ObjectSwitch)$(IntermediateDirectory)/CommonUtilitiesLib_StringFormatter$(ObjectSuffix) $(IncludePath)
$(IntermediateDirectory)/CommonUtilitiesLib_StringFormatter$(DependSuffix): CommonUtilitiesLib/StringFormatter.cpp
	@$(CXX) $(CXXFLAGS) $(IncludePCH) $(IncludePath) -MG -MP -MT$(IntermediateDirectory)/CommonUtilitiesLib_StringFormatter$(ObjectSuffix) -MF$(IntermediateDirectory)/CommonUtilitiesLib_StringFormatter$(DependSuffix) -MM "CommonUtilitiesLib/StringFormatter.cpp"

$(IntermediateDirectory)/CommonUtilitiesLib_StringFormatter$(PreprocessSuffix): CommonUtilitiesLib/StringFormatter.cpp
	@$(CXX) $(CXXFLAGS) $(IncludePCH) $(IncludePath) $(PreprocessOnlySwitch) $(OutputSwitch) $(IntermediateDirectory)/CommonUtilitiesLib_StringFormatter$(PreprocessSuffix) "CommonUtilitiesLib/StringFormatter.cpp"

$(IntermediateDirectory)/CommonUtilitiesLib_SDPUtils$(ObjectSuffix): CommonUtilitiesLib/SDPUtils.cpp $(IntermediateDirectory)/CommonUtilitiesLib_SDPUtils$(DependSuffix)
	$(CXX) $(IncludePCH) $(SourceSwitch) "/home/fym/cpp-project/RTSPServer/CommonUtilitiesLib/SDPUtils.cpp" $(CXXFLAGS) $(ObjectSwitch)$(IntermediateDirectory)/CommonUtilitiesLib_SDPUtils$(ObjectSuffix) $(IncludePath)
$(IntermediateDirectory)/CommonUtilitiesLib_SDPUtils$(DependSuffix): CommonUtilitiesLib/SDPUtils.cpp
	@$(CXX) $(CXXFLAGS) $(IncludePCH) $(IncludePath) -MG -MP -MT$(IntermediateDirectory)/CommonUtilitiesLib_SDPUtils$(ObjectSuffix) -MF$(IntermediateDirectory)/CommonUtilitiesLib_SDPUtils$(DependSuffix) -MM "CommonUtilitiesLib/SDPUtils.cpp"

$(IntermediateDirectory)/CommonUtilitiesLib_SDPUtils$(PreprocessSuffix): CommonUtilitiesLib/SDPUtils.cpp
	@$(CXX) $(CXXFLAGS) $(IncludePCH) $(IncludePath) $(PreprocessOnlySwitch) $(OutputSwitch) $(IntermediateDirectory)/CommonUtilitiesLib_SDPUtils$(PreprocessSuffix) "CommonUtilitiesLib/SDPUtils.cpp"

$(IntermediateDirectory)/CommonUtilitiesLib_StringParser$(ObjectSuffix): CommonUtilitiesLib/StringParser.cpp $(IntermediateDirectory)/CommonUtilitiesLib_StringParser$(DependSuffix)
	$(CXX) $(IncludePCH) $(SourceSwitch) "/home/fym/cpp-project/RTSPServer/CommonUtilitiesLib/StringParser.cpp" $(CXXFLAGS) $(ObjectSwitch)$(IntermediateDirectory)/CommonUtilitiesLib_StringParser$(ObjectSuffix) $(IncludePath)
$(IntermediateDirectory)/CommonUtilitiesLib_StringParser$(DependSuffix): CommonUtilitiesLib/StringParser.cpp
	@$(CXX) $(CXXFLAGS) $(IncludePCH) $(IncludePath) -MG -MP -MT$(IntermediateDirectory)/CommonUtilitiesLib_StringParser$(ObjectSuffix) -MF$(IntermediateDirectory)/CommonUtilitiesLib_StringParser$(DependSuffix) -MM "CommonUtilitiesLib/StringParser.cpp"

$(IntermediateDirectory)/CommonUtilitiesLib_StringParser$(PreprocessSuffix): CommonUtilitiesLib/StringParser.cpp
	@$(CXX) $(CXXFLAGS) $(IncludePCH) $(IncludePath) $(PreprocessOnlySwitch) $(OutputSwitch) $(IntermediateDirectory)/CommonUtilitiesLib_StringParser$(PreprocessSuffix) "CommonUtilitiesLib/StringParser.cpp"

$(IntermediateDirectory)/CommonUtilitiesLib_DateTranslator$(ObjectSuffix): CommonUtilitiesLib/DateTranslator.cpp $(IntermediateDirectory)/CommonUtilitiesLib_DateTranslator$(DependSuffix)
	$(CXX) $(IncludePCH) $(SourceSwitch) "/home/fym/cpp-project/RTSPServer/CommonUtilitiesLib/DateTranslator.cpp" $(CXXFLAGS) $(ObjectSwitch)$(IntermediateDirectory)/CommonUtilitiesLib_DateTranslator$(ObjectSuffix) $(IncludePath)
$(IntermediateDirectory)/CommonUtilitiesLib_DateTranslator$(DependSuffix): CommonUtilitiesLib/DateTranslator.cpp
	@$(CXX) $(CXXFLAGS) $(IncludePCH) $(IncludePath) -MG -MP -MT$(IntermediateDirectory)/CommonUtilitiesLib_DateTranslator$(ObjectSuffix) -MF$(IntermediateDirectory)/CommonUtilitiesLib_DateTranslator$(DependSuffix) -MM "CommonUtilitiesLib/DateTranslator.cpp"

$(IntermediateDirectory)/CommonUtilitiesLib_DateTranslator$(PreprocessSuffix): CommonUtilitiesLib/DateTranslator.cpp
	@$(CXX) $(CXXFLAGS) $(IncludePCH) $(IncludePath) $(PreprocessOnlySwitch) $(OutputSwitch) $(IntermediateDirectory)/CommonUtilitiesLib_DateTranslator$(PreprocessSuffix) "CommonUtilitiesLib/DateTranslator.cpp"

$(IntermediateDirectory)/CommonUtilitiesLib_QueryParamList$(ObjectSuffix): CommonUtilitiesLib/QueryParamList.cpp $(IntermediateDirectory)/CommonUtilitiesLib_QueryParamList$(DependSuffix)
	$(CXX) $(IncludePCH) $(SourceSwitch) "/home/fym/cpp-project/RTSPServer/CommonUtilitiesLib/QueryParamList.cpp" $(CXXFLAGS) $(ObjectSwitch)$(IntermediateDirectory)/CommonUtilitiesLib_QueryParamList$(ObjectSuffix) $(IncludePath)
$(IntermediateDirectory)/CommonUtilitiesLib_QueryParamList$(DependSuffix): CommonUtilitiesLib/QueryParamList.cpp
	@$(CXX) $(CXXFLAGS) $(IncludePCH) $(IncludePath) -MG -MP -MT$(IntermediateDirectory)/CommonUtilitiesLib_QueryParamList$(ObjectSuffix) -MF$(IntermediateDirectory)/CommonUtilitiesLib_QueryParamList$(DependSuffix) -MM "CommonUtilitiesLib/QueryParamList.cpp"

$(IntermediateDirectory)/CommonUtilitiesLib_QueryParamList$(PreprocessSuffix): CommonUtilitiesLib/QueryParamList.cpp
	@$(CXX) $(CXXFLAGS) $(IncludePCH) $(IncludePath) $(PreprocessOnlySwitch) $(OutputSwitch) $(IntermediateDirectory)/CommonUtilitiesLib_QueryParamList$(PreprocessSuffix) "CommonUtilitiesLib/QueryParamList.cpp"

$(IntermediateDirectory)/CommonUtilitiesLib_OSCodeFragment$(ObjectSuffix): CommonUtilitiesLib/OSCodeFragment.cpp $(IntermediateDirectory)/CommonUtilitiesLib_OSCodeFragment$(DependSuffix)
	$(CXX) $(IncludePCH) $(SourceSwitch) "/home/fym/cpp-project/RTSPServer/CommonUtilitiesLib/OSCodeFragment.cpp" $(CXXFLAGS) $(ObjectSwitch)$(IntermediateDirectory)/CommonUtilitiesLib_OSCodeFragment$(ObjectSuffix) $(IncludePath)
$(IntermediateDirectory)/CommonUtilitiesLib_OSCodeFragment$(DependSuffix): CommonUtilitiesLib/OSCodeFragment.cpp
	@$(CXX) $(CXXFLAGS) $(IncludePCH) $(IncludePath) -MG -MP -MT$(IntermediateDirectory)/CommonUtilitiesLib_OSCodeFragment$(ObjectSuffix) -MF$(IntermediateDirectory)/CommonUtilitiesLib_OSCodeFragment$(DependSuffix) -MM "CommonUtilitiesLib/OSCodeFragment.cpp"

$(IntermediateDirectory)/CommonUtilitiesLib_OSCodeFragment$(PreprocessSuffix): CommonUtilitiesLib/OSCodeFragment.cpp
	@$(CXX) $(CXXFLAGS) $(IncludePCH) $(IncludePath) $(PreprocessOnlySwitch) $(OutputSwitch) $(IntermediateDirectory)/CommonUtilitiesLib_OSCodeFragment$(PreprocessSuffix) "CommonUtilitiesLib/OSCodeFragment.cpp"

$(IntermediateDirectory)/CommonUtilitiesLib_OSBufferPool$(ObjectSuffix): CommonUtilitiesLib/OSBufferPool.cpp $(IntermediateDirectory)/CommonUtilitiesLib_OSBufferPool$(DependSuffix)
	$(CXX) $(IncludePCH) $(SourceSwitch) "/home/fym/cpp-project/RTSPServer/CommonUtilitiesLib/OSBufferPool.cpp" $(CXXFLAGS) $(ObjectSwitch)$(IntermediateDirectory)/CommonUtilitiesLib_OSBufferPool$(ObjectSuffix) $(IncludePath)
$(IntermediateDirectory)/CommonUtilitiesLib_OSBufferPool$(DependSuffix): CommonUtilitiesLib/OSBufferPool.cpp
	@$(CXX) $(CXXFLAGS) $(IncludePCH) $(IncludePath) -MG -MP -MT$(IntermediateDirectory)/CommonUtilitiesLib_OSBufferPool$(ObjectSuffix) -MF$(IntermediateDirectory)/CommonUtilitiesLib_OSBufferPool$(DependSuffix) -MM "CommonUtilitiesLib/OSBufferPool.cpp"

$(IntermediateDirectory)/CommonUtilitiesLib_OSBufferPool$(PreprocessSuffix): CommonUtilitiesLib/OSBufferPool.cpp
	@$(CXX) $(CXXFLAGS) $(IncludePCH) $(IncludePath) $(PreprocessOnlySwitch) $(OutputSwitch) $(IntermediateDirectory)/CommonUtilitiesLib_OSBufferPool$(PreprocessSuffix) "CommonUtilitiesLib/OSBufferPool.cpp"

$(IntermediateDirectory)/CommonUtilitiesLib_UDPSocketPool$(ObjectSuffix): CommonUtilitiesLib/UDPSocketPool.cpp $(IntermediateDirectory)/CommonUtilitiesLib_UDPSocketPool$(DependSuffix)
	$(CXX) $(IncludePCH) $(SourceSwitch) "/home/fym/cpp-project/RTSPServer/CommonUtilitiesLib/UDPSocketPool.cpp" $(CXXFLAGS) $(ObjectSwitch)$(IntermediateDirectory)/CommonUtilitiesLib_UDPSocketPool$(ObjectSuffix) $(IncludePath)
$(IntermediateDirectory)/CommonUtilitiesLib_UDPSocketPool$(DependSuffix): CommonUtilitiesLib/UDPSocketPool.cpp
	@$(CXX) $(CXXFLAGS) $(IncludePCH) $(IncludePath) -MG -MP -MT$(IntermediateDirectory)/CommonUtilitiesLib_UDPSocketPool$(ObjectSuffix) -MF$(IntermediateDirectory)/CommonUtilitiesLib_UDPSocketPool$(DependSuffix) -MM "CommonUtilitiesLib/UDPSocketPool.cpp"

$(IntermediateDirectory)/CommonUtilitiesLib_UDPSocketPool$(PreprocessSuffix): CommonUtilitiesLib/UDPSocketPool.cpp
	@$(CXX) $(CXXFLAGS) $(IncludePCH) $(IncludePath) $(PreprocessOnlySwitch) $(OutputSwitch) $(IntermediateDirectory)/CommonUtilitiesLib_UDPSocketPool$(PreprocessSuffix) "CommonUtilitiesLib/UDPSocketPool.cpp"

$(IntermediateDirectory)/CommonUtilitiesLib_StringTranslator$(ObjectSuffix): CommonUtilitiesLib/StringTranslator.cpp $(IntermediateDirectory)/CommonUtilitiesLib_StringTranslator$(DependSuffix)
	$(CXX) $(IncludePCH) $(SourceSwitch) "/home/fym/cpp-project/RTSPServer/CommonUtilitiesLib/StringTranslator.cpp" $(CXXFLAGS) $(ObjectSwitch)$(IntermediateDirectory)/CommonUtilitiesLib_StringTranslator$(ObjectSuffix) $(IncludePath)
$(IntermediateDirectory)/CommonUtilitiesLib_StringTranslator$(DependSuffix): CommonUtilitiesLib/StringTranslator.cpp
	@$(CXX) $(CXXFLAGS) $(IncludePCH) $(IncludePath) -MG -MP -MT$(IntermediateDirectory)/CommonUtilitiesLib_StringTranslator$(ObjectSuffix) -MF$(IntermediateDirectory)/CommonUtilitiesLib_StringTranslator$(DependSuffix) -MM "CommonUtilitiesLib/StringTranslator.cpp"

$(IntermediateDirectory)/CommonUtilitiesLib_StringTranslator$(PreprocessSuffix): CommonUtilitiesLib/StringTranslator.cpp
	@$(CXX) $(CXXFLAGS) $(IncludePCH) $(IncludePath) $(PreprocessOnlySwitch) $(OutputSwitch) $(IntermediateDirectory)/CommonUtilitiesLib_StringTranslator$(PreprocessSuffix) "CommonUtilitiesLib/StringTranslator.cpp"

$(IntermediateDirectory)/CommonUtilitiesLib_OSCond$(ObjectSuffix): CommonUtilitiesLib/OSCond.cpp $(IntermediateDirectory)/CommonUtilitiesLib_OSCond$(DependSuffix)
	$(CXX) $(IncludePCH) $(SourceSwitch) "/home/fym/cpp-project/RTSPServer/CommonUtilitiesLib/OSCond.cpp" $(CXXFLAGS) $(ObjectSwitch)$(IntermediateDirectory)/CommonUtilitiesLib_OSCond$(ObjectSuffix) $(IncludePath)
$(IntermediateDirectory)/CommonUtilitiesLib_OSCond$(DependSuffix): CommonUtilitiesLib/OSCond.cpp
	@$(CXX) $(CXXFLAGS) $(IncludePCH) $(IncludePath) -MG -MP -MT$(IntermediateDirectory)/CommonUtilitiesLib_OSCond$(ObjectSuffix) -MF$(IntermediateDirectory)/CommonUtilitiesLib_OSCond$(DependSuffix) -MM "CommonUtilitiesLib/OSCond.cpp"

$(IntermediateDirectory)/CommonUtilitiesLib_OSCond$(PreprocessSuffix): CommonUtilitiesLib/OSCond.cpp
	@$(CXX) $(CXXFLAGS) $(IncludePCH) $(IncludePath) $(PreprocessOnlySwitch) $(OutputSwitch) $(IntermediateDirectory)/CommonUtilitiesLib_OSCond$(PreprocessSuffix) "CommonUtilitiesLib/OSCond.cpp"

$(IntermediateDirectory)/CommonUtilitiesLib_IdleTask$(ObjectSuffix): CommonUtilitiesLib/IdleTask.cpp $(IntermediateDirectory)/CommonUtilitiesLib_IdleTask$(DependSuffix)
	$(CXX) $(IncludePCH) $(SourceSwitch) "/home/fym/cpp-project/RTSPServer/CommonUtilitiesLib/IdleTask.cpp" $(CXXFLAGS) $(ObjectSwitch)$(IntermediateDirectory)/CommonUtilitiesLib_IdleTask$(ObjectSuffix) $(IncludePath)
$(IntermediateDirectory)/CommonUtilitiesLib_IdleTask$(DependSuffix): CommonUtilitiesLib/IdleTask.cpp
	@$(CXX) $(CXXFLAGS) $(IncludePCH) $(IncludePath) -MG -MP -MT$(IntermediateDirectory)/CommonUtilitiesLib_IdleTask$(ObjectSuffix) -MF$(IntermediateDirectory)/CommonUtilitiesLib_IdleTask$(DependSuffix) -MM "CommonUtilitiesLib/IdleTask.cpp"

$(IntermediateDirectory)/CommonUtilitiesLib_IdleTask$(PreprocessSuffix): CommonUtilitiesLib/IdleTask.cpp
	@$(CXX) $(CXXFLAGS) $(IncludePCH) $(IncludePath) $(PreprocessOnlySwitch) $(OutputSwitch) $(IntermediateDirectory)/CommonUtilitiesLib_IdleTask$(PreprocessSuffix) "CommonUtilitiesLib/IdleTask.cpp"

$(IntermediateDirectory)/CommonUtilitiesLib_UDPSocket$(ObjectSuffix): CommonUtilitiesLib/UDPSocket.cpp $(IntermediateDirectory)/CommonUtilitiesLib_UDPSocket$(DependSuffix)
	$(CXX) $(IncludePCH) $(SourceSwitch) "/home/fym/cpp-project/RTSPServer/CommonUtilitiesLib/UDPSocket.cpp" $(CXXFLAGS) $(ObjectSwitch)$(IntermediateDirectory)/CommonUtilitiesLib_UDPSocket$(ObjectSuffix) $(IncludePath)
$(IntermediateDirectory)/CommonUtilitiesLib_UDPSocket$(DependSuffix): CommonUtilitiesLib/UDPSocket.cpp
	@$(CXX) $(CXXFLAGS) $(IncludePCH) $(IncludePath) -MG -MP -MT$(IntermediateDirectory)/CommonUtilitiesLib_UDPSocket$(ObjectSuffix) -MF$(IntermediateDirectory)/CommonUtilitiesLib_UDPSocket$(DependSuffix) -MM "CommonUtilitiesLib/UDPSocket.cpp"

$(IntermediateDirectory)/CommonUtilitiesLib_UDPSocket$(PreprocessSuffix): CommonUtilitiesLib/UDPSocket.cpp
	@$(CXX) $(CXXFLAGS) $(IncludePCH) $(IncludePath) $(PreprocessOnlySwitch) $(OutputSwitch) $(IntermediateDirectory)/CommonUtilitiesLib_UDPSocket$(PreprocessSuffix) "CommonUtilitiesLib/UDPSocket.cpp"

$(IntermediateDirectory)/CommonUtilitiesLib_Trim$(ObjectSuffix): CommonUtilitiesLib/Trim.c $(IntermediateDirectory)/CommonUtilitiesLib_Trim$(DependSuffix)
	$(CC) $(SourceSwitch) "/home/fym/cpp-project/RTSPServer/CommonUtilitiesLib/Trim.c" $(CFLAGS) $(ObjectSwitch)$(IntermediateDirectory)/CommonUtilitiesLib_Trim$(ObjectSuffix) $(IncludePath)
$(IntermediateDirectory)/CommonUtilitiesLib_Trim$(DependSuffix): CommonUtilitiesLib/Trim.c
	@$(CC) $(CFLAGS) $(IncludePath) -MG -MP -MT$(IntermediateDirectory)/CommonUtilitiesLib_Trim$(ObjectSuffix) -MF$(IntermediateDirectory)/CommonUtilitiesLib_Trim$(DependSuffix) -MM "CommonUtilitiesLib/Trim.c"

$(IntermediateDirectory)/CommonUtilitiesLib_Trim$(PreprocessSuffix): CommonUtilitiesLib/Trim.c
	@$(CC) $(CFLAGS) $(IncludePath) $(PreprocessOnlySwitch) $(OutputSwitch) $(IntermediateDirectory)/CommonUtilitiesLib_Trim$(PreprocessSuffix) "CommonUtilitiesLib/Trim.c"

$(IntermediateDirectory)/CommonUtilitiesLib_TimeoutTask$(ObjectSuffix): CommonUtilitiesLib/TimeoutTask.cpp $(IntermediateDirectory)/CommonUtilitiesLib_TimeoutTask$(DependSuffix)
	$(CXX) $(IncludePCH) $(SourceSwitch) "/home/fym/cpp-project/RTSPServer/CommonUtilitiesLib/TimeoutTask.cpp" $(CXXFLAGS) $(ObjectSwitch)$(IntermediateDirectory)/CommonUtilitiesLib_TimeoutTask$(ObjectSuffix) $(IncludePath)
$(IntermediateDirectory)/CommonUtilitiesLib_TimeoutTask$(DependSuffix): CommonUtilitiesLib/TimeoutTask.cpp
	@$(CXX) $(CXXFLAGS) $(IncludePCH) $(IncludePath) -MG -MP -MT$(IntermediateDirectory)/CommonUtilitiesLib_TimeoutTask$(ObjectSuffix) -MF$(IntermediateDirectory)/CommonUtilitiesLib_TimeoutTask$(DependSuffix) -MM "CommonUtilitiesLib/TimeoutTask.cpp"

$(IntermediateDirectory)/CommonUtilitiesLib_TimeoutTask$(PreprocessSuffix): CommonUtilitiesLib/TimeoutTask.cpp
	@$(CXX) $(CXXFLAGS) $(IncludePCH) $(IncludePath) $(PreprocessOnlySwitch) $(OutputSwitch) $(IntermediateDirectory)/CommonUtilitiesLib_TimeoutTask$(PreprocessSuffix) "CommonUtilitiesLib/TimeoutTask.cpp"

$(IntermediateDirectory)/CommonUtilitiesLib_UserAgentParser$(ObjectSuffix): CommonUtilitiesLib/UserAgentParser.cpp $(IntermediateDirectory)/CommonUtilitiesLib_UserAgentParser$(DependSuffix)
	$(CXX) $(IncludePCH) $(SourceSwitch) "/home/fym/cpp-project/RTSPServer/CommonUtilitiesLib/UserAgentParser.cpp" $(CXXFLAGS) $(ObjectSwitch)$(IntermediateDirectory)/CommonUtilitiesLib_UserAgentParser$(ObjectSuffix) $(IncludePath)
$(IntermediateDirectory)/CommonUtilitiesLib_UserAgentParser$(DependSuffix): CommonUtilitiesLib/UserAgentParser.cpp
	@$(CXX) $(CXXFLAGS) $(IncludePCH) $(IncludePath) -MG -MP -MT$(IntermediateDirectory)/CommonUtilitiesLib_UserAgentParser$(ObjectSuffix) -MF$(IntermediateDirectory)/CommonUtilitiesLib_UserAgentParser$(DependSuffix) -MM "CommonUtilitiesLib/UserAgentParser.cpp"

$(IntermediateDirectory)/CommonUtilitiesLib_UserAgentParser$(PreprocessSuffix): CommonUtilitiesLib/UserAgentParser.cpp
	@$(CXX) $(CXXFLAGS) $(IncludePCH) $(IncludePath) $(PreprocessOnlySwitch) $(OutputSwitch) $(IntermediateDirectory)/CommonUtilitiesLib_UserAgentParser$(PreprocessSuffix) "CommonUtilitiesLib/UserAgentParser.cpp"

$(IntermediateDirectory)/CommonUtilitiesLib_OS$(ObjectSuffix): CommonUtilitiesLib/OS.cpp $(IntermediateDirectory)/CommonUtilitiesLib_OS$(DependSuffix)
	$(CXX) $(IncludePCH) $(SourceSwitch) "/home/fym/cpp-project/RTSPServer/CommonUtilitiesLib/OS.cpp" $(CXXFLAGS) $(ObjectSwitch)$(IntermediateDirectory)/CommonUtilitiesLib_OS$(ObjectSuffix) $(IncludePath)
$(IntermediateDirectory)/CommonUtilitiesLib_OS$(DependSuffix): CommonUtilitiesLib/OS.cpp
	@$(CXX) $(CXXFLAGS) $(IncludePCH) $(IncludePath) -MG -MP -MT$(IntermediateDirectory)/CommonUtilitiesLib_OS$(ObjectSuffix) -MF$(IntermediateDirectory)/CommonUtilitiesLib_OS$(DependSuffix) -MM "CommonUtilitiesLib/OS.cpp"

$(IntermediateDirectory)/CommonUtilitiesLib_OS$(PreprocessSuffix): CommonUtilitiesLib/OS.cpp
	@$(CXX) $(CXXFLAGS) $(IncludePCH) $(IncludePath) $(PreprocessOnlySwitch) $(OutputSwitch) $(IntermediateDirectory)/CommonUtilitiesLib_OS$(PreprocessSuffix) "CommonUtilitiesLib/OS.cpp"

$(IntermediateDirectory)/CommonUtilitiesLib_Socket$(ObjectSuffix): CommonUtilitiesLib/Socket.cpp $(IntermediateDirectory)/CommonUtilitiesLib_Socket$(DependSuffix)
	$(CXX) $(IncludePCH) $(SourceSwitch) "/home/fym/cpp-project/RTSPServer/CommonUtilitiesLib/Socket.cpp" $(CXXFLAGS) $(ObjectSwitch)$(IntermediateDirectory)/CommonUtilitiesLib_Socket$(ObjectSuffix) $(IncludePath)
$(IntermediateDirectory)/CommonUtilitiesLib_Socket$(DependSuffix): CommonUtilitiesLib/Socket.cpp
	@$(CXX) $(CXXFLAGS) $(IncludePCH) $(IncludePath) -MG -MP -MT$(IntermediateDirectory)/CommonUtilitiesLib_Socket$(ObjectSuffix) -MF$(IntermediateDirectory)/CommonUtilitiesLib_Socket$(DependSuffix) -MM "CommonUtilitiesLib/Socket.cpp"

$(IntermediateDirectory)/CommonUtilitiesLib_Socket$(PreprocessSuffix): CommonUtilitiesLib/Socket.cpp
	@$(CXX) $(CXXFLAGS) $(IncludePCH) $(IncludePath) $(PreprocessOnlySwitch) $(OutputSwitch) $(IntermediateDirectory)/CommonUtilitiesLib_Socket$(PreprocessSuffix) "CommonUtilitiesLib/Socket.cpp"

$(IntermediateDirectory)/CommonUtilitiesLib_OSMutex$(ObjectSuffix): CommonUtilitiesLib/OSMutex.cpp $(IntermediateDirectory)/CommonUtilitiesLib_OSMutex$(DependSuffix)
	$(CXX) $(IncludePCH) $(SourceSwitch) "/home/fym/cpp-project/RTSPServer/CommonUtilitiesLib/OSMutex.cpp" $(CXXFLAGS) $(ObjectSwitch)$(IntermediateDirectory)/CommonUtilitiesLib_OSMutex$(ObjectSuffix) $(IncludePath)
$(IntermediateDirectory)/CommonUtilitiesLib_OSMutex$(DependSuffix): CommonUtilitiesLib/OSMutex.cpp
	@$(CXX) $(CXXFLAGS) $(IncludePCH) $(IncludePath) -MG -MP -MT$(IntermediateDirectory)/CommonUtilitiesLib_OSMutex$(ObjectSuffix) -MF$(IntermediateDirectory)/CommonUtilitiesLib_OSMutex$(DependSuffix) -MM "CommonUtilitiesLib/OSMutex.cpp"

$(IntermediateDirectory)/CommonUtilitiesLib_OSMutex$(PreprocessSuffix): CommonUtilitiesLib/OSMutex.cpp
	@$(CXX) $(CXXFLAGS) $(IncludePCH) $(IncludePath) $(PreprocessOnlySwitch) $(OutputSwitch) $(IntermediateDirectory)/CommonUtilitiesLib_OSMutex$(PreprocessSuffix) "CommonUtilitiesLib/OSMutex.cpp"

$(IntermediateDirectory)/CommonUtilitiesLib_OSFileSource$(ObjectSuffix): CommonUtilitiesLib/OSFileSource.cpp $(IntermediateDirectory)/CommonUtilitiesLib_OSFileSource$(DependSuffix)
	$(CXX) $(IncludePCH) $(SourceSwitch) "/home/fym/cpp-project/RTSPServer/CommonUtilitiesLib/OSFileSource.cpp" $(CXXFLAGS) $(ObjectSwitch)$(IntermediateDirectory)/CommonUtilitiesLib_OSFileSource$(ObjectSuffix) $(IncludePath)
$(IntermediateDirectory)/CommonUtilitiesLib_OSFileSource$(DependSuffix): CommonUtilitiesLib/OSFileSource.cpp
	@$(CXX) $(CXXFLAGS) $(IncludePCH) $(IncludePath) -MG -MP -MT$(IntermediateDirectory)/CommonUtilitiesLib_OSFileSource$(ObjectSuffix) -MF$(IntermediateDirectory)/CommonUtilitiesLib_OSFileSource$(DependSuffix) -MM "CommonUtilitiesLib/OSFileSource.cpp"

$(IntermediateDirectory)/CommonUtilitiesLib_OSFileSource$(PreprocessSuffix): CommonUtilitiesLib/OSFileSource.cpp
	@$(CXX) $(CXXFLAGS) $(IncludePCH) $(IncludePath) $(PreprocessOnlySwitch) $(OutputSwitch) $(IntermediateDirectory)/CommonUtilitiesLib_OSFileSource$(PreprocessSuffix) "CommonUtilitiesLib/OSFileSource.cpp"

$(IntermediateDirectory)/CommonUtilitiesLib_GetWord$(ObjectSuffix): CommonUtilitiesLib/GetWord.c $(IntermediateDirectory)/CommonUtilitiesLib_GetWord$(DependSuffix)
	$(CC) $(SourceSwitch) "/home/fym/cpp-project/RTSPServer/CommonUtilitiesLib/GetWord.c" $(CFLAGS) $(ObjectSwitch)$(IntermediateDirectory)/CommonUtilitiesLib_GetWord$(ObjectSuffix) $(IncludePath)
$(IntermediateDirectory)/CommonUtilitiesLib_GetWord$(DependSuffix): CommonUtilitiesLib/GetWord.c
	@$(CC) $(CFLAGS) $(IncludePath) -MG -MP -MT$(IntermediateDirectory)/CommonUtilitiesLib_GetWord$(ObjectSuffix) -MF$(IntermediateDirectory)/CommonUtilitiesLib_GetWord$(DependSuffix) -MM "CommonUtilitiesLib/GetWord.c"

$(IntermediateDirectory)/CommonUtilitiesLib_GetWord$(PreprocessSuffix): CommonUtilitiesLib/GetWord.c
	@$(CC) $(CFLAGS) $(IncludePath) $(PreprocessOnlySwitch) $(OutputSwitch) $(IntermediateDirectory)/CommonUtilitiesLib_GetWord$(PreprocessSuffix) "CommonUtilitiesLib/GetWord.c"

$(IntermediateDirectory)/CommonUtilitiesLib_OSMutexRW$(ObjectSuffix): CommonUtilitiesLib/OSMutexRW.cpp $(IntermediateDirectory)/CommonUtilitiesLib_OSMutexRW$(DependSuffix)
	$(CXX) $(IncludePCH) $(SourceSwitch) "/home/fym/cpp-project/RTSPServer/CommonUtilitiesLib/OSMutexRW.cpp" $(CXXFLAGS) $(ObjectSwitch)$(IntermediateDirectory)/CommonUtilitiesLib_OSMutexRW$(ObjectSuffix) $(IncludePath)
$(IntermediateDirectory)/CommonUtilitiesLib_OSMutexRW$(DependSuffix): CommonUtilitiesLib/OSMutexRW.cpp
	@$(CXX) $(CXXFLAGS) $(IncludePCH) $(IncludePath) -MG -MP -MT$(IntermediateDirectory)/CommonUtilitiesLib_OSMutexRW$(ObjectSuffix) -MF$(IntermediateDirectory)/CommonUtilitiesLib_OSMutexRW$(DependSuffix) -MM "CommonUtilitiesLib/OSMutexRW.cpp"

$(IntermediateDirectory)/CommonUtilitiesLib_OSMutexRW$(PreprocessSuffix): CommonUtilitiesLib/OSMutexRW.cpp
	@$(CXX) $(CXXFLAGS) $(IncludePCH) $(IncludePath) $(PreprocessOnlySwitch) $(OutputSwitch) $(IntermediateDirectory)/CommonUtilitiesLib_OSMutexRW$(PreprocessSuffix) "CommonUtilitiesLib/OSMutexRW.cpp"

$(IntermediateDirectory)/CommonUtilitiesLib_atomic$(ObjectSuffix): CommonUtilitiesLib/atomic.cpp $(IntermediateDirectory)/CommonUtilitiesLib_atomic$(DependSuffix)
	$(CXX) $(IncludePCH) $(SourceSwitch) "/home/fym/cpp-project/RTSPServer/CommonUtilitiesLib/atomic.cpp" $(CXXFLAGS) $(ObjectSwitch)$(IntermediateDirectory)/CommonUtilitiesLib_atomic$(ObjectSuffix) $(IncludePath)
$(IntermediateDirectory)/CommonUtilitiesLib_atomic$(DependSuffix): CommonUtilitiesLib/atomic.cpp
	@$(CXX) $(CXXFLAGS) $(IncludePCH) $(IncludePath) -MG -MP -MT$(IntermediateDirectory)/CommonUtilitiesLib_atomic$(ObjectSuffix) -MF$(IntermediateDirectory)/CommonUtilitiesLib_atomic$(DependSuffix) -MM "CommonUtilitiesLib/atomic.cpp"

$(IntermediateDirectory)/CommonUtilitiesLib_atomic$(PreprocessSuffix): CommonUtilitiesLib/atomic.cpp
	@$(CXX) $(CXXFLAGS) $(IncludePCH) $(IncludePath) $(PreprocessOnlySwitch) $(OutputSwitch) $(IntermediateDirectory)/CommonUtilitiesLib_atomic$(PreprocessSuffix) "CommonUtilitiesLib/atomic.cpp"

$(IntermediateDirectory)/CommonUtilitiesLib_ResizeableStringFormatter$(ObjectSuffix): CommonUtilitiesLib/ResizeableStringFormatter.cpp $(IntermediateDirectory)/CommonUtilitiesLib_ResizeableStringFormatter$(DependSuffix)
	$(CXX) $(IncludePCH) $(SourceSwitch) "/home/fym/cpp-project/RTSPServer/CommonUtilitiesLib/ResizeableStringFormatter.cpp" $(CXXFLAGS) $(ObjectSwitch)$(IntermediateDirectory)/CommonUtilitiesLib_ResizeableStringFormatter$(ObjectSuffix) $(IncludePath)
$(IntermediateDirectory)/CommonUtilitiesLib_ResizeableStringFormatter$(DependSuffix): CommonUtilitiesLib/ResizeableStringFormatter.cpp
	@$(CXX) $(CXXFLAGS) $(IncludePCH) $(IncludePath) -MG -MP -MT$(IntermediateDirectory)/CommonUtilitiesLib_ResizeableStringFormatter$(ObjectSuffix) -MF$(IntermediateDirectory)/CommonUtilitiesLib_ResizeableStringFormatter$(DependSuffix) -MM "CommonUtilitiesLib/ResizeableStringFormatter.cpp"

$(IntermediateDirectory)/CommonUtilitiesLib_ResizeableStringFormatter$(PreprocessSuffix): CommonUtilitiesLib/ResizeableStringFormatter.cpp
	@$(CXX) $(CXXFLAGS) $(IncludePCH) $(IncludePath) $(PreprocessOnlySwitch) $(OutputSwitch) $(IntermediateDirectory)/CommonUtilitiesLib_ResizeableStringFormatter$(PreprocessSuffix) "CommonUtilitiesLib/ResizeableStringFormatter.cpp"

$(IntermediateDirectory)/CommonUtilitiesLib_md5$(ObjectSuffix): CommonUtilitiesLib/md5.c $(IntermediateDirectory)/CommonUtilitiesLib_md5$(DependSuffix)
	$(CC) $(SourceSwitch) "/home/fym/cpp-project/RTSPServer/CommonUtilitiesLib/md5.c" $(CFLAGS) $(ObjectSwitch)$(IntermediateDirectory)/CommonUtilitiesLib_md5$(ObjectSuffix) $(IncludePath)
$(IntermediateDirectory)/CommonUtilitiesLib_md5$(DependSuffix): CommonUtilitiesLib/md5.c
	@$(CC) $(CFLAGS) $(IncludePath) -MG -MP -MT$(IntermediateDirectory)/CommonUtilitiesLib_md5$(ObjectSuffix) -MF$(IntermediateDirectory)/CommonUtilitiesLib_md5$(DependSuffix) -MM "CommonUtilitiesLib/md5.c"

$(IntermediateDirectory)/CommonUtilitiesLib_md5$(PreprocessSuffix): CommonUtilitiesLib/md5.c
	@$(CC) $(CFLAGS) $(IncludePath) $(PreprocessOnlySwitch) $(OutputSwitch) $(IntermediateDirectory)/CommonUtilitiesLib_md5$(PreprocessSuffix) "CommonUtilitiesLib/md5.c"

$(IntermediateDirectory)/CommonUtilitiesLib_md5digest$(ObjectSuffix): CommonUtilitiesLib/md5digest.cpp $(IntermediateDirectory)/CommonUtilitiesLib_md5digest$(DependSuffix)
	$(CXX) $(IncludePCH) $(SourceSwitch) "/home/fym/cpp-project/RTSPServer/CommonUtilitiesLib/md5digest.cpp" $(CXXFLAGS) $(ObjectSwitch)$(IntermediateDirectory)/CommonUtilitiesLib_md5digest$(ObjectSuffix) $(IncludePath)
$(IntermediateDirectory)/CommonUtilitiesLib_md5digest$(DependSuffix): CommonUtilitiesLib/md5digest.cpp
	@$(CXX) $(CXXFLAGS) $(IncludePCH) $(IncludePath) -MG -MP -MT$(IntermediateDirectory)/CommonUtilitiesLib_md5digest$(ObjectSuffix) -MF$(IntermediateDirectory)/CommonUtilitiesLib_md5digest$(DependSuffix) -MM "CommonUtilitiesLib/md5digest.cpp"

$(IntermediateDirectory)/CommonUtilitiesLib_md5digest$(PreprocessSuffix): CommonUtilitiesLib/md5digest.cpp
	@$(CXX) $(CXXFLAGS) $(IncludePCH) $(IncludePath) $(PreprocessOnlySwitch) $(OutputSwitch) $(IntermediateDirectory)/CommonUtilitiesLib_md5digest$(PreprocessSuffix) "CommonUtilitiesLib/md5digest.cpp"

$(IntermediateDirectory)/CommonUtilitiesLib_Task$(ObjectSuffix): CommonUtilitiesLib/Task.cpp $(IntermediateDirectory)/CommonUtilitiesLib_Task$(DependSuffix)
	$(CXX) $(IncludePCH) $(SourceSwitch) "/home/fym/cpp-project/RTSPServer/CommonUtilitiesLib/Task.cpp" $(CXXFLAGS) $(ObjectSwitch)$(IntermediateDirectory)/CommonUtilitiesLib_Task$(ObjectSuffix) $(IncludePath)
$(IntermediateDirectory)/CommonUtilitiesLib_Task$(DependSuffix): CommonUtilitiesLib/Task.cpp
	@$(CXX) $(CXXFLAGS) $(IncludePCH) $(IncludePath) -MG -MP -MT$(IntermediateDirectory)/CommonUtilitiesLib_Task$(ObjectSuffix) -MF$(IntermediateDirectory)/CommonUtilitiesLib_Task$(DependSuffix) -MM "CommonUtilitiesLib/Task.cpp"

$(IntermediateDirectory)/CommonUtilitiesLib_Task$(PreprocessSuffix): CommonUtilitiesLib/Task.cpp
	@$(CXX) $(CXXFLAGS) $(IncludePCH) $(IncludePath) $(PreprocessOnlySwitch) $(OutputSwitch) $(IntermediateDirectory)/CommonUtilitiesLib_Task$(PreprocessSuffix) "CommonUtilitiesLib/Task.cpp"

$(IntermediateDirectory)/CommonUtilitiesLib_OSRef$(ObjectSuffix): CommonUtilitiesLib/OSRef.cpp $(IntermediateDirectory)/CommonUtilitiesLib_OSRef$(DependSuffix)
	$(CXX) $(IncludePCH) $(SourceSwitch) "/home/fym/cpp-project/RTSPServer/CommonUtilitiesLib/OSRef.cpp" $(CXXFLAGS) $(ObjectSwitch)$(IntermediateDirectory)/CommonUtilitiesLib_OSRef$(ObjectSuffix) $(IncludePath)
$(IntermediateDirectory)/CommonUtilitiesLib_OSRef$(DependSuffix): CommonUtilitiesLib/OSRef.cpp
	@$(CXX) $(CXXFLAGS) $(IncludePCH) $(IncludePath) -MG -MP -MT$(IntermediateDirectory)/CommonUtilitiesLib_OSRef$(ObjectSuffix) -MF$(IntermediateDirectory)/CommonUtilitiesLib_OSRef$(DependSuffix) -MM "CommonUtilitiesLib/OSRef.cpp"

$(IntermediateDirectory)/CommonUtilitiesLib_OSRef$(PreprocessSuffix): CommonUtilitiesLib/OSRef.cpp
	@$(CXX) $(CXXFLAGS) $(IncludePCH) $(IncludePath) $(PreprocessOnlySwitch) $(OutputSwitch) $(IntermediateDirectory)/CommonUtilitiesLib_OSRef$(PreprocessSuffix) "CommonUtilitiesLib/OSRef.cpp"

$(IntermediateDirectory)/CommonUtilitiesLib_TCPSocket$(ObjectSuffix): CommonUtilitiesLib/TCPSocket.cpp $(IntermediateDirectory)/CommonUtilitiesLib_TCPSocket$(DependSuffix)
	$(CXX) $(IncludePCH) $(SourceSwitch) "/home/fym/cpp-project/RTSPServer/CommonUtilitiesLib/TCPSocket.cpp" $(CXXFLAGS) $(ObjectSwitch)$(IntermediateDirectory)/CommonUtilitiesLib_TCPSocket$(ObjectSuffix) $(IncludePath)
$(IntermediateDirectory)/CommonUtilitiesLib_TCPSocket$(DependSuffix): CommonUtilitiesLib/TCPSocket.cpp
	@$(CXX) $(CXXFLAGS) $(IncludePCH) $(IncludePath) -MG -MP -MT$(IntermediateDirectory)/CommonUtilitiesLib_TCPSocket$(ObjectSuffix) -MF$(IntermediateDirectory)/CommonUtilitiesLib_TCPSocket$(DependSuffix) -MM "CommonUtilitiesLib/TCPSocket.cpp"

$(IntermediateDirectory)/CommonUtilitiesLib_TCPSocket$(PreprocessSuffix): CommonUtilitiesLib/TCPSocket.cpp
	@$(CXX) $(CXXFLAGS) $(IncludePCH) $(IncludePath) $(PreprocessOnlySwitch) $(OutputSwitch) $(IntermediateDirectory)/CommonUtilitiesLib_TCPSocket$(PreprocessSuffix) "CommonUtilitiesLib/TCPSocket.cpp"

$(IntermediateDirectory)/CommonUtilitiesLib_ConfParser$(ObjectSuffix): CommonUtilitiesLib/ConfParser.cpp $(IntermediateDirectory)/CommonUtilitiesLib_ConfParser$(DependSuffix)
	$(CXX) $(IncludePCH) $(SourceSwitch) "/home/fym/cpp-project/RTSPServer/CommonUtilitiesLib/ConfParser.cpp" $(CXXFLAGS) $(ObjectSwitch)$(IntermediateDirectory)/CommonUtilitiesLib_ConfParser$(ObjectSuffix) $(IncludePath)
$(IntermediateDirectory)/CommonUtilitiesLib_ConfParser$(DependSuffix): CommonUtilitiesLib/ConfParser.cpp
	@$(CXX) $(CXXFLAGS) $(IncludePCH) $(IncludePath) -MG -MP -MT$(IntermediateDirectory)/CommonUtilitiesLib_ConfParser$(ObjectSuffix) -MF$(IntermediateDirectory)/CommonUtilitiesLib_ConfParser$(DependSuffix) -MM "CommonUtilitiesLib/ConfParser.cpp"

$(IntermediateDirectory)/CommonUtilitiesLib_ConfParser$(PreprocessSuffix): CommonUtilitiesLib/ConfParser.cpp
	@$(CXX) $(CXXFLAGS) $(IncludePCH) $(IncludePath) $(PreprocessOnlySwitch) $(OutputSwitch) $(IntermediateDirectory)/CommonUtilitiesLib_ConfParser$(PreprocessSuffix) "CommonUtilitiesLib/ConfParser.cpp"

$(IntermediateDirectory)/CommonUtilitiesLib_OSQueue$(ObjectSuffix): CommonUtilitiesLib/OSQueue.cpp $(IntermediateDirectory)/CommonUtilitiesLib_OSQueue$(DependSuffix)
	$(CXX) $(IncludePCH) $(SourceSwitch) "/home/fym/cpp-project/RTSPServer/CommonUtilitiesLib/OSQueue.cpp" $(CXXFLAGS) $(ObjectSwitch)$(IntermediateDirectory)/CommonUtilitiesLib_OSQueue$(ObjectSuffix) $(IncludePath)
$(IntermediateDirectory)/CommonUtilitiesLib_OSQueue$(DependSuffix): CommonUtilitiesLib/OSQueue.cpp
	@$(CXX) $(CXXFLAGS) $(IncludePCH) $(IncludePath) -MG -MP -MT$(IntermediateDirectory)/CommonUtilitiesLib_OSQueue$(ObjectSuffix) -MF$(IntermediateDirectory)/CommonUtilitiesLib_OSQueue$(DependSuffix) -MM "CommonUtilitiesLib/OSQueue.cpp"

$(IntermediateDirectory)/CommonUtilitiesLib_OSQueue$(PreprocessSuffix): CommonUtilitiesLib/OSQueue.cpp
	@$(CXX) $(CXXFLAGS) $(IncludePCH) $(IncludePath) $(PreprocessOnlySwitch) $(OutputSwitch) $(IntermediateDirectory)/CommonUtilitiesLib_OSQueue$(PreprocessSuffix) "CommonUtilitiesLib/OSQueue.cpp"

$(IntermediateDirectory)/CommonUtilitiesLib_OSHeap$(ObjectSuffix): CommonUtilitiesLib/OSHeap.cpp $(IntermediateDirectory)/CommonUtilitiesLib_OSHeap$(DependSuffix)
	$(CXX) $(IncludePCH) $(SourceSwitch) "/home/fym/cpp-project/RTSPServer/CommonUtilitiesLib/OSHeap.cpp" $(CXXFLAGS) $(ObjectSwitch)$(IntermediateDirectory)/CommonUtilitiesLib_OSHeap$(ObjectSuffix) $(IncludePath)
$(IntermediateDirectory)/CommonUtilitiesLib_OSHeap$(DependSuffix): CommonUtilitiesLib/OSHeap.cpp
	@$(CXX) $(CXXFLAGS) $(IncludePCH) $(IncludePath) -MG -MP -MT$(IntermediateDirectory)/CommonUtilitiesLib_OSHeap$(ObjectSuffix) -MF$(IntermediateDirectory)/CommonUtilitiesLib_OSHeap$(DependSuffix) -MM "CommonUtilitiesLib/OSHeap.cpp"

$(IntermediateDirectory)/CommonUtilitiesLib_OSHeap$(PreprocessSuffix): CommonUtilitiesLib/OSHeap.cpp
	@$(CXX) $(CXXFLAGS) $(IncludePCH) $(IncludePath) $(PreprocessOnlySwitch) $(OutputSwitch) $(IntermediateDirectory)/CommonUtilitiesLib_OSHeap$(PreprocessSuffix) "CommonUtilitiesLib/OSHeap.cpp"

$(IntermediateDirectory)/CommonUtilitiesLib_MakeDir$(ObjectSuffix): CommonUtilitiesLib/MakeDir.c $(IntermediateDirectory)/CommonUtilitiesLib_MakeDir$(DependSuffix)
	$(CC) $(SourceSwitch) "/home/fym/cpp-project/RTSPServer/CommonUtilitiesLib/MakeDir.c" $(CFLAGS) $(ObjectSwitch)$(IntermediateDirectory)/CommonUtilitiesLib_MakeDir$(ObjectSuffix) $(IncludePath)
$(IntermediateDirectory)/CommonUtilitiesLib_MakeDir$(DependSuffix): CommonUtilitiesLib/MakeDir.c
	@$(CC) $(CFLAGS) $(IncludePath) -MG -MP -MT$(IntermediateDirectory)/CommonUtilitiesLib_MakeDir$(ObjectSuffix) -MF$(IntermediateDirectory)/CommonUtilitiesLib_MakeDir$(DependSuffix) -MM "CommonUtilitiesLib/MakeDir.c"

$(IntermediateDirectory)/CommonUtilitiesLib_MakeDir$(PreprocessSuffix): CommonUtilitiesLib/MakeDir.c
	@$(CC) $(CFLAGS) $(IncludePath) $(PreprocessOnlySwitch) $(OutputSwitch) $(IntermediateDirectory)/CommonUtilitiesLib_MakeDir$(PreprocessSuffix) "CommonUtilitiesLib/MakeDir.c"

$(IntermediateDirectory)/CommonUtilitiesLib_SocketUtils$(ObjectSuffix): CommonUtilitiesLib/SocketUtils.cpp $(IntermediateDirectory)/CommonUtilitiesLib_SocketUtils$(DependSuffix)
	$(CXX) $(IncludePCH) $(SourceSwitch) "/home/fym/cpp-project/RTSPServer/CommonUtilitiesLib/SocketUtils.cpp" $(CXXFLAGS) $(ObjectSwitch)$(IntermediateDirectory)/CommonUtilitiesLib_SocketUtils$(ObjectSuffix) $(IncludePath)
$(IntermediateDirectory)/CommonUtilitiesLib_SocketUtils$(DependSuffix): CommonUtilitiesLib/SocketUtils.cpp
	@$(CXX) $(CXXFLAGS) $(IncludePCH) $(IncludePath) -MG -MP -MT$(IntermediateDirectory)/CommonUtilitiesLib_SocketUtils$(ObjectSuffix) -MF$(IntermediateDirectory)/CommonUtilitiesLib_SocketUtils$(DependSuffix) -MM "CommonUtilitiesLib/SocketUtils.cpp"

$(IntermediateDirectory)/CommonUtilitiesLib_SocketUtils$(PreprocessSuffix): CommonUtilitiesLib/SocketUtils.cpp
	@$(CXX) $(CXXFLAGS) $(IncludePCH) $(IncludePath) $(PreprocessOnlySwitch) $(OutputSwitch) $(IntermediateDirectory)/CommonUtilitiesLib_SocketUtils$(PreprocessSuffix) "CommonUtilitiesLib/SocketUtils.cpp"

$(IntermediateDirectory)/CommonUtilitiesLib_daemon$(ObjectSuffix): CommonUtilitiesLib/daemon.c $(IntermediateDirectory)/CommonUtilitiesLib_daemon$(DependSuffix)
	$(CC) $(SourceSwitch) "/home/fym/cpp-project/RTSPServer/CommonUtilitiesLib/daemon.c" $(CFLAGS) $(ObjectSwitch)$(IntermediateDirectory)/CommonUtilitiesLib_daemon$(ObjectSuffix) $(IncludePath)
$(IntermediateDirectory)/CommonUtilitiesLib_daemon$(DependSuffix): CommonUtilitiesLib/daemon.c
	@$(CC) $(CFLAGS) $(IncludePath) -MG -MP -MT$(IntermediateDirectory)/CommonUtilitiesLib_daemon$(ObjectSuffix) -MF$(IntermediateDirectory)/CommonUtilitiesLib_daemon$(DependSuffix) -MM "CommonUtilitiesLib/daemon.c"

$(IntermediateDirectory)/CommonUtilitiesLib_daemon$(PreprocessSuffix): CommonUtilitiesLib/daemon.c
	@$(CC) $(CFLAGS) $(IncludePath) $(PreprocessOnlySwitch) $(OutputSwitch) $(IntermediateDirectory)/CommonUtilitiesLib_daemon$(PreprocessSuffix) "CommonUtilitiesLib/daemon.c"

$(IntermediateDirectory)/CommonUtilitiesLib_TCPListenerSocket$(ObjectSuffix): CommonUtilitiesLib/TCPListenerSocket.cpp $(IntermediateDirectory)/CommonUtilitiesLib_TCPListenerSocket$(DependSuffix)
	$(CXX) $(IncludePCH) $(SourceSwitch) "/home/fym/cpp-project/RTSPServer/CommonUtilitiesLib/TCPListenerSocket.cpp" $(CXXFLAGS) $(ObjectSwitch)$(IntermediateDirectory)/CommonUtilitiesLib_TCPListenerSocket$(ObjectSuffix) $(IncludePath)
$(IntermediateDirectory)/CommonUtilitiesLib_TCPListenerSocket$(DependSuffix): CommonUtilitiesLib/TCPListenerSocket.cpp
	@$(CXX) $(CXXFLAGS) $(IncludePCH) $(IncludePath) -MG -MP -MT$(IntermediateDirectory)/CommonUtilitiesLib_TCPListenerSocket$(ObjectSuffix) -MF$(IntermediateDirectory)/CommonUtilitiesLib_TCPListenerSocket$(DependSuffix) -MM "CommonUtilitiesLib/TCPListenerSocket.cpp"

$(IntermediateDirectory)/CommonUtilitiesLib_TCPListenerSocket$(PreprocessSuffix): CommonUtilitiesLib/TCPListenerSocket.cpp
	@$(CXX) $(CXXFLAGS) $(IncludePCH) $(IncludePath) $(PreprocessOnlySwitch) $(OutputSwitch) $(IntermediateDirectory)/CommonUtilitiesLib_TCPListenerSocket$(PreprocessSuffix) "CommonUtilitiesLib/TCPListenerSocket.cpp"

$(IntermediateDirectory)/CommonUtilitiesLib_StrPtrLen$(ObjectSuffix): CommonUtilitiesLib/StrPtrLen.cpp $(IntermediateDirectory)/CommonUtilitiesLib_StrPtrLen$(DependSuffix)
	$(CXX) $(IncludePCH) $(SourceSwitch) "/home/fym/cpp-project/RTSPServer/CommonUtilitiesLib/StrPtrLen.cpp" $(CXXFLAGS) $(ObjectSwitch)$(IntermediateDirectory)/CommonUtilitiesLib_StrPtrLen$(ObjectSuffix) $(IncludePath)
$(IntermediateDirectory)/CommonUtilitiesLib_StrPtrLen$(DependSuffix): CommonUtilitiesLib/StrPtrLen.cpp
	@$(CXX) $(CXXFLAGS) $(IncludePCH) $(IncludePath) -MG -MP -MT$(IntermediateDirectory)/CommonUtilitiesLib_StrPtrLen$(ObjectSuffix) -MF$(IntermediateDirectory)/CommonUtilitiesLib_StrPtrLen$(DependSuffix) -MM "CommonUtilitiesLib/StrPtrLen.cpp"

$(IntermediateDirectory)/CommonUtilitiesLib_StrPtrLen$(PreprocessSuffix): CommonUtilitiesLib/StrPtrLen.cpp
	@$(CXX) $(CXXFLAGS) $(IncludePCH) $(IncludePath) $(PreprocessOnlySwitch) $(OutputSwitch) $(IntermediateDirectory)/CommonUtilitiesLib_StrPtrLen$(PreprocessSuffix) "CommonUtilitiesLib/StrPtrLen.cpp"

$(IntermediateDirectory)/CommonUtilitiesLib_EventContext$(ObjectSuffix): CommonUtilitiesLib/EventContext.cpp $(IntermediateDirectory)/CommonUtilitiesLib_EventContext$(DependSuffix)
	$(CXX) $(IncludePCH) $(SourceSwitch) "/home/fym/cpp-project/RTSPServer/CommonUtilitiesLib/EventContext.cpp" $(CXXFLAGS) $(ObjectSwitch)$(IntermediateDirectory)/CommonUtilitiesLib_EventContext$(ObjectSuffix) $(IncludePath)
$(IntermediateDirectory)/CommonUtilitiesLib_EventContext$(DependSuffix): CommonUtilitiesLib/EventContext.cpp
	@$(CXX) $(CXXFLAGS) $(IncludePCH) $(IncludePath) -MG -MP -MT$(IntermediateDirectory)/CommonUtilitiesLib_EventContext$(ObjectSuffix) -MF$(IntermediateDirectory)/CommonUtilitiesLib_EventContext$(DependSuffix) -MM "CommonUtilitiesLib/EventContext.cpp"

$(IntermediateDirectory)/CommonUtilitiesLib_EventContext$(PreprocessSuffix): CommonUtilitiesLib/EventContext.cpp
	@$(CXX) $(CXXFLAGS) $(IncludePCH) $(IncludePath) $(PreprocessOnlySwitch) $(OutputSwitch) $(IntermediateDirectory)/CommonUtilitiesLib_EventContext$(PreprocessSuffix) "CommonUtilitiesLib/EventContext.cpp"

$(IntermediateDirectory)/CommonUtilitiesLib_OSThread$(ObjectSuffix): CommonUtilitiesLib/OSThread.cpp $(IntermediateDirectory)/CommonUtilitiesLib_OSThread$(DependSuffix)
	$(CXX) $(IncludePCH) $(SourceSwitch) "/home/fym/cpp-project/RTSPServer/CommonUtilitiesLib/OSThread.cpp" $(CXXFLAGS) $(ObjectSwitch)$(IntermediateDirectory)/CommonUtilitiesLib_OSThread$(ObjectSuffix) $(IncludePath)
$(IntermediateDirectory)/CommonUtilitiesLib_OSThread$(DependSuffix): CommonUtilitiesLib/OSThread.cpp
	@$(CXX) $(CXXFLAGS) $(IncludePCH) $(IncludePath) -MG -MP -MT$(IntermediateDirectory)/CommonUtilitiesLib_OSThread$(ObjectSuffix) -MF$(IntermediateDirectory)/CommonUtilitiesLib_OSThread$(DependSuffix) -MM "CommonUtilitiesLib/OSThread.cpp"

$(IntermediateDirectory)/CommonUtilitiesLib_OSThread$(PreprocessSuffix): CommonUtilitiesLib/OSThread.cpp
	@$(CXX) $(CXXFLAGS) $(IncludePCH) $(IncludePath) $(PreprocessOnlySwitch) $(OutputSwitch) $(IntermediateDirectory)/CommonUtilitiesLib_OSThread$(PreprocessSuffix) "CommonUtilitiesLib/OSThread.cpp"

$(IntermediateDirectory)/HTTPUtilitiesLib_HTTPProtocol$(ObjectSuffix): HTTPUtilitiesLib/HTTPProtocol.cpp $(IntermediateDirectory)/HTTPUtilitiesLib_HTTPProtocol$(DependSuffix)
	$(CXX) $(IncludePCH) $(SourceSwitch) "/home/fym/cpp-project/RTSPServer/HTTPUtilitiesLib/HTTPProtocol.cpp" $(CXXFLAGS) $(ObjectSwitch)$(IntermediateDirectory)/HTTPUtilitiesLib_HTTPProtocol$(ObjectSuffix) $(IncludePath)
$(IntermediateDirectory)/HTTPUtilitiesLib_HTTPProtocol$(DependSuffix): HTTPUtilitiesLib/HTTPProtocol.cpp
	@$(CXX) $(CXXFLAGS) $(IncludePCH) $(IncludePath) -MG -MP -MT$(IntermediateDirectory)/HTTPUtilitiesLib_HTTPProtocol$(ObjectSuffix) -MF$(IntermediateDirectory)/HTTPUtilitiesLib_HTTPProtocol$(DependSuffix) -MM "HTTPUtilitiesLib/HTTPProtocol.cpp"

$(IntermediateDirectory)/HTTPUtilitiesLib_HTTPProtocol$(PreprocessSuffix): HTTPUtilitiesLib/HTTPProtocol.cpp
	@$(CXX) $(CXXFLAGS) $(IncludePCH) $(IncludePath) $(PreprocessOnlySwitch) $(OutputSwitch) $(IntermediateDirectory)/HTTPUtilitiesLib_HTTPProtocol$(PreprocessSuffix) "HTTPUtilitiesLib/HTTPProtocol.cpp"

$(IntermediateDirectory)/HTTPUtilitiesLib_HTTPRequest$(ObjectSuffix): HTTPUtilitiesLib/HTTPRequest.cpp $(IntermediateDirectory)/HTTPUtilitiesLib_HTTPRequest$(DependSuffix)
	$(CXX) $(IncludePCH) $(SourceSwitch) "/home/fym/cpp-project/RTSPServer/HTTPUtilitiesLib/HTTPRequest.cpp" $(CXXFLAGS) $(ObjectSwitch)$(IntermediateDirectory)/HTTPUtilitiesLib_HTTPRequest$(ObjectSuffix) $(IncludePath)
$(IntermediateDirectory)/HTTPUtilitiesLib_HTTPRequest$(DependSuffix): HTTPUtilitiesLib/HTTPRequest.cpp
	@$(CXX) $(CXXFLAGS) $(IncludePCH) $(IncludePath) -MG -MP -MT$(IntermediateDirectory)/HTTPUtilitiesLib_HTTPRequest$(ObjectSuffix) -MF$(IntermediateDirectory)/HTTPUtilitiesLib_HTTPRequest$(DependSuffix) -MM "HTTPUtilitiesLib/HTTPRequest.cpp"

$(IntermediateDirectory)/HTTPUtilitiesLib_HTTPRequest$(PreprocessSuffix): HTTPUtilitiesLib/HTTPRequest.cpp
	@$(CXX) $(CXXFLAGS) $(IncludePCH) $(IncludePath) $(PreprocessOnlySwitch) $(OutputSwitch) $(IntermediateDirectory)/HTTPUtilitiesLib_HTTPRequest$(PreprocessSuffix) "HTTPUtilitiesLib/HTTPRequest.cpp"

$(IntermediateDirectory)/OSMemoryLib_OSMemory$(ObjectSuffix): OSMemoryLib/OSMemory.cpp $(IntermediateDirectory)/OSMemoryLib_OSMemory$(DependSuffix)
	$(CXX) $(IncludePCH) $(SourceSwitch) "/home/fym/cpp-project/RTSPServer/OSMemoryLib/OSMemory.cpp" $(CXXFLAGS) $(ObjectSwitch)$(IntermediateDirectory)/OSMemoryLib_OSMemory$(ObjectSuffix) $(IncludePath)
$(IntermediateDirectory)/OSMemoryLib_OSMemory$(DependSuffix): OSMemoryLib/OSMemory.cpp
	@$(CXX) $(CXXFLAGS) $(IncludePCH) $(IncludePath) -MG -MP -MT$(IntermediateDirectory)/OSMemoryLib_OSMemory$(ObjectSuffix) -MF$(IntermediateDirectory)/OSMemoryLib_OSMemory$(DependSuffix) -MM "OSMemoryLib/OSMemory.cpp"

$(IntermediateDirectory)/OSMemoryLib_OSMemory$(PreprocessSuffix): OSMemoryLib/OSMemory.cpp
	@$(CXX) $(CXXFLAGS) $(IncludePCH) $(IncludePath) $(PreprocessOnlySwitch) $(OutputSwitch) $(IntermediateDirectory)/OSMemoryLib_OSMemory$(PreprocessSuffix) "OSMemoryLib/OSMemory.cpp"

$(IntermediateDirectory)/PrefsSourceLib_FilePrefsSource$(ObjectSuffix): PrefsSourceLib/FilePrefsSource.cpp $(IntermediateDirectory)/PrefsSourceLib_FilePrefsSource$(DependSuffix)
	$(CXX) $(IncludePCH) $(SourceSwitch) "/home/fym/cpp-project/RTSPServer/PrefsSourceLib/FilePrefsSource.cpp" $(CXXFLAGS) $(ObjectSwitch)$(IntermediateDirectory)/PrefsSourceLib_FilePrefsSource$(ObjectSuffix) $(IncludePath)
$(IntermediateDirectory)/PrefsSourceLib_FilePrefsSource$(DependSuffix): PrefsSourceLib/FilePrefsSource.cpp
	@$(CXX) $(CXXFLAGS) $(IncludePCH) $(IncludePath) -MG -MP -MT$(IntermediateDirectory)/PrefsSourceLib_FilePrefsSource$(ObjectSuffix) -MF$(IntermediateDirectory)/PrefsSourceLib_FilePrefsSource$(DependSuffix) -MM "PrefsSourceLib/FilePrefsSource.cpp"

$(IntermediateDirectory)/PrefsSourceLib_FilePrefsSource$(PreprocessSuffix): PrefsSourceLib/FilePrefsSource.cpp
	@$(CXX) $(CXXFLAGS) $(IncludePCH) $(IncludePath) $(PreprocessOnlySwitch) $(OutputSwitch) $(IntermediateDirectory)/PrefsSourceLib_FilePrefsSource$(PreprocessSuffix) "PrefsSourceLib/FilePrefsSource.cpp"

$(IntermediateDirectory)/PrefsSourceLib_XMLPrefsParser$(ObjectSuffix): PrefsSourceLib/XMLPrefsParser.cpp $(IntermediateDirectory)/PrefsSourceLib_XMLPrefsParser$(DependSuffix)
	$(CXX) $(IncludePCH) $(SourceSwitch) "/home/fym/cpp-project/RTSPServer/PrefsSourceLib/XMLPrefsParser.cpp" $(CXXFLAGS) $(ObjectSwitch)$(IntermediateDirectory)/PrefsSourceLib_XMLPrefsParser$(ObjectSuffix) $(IncludePath)
$(IntermediateDirectory)/PrefsSourceLib_XMLPrefsParser$(DependSuffix): PrefsSourceLib/XMLPrefsParser.cpp
	@$(CXX) $(CXXFLAGS) $(IncludePCH) $(IncludePath) -MG -MP -MT$(IntermediateDirectory)/PrefsSourceLib_XMLPrefsParser$(ObjectSuffix) -MF$(IntermediateDirectory)/PrefsSourceLib_XMLPrefsParser$(DependSuffix) -MM "PrefsSourceLib/XMLPrefsParser.cpp"

$(IntermediateDirectory)/PrefsSourceLib_XMLPrefsParser$(PreprocessSuffix): PrefsSourceLib/XMLPrefsParser.cpp
	@$(CXX) $(CXXFLAGS) $(IncludePCH) $(IncludePath) $(PreprocessOnlySwitch) $(OutputSwitch) $(IntermediateDirectory)/PrefsSourceLib_XMLPrefsParser$(PreprocessSuffix) "PrefsSourceLib/XMLPrefsParser.cpp"

$(IntermediateDirectory)/PrefsSourceLib_XMLParser$(ObjectSuffix): PrefsSourceLib/XMLParser.cpp $(IntermediateDirectory)/PrefsSourceLib_XMLParser$(DependSuffix)
	$(CXX) $(IncludePCH) $(SourceSwitch) "/home/fym/cpp-project/RTSPServer/PrefsSourceLib/XMLParser.cpp" $(CXXFLAGS) $(ObjectSwitch)$(IntermediateDirectory)/PrefsSourceLib_XMLParser$(ObjectSuffix) $(IncludePath)
$(IntermediateDirectory)/PrefsSourceLib_XMLParser$(DependSuffix): PrefsSourceLib/XMLParser.cpp
	@$(CXX) $(CXXFLAGS) $(IncludePCH) $(IncludePath) -MG -MP -MT$(IntermediateDirectory)/PrefsSourceLib_XMLParser$(ObjectSuffix) -MF$(IntermediateDirectory)/PrefsSourceLib_XMLParser$(DependSuffix) -MM "PrefsSourceLib/XMLParser.cpp"

$(IntermediateDirectory)/PrefsSourceLib_XMLParser$(PreprocessSuffix): PrefsSourceLib/XMLParser.cpp
	@$(CXX) $(CXXFLAGS) $(IncludePCH) $(IncludePath) $(PreprocessOnlySwitch) $(OutputSwitch) $(IntermediateDirectory)/PrefsSourceLib_XMLParser$(PreprocessSuffix) "PrefsSourceLib/XMLParser.cpp"

$(IntermediateDirectory)/RTCPUtilitiesLib_RTCPPacket$(ObjectSuffix): RTCPUtilitiesLib/RTCPPacket.cpp $(IntermediateDirectory)/RTCPUtilitiesLib_RTCPPacket$(DependSuffix)
	$(CXX) $(IncludePCH) $(SourceSwitch) "/home/fym/cpp-project/RTSPServer/RTCPUtilitiesLib/RTCPPacket.cpp" $(CXXFLAGS) $(ObjectSwitch)$(IntermediateDirectory)/RTCPUtilitiesLib_RTCPPacket$(ObjectSuffix) $(IncludePath)
$(IntermediateDirectory)/RTCPUtilitiesLib_RTCPPacket$(DependSuffix): RTCPUtilitiesLib/RTCPPacket.cpp
	@$(CXX) $(CXXFLAGS) $(IncludePCH) $(IncludePath) -MG -MP -MT$(IntermediateDirectory)/RTCPUtilitiesLib_RTCPPacket$(ObjectSuffix) -MF$(IntermediateDirectory)/RTCPUtilitiesLib_RTCPPacket$(DependSuffix) -MM "RTCPUtilitiesLib/RTCPPacket.cpp"

$(IntermediateDirectory)/RTCPUtilitiesLib_RTCPPacket$(PreprocessSuffix): RTCPUtilitiesLib/RTCPPacket.cpp
	@$(CXX) $(CXXFLAGS) $(IncludePCH) $(IncludePath) $(PreprocessOnlySwitch) $(OutputSwitch) $(IntermediateDirectory)/RTCPUtilitiesLib_RTCPPacket$(PreprocessSuffix) "RTCPUtilitiesLib/RTCPPacket.cpp"

$(IntermediateDirectory)/RTCPUtilitiesLib_RTCPAPPPacket$(ObjectSuffix): RTCPUtilitiesLib/RTCPAPPPacket.cpp $(IntermediateDirectory)/RTCPUtilitiesLib_RTCPAPPPacket$(DependSuffix)
	$(CXX) $(IncludePCH) $(SourceSwitch) "/home/fym/cpp-project/RTSPServer/RTCPUtilitiesLib/RTCPAPPPacket.cpp" $(CXXFLAGS) $(ObjectSwitch)$(IntermediateDirectory)/RTCPUtilitiesLib_RTCPAPPPacket$(ObjectSuffix) $(IncludePath)
$(IntermediateDirectory)/RTCPUtilitiesLib_RTCPAPPPacket$(DependSuffix): RTCPUtilitiesLib/RTCPAPPPacket.cpp
	@$(CXX) $(CXXFLAGS) $(IncludePCH) $(IncludePath) -MG -MP -MT$(IntermediateDirectory)/RTCPUtilitiesLib_RTCPAPPPacket$(ObjectSuffix) -MF$(IntermediateDirectory)/RTCPUtilitiesLib_RTCPAPPPacket$(DependSuffix) -MM "RTCPUtilitiesLib/RTCPAPPPacket.cpp"

$(IntermediateDirectory)/RTCPUtilitiesLib_RTCPAPPPacket$(PreprocessSuffix): RTCPUtilitiesLib/RTCPAPPPacket.cpp
	@$(CXX) $(CXXFLAGS) $(IncludePCH) $(IncludePath) $(PreprocessOnlySwitch) $(OutputSwitch) $(IntermediateDirectory)/RTCPUtilitiesLib_RTCPAPPPacket$(PreprocessSuffix) "RTCPUtilitiesLib/RTCPAPPPacket.cpp"

$(IntermediateDirectory)/RTCPUtilitiesLib_RTCPAckPacket$(ObjectSuffix): RTCPUtilitiesLib/RTCPAckPacket.cpp $(IntermediateDirectory)/RTCPUtilitiesLib_RTCPAckPacket$(DependSuffix)
	$(CXX) $(IncludePCH) $(SourceSwitch) "/home/fym/cpp-project/RTSPServer/RTCPUtilitiesLib/RTCPAckPacket.cpp" $(CXXFLAGS) $(ObjectSwitch)$(IntermediateDirectory)/RTCPUtilitiesLib_RTCPAckPacket$(ObjectSuffix) $(IncludePath)
$(IntermediateDirectory)/RTCPUtilitiesLib_RTCPAckPacket$(DependSuffix): RTCPUtilitiesLib/RTCPAckPacket.cpp
	@$(CXX) $(CXXFLAGS) $(IncludePCH) $(IncludePath) -MG -MP -MT$(IntermediateDirectory)/RTCPUtilitiesLib_RTCPAckPacket$(ObjectSuffix) -MF$(IntermediateDirectory)/RTCPUtilitiesLib_RTCPAckPacket$(DependSuffix) -MM "RTCPUtilitiesLib/RTCPAckPacket.cpp"

$(IntermediateDirectory)/RTCPUtilitiesLib_RTCPAckPacket$(PreprocessSuffix): RTCPUtilitiesLib/RTCPAckPacket.cpp
	@$(CXX) $(CXXFLAGS) $(IncludePCH) $(IncludePath) $(PreprocessOnlySwitch) $(OutputSwitch) $(IntermediateDirectory)/RTCPUtilitiesLib_RTCPAckPacket$(PreprocessSuffix) "RTCPUtilitiesLib/RTCPAckPacket.cpp"

$(IntermediateDirectory)/RTCPUtilitiesLib_RTCPSRPacket$(ObjectSuffix): RTCPUtilitiesLib/RTCPSRPacket.cpp $(IntermediateDirectory)/RTCPUtilitiesLib_RTCPSRPacket$(DependSuffix)
	$(CXX) $(IncludePCH) $(SourceSwitch) "/home/fym/cpp-project/RTSPServer/RTCPUtilitiesLib/RTCPSRPacket.cpp" $(CXXFLAGS) $(ObjectSwitch)$(IntermediateDirectory)/RTCPUtilitiesLib_RTCPSRPacket$(ObjectSuffix) $(IncludePath)
$(IntermediateDirectory)/RTCPUtilitiesLib_RTCPSRPacket$(DependSuffix): RTCPUtilitiesLib/RTCPSRPacket.cpp
	@$(CXX) $(CXXFLAGS) $(IncludePCH) $(IncludePath) -MG -MP -MT$(IntermediateDirectory)/RTCPUtilitiesLib_RTCPSRPacket$(ObjectSuffix) -MF$(IntermediateDirectory)/RTCPUtilitiesLib_RTCPSRPacket$(DependSuffix) -MM "RTCPUtilitiesLib/RTCPSRPacket.cpp"

$(IntermediateDirectory)/RTCPUtilitiesLib_RTCPSRPacket$(PreprocessSuffix): RTCPUtilitiesLib/RTCPSRPacket.cpp
	@$(CXX) $(CXXFLAGS) $(IncludePCH) $(IncludePath) $(PreprocessOnlySwitch) $(OutputSwitch) $(IntermediateDirectory)/RTCPUtilitiesLib_RTCPSRPacket$(PreprocessSuffix) "RTCPUtilitiesLib/RTCPSRPacket.cpp"

$(IntermediateDirectory)/RTPMetaInfoLib_RTPMetaInfoPacket$(ObjectSuffix): RTPMetaInfoLib/RTPMetaInfoPacket.cpp $(IntermediateDirectory)/RTPMetaInfoLib_RTPMetaInfoPacket$(DependSuffix)
	$(CXX) $(IncludePCH) $(SourceSwitch) "/home/fym/cpp-project/RTSPServer/RTPMetaInfoLib/RTPMetaInfoPacket.cpp" $(CXXFLAGS) $(ObjectSwitch)$(IntermediateDirectory)/RTPMetaInfoLib_RTPMetaInfoPacket$(ObjectSuffix) $(IncludePath)
$(IntermediateDirectory)/RTPMetaInfoLib_RTPMetaInfoPacket$(DependSuffix): RTPMetaInfoLib/RTPMetaInfoPacket.cpp
	@$(CXX) $(CXXFLAGS) $(IncludePCH) $(IncludePath) -MG -MP -MT$(IntermediateDirectory)/RTPMetaInfoLib_RTPMetaInfoPacket$(ObjectSuffix) -MF$(IntermediateDirectory)/RTPMetaInfoLib_RTPMetaInfoPacket$(DependSuffix) -MM "RTPMetaInfoLib/RTPMetaInfoPacket.cpp"

$(IntermediateDirectory)/RTPMetaInfoLib_RTPMetaInfoPacket$(PreprocessSuffix): RTPMetaInfoLib/RTPMetaInfoPacket.cpp
	@$(CXX) $(CXXFLAGS) $(IncludePCH) $(IncludePath) $(PreprocessOnlySwitch) $(OutputSwitch) $(IntermediateDirectory)/RTPMetaInfoLib_RTPMetaInfoPacket$(PreprocessSuffix) "RTPMetaInfoLib/RTPMetaInfoPacket.cpp"

$(IntermediateDirectory)/RTSPClientLib_ClientSession$(ObjectSuffix): RTSPClientLib/ClientSession.cpp $(IntermediateDirectory)/RTSPClientLib_ClientSession$(DependSuffix)
	$(CXX) $(IncludePCH) $(SourceSwitch) "/home/fym/cpp-project/RTSPServer/RTSPClientLib/ClientSession.cpp" $(CXXFLAGS) $(ObjectSwitch)$(IntermediateDirectory)/RTSPClientLib_ClientSession$(ObjectSuffix) $(IncludePath)
$(IntermediateDirectory)/RTSPClientLib_ClientSession$(DependSuffix): RTSPClientLib/ClientSession.cpp
	@$(CXX) $(CXXFLAGS) $(IncludePCH) $(IncludePath) -MG -MP -MT$(IntermediateDirectory)/RTSPClientLib_ClientSession$(ObjectSuffix) -MF$(IntermediateDirectory)/RTSPClientLib_ClientSession$(DependSuffix) -MM "RTSPClientLib/ClientSession.cpp"

$(IntermediateDirectory)/RTSPClientLib_ClientSession$(PreprocessSuffix): RTSPClientLib/ClientSession.cpp
	@$(CXX) $(CXXFLAGS) $(IncludePCH) $(IncludePath) $(PreprocessOnlySwitch) $(OutputSwitch) $(IntermediateDirectory)/RTSPClientLib_ClientSession$(PreprocessSuffix) "RTSPClientLib/ClientSession.cpp"

$(IntermediateDirectory)/RTSPClientLib_FakeRTSPClient$(ObjectSuffix): RTSPClientLib/FakeRTSPClient.cpp $(IntermediateDirectory)/RTSPClientLib_FakeRTSPClient$(DependSuffix)
	$(CXX) $(IncludePCH) $(SourceSwitch) "/home/fym/cpp-project/RTSPServer/RTSPClientLib/FakeRTSPClient.cpp" $(CXXFLAGS) $(ObjectSwitch)$(IntermediateDirectory)/RTSPClientLib_FakeRTSPClient$(ObjectSuffix) $(IncludePath)
$(IntermediateDirectory)/RTSPClientLib_FakeRTSPClient$(DependSuffix): RTSPClientLib/FakeRTSPClient.cpp
	@$(CXX) $(CXXFLAGS) $(IncludePCH) $(IncludePath) -MG -MP -MT$(IntermediateDirectory)/RTSPClientLib_FakeRTSPClient$(ObjectSuffix) -MF$(IntermediateDirectory)/RTSPClientLib_FakeRTSPClient$(DependSuffix) -MM "RTSPClientLib/FakeRTSPClient.cpp"

$(IntermediateDirectory)/RTSPClientLib_FakeRTSPClient$(PreprocessSuffix): RTSPClientLib/FakeRTSPClient.cpp
	@$(CXX) $(CXXFLAGS) $(IncludePCH) $(IncludePath) $(PreprocessOnlySwitch) $(OutputSwitch) $(IntermediateDirectory)/RTSPClientLib_FakeRTSPClient$(PreprocessSuffix) "RTSPClientLib/FakeRTSPClient.cpp"

$(IntermediateDirectory)/RTSPClientLib_ClientSocket$(ObjectSuffix): RTSPClientLib/ClientSocket.cpp $(IntermediateDirectory)/RTSPClientLib_ClientSocket$(DependSuffix)
	$(CXX) $(IncludePCH) $(SourceSwitch) "/home/fym/cpp-project/RTSPServer/RTSPClientLib/ClientSocket.cpp" $(CXXFLAGS) $(ObjectSwitch)$(IntermediateDirectory)/RTSPClientLib_ClientSocket$(ObjectSuffix) $(IncludePath)
$(IntermediateDirectory)/RTSPClientLib_ClientSocket$(DependSuffix): RTSPClientLib/ClientSocket.cpp
	@$(CXX) $(CXXFLAGS) $(IncludePCH) $(IncludePath) -MG -MP -MT$(IntermediateDirectory)/RTSPClientLib_ClientSocket$(ObjectSuffix) -MF$(IntermediateDirectory)/RTSPClientLib_ClientSocket$(DependSuffix) -MM "RTSPClientLib/ClientSocket.cpp"

$(IntermediateDirectory)/RTSPClientLib_ClientSocket$(PreprocessSuffix): RTSPClientLib/ClientSocket.cpp
	@$(CXX) $(CXXFLAGS) $(IncludePCH) $(IncludePath) $(PreprocessOnlySwitch) $(OutputSwitch) $(IntermediateDirectory)/RTSPClientLib_ClientSocket$(PreprocessSuffix) "RTSPClientLib/ClientSocket.cpp"

$(IntermediateDirectory)/RTSPClientLib_RTSPClient$(ObjectSuffix): RTSPClientLib/RTSPClient.cpp $(IntermediateDirectory)/RTSPClientLib_RTSPClient$(DependSuffix)
	$(CXX) $(IncludePCH) $(SourceSwitch) "/home/fym/cpp-project/RTSPServer/RTSPClientLib/RTSPClient.cpp" $(CXXFLAGS) $(ObjectSwitch)$(IntermediateDirectory)/RTSPClientLib_RTSPClient$(ObjectSuffix) $(IncludePath)
$(IntermediateDirectory)/RTSPClientLib_RTSPClient$(DependSuffix): RTSPClientLib/RTSPClient.cpp
	@$(CXX) $(CXXFLAGS) $(IncludePCH) $(IncludePath) -MG -MP -MT$(IntermediateDirectory)/RTSPClientLib_RTSPClient$(ObjectSuffix) -MF$(IntermediateDirectory)/RTSPClientLib_RTSPClient$(DependSuffix) -MM "RTSPClientLib/RTSPClient.cpp"

$(IntermediateDirectory)/RTSPClientLib_RTSPClient$(PreprocessSuffix): RTSPClientLib/RTSPClient.cpp
	@$(CXX) $(CXXFLAGS) $(IncludePCH) $(IncludePath) $(PreprocessOnlySwitch) $(OutputSwitch) $(IntermediateDirectory)/RTSPClientLib_RTSPClient$(PreprocessSuffix) "RTSPClientLib/RTSPClient.cpp"

$(IntermediateDirectory)/SafeStdLib_InternalStdLib$(ObjectSuffix): SafeStdLib/InternalStdLib.cpp $(IntermediateDirectory)/SafeStdLib_InternalStdLib$(DependSuffix)
	$(CXX) $(IncludePCH) $(SourceSwitch) "/home/fym/cpp-project/RTSPServer/SafeStdLib/InternalStdLib.cpp" $(CXXFLAGS) $(ObjectSwitch)$(IntermediateDirectory)/SafeStdLib_InternalStdLib$(ObjectSuffix) $(IncludePath)
$(IntermediateDirectory)/SafeStdLib_InternalStdLib$(DependSuffix): SafeStdLib/InternalStdLib.cpp
	@$(CXX) $(CXXFLAGS) $(IncludePCH) $(IncludePath) -MG -MP -MT$(IntermediateDirectory)/SafeStdLib_InternalStdLib$(ObjectSuffix) -MF$(IntermediateDirectory)/SafeStdLib_InternalStdLib$(DependSuffix) -MM "SafeStdLib/InternalStdLib.cpp"

$(IntermediateDirectory)/SafeStdLib_InternalStdLib$(PreprocessSuffix): SafeStdLib/InternalStdLib.cpp
	@$(CXX) $(CXXFLAGS) $(IncludePCH) $(IncludePath) $(PreprocessOnlySwitch) $(OutputSwitch) $(IntermediateDirectory)/SafeStdLib_InternalStdLib$(PreprocessSuffix) "SafeStdLib/InternalStdLib.cpp"

$(IntermediateDirectory)/Server.tproj_QTSSDictionary$(ObjectSuffix): Server.tproj/QTSSDictionary.cpp $(IntermediateDirectory)/Server.tproj_QTSSDictionary$(DependSuffix)
	$(CXX) $(IncludePCH) $(SourceSwitch) "/home/fym/cpp-project/RTSPServer/Server.tproj/QTSSDictionary.cpp" $(CXXFLAGS) $(ObjectSwitch)$(IntermediateDirectory)/Server.tproj_QTSSDictionary$(ObjectSuffix) $(IncludePath)
$(IntermediateDirectory)/Server.tproj_QTSSDictionary$(DependSuffix): Server.tproj/QTSSDictionary.cpp
	@$(CXX) $(CXXFLAGS) $(IncludePCH) $(IncludePath) -MG -MP -MT$(IntermediateDirectory)/Server.tproj_QTSSDictionary$(ObjectSuffix) -MF$(IntermediateDirectory)/Server.tproj_QTSSDictionary$(DependSuffix) -MM "Server.tproj/QTSSDictionary.cpp"

$(IntermediateDirectory)/Server.tproj_QTSSDictionary$(PreprocessSuffix): Server.tproj/QTSSDictionary.cpp
	@$(CXX) $(CXXFLAGS) $(IncludePCH) $(IncludePath) $(PreprocessOnlySwitch) $(OutputSwitch) $(IntermediateDirectory)/Server.tproj_QTSSDictionary$(PreprocessSuffix) "Server.tproj/QTSSDictionary.cpp"

$(IntermediateDirectory)/Server.tproj_RTSPRequestStream$(ObjectSuffix): Server.tproj/RTSPRequestStream.cpp $(IntermediateDirectory)/Server.tproj_RTSPRequestStream$(DependSuffix)
	$(CXX) $(IncludePCH) $(SourceSwitch) "/home/fym/cpp-project/RTSPServer/Server.tproj/RTSPRequestStream.cpp" $(CXXFLAGS) $(ObjectSwitch)$(IntermediateDirectory)/Server.tproj_RTSPRequestStream$(ObjectSuffix) $(IncludePath)
$(IntermediateDirectory)/Server.tproj_RTSPRequestStream$(DependSuffix): Server.tproj/RTSPRequestStream.cpp
	@$(CXX) $(CXXFLAGS) $(IncludePCH) $(IncludePath) -MG -MP -MT$(IntermediateDirectory)/Server.tproj_RTSPRequestStream$(ObjectSuffix) -MF$(IntermediateDirectory)/Server.tproj_RTSPRequestStream$(DependSuffix) -MM "Server.tproj/RTSPRequestStream.cpp"

$(IntermediateDirectory)/Server.tproj_RTSPRequestStream$(PreprocessSuffix): Server.tproj/RTSPRequestStream.cpp
	@$(CXX) $(CXXFLAGS) $(IncludePCH) $(IncludePath) $(PreprocessOnlySwitch) $(OutputSwitch) $(IntermediateDirectory)/Server.tproj_RTSPRequestStream$(PreprocessSuffix) "Server.tproj/RTSPRequestStream.cpp"

$(IntermediateDirectory)/Server.tproj_RTCPTask$(ObjectSuffix): Server.tproj/RTCPTask.cpp $(IntermediateDirectory)/Server.tproj_RTCPTask$(DependSuffix)
	$(CXX) $(IncludePCH) $(SourceSwitch) "/home/fym/cpp-project/RTSPServer/Server.tproj/RTCPTask.cpp" $(CXXFLAGS) $(ObjectSwitch)$(IntermediateDirectory)/Server.tproj_RTCPTask$(ObjectSuffix) $(IncludePath)
$(IntermediateDirectory)/Server.tproj_RTCPTask$(DependSuffix): Server.tproj/RTCPTask.cpp
	@$(CXX) $(CXXFLAGS) $(IncludePCH) $(IncludePath) -MG -MP -MT$(IntermediateDirectory)/Server.tproj_RTCPTask$(ObjectSuffix) -MF$(IntermediateDirectory)/Server.tproj_RTCPTask$(DependSuffix) -MM "Server.tproj/RTCPTask.cpp"

$(IntermediateDirectory)/Server.tproj_RTCPTask$(PreprocessSuffix): Server.tproj/RTCPTask.cpp
	@$(CXX) $(CXXFLAGS) $(IncludePCH) $(IncludePath) $(PreprocessOnlySwitch) $(OutputSwitch) $(IntermediateDirectory)/Server.tproj_RTCPTask$(PreprocessSuffix) "Server.tproj/RTCPTask.cpp"

$(IntermediateDirectory)/Server.tproj_QTSSPrefs$(ObjectSuffix): Server.tproj/QTSSPrefs.cpp $(IntermediateDirectory)/Server.tproj_QTSSPrefs$(DependSuffix)
	$(CXX) $(IncludePCH) $(SourceSwitch) "/home/fym/cpp-project/RTSPServer/Server.tproj/QTSSPrefs.cpp" $(CXXFLAGS) $(ObjectSwitch)$(IntermediateDirectory)/Server.tproj_QTSSPrefs$(ObjectSuffix) $(IncludePath)
$(IntermediateDirectory)/Server.tproj_QTSSPrefs$(DependSuffix): Server.tproj/QTSSPrefs.cpp
	@$(CXX) $(CXXFLAGS) $(IncludePCH) $(IncludePath) -MG -MP -MT$(IntermediateDirectory)/Server.tproj_QTSSPrefs$(ObjectSuffix) -MF$(IntermediateDirectory)/Server.tproj_QTSSPrefs$(DependSuffix) -MM "Server.tproj/QTSSPrefs.cpp"

$(IntermediateDirectory)/Server.tproj_QTSSPrefs$(PreprocessSuffix): Server.tproj/QTSSPrefs.cpp
	@$(CXX) $(CXXFLAGS) $(IncludePCH) $(IncludePath) $(PreprocessOnlySwitch) $(OutputSwitch) $(IntermediateDirectory)/Server.tproj_QTSSPrefs$(PreprocessSuffix) "Server.tproj/QTSSPrefs.cpp"

$(IntermediateDirectory)/Server.tproj_RTSPProtocol$(ObjectSuffix): Server.tproj/RTSPProtocol.cpp $(IntermediateDirectory)/Server.tproj_RTSPProtocol$(DependSuffix)
	$(CXX) $(IncludePCH) $(SourceSwitch) "/home/fym/cpp-project/RTSPServer/Server.tproj/RTSPProtocol.cpp" $(CXXFLAGS) $(ObjectSwitch)$(IntermediateDirectory)/Server.tproj_RTSPProtocol$(ObjectSuffix) $(IncludePath)
$(IntermediateDirectory)/Server.tproj_RTSPProtocol$(DependSuffix): Server.tproj/RTSPProtocol.cpp
	@$(CXX) $(CXXFLAGS) $(IncludePCH) $(IncludePath) -MG -MP -MT$(IntermediateDirectory)/Server.tproj_RTSPProtocol$(ObjectSuffix) -MF$(IntermediateDirectory)/Server.tproj_RTSPProtocol$(DependSuffix) -MM "Server.tproj/RTSPProtocol.cpp"

$(IntermediateDirectory)/Server.tproj_RTSPProtocol$(PreprocessSuffix): Server.tproj/RTSPProtocol.cpp
	@$(CXX) $(CXXFLAGS) $(IncludePCH) $(IncludePath) $(PreprocessOnlySwitch) $(OutputSwitch) $(IntermediateDirectory)/Server.tproj_RTSPProtocol$(PreprocessSuffix) "Server.tproj/RTSPProtocol.cpp"

$(IntermediateDirectory)/Server.tproj_RTPBandwidthTracker$(ObjectSuffix): Server.tproj/RTPBandwidthTracker.cpp $(IntermediateDirectory)/Server.tproj_RTPBandwidthTracker$(DependSuffix)
	$(CXX) $(IncludePCH) $(SourceSwitch) "/home/fym/cpp-project/RTSPServer/Server.tproj/RTPBandwidthTracker.cpp" $(CXXFLAGS) $(ObjectSwitch)$(IntermediateDirectory)/Server.tproj_RTPBandwidthTracker$(ObjectSuffix) $(IncludePath)
$(IntermediateDirectory)/Server.tproj_RTPBandwidthTracker$(DependSuffix): Server.tproj/RTPBandwidthTracker.cpp
	@$(CXX) $(CXXFLAGS) $(IncludePCH) $(IncludePath) -MG -MP -MT$(IntermediateDirectory)/Server.tproj_RTPBandwidthTracker$(ObjectSuffix) -MF$(IntermediateDirectory)/Server.tproj_RTPBandwidthTracker$(DependSuffix) -MM "Server.tproj/RTPBandwidthTracker.cpp"

$(IntermediateDirectory)/Server.tproj_RTPBandwidthTracker$(PreprocessSuffix): Server.tproj/RTPBandwidthTracker.cpp
	@$(CXX) $(CXXFLAGS) $(IncludePCH) $(IncludePath) $(PreprocessOnlySwitch) $(OutputSwitch) $(IntermediateDirectory)/Server.tproj_RTPBandwidthTracker$(PreprocessSuffix) "Server.tproj/RTPBandwidthTracker.cpp"

$(IntermediateDirectory)/Server.tproj_GenerateXMLPrefs$(ObjectSuffix): Server.tproj/GenerateXMLPrefs.cpp $(IntermediateDirectory)/Server.tproj_GenerateXMLPrefs$(DependSuffix)
	$(CXX) $(IncludePCH) $(SourceSwitch) "/home/fym/cpp-project/RTSPServer/Server.tproj/GenerateXMLPrefs.cpp" $(CXXFLAGS) $(ObjectSwitch)$(IntermediateDirectory)/Server.tproj_GenerateXMLPrefs$(ObjectSuffix) $(IncludePath)
$(IntermediateDirectory)/Server.tproj_GenerateXMLPrefs$(DependSuffix): Server.tproj/GenerateXMLPrefs.cpp
	@$(CXX) $(CXXFLAGS) $(IncludePCH) $(IncludePath) -MG -MP -MT$(IntermediateDirectory)/Server.tproj_GenerateXMLPrefs$(ObjectSuffix) -MF$(IntermediateDirectory)/Server.tproj_GenerateXMLPrefs$(DependSuffix) -MM "Server.tproj/GenerateXMLPrefs.cpp"

$(IntermediateDirectory)/Server.tproj_GenerateXMLPrefs$(PreprocessSuffix): Server.tproj/GenerateXMLPrefs.cpp
	@$(CXX) $(CXXFLAGS) $(IncludePCH) $(IncludePath) $(PreprocessOnlySwitch) $(OutputSwitch) $(IntermediateDirectory)/Server.tproj_GenerateXMLPrefs$(PreprocessSuffix) "Server.tproj/GenerateXMLPrefs.cpp"

$(IntermediateDirectory)/Server.tproj_RTSPRequest$(ObjectSuffix): Server.tproj/RTSPRequest.cpp $(IntermediateDirectory)/Server.tproj_RTSPRequest$(DependSuffix)
	$(CXX) $(IncludePCH) $(SourceSwitch) "/home/fym/cpp-project/RTSPServer/Server.tproj/RTSPRequest.cpp" $(CXXFLAGS) $(ObjectSwitch)$(IntermediateDirectory)/Server.tproj_RTSPRequest$(ObjectSuffix) $(IncludePath)
$(IntermediateDirectory)/Server.tproj_RTSPRequest$(DependSuffix): Server.tproj/RTSPRequest.cpp
	@$(CXX) $(CXXFLAGS) $(IncludePCH) $(IncludePath) -MG -MP -MT$(IntermediateDirectory)/Server.tproj_RTSPRequest$(ObjectSuffix) -MF$(IntermediateDirectory)/Server.tproj_RTSPRequest$(DependSuffix) -MM "Server.tproj/RTSPRequest.cpp"

$(IntermediateDirectory)/Server.tproj_RTSPRequest$(PreprocessSuffix): Server.tproj/RTSPRequest.cpp
	@$(CXX) $(CXXFLAGS) $(IncludePCH) $(IncludePath) $(PreprocessOnlySwitch) $(OutputSwitch) $(IntermediateDirectory)/Server.tproj_RTSPRequest$(PreprocessSuffix) "Server.tproj/RTSPRequest.cpp"

$(IntermediateDirectory)/Server.tproj_QTSSSocket$(ObjectSuffix): Server.tproj/QTSSSocket.cpp $(IntermediateDirectory)/Server.tproj_QTSSSocket$(DependSuffix)
	$(CXX) $(IncludePCH) $(SourceSwitch) "/home/fym/cpp-project/RTSPServer/Server.tproj/QTSSSocket.cpp" $(CXXFLAGS) $(ObjectSwitch)$(IntermediateDirectory)/Server.tproj_QTSSSocket$(ObjectSuffix) $(IncludePath)
$(IntermediateDirectory)/Server.tproj_QTSSSocket$(DependSuffix): Server.tproj/QTSSSocket.cpp
	@$(CXX) $(CXXFLAGS) $(IncludePCH) $(IncludePath) -MG -MP -MT$(IntermediateDirectory)/Server.tproj_QTSSSocket$(ObjectSuffix) -MF$(IntermediateDirectory)/Server.tproj_QTSSSocket$(DependSuffix) -MM "Server.tproj/QTSSSocket.cpp"

$(IntermediateDirectory)/Server.tproj_QTSSSocket$(PreprocessSuffix): Server.tproj/QTSSSocket.cpp
	@$(CXX) $(CXXFLAGS) $(IncludePCH) $(IncludePath) $(PreprocessOnlySwitch) $(OutputSwitch) $(IntermediateDirectory)/Server.tproj_QTSSSocket$(PreprocessSuffix) "Server.tproj/QTSSSocket.cpp"

$(IntermediateDirectory)/Server.tproj_QTSSMessages$(ObjectSuffix): Server.tproj/QTSSMessages.cpp $(IntermediateDirectory)/Server.tproj_QTSSMessages$(DependSuffix)
	$(CXX) $(IncludePCH) $(SourceSwitch) "/home/fym/cpp-project/RTSPServer/Server.tproj/QTSSMessages.cpp" $(CXXFLAGS) $(ObjectSwitch)$(IntermediateDirectory)/Server.tproj_QTSSMessages$(ObjectSuffix) $(IncludePath)
$(IntermediateDirectory)/Server.tproj_QTSSMessages$(DependSuffix): Server.tproj/QTSSMessages.cpp
	@$(CXX) $(CXXFLAGS) $(IncludePCH) $(IncludePath) -MG -MP -MT$(IntermediateDirectory)/Server.tproj_QTSSMessages$(ObjectSuffix) -MF$(IntermediateDirectory)/Server.tproj_QTSSMessages$(DependSuffix) -MM "Server.tproj/QTSSMessages.cpp"

$(IntermediateDirectory)/Server.tproj_QTSSMessages$(PreprocessSuffix): Server.tproj/QTSSMessages.cpp
	@$(CXX) $(CXXFLAGS) $(IncludePCH) $(IncludePath) $(PreprocessOnlySwitch) $(OutputSwitch) $(IntermediateDirectory)/Server.tproj_QTSSMessages$(PreprocessSuffix) "Server.tproj/QTSSMessages.cpp"

$(IntermediateDirectory)/Server.tproj_QTSSUserProfile$(ObjectSuffix): Server.tproj/QTSSUserProfile.cpp $(IntermediateDirectory)/Server.tproj_QTSSUserProfile$(DependSuffix)
	$(CXX) $(IncludePCH) $(SourceSwitch) "/home/fym/cpp-project/RTSPServer/Server.tproj/QTSSUserProfile.cpp" $(CXXFLAGS) $(ObjectSwitch)$(IntermediateDirectory)/Server.tproj_QTSSUserProfile$(ObjectSuffix) $(IncludePath)
$(IntermediateDirectory)/Server.tproj_QTSSUserProfile$(DependSuffix): Server.tproj/QTSSUserProfile.cpp
	@$(CXX) $(CXXFLAGS) $(IncludePCH) $(IncludePath) -MG -MP -MT$(IntermediateDirectory)/Server.tproj_QTSSUserProfile$(ObjectSuffix) -MF$(IntermediateDirectory)/Server.tproj_QTSSUserProfile$(DependSuffix) -MM "Server.tproj/QTSSUserProfile.cpp"

$(IntermediateDirectory)/Server.tproj_QTSSUserProfile$(PreprocessSuffix): Server.tproj/QTSSUserProfile.cpp
	@$(CXX) $(CXXFLAGS) $(IncludePCH) $(IncludePath) $(PreprocessOnlySwitch) $(OutputSwitch) $(IntermediateDirectory)/Server.tproj_QTSSUserProfile$(PreprocessSuffix) "Server.tproj/QTSSUserProfile.cpp"

$(IntermediateDirectory)/Server.tproj_RTPStream$(ObjectSuffix): Server.tproj/RTPStream.cpp $(IntermediateDirectory)/Server.tproj_RTPStream$(DependSuffix)
	$(CXX) $(IncludePCH) $(SourceSwitch) "/home/fym/cpp-project/RTSPServer/Server.tproj/RTPStream.cpp" $(CXXFLAGS) $(ObjectSwitch)$(IntermediateDirectory)/Server.tproj_RTPStream$(ObjectSuffix) $(IncludePath)
$(IntermediateDirectory)/Server.tproj_RTPStream$(DependSuffix): Server.tproj/RTPStream.cpp
	@$(CXX) $(CXXFLAGS) $(IncludePCH) $(IncludePath) -MG -MP -MT$(IntermediateDirectory)/Server.tproj_RTPStream$(ObjectSuffix) -MF$(IntermediateDirectory)/Server.tproj_RTPStream$(DependSuffix) -MM "Server.tproj/RTPStream.cpp"

$(IntermediateDirectory)/Server.tproj_RTPStream$(PreprocessSuffix): Server.tproj/RTPStream.cpp
	@$(CXX) $(CXXFLAGS) $(IncludePCH) $(IncludePath) $(PreprocessOnlySwitch) $(OutputSwitch) $(IntermediateDirectory)/Server.tproj_RTPStream$(PreprocessSuffix) "Server.tproj/RTPStream.cpp"

$(IntermediateDirectory)/Server.tproj_QTSSErrorLogModule$(ObjectSuffix): Server.tproj/QTSSErrorLogModule.cpp $(IntermediateDirectory)/Server.tproj_QTSSErrorLogModule$(DependSuffix)
	$(CXX) $(IncludePCH) $(SourceSwitch) "/home/fym/cpp-project/RTSPServer/Server.tproj/QTSSErrorLogModule.cpp" $(CXXFLAGS) $(ObjectSwitch)$(IntermediateDirectory)/Server.tproj_QTSSErrorLogModule$(ObjectSuffix) $(IncludePath)
$(IntermediateDirectory)/Server.tproj_QTSSErrorLogModule$(DependSuffix): Server.tproj/QTSSErrorLogModule.cpp
	@$(CXX) $(CXXFLAGS) $(IncludePCH) $(IncludePath) -MG -MP -MT$(IntermediateDirectory)/Server.tproj_QTSSErrorLogModule$(ObjectSuffix) -MF$(IntermediateDirectory)/Server.tproj_QTSSErrorLogModule$(DependSuffix) -MM "Server.tproj/QTSSErrorLogModule.cpp"

$(IntermediateDirectory)/Server.tproj_QTSSErrorLogModule$(PreprocessSuffix): Server.tproj/QTSSErrorLogModule.cpp
	@$(CXX) $(CXXFLAGS) $(IncludePCH) $(IncludePath) $(PreprocessOnlySwitch) $(OutputSwitch) $(IntermediateDirectory)/Server.tproj_QTSSErrorLogModule$(PreprocessSuffix) "Server.tproj/QTSSErrorLogModule.cpp"

$(IntermediateDirectory)/Server.tproj_RTSPRequestInterface$(ObjectSuffix): Server.tproj/RTSPRequestInterface.cpp $(IntermediateDirectory)/Server.tproj_RTSPRequestInterface$(DependSuffix)
	$(CXX) $(IncludePCH) $(SourceSwitch) "/home/fym/cpp-project/RTSPServer/Server.tproj/RTSPRequestInterface.cpp" $(CXXFLAGS) $(ObjectSwitch)$(IntermediateDirectory)/Server.tproj_RTSPRequestInterface$(ObjectSuffix) $(IncludePath)
$(IntermediateDirectory)/Server.tproj_RTSPRequestInterface$(DependSuffix): Server.tproj/RTSPRequestInterface.cpp
	@$(CXX) $(CXXFLAGS) $(IncludePCH) $(IncludePath) -MG -MP -MT$(IntermediateDirectory)/Server.tproj_RTSPRequestInterface$(ObjectSuffix) -MF$(IntermediateDirectory)/Server.tproj_RTSPRequestInterface$(DependSuffix) -MM "Server.tproj/RTSPRequestInterface.cpp"

$(IntermediateDirectory)/Server.tproj_RTSPRequestInterface$(PreprocessSuffix): Server.tproj/RTSPRequestInterface.cpp
	@$(CXX) $(CXXFLAGS) $(IncludePCH) $(IncludePath) $(PreprocessOnlySwitch) $(OutputSwitch) $(IntermediateDirectory)/Server.tproj_RTSPRequestInterface$(PreprocessSuffix) "Server.tproj/RTSPRequestInterface.cpp"

$(IntermediateDirectory)/Server.tproj_QTSSModule$(ObjectSuffix): Server.tproj/QTSSModule.cpp $(IntermediateDirectory)/Server.tproj_QTSSModule$(DependSuffix)
	$(CXX) $(IncludePCH) $(SourceSwitch) "/home/fym/cpp-project/RTSPServer/Server.tproj/QTSSModule.cpp" $(CXXFLAGS) $(ObjectSwitch)$(IntermediateDirectory)/Server.tproj_QTSSModule$(ObjectSuffix) $(IncludePath)
$(IntermediateDirectory)/Server.tproj_QTSSModule$(DependSuffix): Server.tproj/QTSSModule.cpp
	@$(CXX) $(CXXFLAGS) $(IncludePCH) $(IncludePath) -MG -MP -MT$(IntermediateDirectory)/Server.tproj_QTSSModule$(ObjectSuffix) -MF$(IntermediateDirectory)/Server.tproj_QTSSModule$(DependSuffix) -MM "Server.tproj/QTSSModule.cpp"

$(IntermediateDirectory)/Server.tproj_QTSSModule$(PreprocessSuffix): Server.tproj/QTSSModule.cpp
	@$(CXX) $(CXXFLAGS) $(IncludePCH) $(IncludePath) $(PreprocessOnlySwitch) $(OutputSwitch) $(IntermediateDirectory)/Server.tproj_QTSSModule$(PreprocessSuffix) "Server.tproj/QTSSModule.cpp"

$(IntermediateDirectory)/Server.tproj_QTSSExpirationDate$(ObjectSuffix): Server.tproj/QTSSExpirationDate.cpp $(IntermediateDirectory)/Server.tproj_QTSSExpirationDate$(DependSuffix)
	$(CXX) $(IncludePCH) $(SourceSwitch) "/home/fym/cpp-project/RTSPServer/Server.tproj/QTSSExpirationDate.cpp" $(CXXFLAGS) $(ObjectSwitch)$(IntermediateDirectory)/Server.tproj_QTSSExpirationDate$(ObjectSuffix) $(IncludePath)
$(IntermediateDirectory)/Server.tproj_QTSSExpirationDate$(DependSuffix): Server.tproj/QTSSExpirationDate.cpp
	@$(CXX) $(CXXFLAGS) $(IncludePCH) $(IncludePath) -MG -MP -MT$(IntermediateDirectory)/Server.tproj_QTSSExpirationDate$(ObjectSuffix) -MF$(IntermediateDirectory)/Server.tproj_QTSSExpirationDate$(DependSuffix) -MM "Server.tproj/QTSSExpirationDate.cpp"

$(IntermediateDirectory)/Server.tproj_QTSSExpirationDate$(PreprocessSuffix): Server.tproj/QTSSExpirationDate.cpp
	@$(CXX) $(CXXFLAGS) $(IncludePCH) $(IncludePath) $(PreprocessOnlySwitch) $(OutputSwitch) $(IntermediateDirectory)/Server.tproj_QTSSExpirationDate$(PreprocessSuffix) "Server.tproj/QTSSExpirationDate.cpp"

$(IntermediateDirectory)/Server.tproj_QTSServerInterface$(ObjectSuffix): Server.tproj/QTSServerInterface.cpp $(IntermediateDirectory)/Server.tproj_QTSServerInterface$(DependSuffix)
	$(CXX) $(IncludePCH) $(SourceSwitch) "/home/fym/cpp-project/RTSPServer/Server.tproj/QTSServerInterface.cpp" $(CXXFLAGS) $(ObjectSwitch)$(IntermediateDirectory)/Server.tproj_QTSServerInterface$(ObjectSuffix) $(IncludePath)
$(IntermediateDirectory)/Server.tproj_QTSServerInterface$(DependSuffix): Server.tproj/QTSServerInterface.cpp
	@$(CXX) $(CXXFLAGS) $(IncludePCH) $(IncludePath) -MG -MP -MT$(IntermediateDirectory)/Server.tproj_QTSServerInterface$(ObjectSuffix) -MF$(IntermediateDirectory)/Server.tproj_QTSServerInterface$(DependSuffix) -MM "Server.tproj/QTSServerInterface.cpp"

$(IntermediateDirectory)/Server.tproj_QTSServerInterface$(PreprocessSuffix): Server.tproj/QTSServerInterface.cpp
	@$(CXX) $(CXXFLAGS) $(IncludePCH) $(IncludePath) $(PreprocessOnlySwitch) $(OutputSwitch) $(IntermediateDirectory)/Server.tproj_QTSServerInterface$(PreprocessSuffix) "Server.tproj/QTSServerInterface.cpp"

$(IntermediateDirectory)/Server.tproj_RTSPResponseStream$(ObjectSuffix): Server.tproj/RTSPResponseStream.cpp $(IntermediateDirectory)/Server.tproj_RTSPResponseStream$(DependSuffix)
	$(CXX) $(IncludePCH) $(SourceSwitch) "/home/fym/cpp-project/RTSPServer/Server.tproj/RTSPResponseStream.cpp" $(CXXFLAGS) $(ObjectSwitch)$(IntermediateDirectory)/Server.tproj_RTSPResponseStream$(ObjectSuffix) $(IncludePath)
$(IntermediateDirectory)/Server.tproj_RTSPResponseStream$(DependSuffix): Server.tproj/RTSPResponseStream.cpp
	@$(CXX) $(CXXFLAGS) $(IncludePCH) $(IncludePath) -MG -MP -MT$(IntermediateDirectory)/Server.tproj_RTSPResponseStream$(ObjectSuffix) -MF$(IntermediateDirectory)/Server.tproj_RTSPResponseStream$(DependSuffix) -MM "Server.tproj/RTSPResponseStream.cpp"

$(IntermediateDirectory)/Server.tproj_RTSPResponseStream$(PreprocessSuffix): Server.tproj/RTSPResponseStream.cpp
	@$(CXX) $(CXXFLAGS) $(IncludePCH) $(IncludePath) $(PreprocessOnlySwitch) $(OutputSwitch) $(IntermediateDirectory)/Server.tproj_RTSPResponseStream$(PreprocessSuffix) "Server.tproj/RTSPResponseStream.cpp"

$(IntermediateDirectory)/Server.tproj_RTSPSessionInterface$(ObjectSuffix): Server.tproj/RTSPSessionInterface.cpp $(IntermediateDirectory)/Server.tproj_RTSPSessionInterface$(DependSuffix)
	$(CXX) $(IncludePCH) $(SourceSwitch) "/home/fym/cpp-project/RTSPServer/Server.tproj/RTSPSessionInterface.cpp" $(CXXFLAGS) $(ObjectSwitch)$(IntermediateDirectory)/Server.tproj_RTSPSessionInterface$(ObjectSuffix) $(IncludePath)
$(IntermediateDirectory)/Server.tproj_RTSPSessionInterface$(DependSuffix): Server.tproj/RTSPSessionInterface.cpp
	@$(CXX) $(CXXFLAGS) $(IncludePCH) $(IncludePath) -MG -MP -MT$(IntermediateDirectory)/Server.tproj_RTSPSessionInterface$(ObjectSuffix) -MF$(IntermediateDirectory)/Server.tproj_RTSPSessionInterface$(DependSuffix) -MM "Server.tproj/RTSPSessionInterface.cpp"

$(IntermediateDirectory)/Server.tproj_RTSPSessionInterface$(PreprocessSuffix): Server.tproj/RTSPSessionInterface.cpp
	@$(CXX) $(CXXFLAGS) $(IncludePCH) $(IncludePath) $(PreprocessOnlySwitch) $(OutputSwitch) $(IntermediateDirectory)/Server.tproj_RTSPSessionInterface$(PreprocessSuffix) "Server.tproj/RTSPSessionInterface.cpp"

$(IntermediateDirectory)/Server.tproj_RTSPSession$(ObjectSuffix): Server.tproj/RTSPSession.cpp $(IntermediateDirectory)/Server.tproj_RTSPSession$(DependSuffix)
	$(CXX) $(IncludePCH) $(SourceSwitch) "/home/fym/cpp-project/RTSPServer/Server.tproj/RTSPSession.cpp" $(CXXFLAGS) $(ObjectSwitch)$(IntermediateDirectory)/Server.tproj_RTSPSession$(ObjectSuffix) $(IncludePath)
$(IntermediateDirectory)/Server.tproj_RTSPSession$(DependSuffix): Server.tproj/RTSPSession.cpp
	@$(CXX) $(CXXFLAGS) $(IncludePCH) $(IncludePath) -MG -MP -MT$(IntermediateDirectory)/Server.tproj_RTSPSession$(ObjectSuffix) -MF$(IntermediateDirectory)/Server.tproj_RTSPSession$(DependSuffix) -MM "Server.tproj/RTSPSession.cpp"

$(IntermediateDirectory)/Server.tproj_RTSPSession$(PreprocessSuffix): Server.tproj/RTSPSession.cpp
	@$(CXX) $(CXXFLAGS) $(IncludePCH) $(IncludePath) $(PreprocessOnlySwitch) $(OutputSwitch) $(IntermediateDirectory)/Server.tproj_RTSPSession$(PreprocessSuffix) "Server.tproj/RTSPSession.cpp"

$(IntermediateDirectory)/Server.tproj_QTSSDataConverter$(ObjectSuffix): Server.tproj/QTSSDataConverter.cpp $(IntermediateDirectory)/Server.tproj_QTSSDataConverter$(DependSuffix)
	$(CXX) $(IncludePCH) $(SourceSwitch) "/home/fym/cpp-project/RTSPServer/Server.tproj/QTSSDataConverter.cpp" $(CXXFLAGS) $(ObjectSwitch)$(IntermediateDirectory)/Server.tproj_QTSSDataConverter$(ObjectSuffix) $(IncludePath)
$(IntermediateDirectory)/Server.tproj_QTSSDataConverter$(DependSuffix): Server.tproj/QTSSDataConverter.cpp
	@$(CXX) $(CXXFLAGS) $(IncludePCH) $(IncludePath) -MG -MP -MT$(IntermediateDirectory)/Server.tproj_QTSSDataConverter$(ObjectSuffix) -MF$(IntermediateDirectory)/Server.tproj_QTSSDataConverter$(DependSuffix) -MM "Server.tproj/QTSSDataConverter.cpp"

$(IntermediateDirectory)/Server.tproj_QTSSDataConverter$(PreprocessSuffix): Server.tproj/QTSSDataConverter.cpp
	@$(CXX) $(CXXFLAGS) $(IncludePCH) $(IncludePath) $(PreprocessOnlySwitch) $(OutputSwitch) $(IntermediateDirectory)/Server.tproj_QTSSDataConverter$(PreprocessSuffix) "Server.tproj/QTSSDataConverter.cpp"

$(IntermediateDirectory)/Server.tproj_RTPOverbufferWindow$(ObjectSuffix): Server.tproj/RTPOverbufferWindow.cpp $(IntermediateDirectory)/Server.tproj_RTPOverbufferWindow$(DependSuffix)
	$(CXX) $(IncludePCH) $(SourceSwitch) "/home/fym/cpp-project/RTSPServer/Server.tproj/RTPOverbufferWindow.cpp" $(CXXFLAGS) $(ObjectSwitch)$(IntermediateDirectory)/Server.tproj_RTPOverbufferWindow$(ObjectSuffix) $(IncludePath)
$(IntermediateDirectory)/Server.tproj_RTPOverbufferWindow$(DependSuffix): Server.tproj/RTPOverbufferWindow.cpp
	@$(CXX) $(CXXFLAGS) $(IncludePCH) $(IncludePath) -MG -MP -MT$(IntermediateDirectory)/Server.tproj_RTPOverbufferWindow$(ObjectSuffix) -MF$(IntermediateDirectory)/Server.tproj_RTPOverbufferWindow$(DependSuffix) -MM "Server.tproj/RTPOverbufferWindow.cpp"

$(IntermediateDirectory)/Server.tproj_RTPOverbufferWindow$(PreprocessSuffix): Server.tproj/RTPOverbufferWindow.cpp
	@$(CXX) $(CXXFLAGS) $(IncludePCH) $(IncludePath) $(PreprocessOnlySwitch) $(OutputSwitch) $(IntermediateDirectory)/Server.tproj_RTPOverbufferWindow$(PreprocessSuffix) "Server.tproj/RTPOverbufferWindow.cpp"

$(IntermediateDirectory)/Server.tproj_QTSServer$(ObjectSuffix): Server.tproj/QTSServer.cpp $(IntermediateDirectory)/Server.tproj_QTSServer$(DependSuffix)
	$(CXX) $(IncludePCH) $(SourceSwitch) "/home/fym/cpp-project/RTSPServer/Server.tproj/QTSServer.cpp" $(CXXFLAGS) $(ObjectSwitch)$(IntermediateDirectory)/Server.tproj_QTSServer$(ObjectSuffix) $(IncludePath)
$(IntermediateDirectory)/Server.tproj_QTSServer$(DependSuffix): Server.tproj/QTSServer.cpp
	@$(CXX) $(CXXFLAGS) $(IncludePCH) $(IncludePath) -MG -MP -MT$(IntermediateDirectory)/Server.tproj_QTSServer$(ObjectSuffix) -MF$(IntermediateDirectory)/Server.tproj_QTSServer$(DependSuffix) -MM "Server.tproj/QTSServer.cpp"

$(IntermediateDirectory)/Server.tproj_QTSServer$(PreprocessSuffix): Server.tproj/QTSServer.cpp
	@$(CXX) $(CXXFLAGS) $(IncludePCH) $(IncludePath) $(PreprocessOnlySwitch) $(OutputSwitch) $(IntermediateDirectory)/Server.tproj_QTSServer$(PreprocessSuffix) "Server.tproj/QTSServer.cpp"

$(IntermediateDirectory)/Server.tproj_QTSSCallbacks$(ObjectSuffix): Server.tproj/QTSSCallbacks.cpp $(IntermediateDirectory)/Server.tproj_QTSSCallbacks$(DependSuffix)
	$(CXX) $(IncludePCH) $(SourceSwitch) "/home/fym/cpp-project/RTSPServer/Server.tproj/QTSSCallbacks.cpp" $(CXXFLAGS) $(ObjectSwitch)$(IntermediateDirectory)/Server.tproj_QTSSCallbacks$(ObjectSuffix) $(IncludePath)
$(IntermediateDirectory)/Server.tproj_QTSSCallbacks$(DependSuffix): Server.tproj/QTSSCallbacks.cpp
	@$(CXX) $(CXXFLAGS) $(IncludePCH) $(IncludePath) -MG -MP -MT$(IntermediateDirectory)/Server.tproj_QTSSCallbacks$(ObjectSuffix) -MF$(IntermediateDirectory)/Server.tproj_QTSSCallbacks$(DependSuffix) -MM "Server.tproj/QTSSCallbacks.cpp"

$(IntermediateDirectory)/Server.tproj_QTSSCallbacks$(PreprocessSuffix): Server.tproj/QTSSCallbacks.cpp
	@$(CXX) $(CXXFLAGS) $(IncludePCH) $(IncludePath) $(PreprocessOnlySwitch) $(OutputSwitch) $(IntermediateDirectory)/Server.tproj_QTSSCallbacks$(PreprocessSuffix) "Server.tproj/QTSSCallbacks.cpp"

$(IntermediateDirectory)/Server.tproj_QTSServerPrefs$(ObjectSuffix): Server.tproj/QTSServerPrefs.cpp $(IntermediateDirectory)/Server.tproj_QTSServerPrefs$(DependSuffix)
	$(CXX) $(IncludePCH) $(SourceSwitch) "/home/fym/cpp-project/RTSPServer/Server.tproj/QTSServerPrefs.cpp" $(CXXFLAGS) $(ObjectSwitch)$(IntermediateDirectory)/Server.tproj_QTSServerPrefs$(ObjectSuffix) $(IncludePath)
$(IntermediateDirectory)/Server.tproj_QTSServerPrefs$(DependSuffix): Server.tproj/QTSServerPrefs.cpp
	@$(CXX) $(CXXFLAGS) $(IncludePCH) $(IncludePath) -MG -MP -MT$(IntermediateDirectory)/Server.tproj_QTSServerPrefs$(ObjectSuffix) -MF$(IntermediateDirectory)/Server.tproj_QTSServerPrefs$(DependSuffix) -MM "Server.tproj/QTSServerPrefs.cpp"

$(IntermediateDirectory)/Server.tproj_QTSServerPrefs$(PreprocessSuffix): Server.tproj/QTSServerPrefs.cpp
	@$(CXX) $(CXXFLAGS) $(IncludePCH) $(IncludePath) $(PreprocessOnlySwitch) $(OutputSwitch) $(IntermediateDirectory)/Server.tproj_QTSServerPrefs$(PreprocessSuffix) "Server.tproj/QTSServerPrefs.cpp"

$(IntermediateDirectory)/Server.tproj_QTSSFile$(ObjectSuffix): Server.tproj/QTSSFile.cpp $(IntermediateDirectory)/Server.tproj_QTSSFile$(DependSuffix)
	$(CXX) $(IncludePCH) $(SourceSwitch) "/home/fym/cpp-project/RTSPServer/Server.tproj/QTSSFile.cpp" $(CXXFLAGS) $(ObjectSwitch)$(IntermediateDirectory)/Server.tproj_QTSSFile$(ObjectSuffix) $(IncludePath)
$(IntermediateDirectory)/Server.tproj_QTSSFile$(DependSuffix): Server.tproj/QTSSFile.cpp
	@$(CXX) $(CXXFLAGS) $(IncludePCH) $(IncludePath) -MG -MP -MT$(IntermediateDirectory)/Server.tproj_QTSSFile$(ObjectSuffix) -MF$(IntermediateDirectory)/Server.tproj_QTSSFile$(DependSuffix) -MM "Server.tproj/QTSSFile.cpp"

$(IntermediateDirectory)/Server.tproj_QTSSFile$(PreprocessSuffix): Server.tproj/QTSSFile.cpp
	@$(CXX) $(CXXFLAGS) $(IncludePCH) $(IncludePath) $(PreprocessOnlySwitch) $(OutputSwitch) $(IntermediateDirectory)/Server.tproj_QTSSFile$(PreprocessSuffix) "Server.tproj/QTSSFile.cpp"

$(IntermediateDirectory)/Server.tproj_RTPSessionInterface$(ObjectSuffix): Server.tproj/RTPSessionInterface.cpp $(IntermediateDirectory)/Server.tproj_RTPSessionInterface$(DependSuffix)
	$(CXX) $(IncludePCH) $(SourceSwitch) "/home/fym/cpp-project/RTSPServer/Server.tproj/RTPSessionInterface.cpp" $(CXXFLAGS) $(ObjectSwitch)$(IntermediateDirectory)/Server.tproj_RTPSessionInterface$(ObjectSuffix) $(IncludePath)
$(IntermediateDirectory)/Server.tproj_RTPSessionInterface$(DependSuffix): Server.tproj/RTPSessionInterface.cpp
	@$(CXX) $(CXXFLAGS) $(IncludePCH) $(IncludePath) -MG -MP -MT$(IntermediateDirectory)/Server.tproj_RTPSessionInterface$(ObjectSuffix) -MF$(IntermediateDirectory)/Server.tproj_RTPSessionInterface$(DependSuffix) -MM "Server.tproj/RTPSessionInterface.cpp"

$(IntermediateDirectory)/Server.tproj_RTPSessionInterface$(PreprocessSuffix): Server.tproj/RTPSessionInterface.cpp
	@$(CXX) $(CXXFLAGS) $(IncludePCH) $(IncludePath) $(PreprocessOnlySwitch) $(OutputSwitch) $(IntermediateDirectory)/Server.tproj_RTPSessionInterface$(PreprocessSuffix) "Server.tproj/RTPSessionInterface.cpp"

$(IntermediateDirectory)/Server.tproj_RTPSession$(ObjectSuffix): Server.tproj/RTPSession.cpp $(IntermediateDirectory)/Server.tproj_RTPSession$(DependSuffix)
	$(CXX) $(IncludePCH) $(SourceSwitch) "/home/fym/cpp-project/RTSPServer/Server.tproj/RTPSession.cpp" $(CXXFLAGS) $(ObjectSwitch)$(IntermediateDirectory)/Server.tproj_RTPSession$(ObjectSuffix) $(IncludePath)
$(IntermediateDirectory)/Server.tproj_RTPSession$(DependSuffix): Server.tproj/RTPSession.cpp
	@$(CXX) $(CXXFLAGS) $(IncludePCH) $(IncludePath) -MG -MP -MT$(IntermediateDirectory)/Server.tproj_RTPSession$(ObjectSuffix) -MF$(IntermediateDirectory)/Server.tproj_RTPSession$(DependSuffix) -MM "Server.tproj/RTPSession.cpp"

$(IntermediateDirectory)/Server.tproj_RTPSession$(PreprocessSuffix): Server.tproj/RTPSession.cpp
	@$(CXX) $(CXXFLAGS) $(IncludePCH) $(IncludePath) $(PreprocessOnlySwitch) $(OutputSwitch) $(IntermediateDirectory)/Server.tproj_RTPSession$(PreprocessSuffix) "Server.tproj/RTPSession.cpp"

$(IntermediateDirectory)/Server.tproj_RTPPacketResender$(ObjectSuffix): Server.tproj/RTPPacketResender.cpp $(IntermediateDirectory)/Server.tproj_RTPPacketResender$(DependSuffix)
	$(CXX) $(IncludePCH) $(SourceSwitch) "/home/fym/cpp-project/RTSPServer/Server.tproj/RTPPacketResender.cpp" $(CXXFLAGS) $(ObjectSwitch)$(IntermediateDirectory)/Server.tproj_RTPPacketResender$(ObjectSuffix) $(IncludePath)
$(IntermediateDirectory)/Server.tproj_RTPPacketResender$(DependSuffix): Server.tproj/RTPPacketResender.cpp
	@$(CXX) $(CXXFLAGS) $(IncludePCH) $(IncludePath) -MG -MP -MT$(IntermediateDirectory)/Server.tproj_RTPPacketResender$(ObjectSuffix) -MF$(IntermediateDirectory)/Server.tproj_RTPPacketResender$(DependSuffix) -MM "Server.tproj/RTPPacketResender.cpp"

$(IntermediateDirectory)/Server.tproj_RTPPacketResender$(PreprocessSuffix): Server.tproj/RTPPacketResender.cpp
	@$(CXX) $(CXXFLAGS) $(IncludePCH) $(IncludePath) $(PreprocessOnlySwitch) $(OutputSwitch) $(IntermediateDirectory)/Server.tproj_RTPPacketResender$(PreprocessSuffix) "Server.tproj/RTPPacketResender.cpp"

$(IntermediateDirectory)/Server.tproj_RunServerLib$(ObjectSuffix): Server.tproj/RunServerLib.cpp $(IntermediateDirectory)/Server.tproj_RunServerLib$(DependSuffix)
	$(CXX) $(IncludePCH) $(SourceSwitch) "/home/fym/cpp-project/RTSPServer/Server.tproj/RunServerLib.cpp" $(CXXFLAGS) $(ObjectSwitch)$(IntermediateDirectory)/Server.tproj_RunServerLib$(ObjectSuffix) $(IncludePath)
$(IntermediateDirectory)/Server.tproj_RunServerLib$(DependSuffix): Server.tproj/RunServerLib.cpp
	@$(CXX) $(CXXFLAGS) $(IncludePCH) $(IncludePath) -MG -MP -MT$(IntermediateDirectory)/Server.tproj_RunServerLib$(ObjectSuffix) -MF$(IntermediateDirectory)/Server.tproj_RunServerLib$(DependSuffix) -MM "Server.tproj/RunServerLib.cpp"

$(IntermediateDirectory)/Server.tproj_RunServerLib$(PreprocessSuffix): Server.tproj/RunServerLib.cpp
	@$(CXX) $(CXXFLAGS) $(IncludePCH) $(IncludePath) $(PreprocessOnlySwitch) $(OutputSwitch) $(IntermediateDirectory)/Server.tproj_RunServerLib$(PreprocessSuffix) "Server.tproj/RunServerLib.cpp"

$(IntermediateDirectory)/Server.tproj_Win32LibMain$(ObjectSuffix): Server.tproj/Win32LibMain.cpp $(IntermediateDirectory)/Server.tproj_Win32LibMain$(DependSuffix)
	$(CXX) $(IncludePCH) $(SourceSwitch) "/home/fym/cpp-project/RTSPServer/Server.tproj/Win32LibMain.cpp" $(CXXFLAGS) $(ObjectSwitch)$(IntermediateDirectory)/Server.tproj_Win32LibMain$(ObjectSuffix) $(IncludePath)
$(IntermediateDirectory)/Server.tproj_Win32LibMain$(DependSuffix): Server.tproj/Win32LibMain.cpp
	@$(CXX) $(CXXFLAGS) $(IncludePCH) $(IncludePath) -MG -MP -MT$(IntermediateDirectory)/Server.tproj_Win32LibMain$(ObjectSuffix) -MF$(IntermediateDirectory)/Server.tproj_Win32LibMain$(DependSuffix) -MM "Server.tproj/Win32LibMain.cpp"

$(IntermediateDirectory)/Server.tproj_Win32LibMain$(PreprocessSuffix): Server.tproj/Win32LibMain.cpp
	@$(CXX) $(CXXFLAGS) $(IncludePCH) $(IncludePath) $(PreprocessOnlySwitch) $(OutputSwitch) $(IntermediateDirectory)/Server.tproj_Win32LibMain$(PreprocessSuffix) "Server.tproj/Win32LibMain.cpp"

$(IntermediateDirectory)/QTSSAccessModule_QTSSAccessModule$(ObjectSuffix): APIModules/QTSSAccessModule/QTSSAccessModule.cpp $(IntermediateDirectory)/QTSSAccessModule_QTSSAccessModule$(DependSuffix)
	$(CXX) $(IncludePCH) $(SourceSwitch) "/home/fym/cpp-project/RTSPServer/APIModules/QTSSAccessModule/QTSSAccessModule.cpp" $(CXXFLAGS) $(ObjectSwitch)$(IntermediateDirectory)/QTSSAccessModule_QTSSAccessModule$(ObjectSuffix) $(IncludePath)
$(IntermediateDirectory)/QTSSAccessModule_QTSSAccessModule$(DependSuffix): APIModules/QTSSAccessModule/QTSSAccessModule.cpp
	@$(CXX) $(CXXFLAGS) $(IncludePCH) $(IncludePath) -MG -MP -MT$(IntermediateDirectory)/QTSSAccessModule_QTSSAccessModule$(ObjectSuffix) -MF$(IntermediateDirectory)/QTSSAccessModule_QTSSAccessModule$(DependSuffix) -MM "APIModules/QTSSAccessModule/QTSSAccessModule.cpp"

$(IntermediateDirectory)/QTSSAccessModule_QTSSAccessModule$(PreprocessSuffix): APIModules/QTSSAccessModule/QTSSAccessModule.cpp
	@$(CXX) $(CXXFLAGS) $(IncludePCH) $(IncludePath) $(PreprocessOnlySwitch) $(OutputSwitch) $(IntermediateDirectory)/QTSSAccessModule_QTSSAccessModule$(PreprocessSuffix) "APIModules/QTSSAccessModule/QTSSAccessModule.cpp"

$(IntermediateDirectory)/QTSSAccessModule_AccessChecker$(ObjectSuffix): APIModules/QTSSAccessModule/AccessChecker.cpp $(IntermediateDirectory)/QTSSAccessModule_AccessChecker$(DependSuffix)
	$(CXX) $(IncludePCH) $(SourceSwitch) "/home/fym/cpp-project/RTSPServer/APIModules/QTSSAccessModule/AccessChecker.cpp" $(CXXFLAGS) $(ObjectSwitch)$(IntermediateDirectory)/QTSSAccessModule_AccessChecker$(ObjectSuffix) $(IncludePath)
$(IntermediateDirectory)/QTSSAccessModule_AccessChecker$(DependSuffix): APIModules/QTSSAccessModule/AccessChecker.cpp
	@$(CXX) $(CXXFLAGS) $(IncludePCH) $(IncludePath) -MG -MP -MT$(IntermediateDirectory)/QTSSAccessModule_AccessChecker$(ObjectSuffix) -MF$(IntermediateDirectory)/QTSSAccessModule_AccessChecker$(DependSuffix) -MM "APIModules/QTSSAccessModule/AccessChecker.cpp"

$(IntermediateDirectory)/QTSSAccessModule_AccessChecker$(PreprocessSuffix): APIModules/QTSSAccessModule/AccessChecker.cpp
	@$(CXX) $(CXXFLAGS) $(IncludePCH) $(IncludePath) $(PreprocessOnlySwitch) $(OutputSwitch) $(IntermediateDirectory)/QTSSAccessModule_AccessChecker$(PreprocessSuffix) "APIModules/QTSSAccessModule/AccessChecker.cpp"

$(IntermediateDirectory)/QTSSWebDebugModule_QTSSWebDebugModule$(ObjectSuffix): APIModules/QTSSWebDebugModule/QTSSWebDebugModule.cpp $(IntermediateDirectory)/QTSSWebDebugModule_QTSSWebDebugModule$(DependSuffix)
	$(CXX) $(IncludePCH) $(SourceSwitch) "/home/fym/cpp-project/RTSPServer/APIModules/QTSSWebDebugModule/QTSSWebDebugModule.cpp" $(CXXFLAGS) $(ObjectSwitch)$(IntermediateDirectory)/QTSSWebDebugModule_QTSSWebDebugModule$(ObjectSuffix) $(IncludePath)
$(IntermediateDirectory)/QTSSWebDebugModule_QTSSWebDebugModule$(DependSuffix): APIModules/QTSSWebDebugModule/QTSSWebDebugModule.cpp
	@$(CXX) $(CXXFLAGS) $(IncludePCH) $(IncludePath) -MG -MP -MT$(IntermediateDirectory)/QTSSWebDebugModule_QTSSWebDebugModule$(ObjectSuffix) -MF$(IntermediateDirectory)/QTSSWebDebugModule_QTSSWebDebugModule$(DependSuffix) -MM "APIModules/QTSSWebDebugModule/QTSSWebDebugModule.cpp"

$(IntermediateDirectory)/QTSSWebDebugModule_QTSSWebDebugModule$(PreprocessSuffix): APIModules/QTSSWebDebugModule/QTSSWebDebugModule.cpp
	@$(CXX) $(CXXFLAGS) $(IncludePCH) $(IncludePath) $(PreprocessOnlySwitch) $(OutputSwitch) $(IntermediateDirectory)/QTSSWebDebugModule_QTSSWebDebugModule$(PreprocessSuffix) "APIModules/QTSSWebDebugModule/QTSSWebDebugModule.cpp"

$(IntermediateDirectory)/QTSSFlowControlModule_QTSSFlowControlModule$(ObjectSuffix): APIModules/QTSSFlowControlModule/QTSSFlowControlModule.cpp $(IntermediateDirectory)/QTSSFlowControlModule_QTSSFlowControlModule$(DependSuffix)
	$(CXX) $(IncludePCH) $(SourceSwitch) "/home/fym/cpp-project/RTSPServer/APIModules/QTSSFlowControlModule/QTSSFlowControlModule.cpp" $(CXXFLAGS) $(ObjectSwitch)$(IntermediateDirectory)/QTSSFlowControlModule_QTSSFlowControlModule$(ObjectSuffix) $(IncludePath)
$(IntermediateDirectory)/QTSSFlowControlModule_QTSSFlowControlModule$(DependSuffix): APIModules/QTSSFlowControlModule/QTSSFlowControlModule.cpp
	@$(CXX) $(CXXFLAGS) $(IncludePCH) $(IncludePath) -MG -MP -MT$(IntermediateDirectory)/QTSSFlowControlModule_QTSSFlowControlModule$(ObjectSuffix) -MF$(IntermediateDirectory)/QTSSFlowControlModule_QTSSFlowControlModule$(DependSuffix) -MM "APIModules/QTSSFlowControlModule/QTSSFlowControlModule.cpp"

$(IntermediateDirectory)/QTSSFlowControlModule_QTSSFlowControlModule$(PreprocessSuffix): APIModules/QTSSFlowControlModule/QTSSFlowControlModule.cpp
	@$(CXX) $(CXXFLAGS) $(IncludePCH) $(IncludePath) $(PreprocessOnlySwitch) $(OutputSwitch) $(IntermediateDirectory)/QTSSFlowControlModule_QTSSFlowControlModule$(PreprocessSuffix) "APIModules/QTSSFlowControlModule/QTSSFlowControlModule.cpp"

$(IntermediateDirectory)/QTSSReflectorModule_RelayOutput$(ObjectSuffix): APIModules/QTSSReflectorModule/RelayOutput.cpp $(IntermediateDirectory)/QTSSReflectorModule_RelayOutput$(DependSuffix)
	$(CXX) $(IncludePCH) $(SourceSwitch) "/home/fym/cpp-project/RTSPServer/APIModules/QTSSReflectorModule/RelayOutput.cpp" $(CXXFLAGS) $(ObjectSwitch)$(IntermediateDirectory)/QTSSReflectorModule_RelayOutput$(ObjectSuffix) $(IncludePath)
$(IntermediateDirectory)/QTSSReflectorModule_RelayOutput$(DependSuffix): APIModules/QTSSReflectorModule/RelayOutput.cpp
	@$(CXX) $(CXXFLAGS) $(IncludePCH) $(IncludePath) -MG -MP -MT$(IntermediateDirectory)/QTSSReflectorModule_RelayOutput$(ObjectSuffix) -MF$(IntermediateDirectory)/QTSSReflectorModule_RelayOutput$(DependSuffix) -MM "APIModules/QTSSReflectorModule/RelayOutput.cpp"

$(IntermediateDirectory)/QTSSReflectorModule_RelayOutput$(PreprocessSuffix): APIModules/QTSSReflectorModule/RelayOutput.cpp
	@$(CXX) $(CXXFLAGS) $(IncludePCH) $(IncludePath) $(PreprocessOnlySwitch) $(OutputSwitch) $(IntermediateDirectory)/QTSSReflectorModule_RelayOutput$(PreprocessSuffix) "APIModules/QTSSReflectorModule/RelayOutput.cpp"

$(IntermediateDirectory)/QTSSReflectorModule_RelaySDPSourceInfo$(ObjectSuffix): APIModules/QTSSReflectorModule/RelaySDPSourceInfo.cpp $(IntermediateDirectory)/QTSSReflectorModule_RelaySDPSourceInfo$(DependSuffix)
	$(CXX) $(IncludePCH) $(SourceSwitch) "/home/fym/cpp-project/RTSPServer/APIModules/QTSSReflectorModule/RelaySDPSourceInfo.cpp" $(CXXFLAGS) $(ObjectSwitch)$(IntermediateDirectory)/QTSSReflectorModule_RelaySDPSourceInfo$(ObjectSuffix) $(IncludePath)
$(IntermediateDirectory)/QTSSReflectorModule_RelaySDPSourceInfo$(DependSuffix): APIModules/QTSSReflectorModule/RelaySDPSourceInfo.cpp
	@$(CXX) $(CXXFLAGS) $(IncludePCH) $(IncludePath) -MG -MP -MT$(IntermediateDirectory)/QTSSReflectorModule_RelaySDPSourceInfo$(ObjectSuffix) -MF$(IntermediateDirectory)/QTSSReflectorModule_RelaySDPSourceInfo$(DependSuffix) -MM "APIModules/QTSSReflectorModule/RelaySDPSourceInfo.cpp"

$(IntermediateDirectory)/QTSSReflectorModule_RelaySDPSourceInfo$(PreprocessSuffix): APIModules/QTSSReflectorModule/RelaySDPSourceInfo.cpp
	@$(CXX) $(CXXFLAGS) $(IncludePCH) $(IncludePath) $(PreprocessOnlySwitch) $(OutputSwitch) $(IntermediateDirectory)/QTSSReflectorModule_RelaySDPSourceInfo$(PreprocessSuffix) "APIModules/QTSSReflectorModule/RelaySDPSourceInfo.cpp"

$(IntermediateDirectory)/QTSSReflectorModule_QTSSReflectorModule$(ObjectSuffix): APIModules/QTSSReflectorModule/QTSSReflectorModule.cpp $(IntermediateDirectory)/QTSSReflectorModule_QTSSReflectorModule$(DependSuffix)
	$(CXX) $(IncludePCH) $(SourceSwitch) "/home/fym/cpp-project/RTSPServer/APIModules/QTSSReflectorModule/QTSSReflectorModule.cpp" $(CXXFLAGS) $(ObjectSwitch)$(IntermediateDirectory)/QTSSReflectorModule_QTSSReflectorModule$(ObjectSuffix) $(IncludePath)
$(IntermediateDirectory)/QTSSReflectorModule_QTSSReflectorModule$(DependSuffix): APIModules/QTSSReflectorModule/QTSSReflectorModule.cpp
	@$(CXX) $(CXXFLAGS) $(IncludePCH) $(IncludePath) -MG -MP -MT$(IntermediateDirectory)/QTSSReflectorModule_QTSSReflectorModule$(ObjectSuffix) -MF$(IntermediateDirectory)/QTSSReflectorModule_QTSSReflectorModule$(DependSuffix) -MM "APIModules/QTSSReflectorModule/QTSSReflectorModule.cpp"

$(IntermediateDirectory)/QTSSReflectorModule_QTSSReflectorModule$(PreprocessSuffix): APIModules/QTSSReflectorModule/QTSSReflectorModule.cpp
	@$(CXX) $(CXXFLAGS) $(IncludePCH) $(IncludePath) $(PreprocessOnlySwitch) $(OutputSwitch) $(IntermediateDirectory)/QTSSReflectorModule_QTSSReflectorModule$(PreprocessSuffix) "APIModules/QTSSReflectorModule/QTSSReflectorModule.cpp"

$(IntermediateDirectory)/QTSSReflectorModule_SequenceNumberMap$(ObjectSuffix): APIModules/QTSSReflectorModule/SequenceNumberMap.cpp $(IntermediateDirectory)/QTSSReflectorModule_SequenceNumberMap$(DependSuffix)
	$(CXX) $(IncludePCH) $(SourceSwitch) "/home/fym/cpp-project/RTSPServer/APIModules/QTSSReflectorModule/SequenceNumberMap.cpp" $(CXXFLAGS) $(ObjectSwitch)$(IntermediateDirectory)/QTSSReflectorModule_SequenceNumberMap$(ObjectSuffix) $(IncludePath)
$(IntermediateDirectory)/QTSSReflectorModule_SequenceNumberMap$(DependSuffix): APIModules/QTSSReflectorModule/SequenceNumberMap.cpp
	@$(CXX) $(CXXFLAGS) $(IncludePCH) $(IncludePath) -MG -MP -MT$(IntermediateDirectory)/QTSSReflectorModule_SequenceNumberMap$(ObjectSuffix) -MF$(IntermediateDirectory)/QTSSReflectorModule_SequenceNumberMap$(DependSuffix) -MM "APIModules/QTSSReflectorModule/SequenceNumberMap.cpp"

$(IntermediateDirectory)/QTSSReflectorModule_SequenceNumberMap$(PreprocessSuffix): APIModules/QTSSReflectorModule/SequenceNumberMap.cpp
	@$(CXX) $(CXXFLAGS) $(IncludePCH) $(IncludePath) $(PreprocessOnlySwitch) $(OutputSwitch) $(IntermediateDirectory)/QTSSReflectorModule_SequenceNumberMap$(PreprocessSuffix) "APIModules/QTSSReflectorModule/SequenceNumberMap.cpp"

$(IntermediateDirectory)/QTSSReflectorModule_RelaySession$(ObjectSuffix): APIModules/QTSSReflectorModule/RelaySession.cpp $(IntermediateDirectory)/QTSSReflectorModule_RelaySession$(DependSuffix)
	$(CXX) $(IncludePCH) $(SourceSwitch) "/home/fym/cpp-project/RTSPServer/APIModules/QTSSReflectorModule/RelaySession.cpp" $(CXXFLAGS) $(ObjectSwitch)$(IntermediateDirectory)/QTSSReflectorModule_RelaySession$(ObjectSuffix) $(IncludePath)
$(IntermediateDirectory)/QTSSReflectorModule_RelaySession$(DependSuffix): APIModules/QTSSReflectorModule/RelaySession.cpp
	@$(CXX) $(CXXFLAGS) $(IncludePCH) $(IncludePath) -MG -MP -MT$(IntermediateDirectory)/QTSSReflectorModule_RelaySession$(ObjectSuffix) -MF$(IntermediateDirectory)/QTSSReflectorModule_RelaySession$(DependSuffix) -MM "APIModules/QTSSReflectorModule/RelaySession.cpp"

$(IntermediateDirectory)/QTSSReflectorModule_RelaySession$(PreprocessSuffix): APIModules/QTSSReflectorModule/RelaySession.cpp
	@$(CXX) $(CXXFLAGS) $(IncludePCH) $(IncludePath) $(PreprocessOnlySwitch) $(OutputSwitch) $(IntermediateDirectory)/QTSSReflectorModule_RelaySession$(PreprocessSuffix) "APIModules/QTSSReflectorModule/RelaySession.cpp"

$(IntermediateDirectory)/QTSSReflectorModule_RTSPSourceInfo$(ObjectSuffix): APIModules/QTSSReflectorModule/RTSPSourceInfo.cpp $(IntermediateDirectory)/QTSSReflectorModule_RTSPSourceInfo$(DependSuffix)
	$(CXX) $(IncludePCH) $(SourceSwitch) "/home/fym/cpp-project/RTSPServer/APIModules/QTSSReflectorModule/RTSPSourceInfo.cpp" $(CXXFLAGS) $(ObjectSwitch)$(IntermediateDirectory)/QTSSReflectorModule_RTSPSourceInfo$(ObjectSuffix) $(IncludePath)
$(IntermediateDirectory)/QTSSReflectorModule_RTSPSourceInfo$(DependSuffix): APIModules/QTSSReflectorModule/RTSPSourceInfo.cpp
	@$(CXX) $(CXXFLAGS) $(IncludePCH) $(IncludePath) -MG -MP -MT$(IntermediateDirectory)/QTSSReflectorModule_RTSPSourceInfo$(ObjectSuffix) -MF$(IntermediateDirectory)/QTSSReflectorModule_RTSPSourceInfo$(DependSuffix) -MM "APIModules/QTSSReflectorModule/RTSPSourceInfo.cpp"

$(IntermediateDirectory)/QTSSReflectorModule_RTSPSourceInfo$(PreprocessSuffix): APIModules/QTSSReflectorModule/RTSPSourceInfo.cpp
	@$(CXX) $(CXXFLAGS) $(IncludePCH) $(IncludePath) $(PreprocessOnlySwitch) $(OutputSwitch) $(IntermediateDirectory)/QTSSReflectorModule_RTSPSourceInfo$(PreprocessSuffix) "APIModules/QTSSReflectorModule/RTSPSourceInfo.cpp"

$(IntermediateDirectory)/QTSSReflectorModule_QTSSRelayModule$(ObjectSuffix): APIModules/QTSSReflectorModule/QTSSRelayModule.cpp $(IntermediateDirectory)/QTSSReflectorModule_QTSSRelayModule$(DependSuffix)
	$(CXX) $(IncludePCH) $(SourceSwitch) "/home/fym/cpp-project/RTSPServer/APIModules/QTSSReflectorModule/QTSSRelayModule.cpp" $(CXXFLAGS) $(ObjectSwitch)$(IntermediateDirectory)/QTSSReflectorModule_QTSSRelayModule$(ObjectSuffix) $(IncludePath)
$(IntermediateDirectory)/QTSSReflectorModule_QTSSRelayModule$(DependSuffix): APIModules/QTSSReflectorModule/QTSSRelayModule.cpp
	@$(CXX) $(CXXFLAGS) $(IncludePCH) $(IncludePath) -MG -MP -MT$(IntermediateDirectory)/QTSSReflectorModule_QTSSRelayModule$(ObjectSuffix) -MF$(IntermediateDirectory)/QTSSReflectorModule_QTSSRelayModule$(DependSuffix) -MM "APIModules/QTSSReflectorModule/QTSSRelayModule.cpp"

$(IntermediateDirectory)/QTSSReflectorModule_QTSSRelayModule$(PreprocessSuffix): APIModules/QTSSReflectorModule/QTSSRelayModule.cpp
	@$(CXX) $(CXXFLAGS) $(IncludePCH) $(IncludePath) $(PreprocessOnlySwitch) $(OutputSwitch) $(IntermediateDirectory)/QTSSReflectorModule_QTSSRelayModule$(PreprocessSuffix) "APIModules/QTSSReflectorModule/QTSSRelayModule.cpp"

$(IntermediateDirectory)/QTSSReflectorModule_ReflectorStream$(ObjectSuffix): APIModules/QTSSReflectorModule/ReflectorStream.cpp $(IntermediateDirectory)/QTSSReflectorModule_ReflectorStream$(DependSuffix)
	$(CXX) $(IncludePCH) $(SourceSwitch) "/home/fym/cpp-project/RTSPServer/APIModules/QTSSReflectorModule/ReflectorStream.cpp" $(CXXFLAGS) $(ObjectSwitch)$(IntermediateDirectory)/QTSSReflectorModule_ReflectorStream$(ObjectSuffix) $(IncludePath)
$(IntermediateDirectory)/QTSSReflectorModule_ReflectorStream$(DependSuffix): APIModules/QTSSReflectorModule/ReflectorStream.cpp
	@$(CXX) $(CXXFLAGS) $(IncludePCH) $(IncludePath) -MG -MP -MT$(IntermediateDirectory)/QTSSReflectorModule_ReflectorStream$(ObjectSuffix) -MF$(IntermediateDirectory)/QTSSReflectorModule_ReflectorStream$(DependSuffix) -MM "APIModules/QTSSReflectorModule/ReflectorStream.cpp"

$(IntermediateDirectory)/QTSSReflectorModule_ReflectorStream$(PreprocessSuffix): APIModules/QTSSReflectorModule/ReflectorStream.cpp
	@$(CXX) $(CXXFLAGS) $(IncludePCH) $(IncludePath) $(PreprocessOnlySwitch) $(OutputSwitch) $(IntermediateDirectory)/QTSSReflectorModule_ReflectorStream$(PreprocessSuffix) "APIModules/QTSSReflectorModule/ReflectorStream.cpp"

$(IntermediateDirectory)/QTSSReflectorModule_RCFSourceInfo$(ObjectSuffix): APIModules/QTSSReflectorModule/RCFSourceInfo.cpp $(IntermediateDirectory)/QTSSReflectorModule_RCFSourceInfo$(DependSuffix)
	$(CXX) $(IncludePCH) $(SourceSwitch) "/home/fym/cpp-project/RTSPServer/APIModules/QTSSReflectorModule/RCFSourceInfo.cpp" $(CXXFLAGS) $(ObjectSwitch)$(IntermediateDirectory)/QTSSReflectorModule_RCFSourceInfo$(ObjectSuffix) $(IncludePath)
$(IntermediateDirectory)/QTSSReflectorModule_RCFSourceInfo$(DependSuffix): APIModules/QTSSReflectorModule/RCFSourceInfo.cpp
	@$(CXX) $(CXXFLAGS) $(IncludePCH) $(IncludePath) -MG -MP -MT$(IntermediateDirectory)/QTSSReflectorModule_RCFSourceInfo$(ObjectSuffix) -MF$(IntermediateDirectory)/QTSSReflectorModule_RCFSourceInfo$(DependSuffix) -MM "APIModules/QTSSReflectorModule/RCFSourceInfo.cpp"

$(IntermediateDirectory)/QTSSReflectorModule_RCFSourceInfo$(PreprocessSuffix): APIModules/QTSSReflectorModule/RCFSourceInfo.cpp
	@$(CXX) $(CXXFLAGS) $(IncludePCH) $(IncludePath) $(PreprocessOnlySwitch) $(OutputSwitch) $(IntermediateDirectory)/QTSSReflectorModule_RCFSourceInfo$(PreprocessSuffix) "APIModules/QTSSReflectorModule/RCFSourceInfo.cpp"

$(IntermediateDirectory)/QTSSReflectorModule_ReflectorSession$(ObjectSuffix): APIModules/QTSSReflectorModule/ReflectorSession.cpp $(IntermediateDirectory)/QTSSReflectorModule_ReflectorSession$(DependSuffix)
	$(CXX) $(IncludePCH) $(SourceSwitch) "/home/fym/cpp-project/RTSPServer/APIModules/QTSSReflectorModule/ReflectorSession.cpp" $(CXXFLAGS) $(ObjectSwitch)$(IntermediateDirectory)/QTSSReflectorModule_ReflectorSession$(ObjectSuffix) $(IncludePath)
$(IntermediateDirectory)/QTSSReflectorModule_ReflectorSession$(DependSuffix): APIModules/QTSSReflectorModule/ReflectorSession.cpp
	@$(CXX) $(CXXFLAGS) $(IncludePCH) $(IncludePath) -MG -MP -MT$(IntermediateDirectory)/QTSSReflectorModule_ReflectorSession$(ObjectSuffix) -MF$(IntermediateDirectory)/QTSSReflectorModule_ReflectorSession$(DependSuffix) -MM "APIModules/QTSSReflectorModule/ReflectorSession.cpp"

$(IntermediateDirectory)/QTSSReflectorModule_ReflectorSession$(PreprocessSuffix): APIModules/QTSSReflectorModule/ReflectorSession.cpp
	@$(CXX) $(CXXFLAGS) $(IncludePCH) $(IncludePath) $(PreprocessOnlySwitch) $(OutputSwitch) $(IntermediateDirectory)/QTSSReflectorModule_ReflectorSession$(PreprocessSuffix) "APIModules/QTSSReflectorModule/ReflectorSession.cpp"

$(IntermediateDirectory)/QTSSReflectorModule_RTPSessionOutput$(ObjectSuffix): APIModules/QTSSReflectorModule/RTPSessionOutput.cpp $(IntermediateDirectory)/QTSSReflectorModule_RTPSessionOutput$(DependSuffix)
	$(CXX) $(IncludePCH) $(SourceSwitch) "/home/fym/cpp-project/RTSPServer/APIModules/QTSSReflectorModule/RTPSessionOutput.cpp" $(CXXFLAGS) $(ObjectSwitch)$(IntermediateDirectory)/QTSSReflectorModule_RTPSessionOutput$(ObjectSuffix) $(IncludePath)
$(IntermediateDirectory)/QTSSReflectorModule_RTPSessionOutput$(DependSuffix): APIModules/QTSSReflectorModule/RTPSessionOutput.cpp
	@$(CXX) $(CXXFLAGS) $(IncludePCH) $(IncludePath) -MG -MP -MT$(IntermediateDirectory)/QTSSReflectorModule_RTPSessionOutput$(ObjectSuffix) -MF$(IntermediateDirectory)/QTSSReflectorModule_RTPSessionOutput$(DependSuffix) -MM "APIModules/QTSSReflectorModule/RTPSessionOutput.cpp"

$(IntermediateDirectory)/QTSSReflectorModule_RTPSessionOutput$(PreprocessSuffix): APIModules/QTSSReflectorModule/RTPSessionOutput.cpp
	@$(CXX) $(CXXFLAGS) $(IncludePCH) $(IncludePath) $(PreprocessOnlySwitch) $(OutputSwitch) $(IntermediateDirectory)/QTSSReflectorModule_RTPSessionOutput$(PreprocessSuffix) "APIModules/QTSSReflectorModule/RTPSessionOutput.cpp"

$(IntermediateDirectory)/QTSSWebStatsModule_QTSSWebStatsModule$(ObjectSuffix): APIModules/QTSSWebStatsModule/QTSSWebStatsModule.cpp $(IntermediateDirectory)/QTSSWebStatsModule_QTSSWebStatsModule$(DependSuffix)
	$(CXX) $(IncludePCH) $(SourceSwitch) "/home/fym/cpp-project/RTSPServer/APIModules/QTSSWebStatsModule/QTSSWebStatsModule.cpp" $(CXXFLAGS) $(ObjectSwitch)$(IntermediateDirectory)/QTSSWebStatsModule_QTSSWebStatsModule$(ObjectSuffix) $(IncludePath)
$(IntermediateDirectory)/QTSSWebStatsModule_QTSSWebStatsModule$(DependSuffix): APIModules/QTSSWebStatsModule/QTSSWebStatsModule.cpp
	@$(CXX) $(CXXFLAGS) $(IncludePCH) $(IncludePath) -MG -MP -MT$(IntermediateDirectory)/QTSSWebStatsModule_QTSSWebStatsModule$(ObjectSuffix) -MF$(IntermediateDirectory)/QTSSWebStatsModule_QTSSWebStatsModule$(DependSuffix) -MM "APIModules/QTSSWebStatsModule/QTSSWebStatsModule.cpp"

$(IntermediateDirectory)/QTSSWebStatsModule_QTSSWebStatsModule$(PreprocessSuffix): APIModules/QTSSWebStatsModule/QTSSWebStatsModule.cpp
	@$(CXX) $(CXXFLAGS) $(IncludePCH) $(IncludePath) $(PreprocessOnlySwitch) $(OutputSwitch) $(IntermediateDirectory)/QTSSWebStatsModule_QTSSWebStatsModule$(PreprocessSuffix) "APIModules/QTSSWebStatsModule/QTSSWebStatsModule.cpp"

$(IntermediateDirectory)/QTSSPosixFileSysModule_QTSSPosixFileSysModule$(ObjectSuffix): APIModules/QTSSPosixFileSysModule/QTSSPosixFileSysModule.cpp $(IntermediateDirectory)/QTSSPosixFileSysModule_QTSSPosixFileSysModule$(DependSuffix)
	$(CXX) $(IncludePCH) $(SourceSwitch) "/home/fym/cpp-project/RTSPServer/APIModules/QTSSPosixFileSysModule/QTSSPosixFileSysModule.cpp" $(CXXFLAGS) $(ObjectSwitch)$(IntermediateDirectory)/QTSSPosixFileSysModule_QTSSPosixFileSysModule$(ObjectSuffix) $(IncludePath)
$(IntermediateDirectory)/QTSSPosixFileSysModule_QTSSPosixFileSysModule$(DependSuffix): APIModules/QTSSPosixFileSysModule/QTSSPosixFileSysModule.cpp
	@$(CXX) $(CXXFLAGS) $(IncludePCH) $(IncludePath) -MG -MP -MT$(IntermediateDirectory)/QTSSPosixFileSysModule_QTSSPosixFileSysModule$(ObjectSuffix) -MF$(IntermediateDirectory)/QTSSPosixFileSysModule_QTSSPosixFileSysModule$(DependSuffix) -MM "APIModules/QTSSPosixFileSysModule/QTSSPosixFileSysModule.cpp"

$(IntermediateDirectory)/QTSSPosixFileSysModule_QTSSPosixFileSysModule$(PreprocessSuffix): APIModules/QTSSPosixFileSysModule/QTSSPosixFileSysModule.cpp
	@$(CXX) $(CXXFLAGS) $(IncludePCH) $(IncludePath) $(PreprocessOnlySwitch) $(OutputSwitch) $(IntermediateDirectory)/QTSSPosixFileSysModule_QTSSPosixFileSysModule$(PreprocessSuffix) "APIModules/QTSSPosixFileSysModule/QTSSPosixFileSysModule.cpp"


-include $(IntermediateDirectory)/*$(DependSuffix)
##
## Clean
##
clean:
	$(RM) $(IntermediateDirectory)/APICommonCode_QTSSModuleUtils$(ObjectSuffix)
	$(RM) $(IntermediateDirectory)/APICommonCode_QTSSModuleUtils$(DependSuffix)
	$(RM) $(IntermediateDirectory)/APICommonCode_QTSSModuleUtils$(PreprocessSuffix)
	$(RM) $(IntermediateDirectory)/APICommonCode_QTAccessFile$(ObjectSuffix)
	$(RM) $(IntermediateDirectory)/APICommonCode_QTAccessFile$(DependSuffix)
	$(RM) $(IntermediateDirectory)/APICommonCode_QTAccessFile$(PreprocessSuffix)
	$(RM) $(IntermediateDirectory)/APICommonCode_QTSSRollingLog$(ObjectSuffix)
	$(RM) $(IntermediateDirectory)/APICommonCode_QTSSRollingLog$(DependSuffix)
	$(RM) $(IntermediateDirectory)/APICommonCode_QTSSRollingLog$(PreprocessSuffix)
	$(RM) $(IntermediateDirectory)/APICommonCode_SourceInfo$(ObjectSuffix)
	$(RM) $(IntermediateDirectory)/APICommonCode_SourceInfo$(DependSuffix)
	$(RM) $(IntermediateDirectory)/APICommonCode_SourceInfo$(PreprocessSuffix)
	$(RM) $(IntermediateDirectory)/APICommonCode_SDPSourceInfo$(ObjectSuffix)
	$(RM) $(IntermediateDirectory)/APICommonCode_SDPSourceInfo$(DependSuffix)
	$(RM) $(IntermediateDirectory)/APICommonCode_SDPSourceInfo$(PreprocessSuffix)
	$(RM) $(IntermediateDirectory)/APIStubLib_QTSS_Private$(ObjectSuffix)
	$(RM) $(IntermediateDirectory)/APIStubLib_QTSS_Private$(DependSuffix)
	$(RM) $(IntermediateDirectory)/APIStubLib_QTSS_Private$(PreprocessSuffix)
	$(RM) $(IntermediateDirectory)/CommonUtilitiesLib_ev$(ObjectSuffix)
	$(RM) $(IntermediateDirectory)/CommonUtilitiesLib_ev$(DependSuffix)
	$(RM) $(IntermediateDirectory)/CommonUtilitiesLib_ev$(PreprocessSuffix)
	$(RM) $(IntermediateDirectory)/CommonUtilitiesLib_base64$(ObjectSuffix)
	$(RM) $(IntermediateDirectory)/CommonUtilitiesLib_base64$(DependSuffix)
	$(RM) $(IntermediateDirectory)/CommonUtilitiesLib_base64$(PreprocessSuffix)
	$(RM) $(IntermediateDirectory)/CommonUtilitiesLib_MyAssert$(ObjectSuffix)
	$(RM) $(IntermediateDirectory)/CommonUtilitiesLib_MyAssert$(DependSuffix)
	$(RM) $(IntermediateDirectory)/CommonUtilitiesLib_MyAssert$(PreprocessSuffix)
	$(RM) $(IntermediateDirectory)/CommonUtilitiesLib_getopt$(ObjectSuffix)
	$(RM) $(IntermediateDirectory)/CommonUtilitiesLib_getopt$(DependSuffix)
	$(RM) $(IntermediateDirectory)/CommonUtilitiesLib_getopt$(PreprocessSuffix)
	$(RM) $(IntermediateDirectory)/CommonUtilitiesLib_UDPDemuxer$(ObjectSuffix)
	$(RM) $(IntermediateDirectory)/CommonUtilitiesLib_UDPDemuxer$(DependSuffix)
	$(RM) $(IntermediateDirectory)/CommonUtilitiesLib_UDPDemuxer$(PreprocessSuffix)
	$(RM) $(IntermediateDirectory)/CommonUtilitiesLib_StringFormatter$(ObjectSuffix)
	$(RM) $(IntermediateDirectory)/CommonUtilitiesLib_StringFormatter$(DependSuffix)
	$(RM) $(IntermediateDirectory)/CommonUtilitiesLib_StringFormatter$(PreprocessSuffix)
	$(RM) $(IntermediateDirectory)/CommonUtilitiesLib_SDPUtils$(ObjectSuffix)
	$(RM) $(IntermediateDirectory)/CommonUtilitiesLib_SDPUtils$(DependSuffix)
	$(RM) $(IntermediateDirectory)/CommonUtilitiesLib_SDPUtils$(PreprocessSuffix)
	$(RM) $(IntermediateDirectory)/CommonUtilitiesLib_StringParser$(ObjectSuffix)
	$(RM) $(IntermediateDirectory)/CommonUtilitiesLib_StringParser$(DependSuffix)
	$(RM) $(IntermediateDirectory)/CommonUtilitiesLib_StringParser$(PreprocessSuffix)
	$(RM) $(IntermediateDirectory)/CommonUtilitiesLib_DateTranslator$(ObjectSuffix)
	$(RM) $(IntermediateDirectory)/CommonUtilitiesLib_DateTranslator$(DependSuffix)
	$(RM) $(IntermediateDirectory)/CommonUtilitiesLib_DateTranslator$(PreprocessSuffix)
	$(RM) $(IntermediateDirectory)/CommonUtilitiesLib_QueryParamList$(ObjectSuffix)
	$(RM) $(IntermediateDirectory)/CommonUtilitiesLib_QueryParamList$(DependSuffix)
	$(RM) $(IntermediateDirectory)/CommonUtilitiesLib_QueryParamList$(PreprocessSuffix)
	$(RM) $(IntermediateDirectory)/CommonUtilitiesLib_OSCodeFragment$(ObjectSuffix)
	$(RM) $(IntermediateDirectory)/CommonUtilitiesLib_OSCodeFragment$(DependSuffix)
	$(RM) $(IntermediateDirectory)/CommonUtilitiesLib_OSCodeFragment$(PreprocessSuffix)
	$(RM) $(IntermediateDirectory)/CommonUtilitiesLib_OSBufferPool$(ObjectSuffix)
	$(RM) $(IntermediateDirectory)/CommonUtilitiesLib_OSBufferPool$(DependSuffix)
	$(RM) $(IntermediateDirectory)/CommonUtilitiesLib_OSBufferPool$(PreprocessSuffix)
	$(RM) $(IntermediateDirectory)/CommonUtilitiesLib_UDPSocketPool$(ObjectSuffix)
	$(RM) $(IntermediateDirectory)/CommonUtilitiesLib_UDPSocketPool$(DependSuffix)
	$(RM) $(IntermediateDirectory)/CommonUtilitiesLib_UDPSocketPool$(PreprocessSuffix)
	$(RM) $(IntermediateDirectory)/CommonUtilitiesLib_StringTranslator$(ObjectSuffix)
	$(RM) $(IntermediateDirectory)/CommonUtilitiesLib_StringTranslator$(DependSuffix)
	$(RM) $(IntermediateDirectory)/CommonUtilitiesLib_StringTranslator$(PreprocessSuffix)
	$(RM) $(IntermediateDirectory)/CommonUtilitiesLib_OSCond$(ObjectSuffix)
	$(RM) $(IntermediateDirectory)/CommonUtilitiesLib_OSCond$(DependSuffix)
	$(RM) $(IntermediateDirectory)/CommonUtilitiesLib_OSCond$(PreprocessSuffix)
	$(RM) $(IntermediateDirectory)/CommonUtilitiesLib_IdleTask$(ObjectSuffix)
	$(RM) $(IntermediateDirectory)/CommonUtilitiesLib_IdleTask$(DependSuffix)
	$(RM) $(IntermediateDirectory)/CommonUtilitiesLib_IdleTask$(PreprocessSuffix)
	$(RM) $(IntermediateDirectory)/CommonUtilitiesLib_UDPSocket$(ObjectSuffix)
	$(RM) $(IntermediateDirectory)/CommonUtilitiesLib_UDPSocket$(DependSuffix)
	$(RM) $(IntermediateDirectory)/CommonUtilitiesLib_UDPSocket$(PreprocessSuffix)
	$(RM) $(IntermediateDirectory)/CommonUtilitiesLib_Trim$(ObjectSuffix)
	$(RM) $(IntermediateDirectory)/CommonUtilitiesLib_Trim$(DependSuffix)
	$(RM) $(IntermediateDirectory)/CommonUtilitiesLib_Trim$(PreprocessSuffix)
	$(RM) $(IntermediateDirectory)/CommonUtilitiesLib_TimeoutTask$(ObjectSuffix)
	$(RM) $(IntermediateDirectory)/CommonUtilitiesLib_TimeoutTask$(DependSuffix)
	$(RM) $(IntermediateDirectory)/CommonUtilitiesLib_TimeoutTask$(PreprocessSuffix)
	$(RM) $(IntermediateDirectory)/CommonUtilitiesLib_UserAgentParser$(ObjectSuffix)
	$(RM) $(IntermediateDirectory)/CommonUtilitiesLib_UserAgentParser$(DependSuffix)
	$(RM) $(IntermediateDirectory)/CommonUtilitiesLib_UserAgentParser$(PreprocessSuffix)
	$(RM) $(IntermediateDirectory)/CommonUtilitiesLib_OS$(ObjectSuffix)
	$(RM) $(IntermediateDirectory)/CommonUtilitiesLib_OS$(DependSuffix)
	$(RM) $(IntermediateDirectory)/CommonUtilitiesLib_OS$(PreprocessSuffix)
	$(RM) $(IntermediateDirectory)/CommonUtilitiesLib_Socket$(ObjectSuffix)
	$(RM) $(IntermediateDirectory)/CommonUtilitiesLib_Socket$(DependSuffix)
	$(RM) $(IntermediateDirectory)/CommonUtilitiesLib_Socket$(PreprocessSuffix)
	$(RM) $(IntermediateDirectory)/CommonUtilitiesLib_OSMutex$(ObjectSuffix)
	$(RM) $(IntermediateDirectory)/CommonUtilitiesLib_OSMutex$(DependSuffix)
	$(RM) $(IntermediateDirectory)/CommonUtilitiesLib_OSMutex$(PreprocessSuffix)
	$(RM) $(IntermediateDirectory)/CommonUtilitiesLib_OSFileSource$(ObjectSuffix)
	$(RM) $(IntermediateDirectory)/CommonUtilitiesLib_OSFileSource$(DependSuffix)
	$(RM) $(IntermediateDirectory)/CommonUtilitiesLib_OSFileSource$(PreprocessSuffix)
	$(RM) $(IntermediateDirectory)/CommonUtilitiesLib_GetWord$(ObjectSuffix)
	$(RM) $(IntermediateDirectory)/CommonUtilitiesLib_GetWord$(DependSuffix)
	$(RM) $(IntermediateDirectory)/CommonUtilitiesLib_GetWord$(PreprocessSuffix)
	$(RM) $(IntermediateDirectory)/CommonUtilitiesLib_OSMutexRW$(ObjectSuffix)
	$(RM) $(IntermediateDirectory)/CommonUtilitiesLib_OSMutexRW$(DependSuffix)
	$(RM) $(IntermediateDirectory)/CommonUtilitiesLib_OSMutexRW$(PreprocessSuffix)
	$(RM) $(IntermediateDirectory)/CommonUtilitiesLib_atomic$(ObjectSuffix)
	$(RM) $(IntermediateDirectory)/CommonUtilitiesLib_atomic$(DependSuffix)
	$(RM) $(IntermediateDirectory)/CommonUtilitiesLib_atomic$(PreprocessSuffix)
	$(RM) $(IntermediateDirectory)/CommonUtilitiesLib_ResizeableStringFormatter$(ObjectSuffix)
	$(RM) $(IntermediateDirectory)/CommonUtilitiesLib_ResizeableStringFormatter$(DependSuffix)
	$(RM) $(IntermediateDirectory)/CommonUtilitiesLib_ResizeableStringFormatter$(PreprocessSuffix)
	$(RM) $(IntermediateDirectory)/CommonUtilitiesLib_md5$(ObjectSuffix)
	$(RM) $(IntermediateDirectory)/CommonUtilitiesLib_md5$(DependSuffix)
	$(RM) $(IntermediateDirectory)/CommonUtilitiesLib_md5$(PreprocessSuffix)
	$(RM) $(IntermediateDirectory)/CommonUtilitiesLib_md5digest$(ObjectSuffix)
	$(RM) $(IntermediateDirectory)/CommonUtilitiesLib_md5digest$(DependSuffix)
	$(RM) $(IntermediateDirectory)/CommonUtilitiesLib_md5digest$(PreprocessSuffix)
	$(RM) $(IntermediateDirectory)/CommonUtilitiesLib_Task$(ObjectSuffix)
	$(RM) $(IntermediateDirectory)/CommonUtilitiesLib_Task$(DependSuffix)
	$(RM) $(IntermediateDirectory)/CommonUtilitiesLib_Task$(PreprocessSuffix)
	$(RM) $(IntermediateDirectory)/CommonUtilitiesLib_OSRef$(ObjectSuffix)
	$(RM) $(IntermediateDirectory)/CommonUtilitiesLib_OSRef$(DependSuffix)
	$(RM) $(IntermediateDirectory)/CommonUtilitiesLib_OSRef$(PreprocessSuffix)
	$(RM) $(IntermediateDirectory)/CommonUtilitiesLib_TCPSocket$(ObjectSuffix)
	$(RM) $(IntermediateDirectory)/CommonUtilitiesLib_TCPSocket$(DependSuffix)
	$(RM) $(IntermediateDirectory)/CommonUtilitiesLib_TCPSocket$(PreprocessSuffix)
	$(RM) $(IntermediateDirectory)/CommonUtilitiesLib_ConfParser$(ObjectSuffix)
	$(RM) $(IntermediateDirectory)/CommonUtilitiesLib_ConfParser$(DependSuffix)
	$(RM) $(IntermediateDirectory)/CommonUtilitiesLib_ConfParser$(PreprocessSuffix)
	$(RM) $(IntermediateDirectory)/CommonUtilitiesLib_OSQueue$(ObjectSuffix)
	$(RM) $(IntermediateDirectory)/CommonUtilitiesLib_OSQueue$(DependSuffix)
	$(RM) $(IntermediateDirectory)/CommonUtilitiesLib_OSQueue$(PreprocessSuffix)
	$(RM) $(IntermediateDirectory)/CommonUtilitiesLib_OSHeap$(ObjectSuffix)
	$(RM) $(IntermediateDirectory)/CommonUtilitiesLib_OSHeap$(DependSuffix)
	$(RM) $(IntermediateDirectory)/CommonUtilitiesLib_OSHeap$(PreprocessSuffix)
	$(RM) $(IntermediateDirectory)/CommonUtilitiesLib_MakeDir$(ObjectSuffix)
	$(RM) $(IntermediateDirectory)/CommonUtilitiesLib_MakeDir$(DependSuffix)
	$(RM) $(IntermediateDirectory)/CommonUtilitiesLib_MakeDir$(PreprocessSuffix)
	$(RM) $(IntermediateDirectory)/CommonUtilitiesLib_SocketUtils$(ObjectSuffix)
	$(RM) $(IntermediateDirectory)/CommonUtilitiesLib_SocketUtils$(DependSuffix)
	$(RM) $(IntermediateDirectory)/CommonUtilitiesLib_SocketUtils$(PreprocessSuffix)
	$(RM) $(IntermediateDirectory)/CommonUtilitiesLib_daemon$(ObjectSuffix)
	$(RM) $(IntermediateDirectory)/CommonUtilitiesLib_daemon$(DependSuffix)
	$(RM) $(IntermediateDirectory)/CommonUtilitiesLib_daemon$(PreprocessSuffix)
	$(RM) $(IntermediateDirectory)/CommonUtilitiesLib_TCPListenerSocket$(ObjectSuffix)
	$(RM) $(IntermediateDirectory)/CommonUtilitiesLib_TCPListenerSocket$(DependSuffix)
	$(RM) $(IntermediateDirectory)/CommonUtilitiesLib_TCPListenerSocket$(PreprocessSuffix)
	$(RM) $(IntermediateDirectory)/CommonUtilitiesLib_StrPtrLen$(ObjectSuffix)
	$(RM) $(IntermediateDirectory)/CommonUtilitiesLib_StrPtrLen$(DependSuffix)
	$(RM) $(IntermediateDirectory)/CommonUtilitiesLib_StrPtrLen$(PreprocessSuffix)
	$(RM) $(IntermediateDirectory)/CommonUtilitiesLib_EventContext$(ObjectSuffix)
	$(RM) $(IntermediateDirectory)/CommonUtilitiesLib_EventContext$(DependSuffix)
	$(RM) $(IntermediateDirectory)/CommonUtilitiesLib_EventContext$(PreprocessSuffix)
	$(RM) $(IntermediateDirectory)/CommonUtilitiesLib_OSThread$(ObjectSuffix)
	$(RM) $(IntermediateDirectory)/CommonUtilitiesLib_OSThread$(DependSuffix)
	$(RM) $(IntermediateDirectory)/CommonUtilitiesLib_OSThread$(PreprocessSuffix)
	$(RM) $(IntermediateDirectory)/HTTPUtilitiesLib_HTTPProtocol$(ObjectSuffix)
	$(RM) $(IntermediateDirectory)/HTTPUtilitiesLib_HTTPProtocol$(DependSuffix)
	$(RM) $(IntermediateDirectory)/HTTPUtilitiesLib_HTTPProtocol$(PreprocessSuffix)
	$(RM) $(IntermediateDirectory)/HTTPUtilitiesLib_HTTPRequest$(ObjectSuffix)
	$(RM) $(IntermediateDirectory)/HTTPUtilitiesLib_HTTPRequest$(DependSuffix)
	$(RM) $(IntermediateDirectory)/HTTPUtilitiesLib_HTTPRequest$(PreprocessSuffix)
	$(RM) $(IntermediateDirectory)/OSMemoryLib_OSMemory$(ObjectSuffix)
	$(RM) $(IntermediateDirectory)/OSMemoryLib_OSMemory$(DependSuffix)
	$(RM) $(IntermediateDirectory)/OSMemoryLib_OSMemory$(PreprocessSuffix)
	$(RM) $(IntermediateDirectory)/PrefsSourceLib_FilePrefsSource$(ObjectSuffix)
	$(RM) $(IntermediateDirectory)/PrefsSourceLib_FilePrefsSource$(DependSuffix)
	$(RM) $(IntermediateDirectory)/PrefsSourceLib_FilePrefsSource$(PreprocessSuffix)
	$(RM) $(IntermediateDirectory)/PrefsSourceLib_XMLPrefsParser$(ObjectSuffix)
	$(RM) $(IntermediateDirectory)/PrefsSourceLib_XMLPrefsParser$(DependSuffix)
	$(RM) $(IntermediateDirectory)/PrefsSourceLib_XMLPrefsParser$(PreprocessSuffix)
	$(RM) $(IntermediateDirectory)/PrefsSourceLib_XMLParser$(ObjectSuffix)
	$(RM) $(IntermediateDirectory)/PrefsSourceLib_XMLParser$(DependSuffix)
	$(RM) $(IntermediateDirectory)/PrefsSourceLib_XMLParser$(PreprocessSuffix)
	$(RM) $(IntermediateDirectory)/RTCPUtilitiesLib_RTCPPacket$(ObjectSuffix)
	$(RM) $(IntermediateDirectory)/RTCPUtilitiesLib_RTCPPacket$(DependSuffix)
	$(RM) $(IntermediateDirectory)/RTCPUtilitiesLib_RTCPPacket$(PreprocessSuffix)
	$(RM) $(IntermediateDirectory)/RTCPUtilitiesLib_RTCPAPPPacket$(ObjectSuffix)
	$(RM) $(IntermediateDirectory)/RTCPUtilitiesLib_RTCPAPPPacket$(DependSuffix)
	$(RM) $(IntermediateDirectory)/RTCPUtilitiesLib_RTCPAPPPacket$(PreprocessSuffix)
	$(RM) $(IntermediateDirectory)/RTCPUtilitiesLib_RTCPAckPacket$(ObjectSuffix)
	$(RM) $(IntermediateDirectory)/RTCPUtilitiesLib_RTCPAckPacket$(DependSuffix)
	$(RM) $(IntermediateDirectory)/RTCPUtilitiesLib_RTCPAckPacket$(PreprocessSuffix)
	$(RM) $(IntermediateDirectory)/RTCPUtilitiesLib_RTCPSRPacket$(ObjectSuffix)
	$(RM) $(IntermediateDirectory)/RTCPUtilitiesLib_RTCPSRPacket$(DependSuffix)
	$(RM) $(IntermediateDirectory)/RTCPUtilitiesLib_RTCPSRPacket$(PreprocessSuffix)
	$(RM) $(IntermediateDirectory)/RTPMetaInfoLib_RTPMetaInfoPacket$(ObjectSuffix)
	$(RM) $(IntermediateDirectory)/RTPMetaInfoLib_RTPMetaInfoPacket$(DependSuffix)
	$(RM) $(IntermediateDirectory)/RTPMetaInfoLib_RTPMetaInfoPacket$(PreprocessSuffix)
	$(RM) $(IntermediateDirectory)/RTSPClientLib_ClientSession$(ObjectSuffix)
	$(RM) $(IntermediateDirectory)/RTSPClientLib_ClientSession$(DependSuffix)
	$(RM) $(IntermediateDirectory)/RTSPClientLib_ClientSession$(PreprocessSuffix)
	$(RM) $(IntermediateDirectory)/RTSPClientLib_FakeRTSPClient$(ObjectSuffix)
	$(RM) $(IntermediateDirectory)/RTSPClientLib_FakeRTSPClient$(DependSuffix)
	$(RM) $(IntermediateDirectory)/RTSPClientLib_FakeRTSPClient$(PreprocessSuffix)
	$(RM) $(IntermediateDirectory)/RTSPClientLib_ClientSocket$(ObjectSuffix)
	$(RM) $(IntermediateDirectory)/RTSPClientLib_ClientSocket$(DependSuffix)
	$(RM) $(IntermediateDirectory)/RTSPClientLib_ClientSocket$(PreprocessSuffix)
	$(RM) $(IntermediateDirectory)/RTSPClientLib_RTSPClient$(ObjectSuffix)
	$(RM) $(IntermediateDirectory)/RTSPClientLib_RTSPClient$(DependSuffix)
	$(RM) $(IntermediateDirectory)/RTSPClientLib_RTSPClient$(PreprocessSuffix)
	$(RM) $(IntermediateDirectory)/SafeStdLib_InternalStdLib$(ObjectSuffix)
	$(RM) $(IntermediateDirectory)/SafeStdLib_InternalStdLib$(DependSuffix)
	$(RM) $(IntermediateDirectory)/SafeStdLib_InternalStdLib$(PreprocessSuffix)
	$(RM) $(IntermediateDirectory)/Server.tproj_QTSSDictionary$(ObjectSuffix)
	$(RM) $(IntermediateDirectory)/Server.tproj_QTSSDictionary$(DependSuffix)
	$(RM) $(IntermediateDirectory)/Server.tproj_QTSSDictionary$(PreprocessSuffix)
	$(RM) $(IntermediateDirectory)/Server.tproj_RTSPRequestStream$(ObjectSuffix)
	$(RM) $(IntermediateDirectory)/Server.tproj_RTSPRequestStream$(DependSuffix)
	$(RM) $(IntermediateDirectory)/Server.tproj_RTSPRequestStream$(PreprocessSuffix)
	$(RM) $(IntermediateDirectory)/Server.tproj_RTCPTask$(ObjectSuffix)
	$(RM) $(IntermediateDirectory)/Server.tproj_RTCPTask$(DependSuffix)
	$(RM) $(IntermediateDirectory)/Server.tproj_RTCPTask$(PreprocessSuffix)
	$(RM) $(IntermediateDirectory)/Server.tproj_QTSSPrefs$(ObjectSuffix)
	$(RM) $(IntermediateDirectory)/Server.tproj_QTSSPrefs$(DependSuffix)
	$(RM) $(IntermediateDirectory)/Server.tproj_QTSSPrefs$(PreprocessSuffix)
	$(RM) $(IntermediateDirectory)/Server.tproj_RTSPProtocol$(ObjectSuffix)
	$(RM) $(IntermediateDirectory)/Server.tproj_RTSPProtocol$(DependSuffix)
	$(RM) $(IntermediateDirectory)/Server.tproj_RTSPProtocol$(PreprocessSuffix)
	$(RM) $(IntermediateDirectory)/Server.tproj_RTPBandwidthTracker$(ObjectSuffix)
	$(RM) $(IntermediateDirectory)/Server.tproj_RTPBandwidthTracker$(DependSuffix)
	$(RM) $(IntermediateDirectory)/Server.tproj_RTPBandwidthTracker$(PreprocessSuffix)
	$(RM) $(IntermediateDirectory)/Server.tproj_GenerateXMLPrefs$(ObjectSuffix)
	$(RM) $(IntermediateDirectory)/Server.tproj_GenerateXMLPrefs$(DependSuffix)
	$(RM) $(IntermediateDirectory)/Server.tproj_GenerateXMLPrefs$(PreprocessSuffix)
	$(RM) $(IntermediateDirectory)/Server.tproj_RTSPRequest$(ObjectSuffix)
	$(RM) $(IntermediateDirectory)/Server.tproj_RTSPRequest$(DependSuffix)
	$(RM) $(IntermediateDirectory)/Server.tproj_RTSPRequest$(PreprocessSuffix)
	$(RM) $(IntermediateDirectory)/Server.tproj_QTSSSocket$(ObjectSuffix)
	$(RM) $(IntermediateDirectory)/Server.tproj_QTSSSocket$(DependSuffix)
	$(RM) $(IntermediateDirectory)/Server.tproj_QTSSSocket$(PreprocessSuffix)
	$(RM) $(IntermediateDirectory)/Server.tproj_QTSSMessages$(ObjectSuffix)
	$(RM) $(IntermediateDirectory)/Server.tproj_QTSSMessages$(DependSuffix)
	$(RM) $(IntermediateDirectory)/Server.tproj_QTSSMessages$(PreprocessSuffix)
	$(RM) $(IntermediateDirectory)/Server.tproj_QTSSUserProfile$(ObjectSuffix)
	$(RM) $(IntermediateDirectory)/Server.tproj_QTSSUserProfile$(DependSuffix)
	$(RM) $(IntermediateDirectory)/Server.tproj_QTSSUserProfile$(PreprocessSuffix)
	$(RM) $(IntermediateDirectory)/Server.tproj_RTPStream$(ObjectSuffix)
	$(RM) $(IntermediateDirectory)/Server.tproj_RTPStream$(DependSuffix)
	$(RM) $(IntermediateDirectory)/Server.tproj_RTPStream$(PreprocessSuffix)
	$(RM) $(IntermediateDirectory)/Server.tproj_QTSSErrorLogModule$(ObjectSuffix)
	$(RM) $(IntermediateDirectory)/Server.tproj_QTSSErrorLogModule$(DependSuffix)
	$(RM) $(IntermediateDirectory)/Server.tproj_QTSSErrorLogModule$(PreprocessSuffix)
	$(RM) $(IntermediateDirectory)/Server.tproj_RTSPRequestInterface$(ObjectSuffix)
	$(RM) $(IntermediateDirectory)/Server.tproj_RTSPRequestInterface$(DependSuffix)
	$(RM) $(IntermediateDirectory)/Server.tproj_RTSPRequestInterface$(PreprocessSuffix)
	$(RM) $(IntermediateDirectory)/Server.tproj_QTSSModule$(ObjectSuffix)
	$(RM) $(IntermediateDirectory)/Server.tproj_QTSSModule$(DependSuffix)
	$(RM) $(IntermediateDirectory)/Server.tproj_QTSSModule$(PreprocessSuffix)
	$(RM) $(IntermediateDirectory)/Server.tproj_QTSSExpirationDate$(ObjectSuffix)
	$(RM) $(IntermediateDirectory)/Server.tproj_QTSSExpirationDate$(DependSuffix)
	$(RM) $(IntermediateDirectory)/Server.tproj_QTSSExpirationDate$(PreprocessSuffix)
	$(RM) $(IntermediateDirectory)/Server.tproj_QTSServerInterface$(ObjectSuffix)
	$(RM) $(IntermediateDirectory)/Server.tproj_QTSServerInterface$(DependSuffix)
	$(RM) $(IntermediateDirectory)/Server.tproj_QTSServerInterface$(PreprocessSuffix)
	$(RM) $(IntermediateDirectory)/Server.tproj_RTSPResponseStream$(ObjectSuffix)
	$(RM) $(IntermediateDirectory)/Server.tproj_RTSPResponseStream$(DependSuffix)
	$(RM) $(IntermediateDirectory)/Server.tproj_RTSPResponseStream$(PreprocessSuffix)
	$(RM) $(IntermediateDirectory)/Server.tproj_RTSPSessionInterface$(ObjectSuffix)
	$(RM) $(IntermediateDirectory)/Server.tproj_RTSPSessionInterface$(DependSuffix)
	$(RM) $(IntermediateDirectory)/Server.tproj_RTSPSessionInterface$(PreprocessSuffix)
	$(RM) $(IntermediateDirectory)/Server.tproj_RTSPSession$(ObjectSuffix)
	$(RM) $(IntermediateDirectory)/Server.tproj_RTSPSession$(DependSuffix)
	$(RM) $(IntermediateDirectory)/Server.tproj_RTSPSession$(PreprocessSuffix)
	$(RM) $(IntermediateDirectory)/Server.tproj_QTSSDataConverter$(ObjectSuffix)
	$(RM) $(IntermediateDirectory)/Server.tproj_QTSSDataConverter$(DependSuffix)
	$(RM) $(IntermediateDirectory)/Server.tproj_QTSSDataConverter$(PreprocessSuffix)
	$(RM) $(IntermediateDirectory)/Server.tproj_RTPOverbufferWindow$(ObjectSuffix)
	$(RM) $(IntermediateDirectory)/Server.tproj_RTPOverbufferWindow$(DependSuffix)
	$(RM) $(IntermediateDirectory)/Server.tproj_RTPOverbufferWindow$(PreprocessSuffix)
	$(RM) $(IntermediateDirectory)/Server.tproj_QTSServer$(ObjectSuffix)
	$(RM) $(IntermediateDirectory)/Server.tproj_QTSServer$(DependSuffix)
	$(RM) $(IntermediateDirectory)/Server.tproj_QTSServer$(PreprocessSuffix)
	$(RM) $(IntermediateDirectory)/Server.tproj_QTSSCallbacks$(ObjectSuffix)
	$(RM) $(IntermediateDirectory)/Server.tproj_QTSSCallbacks$(DependSuffix)
	$(RM) $(IntermediateDirectory)/Server.tproj_QTSSCallbacks$(PreprocessSuffix)
	$(RM) $(IntermediateDirectory)/Server.tproj_QTSServerPrefs$(ObjectSuffix)
	$(RM) $(IntermediateDirectory)/Server.tproj_QTSServerPrefs$(DependSuffix)
	$(RM) $(IntermediateDirectory)/Server.tproj_QTSServerPrefs$(PreprocessSuffix)
	$(RM) $(IntermediateDirectory)/Server.tproj_QTSSFile$(ObjectSuffix)
	$(RM) $(IntermediateDirectory)/Server.tproj_QTSSFile$(DependSuffix)
	$(RM) $(IntermediateDirectory)/Server.tproj_QTSSFile$(PreprocessSuffix)
	$(RM) $(IntermediateDirectory)/Server.tproj_RTPSessionInterface$(ObjectSuffix)
	$(RM) $(IntermediateDirectory)/Server.tproj_RTPSessionInterface$(DependSuffix)
	$(RM) $(IntermediateDirectory)/Server.tproj_RTPSessionInterface$(PreprocessSuffix)
	$(RM) $(IntermediateDirectory)/Server.tproj_RTPSession$(ObjectSuffix)
	$(RM) $(IntermediateDirectory)/Server.tproj_RTPSession$(DependSuffix)
	$(RM) $(IntermediateDirectory)/Server.tproj_RTPSession$(PreprocessSuffix)
	$(RM) $(IntermediateDirectory)/Server.tproj_RTPPacketResender$(ObjectSuffix)
	$(RM) $(IntermediateDirectory)/Server.tproj_RTPPacketResender$(DependSuffix)
	$(RM) $(IntermediateDirectory)/Server.tproj_RTPPacketResender$(PreprocessSuffix)
	$(RM) $(IntermediateDirectory)/Server.tproj_RunServerLib$(ObjectSuffix)
	$(RM) $(IntermediateDirectory)/Server.tproj_RunServerLib$(DependSuffix)
	$(RM) $(IntermediateDirectory)/Server.tproj_RunServerLib$(PreprocessSuffix)
	$(RM) $(IntermediateDirectory)/Server.tproj_Win32LibMain$(ObjectSuffix)
	$(RM) $(IntermediateDirectory)/Server.tproj_Win32LibMain$(DependSuffix)
	$(RM) $(IntermediateDirectory)/Server.tproj_Win32LibMain$(PreprocessSuffix)
	$(RM) $(IntermediateDirectory)/QTSSAccessModule_QTSSAccessModule$(ObjectSuffix)
	$(RM) $(IntermediateDirectory)/QTSSAccessModule_QTSSAccessModule$(DependSuffix)
	$(RM) $(IntermediateDirectory)/QTSSAccessModule_QTSSAccessModule$(PreprocessSuffix)
	$(RM) $(IntermediateDirectory)/QTSSAccessModule_AccessChecker$(ObjectSuffix)
	$(RM) $(IntermediateDirectory)/QTSSAccessModule_AccessChecker$(DependSuffix)
	$(RM) $(IntermediateDirectory)/QTSSAccessModule_AccessChecker$(PreprocessSuffix)
	$(RM) $(IntermediateDirectory)/QTSSWebDebugModule_QTSSWebDebugModule$(ObjectSuffix)
	$(RM) $(IntermediateDirectory)/QTSSWebDebugModule_QTSSWebDebugModule$(DependSuffix)
	$(RM) $(IntermediateDirectory)/QTSSWebDebugModule_QTSSWebDebugModule$(PreprocessSuffix)
	$(RM) $(IntermediateDirectory)/QTSSFlowControlModule_QTSSFlowControlModule$(ObjectSuffix)
	$(RM) $(IntermediateDirectory)/QTSSFlowControlModule_QTSSFlowControlModule$(DependSuffix)
	$(RM) $(IntermediateDirectory)/QTSSFlowControlModule_QTSSFlowControlModule$(PreprocessSuffix)
	$(RM) $(IntermediateDirectory)/QTSSReflectorModule_RelayOutput$(ObjectSuffix)
	$(RM) $(IntermediateDirectory)/QTSSReflectorModule_RelayOutput$(DependSuffix)
	$(RM) $(IntermediateDirectory)/QTSSReflectorModule_RelayOutput$(PreprocessSuffix)
	$(RM) $(IntermediateDirectory)/QTSSReflectorModule_RelaySDPSourceInfo$(ObjectSuffix)
	$(RM) $(IntermediateDirectory)/QTSSReflectorModule_RelaySDPSourceInfo$(DependSuffix)
	$(RM) $(IntermediateDirectory)/QTSSReflectorModule_RelaySDPSourceInfo$(PreprocessSuffix)
	$(RM) $(IntermediateDirectory)/QTSSReflectorModule_QTSSReflectorModule$(ObjectSuffix)
	$(RM) $(IntermediateDirectory)/QTSSReflectorModule_QTSSReflectorModule$(DependSuffix)
	$(RM) $(IntermediateDirectory)/QTSSReflectorModule_QTSSReflectorModule$(PreprocessSuffix)
	$(RM) $(IntermediateDirectory)/QTSSReflectorModule_SequenceNumberMap$(ObjectSuffix)
	$(RM) $(IntermediateDirectory)/QTSSReflectorModule_SequenceNumberMap$(DependSuffix)
	$(RM) $(IntermediateDirectory)/QTSSReflectorModule_SequenceNumberMap$(PreprocessSuffix)
	$(RM) $(IntermediateDirectory)/QTSSReflectorModule_RelaySession$(ObjectSuffix)
	$(RM) $(IntermediateDirectory)/QTSSReflectorModule_RelaySession$(DependSuffix)
	$(RM) $(IntermediateDirectory)/QTSSReflectorModule_RelaySession$(PreprocessSuffix)
	$(RM) $(IntermediateDirectory)/QTSSReflectorModule_RTSPSourceInfo$(ObjectSuffix)
	$(RM) $(IntermediateDirectory)/QTSSReflectorModule_RTSPSourceInfo$(DependSuffix)
	$(RM) $(IntermediateDirectory)/QTSSReflectorModule_RTSPSourceInfo$(PreprocessSuffix)
	$(RM) $(IntermediateDirectory)/QTSSReflectorModule_QTSSRelayModule$(ObjectSuffix)
	$(RM) $(IntermediateDirectory)/QTSSReflectorModule_QTSSRelayModule$(DependSuffix)
	$(RM) $(IntermediateDirectory)/QTSSReflectorModule_QTSSRelayModule$(PreprocessSuffix)
	$(RM) $(IntermediateDirectory)/QTSSReflectorModule_ReflectorStream$(ObjectSuffix)
	$(RM) $(IntermediateDirectory)/QTSSReflectorModule_ReflectorStream$(DependSuffix)
	$(RM) $(IntermediateDirectory)/QTSSReflectorModule_ReflectorStream$(PreprocessSuffix)
	$(RM) $(IntermediateDirectory)/QTSSReflectorModule_RCFSourceInfo$(ObjectSuffix)
	$(RM) $(IntermediateDirectory)/QTSSReflectorModule_RCFSourceInfo$(DependSuffix)
	$(RM) $(IntermediateDirectory)/QTSSReflectorModule_RCFSourceInfo$(PreprocessSuffix)
	$(RM) $(IntermediateDirectory)/QTSSReflectorModule_ReflectorSession$(ObjectSuffix)
	$(RM) $(IntermediateDirectory)/QTSSReflectorModule_ReflectorSession$(DependSuffix)
	$(RM) $(IntermediateDirectory)/QTSSReflectorModule_ReflectorSession$(PreprocessSuffix)
	$(RM) $(IntermediateDirectory)/QTSSReflectorModule_RTPSessionOutput$(ObjectSuffix)
	$(RM) $(IntermediateDirectory)/QTSSReflectorModule_RTPSessionOutput$(DependSuffix)
	$(RM) $(IntermediateDirectory)/QTSSReflectorModule_RTPSessionOutput$(PreprocessSuffix)
	$(RM) $(IntermediateDirectory)/QTSSWebStatsModule_QTSSWebStatsModule$(ObjectSuffix)
	$(RM) $(IntermediateDirectory)/QTSSWebStatsModule_QTSSWebStatsModule$(DependSuffix)
	$(RM) $(IntermediateDirectory)/QTSSWebStatsModule_QTSSWebStatsModule$(PreprocessSuffix)
	$(RM) $(IntermediateDirectory)/QTSSPosixFileSysModule_QTSSPosixFileSysModule$(ObjectSuffix)
	$(RM) $(IntermediateDirectory)/QTSSPosixFileSysModule_QTSSPosixFileSysModule$(DependSuffix)
	$(RM) $(IntermediateDirectory)/QTSSPosixFileSysModule_QTSSPosixFileSysModule$(PreprocessSuffix)
	$(RM) $(OutputFile)
	$(RM) "../.build-debug/RTSPServerLib"


