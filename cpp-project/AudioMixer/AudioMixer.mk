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
Date                   :=04/03/18
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
Preprocessors          :=$(PreprocessorSwitch)WEBRTC_LINUX $(PreprocessorSwitch)RTP_SUPPORT_THREAD 
ObjectSwitch           :=-o 
ArchiveOutputSwitch    := 
PreprocessOnlySwitch   :=-E
ObjectsFileList        :="AudioMixer.txt"
PCHCompileFlags        :=
MakeDirCommand         :=mkdir -p
LinkOptions            :=  
IncludePath            :=  $(IncludeSwitch). $(IncludeSwitch)./ $(IncludeSwitch)./src/jrtplib/ $(IncludeSwitch)./src/module/ $(IncludeSwitch)./src/main/ $(IncludeSwitch)./src/misc/ $(IncludeSwitch)./src/ilbc/ $(IncludeSwitch)./src/codec/ $(IncludeSwitch)./src/thread/ $(IncludeSwitch)./src/task/ $(IncludeSwitch)/home/fym/722/rtfs/usr/include/ 
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
Objects0=$(IntermediateDirectory)/src_ilbc_abs_quant.c$(ObjectSuffix) $(IntermediateDirectory)/src_ilbc_auto_correlation.c$(ObjectSuffix) $(IntermediateDirectory)/src_ilbc_cb_construct.c$(ObjectSuffix) $(IntermediateDirectory)/src_ilbc_cb_mem_energy.c$(ObjectSuffix) $(IntermediateDirectory)/src_ilbc_cb_mem_energy_calc.c$(ObjectSuffix) $(IntermediateDirectory)/src_ilbc_cb_search.c$(ObjectSuffix) $(IntermediateDirectory)/src_ilbc_cb_search_core.c$(ObjectSuffix) $(IntermediateDirectory)/src_ilbc_chebyshev.c$(ObjectSuffix) $(IntermediateDirectory)/src_ilbc_complex_bit_reverse.c$(ObjectSuffix) $(IntermediateDirectory)/src_ilbc_copy_set_operations.c$(ObjectSuffix) \
	$(IntermediateDirectory)/src_ilbc_create_augmented_vec.c$(ObjectSuffix) $(IntermediateDirectory)/src_ilbc_decode_residual.c$(ObjectSuffix) $(IntermediateDirectory)/src_ilbc_energy_inverse.c$(ObjectSuffix) $(IntermediateDirectory)/src_ilbc_filter_ar_fast_q12.c$(ObjectSuffix) $(IntermediateDirectory)/src_ilbc_filtered_cb_vecs.c$(ObjectSuffix) $(IntermediateDirectory)/src_ilbc_decoder_interpolate_lsf.c$(ObjectSuffix) $(IntermediateDirectory)/src_ilbc_filter_ma_fast_q12.c$(ObjectSuffix) $(IntermediateDirectory)/src_ilbc_gain_quant.c$(ObjectSuffix) $(IntermediateDirectory)/src_ilbc_get_cd_vec.c$(ObjectSuffix) $(IntermediateDirectory)/src_ilbc_get_lsp_poly.c$(ObjectSuffix) \
	$(IntermediateDirectory)/src_ilbc_downsample_fast.c$(ObjectSuffix) $(IntermediateDirectory)/src_ilbc_hp_input.c$(ObjectSuffix) $(IntermediateDirectory)/src_ilbc_hp_output.c$(ObjectSuffix) $(IntermediateDirectory)/src_ilbc_ilbc.c$(ObjectSuffix) $(IntermediateDirectory)/src_ilbc_ilbc_specific_functions.c$(ObjectSuffix) $(IntermediateDirectory)/src_ilbc_index_conv_dec.c$(ObjectSuffix) $(IntermediateDirectory)/src_ilbc_init_encode.c$(ObjectSuffix) $(IntermediateDirectory)/src_ilbc_interpolate_samples.c$(ObjectSuffix) $(IntermediateDirectory)/src_ilbc_lsf_check.c$(ObjectSuffix) $(IntermediateDirectory)/src_ilbc_lsf_interpolate_to_poly_dec.c$(ObjectSuffix) \
	$(IntermediateDirectory)/src_ilbc_lsf_interpolate_to_poly_enc.c$(ObjectSuffix) $(IntermediateDirectory)/src_ilbc_lsf_to_lsp.c$(ObjectSuffix) $(IntermediateDirectory)/src_ilbc_lsp_to_lsf.c$(ObjectSuffix) $(IntermediateDirectory)/src_ilbc_min_max_operations.c$(ObjectSuffix) $(IntermediateDirectory)/src_ilbc_main_test.c$(ObjectSuffix) $(IntermediateDirectory)/src_ilbc_my_corr.c$(ObjectSuffix) $(IntermediateDirectory)/src_ilbc_constants.c$(ObjectSuffix) $(IntermediateDirectory)/src_ilbc_poly_to_lsp.c$(ObjectSuffix) $(IntermediateDirectory)/src_ilbc_poly_to_lsf.c$(ObjectSuffix) $(IntermediateDirectory)/src_ilbc_lsf_to_poly.c$(ObjectSuffix) \
	$(IntermediateDirectory)/src_ilbc_real_fft.c$(ObjectSuffix) $(IntermediateDirectory)/src_ilbc_refiner.c$(ObjectSuffix) $(IntermediateDirectory)/src_jrtplib_rtprandomrands.cpp$(ObjectSuffix) $(IntermediateDirectory)/src_jrtplib_rtcpsdespacket.cpp$(ObjectSuffix) $(IntermediateDirectory)/src_jrtplib_rtprandomurandom.cpp$(ObjectSuffix) $(IntermediateDirectory)/src_thread_TaskThread.cpp$(ObjectSuffix) $(IntermediateDirectory)/src_ilbc_dot_product_with_scale.c$(ObjectSuffix) $(IntermediateDirectory)/src_ilbc_sort_sq.c$(ObjectSuffix) 

Objects1=$(IntermediateDirectory)/src_jrtplib_rtpudpv4transmitter.cpp$(ObjectSuffix) $(IntermediateDirectory)/src_jrtplib_jmutex.cpp$(ObjectSuffix) \
	$(IntermediateDirectory)/src_ilbc_enhancer.c$(ObjectSuffix) $(IntermediateDirectory)/src_ilbc_comp_corr.c$(ObjectSuffix) $(IntermediateDirectory)/src_jrtplib_rtpsourcedata.cpp$(ObjectSuffix) $(IntermediateDirectory)/src_ilbc_pack_bits.c$(ObjectSuffix) $(IntermediateDirectory)/src_jrtplib_rtptcpaddress.cpp$(ObjectSuffix) $(IntermediateDirectory)/src_jrtplib_rtptimeutilities.cpp$(ObjectSuffix) $(IntermediateDirectory)/src_main_UserAgent.cpp$(ObjectSuffix) $(IntermediateDirectory)/src_ilbc_ilbc_interface.c$(ObjectSuffix) $(IntermediateDirectory)/src_ilbc_encode.c$(ObjectSuffix) $(IntermediateDirectory)/src_jrtplib_rtppollthread.cpp$(ObjectSuffix) \
	$(IntermediateDirectory)/src_main_ScheduleServer.cpp$(ObjectSuffix) $(IntermediateDirectory)/src_thread_AudioMixThread.cpp$(ObjectSuffix) $(IntermediateDirectory)/src_ilbc_nearest_neighbor.c$(ObjectSuffix) $(IntermediateDirectory)/src_jrtplib_rtpsecuresession.cpp$(ObjectSuffix) $(IntermediateDirectory)/src_misc_AES.cpp$(ObjectSuffix) $(IntermediateDirectory)/src_jrtplib_rtpsessionparams.cpp$(ObjectSuffix) $(IntermediateDirectory)/src_ilbc_decode.c$(ObjectSuffix) $(IntermediateDirectory)/src_thread_LocalRecordThread.cpp$(ObjectSuffix) $(IntermediateDirectory)/src_jrtplib_rtpsessionsources.cpp$(ObjectSuffix) $(IntermediateDirectory)/src_jrtplib_rtpbyteaddress.cpp$(ObjectSuffix) \
	$(IntermediateDirectory)/src_jrtplib_rtcpcompoundpacketbuilder.cpp$(ObjectSuffix) $(IntermediateDirectory)/src_jrtplib_rtpudpv6transmitter.cpp$(ObjectSuffix) $(IntermediateDirectory)/src_ilbc_cb_update_best_index.c$(ObjectSuffix) $(IntermediateDirectory)/src_task_ConferenceTask.cpp$(ObjectSuffix) $(IntermediateDirectory)/src_jrtplib_rtcpcompoundpacket.cpp$(ObjectSuffix) $(IntermediateDirectory)/src_codec_PCMCodec.cpp$(ObjectSuffix) $(IntermediateDirectory)/src_jrtplib_rtpabortdescriptors.cpp$(ObjectSuffix) $(IntermediateDirectory)/src_ilbc_augmented_cb_corr.c$(ObjectSuffix) $(IntermediateDirectory)/src_jrtplib_rtppacketbuilder.cpp$(ObjectSuffix) $(IntermediateDirectory)/main.cpp$(ObjectSuffix) \
	$(IntermediateDirectory)/src_jrtplib_rtpsources.cpp$(ObjectSuffix) $(IntermediateDirectory)/src_ilbc_interpolate.c$(ObjectSuffix) $(IntermediateDirectory)/src_ilbc_cross_correlation.c$(ObjectSuffix) $(IntermediateDirectory)/src_thread_BaseThread.cpp$(ObjectSuffix) $(IntermediateDirectory)/src_ilbc_cb_mem_energy_augmentation.c$(ObjectSuffix) $(IntermediateDirectory)/src_jrtplib_rtperrors.cpp$(ObjectSuffix) $(IntermediateDirectory)/src_jrtplib_rtprandomrand48.cpp$(ObjectSuffix) $(IntermediateDirectory)/src_ilbc_bw_expand.c$(ObjectSuffix) $(IntermediateDirectory)/src_jrtplib_rtpipv6destination.cpp$(ObjectSuffix) $(IntermediateDirectory)/src_ilbc_do_plc.c$(ObjectSuffix) \
	$(IntermediateDirectory)/src_misc_CommandContextParse.cpp$(ObjectSuffix) $(IntermediateDirectory)/src_ilbc_gain_dequant.c$(ObjectSuffix) 

Objects2=$(IntermediateDirectory)/src_ilbc_spl_init.c$(ObjectSuffix) $(IntermediateDirectory)/src_ilbc_state_construct.c$(ObjectSuffix) $(IntermediateDirectory)/src_misc_MiscTool.cpp$(ObjectSuffix) $(IntermediateDirectory)/src_misc_ConfigBox.cpp$(ObjectSuffix) $(IntermediateDirectory)/src_ilbc_smooth_out_data.c$(ObjectSuffix) $(IntermediateDirectory)/src_ilbc_vq4.c$(ObjectSuffix) $(IntermediateDirectory)/src_ilbc_frame_classify.c$(ObjectSuffix) $(IntermediateDirectory)/src_ilbc_abs_quant_loop.c$(ObjectSuffix) \
	$(IntermediateDirectory)/src_codec_iLBCCodec.cpp$(ObjectSuffix) $(IntermediateDirectory)/src_ilbc_state_search.c$(ObjectSuffix) $(IntermediateDirectory)/src_codec_G711Codec.cpp$(ObjectSuffix) $(IntermediateDirectory)/src_jrtplib_rtpinternalsourcedata.cpp$(ObjectSuffix) $(IntermediateDirectory)/src_jrtplib_rtptcptransmitter.cpp$(ObjectSuffix) $(IntermediateDirectory)/src_jrtplib_rtpsession.cpp$(ObjectSuffix) $(IntermediateDirectory)/src_ilbc_complex_fft.c$(ObjectSuffix) $(IntermediateDirectory)/src_task_TestTask.cpp$(ObjectSuffix) $(IntermediateDirectory)/src_jrtplib_rtplibraryversion.cpp$(ObjectSuffix) $(IntermediateDirectory)/src_ilbc_enhancer_interface.c$(ObjectSuffix) \
	$(IntermediateDirectory)/src_jrtplib_rtpdebug.cpp$(ObjectSuffix) $(IntermediateDirectory)/src_ilbc_simple_interpolate_lsf.c$(ObjectSuffix) $(IntermediateDirectory)/src_jrtplib_rtpipv6address.cpp$(ObjectSuffix) $(IntermediateDirectory)/src_jrtplib_rtcpscheduler.cpp$(ObjectSuffix) $(IntermediateDirectory)/src_ilbc_lpc_encode.c$(ObjectSuffix) $(IntermediateDirectory)/src_jrtplib_rtpipv4destination.cpp$(ObjectSuffix) $(IntermediateDirectory)/src_ilbc_get_sync_seq.c$(ObjectSuffix) $(IntermediateDirectory)/src_thread_PCMPlayThread.cpp$(ObjectSuffix) $(IntermediateDirectory)/src_jrtplib_rtpipv4address.cpp$(ObjectSuffix) $(IntermediateDirectory)/src_jrtplib_rtcpsrpacket.cpp$(ObjectSuffix) \
	$(IntermediateDirectory)/src_jrtplib_rtprandom.cpp$(ObjectSuffix) $(IntermediateDirectory)/src_jrtplib_rtpexternaltransmitter.cpp$(ObjectSuffix) $(IntermediateDirectory)/src_ilbc_init_decode.c$(ObjectSuffix) $(IntermediateDirectory)/src_jrtplib_rtpcollisionlist.cpp$(ObjectSuffix) $(IntermediateDirectory)/src_ilbc_division_operations.c$(ObjectSuffix) $(IntermediateDirectory)/src_ilbc_vector_scaling_operations.c$(ObjectSuffix) $(IntermediateDirectory)/src_ilbc_levinson_durbin.c$(ObjectSuffix) $(IntermediateDirectory)/src_jrtplib_rtcprrpacket.cpp$(ObjectSuffix) $(IntermediateDirectory)/src_ilbc_split_vq.c$(ObjectSuffix) $(IntermediateDirectory)/src_jrtplib_rtcppacketbuilder.cpp$(ObjectSuffix) \
	$(IntermediateDirectory)/src_jrtplib_rtcppacket.cpp$(ObjectSuffix) $(IntermediateDirectory)/src_jrtplib_rtcpsdesinfo.cpp$(ObjectSuffix) $(IntermediateDirectory)/src_jrtplib_rtcpbyepacket.cpp$(ObjectSuffix) 

Objects3=$(IntermediateDirectory)/src_jrtplib_rtcpapppacket.cpp$(ObjectSuffix) $(IntermediateDirectory)/src_jrtplib_jthread.cpp$(ObjectSuffix) $(IntermediateDirectory)/src_thread_AudioSendThread.cpp$(ObjectSuffix) $(IntermediateDirectory)/src_module_JRTPSession.cpp$(ObjectSuffix) $(IntermediateDirectory)/src_ilbc_enh_upsample.c$(ObjectSuffix) $(IntermediateDirectory)/src_ilbc_window32_w32.c$(ObjectSuffix) $(IntermediateDirectory)/src_jrtplib_rtppacket.cpp$(ObjectSuffix) \
	$(IntermediateDirectory)/src_ilbc_vq3.c$(ObjectSuffix) $(IntermediateDirectory)/src_ilbc_unpack_bits.c$(ObjectSuffix) $(IntermediateDirectory)/src_ilbc_spl_sqrt_floor.c$(ObjectSuffix) $(IntermediateDirectory)/src_ilbc_swap_bytes.c$(ObjectSuffix) $(IntermediateDirectory)/src_ilbc_index_conv_enc.c$(ObjectSuffix) $(IntermediateDirectory)/src_thread_LocalPlayThread.cpp$(ObjectSuffix) $(IntermediateDirectory)/src_ilbc_smooth.c$(ObjectSuffix) $(IntermediateDirectory)/src_ilbc_simple_lsf_quant.c$(ObjectSuffix) $(IntermediateDirectory)/src_ilbc_simple_lsf_dequant.c$(ObjectSuffix) $(IntermediateDirectory)/src_ilbc_xcorr_coef.c$(ObjectSuffix) \
	$(IntermediateDirectory)/src_ilbc_simple_lpc_analysis.c$(ObjectSuffix) 



Objects=$(Objects0) $(Objects1) $(Objects2) $(Objects3) 

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
	@echo $(Objects3) >> $(ObjectsFileList)
	$(LinkerName) $(OutputSwitch)$(OutputFile) @$(ObjectsFileList) $(LibPath) $(Libs) $(LinkOptions)

MakeIntermediateDirs:
	@test -d ./Debug || $(MakeDirCommand) ./Debug


$(IntermediateDirectory)/.d:
	@test -d ./Debug || $(MakeDirCommand) ./Debug

PreBuild:


##
## Objects
##
$(IntermediateDirectory)/src_ilbc_abs_quant.c$(ObjectSuffix): src/ilbc/abs_quant.c $(IntermediateDirectory)/src_ilbc_abs_quant.c$(DependSuffix)
	$(CC) $(SourceSwitch) "/home/fym/722/cpp-project/AudioMixer/src/ilbc/abs_quant.c" $(CFLAGS) $(ObjectSwitch)$(IntermediateDirectory)/src_ilbc_abs_quant.c$(ObjectSuffix) $(IncludePath)
$(IntermediateDirectory)/src_ilbc_abs_quant.c$(DependSuffix): src/ilbc/abs_quant.c
	@$(CC) $(CFLAGS) $(IncludePath) -MG -MP -MT$(IntermediateDirectory)/src_ilbc_abs_quant.c$(ObjectSuffix) -MF$(IntermediateDirectory)/src_ilbc_abs_quant.c$(DependSuffix) -MM src/ilbc/abs_quant.c

$(IntermediateDirectory)/src_ilbc_abs_quant.c$(PreprocessSuffix): src/ilbc/abs_quant.c
	$(CC) $(CFLAGS) $(IncludePath) $(PreprocessOnlySwitch) $(OutputSwitch) $(IntermediateDirectory)/src_ilbc_abs_quant.c$(PreprocessSuffix) src/ilbc/abs_quant.c

$(IntermediateDirectory)/src_ilbc_auto_correlation.c$(ObjectSuffix): src/ilbc/auto_correlation.c $(IntermediateDirectory)/src_ilbc_auto_correlation.c$(DependSuffix)
	$(CC) $(SourceSwitch) "/home/fym/722/cpp-project/AudioMixer/src/ilbc/auto_correlation.c" $(CFLAGS) $(ObjectSwitch)$(IntermediateDirectory)/src_ilbc_auto_correlation.c$(ObjectSuffix) $(IncludePath)
$(IntermediateDirectory)/src_ilbc_auto_correlation.c$(DependSuffix): src/ilbc/auto_correlation.c
	@$(CC) $(CFLAGS) $(IncludePath) -MG -MP -MT$(IntermediateDirectory)/src_ilbc_auto_correlation.c$(ObjectSuffix) -MF$(IntermediateDirectory)/src_ilbc_auto_correlation.c$(DependSuffix) -MM src/ilbc/auto_correlation.c

$(IntermediateDirectory)/src_ilbc_auto_correlation.c$(PreprocessSuffix): src/ilbc/auto_correlation.c
	$(CC) $(CFLAGS) $(IncludePath) $(PreprocessOnlySwitch) $(OutputSwitch) $(IntermediateDirectory)/src_ilbc_auto_correlation.c$(PreprocessSuffix) src/ilbc/auto_correlation.c

$(IntermediateDirectory)/src_ilbc_cb_construct.c$(ObjectSuffix): src/ilbc/cb_construct.c $(IntermediateDirectory)/src_ilbc_cb_construct.c$(DependSuffix)
	$(CC) $(SourceSwitch) "/home/fym/722/cpp-project/AudioMixer/src/ilbc/cb_construct.c" $(CFLAGS) $(ObjectSwitch)$(IntermediateDirectory)/src_ilbc_cb_construct.c$(ObjectSuffix) $(IncludePath)
$(IntermediateDirectory)/src_ilbc_cb_construct.c$(DependSuffix): src/ilbc/cb_construct.c
	@$(CC) $(CFLAGS) $(IncludePath) -MG -MP -MT$(IntermediateDirectory)/src_ilbc_cb_construct.c$(ObjectSuffix) -MF$(IntermediateDirectory)/src_ilbc_cb_construct.c$(DependSuffix) -MM src/ilbc/cb_construct.c

$(IntermediateDirectory)/src_ilbc_cb_construct.c$(PreprocessSuffix): src/ilbc/cb_construct.c
	$(CC) $(CFLAGS) $(IncludePath) $(PreprocessOnlySwitch) $(OutputSwitch) $(IntermediateDirectory)/src_ilbc_cb_construct.c$(PreprocessSuffix) src/ilbc/cb_construct.c

$(IntermediateDirectory)/src_ilbc_cb_mem_energy.c$(ObjectSuffix): src/ilbc/cb_mem_energy.c $(IntermediateDirectory)/src_ilbc_cb_mem_energy.c$(DependSuffix)
	$(CC) $(SourceSwitch) "/home/fym/722/cpp-project/AudioMixer/src/ilbc/cb_mem_energy.c" $(CFLAGS) $(ObjectSwitch)$(IntermediateDirectory)/src_ilbc_cb_mem_energy.c$(ObjectSuffix) $(IncludePath)
$(IntermediateDirectory)/src_ilbc_cb_mem_energy.c$(DependSuffix): src/ilbc/cb_mem_energy.c
	@$(CC) $(CFLAGS) $(IncludePath) -MG -MP -MT$(IntermediateDirectory)/src_ilbc_cb_mem_energy.c$(ObjectSuffix) -MF$(IntermediateDirectory)/src_ilbc_cb_mem_energy.c$(DependSuffix) -MM src/ilbc/cb_mem_energy.c

$(IntermediateDirectory)/src_ilbc_cb_mem_energy.c$(PreprocessSuffix): src/ilbc/cb_mem_energy.c
	$(CC) $(CFLAGS) $(IncludePath) $(PreprocessOnlySwitch) $(OutputSwitch) $(IntermediateDirectory)/src_ilbc_cb_mem_energy.c$(PreprocessSuffix) src/ilbc/cb_mem_energy.c

$(IntermediateDirectory)/src_ilbc_cb_mem_energy_calc.c$(ObjectSuffix): src/ilbc/cb_mem_energy_calc.c $(IntermediateDirectory)/src_ilbc_cb_mem_energy_calc.c$(DependSuffix)
	$(CC) $(SourceSwitch) "/home/fym/722/cpp-project/AudioMixer/src/ilbc/cb_mem_energy_calc.c" $(CFLAGS) $(ObjectSwitch)$(IntermediateDirectory)/src_ilbc_cb_mem_energy_calc.c$(ObjectSuffix) $(IncludePath)
$(IntermediateDirectory)/src_ilbc_cb_mem_energy_calc.c$(DependSuffix): src/ilbc/cb_mem_energy_calc.c
	@$(CC) $(CFLAGS) $(IncludePath) -MG -MP -MT$(IntermediateDirectory)/src_ilbc_cb_mem_energy_calc.c$(ObjectSuffix) -MF$(IntermediateDirectory)/src_ilbc_cb_mem_energy_calc.c$(DependSuffix) -MM src/ilbc/cb_mem_energy_calc.c

$(IntermediateDirectory)/src_ilbc_cb_mem_energy_calc.c$(PreprocessSuffix): src/ilbc/cb_mem_energy_calc.c
	$(CC) $(CFLAGS) $(IncludePath) $(PreprocessOnlySwitch) $(OutputSwitch) $(IntermediateDirectory)/src_ilbc_cb_mem_energy_calc.c$(PreprocessSuffix) src/ilbc/cb_mem_energy_calc.c

$(IntermediateDirectory)/src_ilbc_cb_search.c$(ObjectSuffix): src/ilbc/cb_search.c $(IntermediateDirectory)/src_ilbc_cb_search.c$(DependSuffix)
	$(CC) $(SourceSwitch) "/home/fym/722/cpp-project/AudioMixer/src/ilbc/cb_search.c" $(CFLAGS) $(ObjectSwitch)$(IntermediateDirectory)/src_ilbc_cb_search.c$(ObjectSuffix) $(IncludePath)
$(IntermediateDirectory)/src_ilbc_cb_search.c$(DependSuffix): src/ilbc/cb_search.c
	@$(CC) $(CFLAGS) $(IncludePath) -MG -MP -MT$(IntermediateDirectory)/src_ilbc_cb_search.c$(ObjectSuffix) -MF$(IntermediateDirectory)/src_ilbc_cb_search.c$(DependSuffix) -MM src/ilbc/cb_search.c

$(IntermediateDirectory)/src_ilbc_cb_search.c$(PreprocessSuffix): src/ilbc/cb_search.c
	$(CC) $(CFLAGS) $(IncludePath) $(PreprocessOnlySwitch) $(OutputSwitch) $(IntermediateDirectory)/src_ilbc_cb_search.c$(PreprocessSuffix) src/ilbc/cb_search.c

$(IntermediateDirectory)/src_ilbc_cb_search_core.c$(ObjectSuffix): src/ilbc/cb_search_core.c $(IntermediateDirectory)/src_ilbc_cb_search_core.c$(DependSuffix)
	$(CC) $(SourceSwitch) "/home/fym/722/cpp-project/AudioMixer/src/ilbc/cb_search_core.c" $(CFLAGS) $(ObjectSwitch)$(IntermediateDirectory)/src_ilbc_cb_search_core.c$(ObjectSuffix) $(IncludePath)
$(IntermediateDirectory)/src_ilbc_cb_search_core.c$(DependSuffix): src/ilbc/cb_search_core.c
	@$(CC) $(CFLAGS) $(IncludePath) -MG -MP -MT$(IntermediateDirectory)/src_ilbc_cb_search_core.c$(ObjectSuffix) -MF$(IntermediateDirectory)/src_ilbc_cb_search_core.c$(DependSuffix) -MM src/ilbc/cb_search_core.c

$(IntermediateDirectory)/src_ilbc_cb_search_core.c$(PreprocessSuffix): src/ilbc/cb_search_core.c
	$(CC) $(CFLAGS) $(IncludePath) $(PreprocessOnlySwitch) $(OutputSwitch) $(IntermediateDirectory)/src_ilbc_cb_search_core.c$(PreprocessSuffix) src/ilbc/cb_search_core.c

$(IntermediateDirectory)/src_ilbc_chebyshev.c$(ObjectSuffix): src/ilbc/chebyshev.c $(IntermediateDirectory)/src_ilbc_chebyshev.c$(DependSuffix)
	$(CC) $(SourceSwitch) "/home/fym/722/cpp-project/AudioMixer/src/ilbc/chebyshev.c" $(CFLAGS) $(ObjectSwitch)$(IntermediateDirectory)/src_ilbc_chebyshev.c$(ObjectSuffix) $(IncludePath)
$(IntermediateDirectory)/src_ilbc_chebyshev.c$(DependSuffix): src/ilbc/chebyshev.c
	@$(CC) $(CFLAGS) $(IncludePath) -MG -MP -MT$(IntermediateDirectory)/src_ilbc_chebyshev.c$(ObjectSuffix) -MF$(IntermediateDirectory)/src_ilbc_chebyshev.c$(DependSuffix) -MM src/ilbc/chebyshev.c

$(IntermediateDirectory)/src_ilbc_chebyshev.c$(PreprocessSuffix): src/ilbc/chebyshev.c
	$(CC) $(CFLAGS) $(IncludePath) $(PreprocessOnlySwitch) $(OutputSwitch) $(IntermediateDirectory)/src_ilbc_chebyshev.c$(PreprocessSuffix) src/ilbc/chebyshev.c

$(IntermediateDirectory)/src_ilbc_complex_bit_reverse.c$(ObjectSuffix): src/ilbc/complex_bit_reverse.c $(IntermediateDirectory)/src_ilbc_complex_bit_reverse.c$(DependSuffix)
	$(CC) $(SourceSwitch) "/home/fym/722/cpp-project/AudioMixer/src/ilbc/complex_bit_reverse.c" $(CFLAGS) $(ObjectSwitch)$(IntermediateDirectory)/src_ilbc_complex_bit_reverse.c$(ObjectSuffix) $(IncludePath)
$(IntermediateDirectory)/src_ilbc_complex_bit_reverse.c$(DependSuffix): src/ilbc/complex_bit_reverse.c
	@$(CC) $(CFLAGS) $(IncludePath) -MG -MP -MT$(IntermediateDirectory)/src_ilbc_complex_bit_reverse.c$(ObjectSuffix) -MF$(IntermediateDirectory)/src_ilbc_complex_bit_reverse.c$(DependSuffix) -MM src/ilbc/complex_bit_reverse.c

$(IntermediateDirectory)/src_ilbc_complex_bit_reverse.c$(PreprocessSuffix): src/ilbc/complex_bit_reverse.c
	$(CC) $(CFLAGS) $(IncludePath) $(PreprocessOnlySwitch) $(OutputSwitch) $(IntermediateDirectory)/src_ilbc_complex_bit_reverse.c$(PreprocessSuffix) src/ilbc/complex_bit_reverse.c

$(IntermediateDirectory)/src_ilbc_copy_set_operations.c$(ObjectSuffix): src/ilbc/copy_set_operations.c $(IntermediateDirectory)/src_ilbc_copy_set_operations.c$(DependSuffix)
	$(CC) $(SourceSwitch) "/home/fym/722/cpp-project/AudioMixer/src/ilbc/copy_set_operations.c" $(CFLAGS) $(ObjectSwitch)$(IntermediateDirectory)/src_ilbc_copy_set_operations.c$(ObjectSuffix) $(IncludePath)
$(IntermediateDirectory)/src_ilbc_copy_set_operations.c$(DependSuffix): src/ilbc/copy_set_operations.c
	@$(CC) $(CFLAGS) $(IncludePath) -MG -MP -MT$(IntermediateDirectory)/src_ilbc_copy_set_operations.c$(ObjectSuffix) -MF$(IntermediateDirectory)/src_ilbc_copy_set_operations.c$(DependSuffix) -MM src/ilbc/copy_set_operations.c

$(IntermediateDirectory)/src_ilbc_copy_set_operations.c$(PreprocessSuffix): src/ilbc/copy_set_operations.c
	$(CC) $(CFLAGS) $(IncludePath) $(PreprocessOnlySwitch) $(OutputSwitch) $(IntermediateDirectory)/src_ilbc_copy_set_operations.c$(PreprocessSuffix) src/ilbc/copy_set_operations.c

$(IntermediateDirectory)/src_ilbc_create_augmented_vec.c$(ObjectSuffix): src/ilbc/create_augmented_vec.c $(IntermediateDirectory)/src_ilbc_create_augmented_vec.c$(DependSuffix)
	$(CC) $(SourceSwitch) "/home/fym/722/cpp-project/AudioMixer/src/ilbc/create_augmented_vec.c" $(CFLAGS) $(ObjectSwitch)$(IntermediateDirectory)/src_ilbc_create_augmented_vec.c$(ObjectSuffix) $(IncludePath)
$(IntermediateDirectory)/src_ilbc_create_augmented_vec.c$(DependSuffix): src/ilbc/create_augmented_vec.c
	@$(CC) $(CFLAGS) $(IncludePath) -MG -MP -MT$(IntermediateDirectory)/src_ilbc_create_augmented_vec.c$(ObjectSuffix) -MF$(IntermediateDirectory)/src_ilbc_create_augmented_vec.c$(DependSuffix) -MM src/ilbc/create_augmented_vec.c

$(IntermediateDirectory)/src_ilbc_create_augmented_vec.c$(PreprocessSuffix): src/ilbc/create_augmented_vec.c
	$(CC) $(CFLAGS) $(IncludePath) $(PreprocessOnlySwitch) $(OutputSwitch) $(IntermediateDirectory)/src_ilbc_create_augmented_vec.c$(PreprocessSuffix) src/ilbc/create_augmented_vec.c

$(IntermediateDirectory)/src_ilbc_decode_residual.c$(ObjectSuffix): src/ilbc/decode_residual.c $(IntermediateDirectory)/src_ilbc_decode_residual.c$(DependSuffix)
	$(CC) $(SourceSwitch) "/home/fym/722/cpp-project/AudioMixer/src/ilbc/decode_residual.c" $(CFLAGS) $(ObjectSwitch)$(IntermediateDirectory)/src_ilbc_decode_residual.c$(ObjectSuffix) $(IncludePath)
$(IntermediateDirectory)/src_ilbc_decode_residual.c$(DependSuffix): src/ilbc/decode_residual.c
	@$(CC) $(CFLAGS) $(IncludePath) -MG -MP -MT$(IntermediateDirectory)/src_ilbc_decode_residual.c$(ObjectSuffix) -MF$(IntermediateDirectory)/src_ilbc_decode_residual.c$(DependSuffix) -MM src/ilbc/decode_residual.c

$(IntermediateDirectory)/src_ilbc_decode_residual.c$(PreprocessSuffix): src/ilbc/decode_residual.c
	$(CC) $(CFLAGS) $(IncludePath) $(PreprocessOnlySwitch) $(OutputSwitch) $(IntermediateDirectory)/src_ilbc_decode_residual.c$(PreprocessSuffix) src/ilbc/decode_residual.c

$(IntermediateDirectory)/src_ilbc_energy_inverse.c$(ObjectSuffix): src/ilbc/energy_inverse.c $(IntermediateDirectory)/src_ilbc_energy_inverse.c$(DependSuffix)
	$(CC) $(SourceSwitch) "/home/fym/722/cpp-project/AudioMixer/src/ilbc/energy_inverse.c" $(CFLAGS) $(ObjectSwitch)$(IntermediateDirectory)/src_ilbc_energy_inverse.c$(ObjectSuffix) $(IncludePath)
$(IntermediateDirectory)/src_ilbc_energy_inverse.c$(DependSuffix): src/ilbc/energy_inverse.c
	@$(CC) $(CFLAGS) $(IncludePath) -MG -MP -MT$(IntermediateDirectory)/src_ilbc_energy_inverse.c$(ObjectSuffix) -MF$(IntermediateDirectory)/src_ilbc_energy_inverse.c$(DependSuffix) -MM src/ilbc/energy_inverse.c

$(IntermediateDirectory)/src_ilbc_energy_inverse.c$(PreprocessSuffix): src/ilbc/energy_inverse.c
	$(CC) $(CFLAGS) $(IncludePath) $(PreprocessOnlySwitch) $(OutputSwitch) $(IntermediateDirectory)/src_ilbc_energy_inverse.c$(PreprocessSuffix) src/ilbc/energy_inverse.c

$(IntermediateDirectory)/src_ilbc_filter_ar_fast_q12.c$(ObjectSuffix): src/ilbc/filter_ar_fast_q12.c $(IntermediateDirectory)/src_ilbc_filter_ar_fast_q12.c$(DependSuffix)
	$(CC) $(SourceSwitch) "/home/fym/722/cpp-project/AudioMixer/src/ilbc/filter_ar_fast_q12.c" $(CFLAGS) $(ObjectSwitch)$(IntermediateDirectory)/src_ilbc_filter_ar_fast_q12.c$(ObjectSuffix) $(IncludePath)
$(IntermediateDirectory)/src_ilbc_filter_ar_fast_q12.c$(DependSuffix): src/ilbc/filter_ar_fast_q12.c
	@$(CC) $(CFLAGS) $(IncludePath) -MG -MP -MT$(IntermediateDirectory)/src_ilbc_filter_ar_fast_q12.c$(ObjectSuffix) -MF$(IntermediateDirectory)/src_ilbc_filter_ar_fast_q12.c$(DependSuffix) -MM src/ilbc/filter_ar_fast_q12.c

$(IntermediateDirectory)/src_ilbc_filter_ar_fast_q12.c$(PreprocessSuffix): src/ilbc/filter_ar_fast_q12.c
	$(CC) $(CFLAGS) $(IncludePath) $(PreprocessOnlySwitch) $(OutputSwitch) $(IntermediateDirectory)/src_ilbc_filter_ar_fast_q12.c$(PreprocessSuffix) src/ilbc/filter_ar_fast_q12.c

$(IntermediateDirectory)/src_ilbc_filtered_cb_vecs.c$(ObjectSuffix): src/ilbc/filtered_cb_vecs.c $(IntermediateDirectory)/src_ilbc_filtered_cb_vecs.c$(DependSuffix)
	$(CC) $(SourceSwitch) "/home/fym/722/cpp-project/AudioMixer/src/ilbc/filtered_cb_vecs.c" $(CFLAGS) $(ObjectSwitch)$(IntermediateDirectory)/src_ilbc_filtered_cb_vecs.c$(ObjectSuffix) $(IncludePath)
$(IntermediateDirectory)/src_ilbc_filtered_cb_vecs.c$(DependSuffix): src/ilbc/filtered_cb_vecs.c
	@$(CC) $(CFLAGS) $(IncludePath) -MG -MP -MT$(IntermediateDirectory)/src_ilbc_filtered_cb_vecs.c$(ObjectSuffix) -MF$(IntermediateDirectory)/src_ilbc_filtered_cb_vecs.c$(DependSuffix) -MM src/ilbc/filtered_cb_vecs.c

$(IntermediateDirectory)/src_ilbc_filtered_cb_vecs.c$(PreprocessSuffix): src/ilbc/filtered_cb_vecs.c
	$(CC) $(CFLAGS) $(IncludePath) $(PreprocessOnlySwitch) $(OutputSwitch) $(IntermediateDirectory)/src_ilbc_filtered_cb_vecs.c$(PreprocessSuffix) src/ilbc/filtered_cb_vecs.c

$(IntermediateDirectory)/src_ilbc_decoder_interpolate_lsf.c$(ObjectSuffix): src/ilbc/decoder_interpolate_lsf.c $(IntermediateDirectory)/src_ilbc_decoder_interpolate_lsf.c$(DependSuffix)
	$(CC) $(SourceSwitch) "/home/fym/722/cpp-project/AudioMixer/src/ilbc/decoder_interpolate_lsf.c" $(CFLAGS) $(ObjectSwitch)$(IntermediateDirectory)/src_ilbc_decoder_interpolate_lsf.c$(ObjectSuffix) $(IncludePath)
$(IntermediateDirectory)/src_ilbc_decoder_interpolate_lsf.c$(DependSuffix): src/ilbc/decoder_interpolate_lsf.c
	@$(CC) $(CFLAGS) $(IncludePath) -MG -MP -MT$(IntermediateDirectory)/src_ilbc_decoder_interpolate_lsf.c$(ObjectSuffix) -MF$(IntermediateDirectory)/src_ilbc_decoder_interpolate_lsf.c$(DependSuffix) -MM src/ilbc/decoder_interpolate_lsf.c

$(IntermediateDirectory)/src_ilbc_decoder_interpolate_lsf.c$(PreprocessSuffix): src/ilbc/decoder_interpolate_lsf.c
	$(CC) $(CFLAGS) $(IncludePath) $(PreprocessOnlySwitch) $(OutputSwitch) $(IntermediateDirectory)/src_ilbc_decoder_interpolate_lsf.c$(PreprocessSuffix) src/ilbc/decoder_interpolate_lsf.c

$(IntermediateDirectory)/src_ilbc_filter_ma_fast_q12.c$(ObjectSuffix): src/ilbc/filter_ma_fast_q12.c $(IntermediateDirectory)/src_ilbc_filter_ma_fast_q12.c$(DependSuffix)
	$(CC) $(SourceSwitch) "/home/fym/722/cpp-project/AudioMixer/src/ilbc/filter_ma_fast_q12.c" $(CFLAGS) $(ObjectSwitch)$(IntermediateDirectory)/src_ilbc_filter_ma_fast_q12.c$(ObjectSuffix) $(IncludePath)
$(IntermediateDirectory)/src_ilbc_filter_ma_fast_q12.c$(DependSuffix): src/ilbc/filter_ma_fast_q12.c
	@$(CC) $(CFLAGS) $(IncludePath) -MG -MP -MT$(IntermediateDirectory)/src_ilbc_filter_ma_fast_q12.c$(ObjectSuffix) -MF$(IntermediateDirectory)/src_ilbc_filter_ma_fast_q12.c$(DependSuffix) -MM src/ilbc/filter_ma_fast_q12.c

$(IntermediateDirectory)/src_ilbc_filter_ma_fast_q12.c$(PreprocessSuffix): src/ilbc/filter_ma_fast_q12.c
	$(CC) $(CFLAGS) $(IncludePath) $(PreprocessOnlySwitch) $(OutputSwitch) $(IntermediateDirectory)/src_ilbc_filter_ma_fast_q12.c$(PreprocessSuffix) src/ilbc/filter_ma_fast_q12.c

$(IntermediateDirectory)/src_ilbc_gain_quant.c$(ObjectSuffix): src/ilbc/gain_quant.c $(IntermediateDirectory)/src_ilbc_gain_quant.c$(DependSuffix)
	$(CC) $(SourceSwitch) "/home/fym/722/cpp-project/AudioMixer/src/ilbc/gain_quant.c" $(CFLAGS) $(ObjectSwitch)$(IntermediateDirectory)/src_ilbc_gain_quant.c$(ObjectSuffix) $(IncludePath)
$(IntermediateDirectory)/src_ilbc_gain_quant.c$(DependSuffix): src/ilbc/gain_quant.c
	@$(CC) $(CFLAGS) $(IncludePath) -MG -MP -MT$(IntermediateDirectory)/src_ilbc_gain_quant.c$(ObjectSuffix) -MF$(IntermediateDirectory)/src_ilbc_gain_quant.c$(DependSuffix) -MM src/ilbc/gain_quant.c

$(IntermediateDirectory)/src_ilbc_gain_quant.c$(PreprocessSuffix): src/ilbc/gain_quant.c
	$(CC) $(CFLAGS) $(IncludePath) $(PreprocessOnlySwitch) $(OutputSwitch) $(IntermediateDirectory)/src_ilbc_gain_quant.c$(PreprocessSuffix) src/ilbc/gain_quant.c

$(IntermediateDirectory)/src_ilbc_get_cd_vec.c$(ObjectSuffix): src/ilbc/get_cd_vec.c $(IntermediateDirectory)/src_ilbc_get_cd_vec.c$(DependSuffix)
	$(CC) $(SourceSwitch) "/home/fym/722/cpp-project/AudioMixer/src/ilbc/get_cd_vec.c" $(CFLAGS) $(ObjectSwitch)$(IntermediateDirectory)/src_ilbc_get_cd_vec.c$(ObjectSuffix) $(IncludePath)
$(IntermediateDirectory)/src_ilbc_get_cd_vec.c$(DependSuffix): src/ilbc/get_cd_vec.c
	@$(CC) $(CFLAGS) $(IncludePath) -MG -MP -MT$(IntermediateDirectory)/src_ilbc_get_cd_vec.c$(ObjectSuffix) -MF$(IntermediateDirectory)/src_ilbc_get_cd_vec.c$(DependSuffix) -MM src/ilbc/get_cd_vec.c

$(IntermediateDirectory)/src_ilbc_get_cd_vec.c$(PreprocessSuffix): src/ilbc/get_cd_vec.c
	$(CC) $(CFLAGS) $(IncludePath) $(PreprocessOnlySwitch) $(OutputSwitch) $(IntermediateDirectory)/src_ilbc_get_cd_vec.c$(PreprocessSuffix) src/ilbc/get_cd_vec.c

$(IntermediateDirectory)/src_ilbc_get_lsp_poly.c$(ObjectSuffix): src/ilbc/get_lsp_poly.c $(IntermediateDirectory)/src_ilbc_get_lsp_poly.c$(DependSuffix)
	$(CC) $(SourceSwitch) "/home/fym/722/cpp-project/AudioMixer/src/ilbc/get_lsp_poly.c" $(CFLAGS) $(ObjectSwitch)$(IntermediateDirectory)/src_ilbc_get_lsp_poly.c$(ObjectSuffix) $(IncludePath)
$(IntermediateDirectory)/src_ilbc_get_lsp_poly.c$(DependSuffix): src/ilbc/get_lsp_poly.c
	@$(CC) $(CFLAGS) $(IncludePath) -MG -MP -MT$(IntermediateDirectory)/src_ilbc_get_lsp_poly.c$(ObjectSuffix) -MF$(IntermediateDirectory)/src_ilbc_get_lsp_poly.c$(DependSuffix) -MM src/ilbc/get_lsp_poly.c

$(IntermediateDirectory)/src_ilbc_get_lsp_poly.c$(PreprocessSuffix): src/ilbc/get_lsp_poly.c
	$(CC) $(CFLAGS) $(IncludePath) $(PreprocessOnlySwitch) $(OutputSwitch) $(IntermediateDirectory)/src_ilbc_get_lsp_poly.c$(PreprocessSuffix) src/ilbc/get_lsp_poly.c

$(IntermediateDirectory)/src_ilbc_downsample_fast.c$(ObjectSuffix): src/ilbc/downsample_fast.c $(IntermediateDirectory)/src_ilbc_downsample_fast.c$(DependSuffix)
	$(CC) $(SourceSwitch) "/home/fym/722/cpp-project/AudioMixer/src/ilbc/downsample_fast.c" $(CFLAGS) $(ObjectSwitch)$(IntermediateDirectory)/src_ilbc_downsample_fast.c$(ObjectSuffix) $(IncludePath)
$(IntermediateDirectory)/src_ilbc_downsample_fast.c$(DependSuffix): src/ilbc/downsample_fast.c
	@$(CC) $(CFLAGS) $(IncludePath) -MG -MP -MT$(IntermediateDirectory)/src_ilbc_downsample_fast.c$(ObjectSuffix) -MF$(IntermediateDirectory)/src_ilbc_downsample_fast.c$(DependSuffix) -MM src/ilbc/downsample_fast.c

$(IntermediateDirectory)/src_ilbc_downsample_fast.c$(PreprocessSuffix): src/ilbc/downsample_fast.c
	$(CC) $(CFLAGS) $(IncludePath) $(PreprocessOnlySwitch) $(OutputSwitch) $(IntermediateDirectory)/src_ilbc_downsample_fast.c$(PreprocessSuffix) src/ilbc/downsample_fast.c

$(IntermediateDirectory)/src_ilbc_hp_input.c$(ObjectSuffix): src/ilbc/hp_input.c $(IntermediateDirectory)/src_ilbc_hp_input.c$(DependSuffix)
	$(CC) $(SourceSwitch) "/home/fym/722/cpp-project/AudioMixer/src/ilbc/hp_input.c" $(CFLAGS) $(ObjectSwitch)$(IntermediateDirectory)/src_ilbc_hp_input.c$(ObjectSuffix) $(IncludePath)
$(IntermediateDirectory)/src_ilbc_hp_input.c$(DependSuffix): src/ilbc/hp_input.c
	@$(CC) $(CFLAGS) $(IncludePath) -MG -MP -MT$(IntermediateDirectory)/src_ilbc_hp_input.c$(ObjectSuffix) -MF$(IntermediateDirectory)/src_ilbc_hp_input.c$(DependSuffix) -MM src/ilbc/hp_input.c

$(IntermediateDirectory)/src_ilbc_hp_input.c$(PreprocessSuffix): src/ilbc/hp_input.c
	$(CC) $(CFLAGS) $(IncludePath) $(PreprocessOnlySwitch) $(OutputSwitch) $(IntermediateDirectory)/src_ilbc_hp_input.c$(PreprocessSuffix) src/ilbc/hp_input.c

$(IntermediateDirectory)/src_ilbc_hp_output.c$(ObjectSuffix): src/ilbc/hp_output.c $(IntermediateDirectory)/src_ilbc_hp_output.c$(DependSuffix)
	$(CC) $(SourceSwitch) "/home/fym/722/cpp-project/AudioMixer/src/ilbc/hp_output.c" $(CFLAGS) $(ObjectSwitch)$(IntermediateDirectory)/src_ilbc_hp_output.c$(ObjectSuffix) $(IncludePath)
$(IntermediateDirectory)/src_ilbc_hp_output.c$(DependSuffix): src/ilbc/hp_output.c
	@$(CC) $(CFLAGS) $(IncludePath) -MG -MP -MT$(IntermediateDirectory)/src_ilbc_hp_output.c$(ObjectSuffix) -MF$(IntermediateDirectory)/src_ilbc_hp_output.c$(DependSuffix) -MM src/ilbc/hp_output.c

$(IntermediateDirectory)/src_ilbc_hp_output.c$(PreprocessSuffix): src/ilbc/hp_output.c
	$(CC) $(CFLAGS) $(IncludePath) $(PreprocessOnlySwitch) $(OutputSwitch) $(IntermediateDirectory)/src_ilbc_hp_output.c$(PreprocessSuffix) src/ilbc/hp_output.c

$(IntermediateDirectory)/src_ilbc_ilbc.c$(ObjectSuffix): src/ilbc/ilbc.c $(IntermediateDirectory)/src_ilbc_ilbc.c$(DependSuffix)
	$(CC) $(SourceSwitch) "/home/fym/722/cpp-project/AudioMixer/src/ilbc/ilbc.c" $(CFLAGS) $(ObjectSwitch)$(IntermediateDirectory)/src_ilbc_ilbc.c$(ObjectSuffix) $(IncludePath)
$(IntermediateDirectory)/src_ilbc_ilbc.c$(DependSuffix): src/ilbc/ilbc.c
	@$(CC) $(CFLAGS) $(IncludePath) -MG -MP -MT$(IntermediateDirectory)/src_ilbc_ilbc.c$(ObjectSuffix) -MF$(IntermediateDirectory)/src_ilbc_ilbc.c$(DependSuffix) -MM src/ilbc/ilbc.c

$(IntermediateDirectory)/src_ilbc_ilbc.c$(PreprocessSuffix): src/ilbc/ilbc.c
	$(CC) $(CFLAGS) $(IncludePath) $(PreprocessOnlySwitch) $(OutputSwitch) $(IntermediateDirectory)/src_ilbc_ilbc.c$(PreprocessSuffix) src/ilbc/ilbc.c

$(IntermediateDirectory)/src_ilbc_ilbc_specific_functions.c$(ObjectSuffix): src/ilbc/ilbc_specific_functions.c $(IntermediateDirectory)/src_ilbc_ilbc_specific_functions.c$(DependSuffix)
	$(CC) $(SourceSwitch) "/home/fym/722/cpp-project/AudioMixer/src/ilbc/ilbc_specific_functions.c" $(CFLAGS) $(ObjectSwitch)$(IntermediateDirectory)/src_ilbc_ilbc_specific_functions.c$(ObjectSuffix) $(IncludePath)
$(IntermediateDirectory)/src_ilbc_ilbc_specific_functions.c$(DependSuffix): src/ilbc/ilbc_specific_functions.c
	@$(CC) $(CFLAGS) $(IncludePath) -MG -MP -MT$(IntermediateDirectory)/src_ilbc_ilbc_specific_functions.c$(ObjectSuffix) -MF$(IntermediateDirectory)/src_ilbc_ilbc_specific_functions.c$(DependSuffix) -MM src/ilbc/ilbc_specific_functions.c

$(IntermediateDirectory)/src_ilbc_ilbc_specific_functions.c$(PreprocessSuffix): src/ilbc/ilbc_specific_functions.c
	$(CC) $(CFLAGS) $(IncludePath) $(PreprocessOnlySwitch) $(OutputSwitch) $(IntermediateDirectory)/src_ilbc_ilbc_specific_functions.c$(PreprocessSuffix) src/ilbc/ilbc_specific_functions.c

$(IntermediateDirectory)/src_ilbc_index_conv_dec.c$(ObjectSuffix): src/ilbc/index_conv_dec.c $(IntermediateDirectory)/src_ilbc_index_conv_dec.c$(DependSuffix)
	$(CC) $(SourceSwitch) "/home/fym/722/cpp-project/AudioMixer/src/ilbc/index_conv_dec.c" $(CFLAGS) $(ObjectSwitch)$(IntermediateDirectory)/src_ilbc_index_conv_dec.c$(ObjectSuffix) $(IncludePath)
$(IntermediateDirectory)/src_ilbc_index_conv_dec.c$(DependSuffix): src/ilbc/index_conv_dec.c
	@$(CC) $(CFLAGS) $(IncludePath) -MG -MP -MT$(IntermediateDirectory)/src_ilbc_index_conv_dec.c$(ObjectSuffix) -MF$(IntermediateDirectory)/src_ilbc_index_conv_dec.c$(DependSuffix) -MM src/ilbc/index_conv_dec.c

$(IntermediateDirectory)/src_ilbc_index_conv_dec.c$(PreprocessSuffix): src/ilbc/index_conv_dec.c
	$(CC) $(CFLAGS) $(IncludePath) $(PreprocessOnlySwitch) $(OutputSwitch) $(IntermediateDirectory)/src_ilbc_index_conv_dec.c$(PreprocessSuffix) src/ilbc/index_conv_dec.c

$(IntermediateDirectory)/src_ilbc_init_encode.c$(ObjectSuffix): src/ilbc/init_encode.c $(IntermediateDirectory)/src_ilbc_init_encode.c$(DependSuffix)
	$(CC) $(SourceSwitch) "/home/fym/722/cpp-project/AudioMixer/src/ilbc/init_encode.c" $(CFLAGS) $(ObjectSwitch)$(IntermediateDirectory)/src_ilbc_init_encode.c$(ObjectSuffix) $(IncludePath)
$(IntermediateDirectory)/src_ilbc_init_encode.c$(DependSuffix): src/ilbc/init_encode.c
	@$(CC) $(CFLAGS) $(IncludePath) -MG -MP -MT$(IntermediateDirectory)/src_ilbc_init_encode.c$(ObjectSuffix) -MF$(IntermediateDirectory)/src_ilbc_init_encode.c$(DependSuffix) -MM src/ilbc/init_encode.c

$(IntermediateDirectory)/src_ilbc_init_encode.c$(PreprocessSuffix): src/ilbc/init_encode.c
	$(CC) $(CFLAGS) $(IncludePath) $(PreprocessOnlySwitch) $(OutputSwitch) $(IntermediateDirectory)/src_ilbc_init_encode.c$(PreprocessSuffix) src/ilbc/init_encode.c

$(IntermediateDirectory)/src_ilbc_interpolate_samples.c$(ObjectSuffix): src/ilbc/interpolate_samples.c $(IntermediateDirectory)/src_ilbc_interpolate_samples.c$(DependSuffix)
	$(CC) $(SourceSwitch) "/home/fym/722/cpp-project/AudioMixer/src/ilbc/interpolate_samples.c" $(CFLAGS) $(ObjectSwitch)$(IntermediateDirectory)/src_ilbc_interpolate_samples.c$(ObjectSuffix) $(IncludePath)
$(IntermediateDirectory)/src_ilbc_interpolate_samples.c$(DependSuffix): src/ilbc/interpolate_samples.c
	@$(CC) $(CFLAGS) $(IncludePath) -MG -MP -MT$(IntermediateDirectory)/src_ilbc_interpolate_samples.c$(ObjectSuffix) -MF$(IntermediateDirectory)/src_ilbc_interpolate_samples.c$(DependSuffix) -MM src/ilbc/interpolate_samples.c

$(IntermediateDirectory)/src_ilbc_interpolate_samples.c$(PreprocessSuffix): src/ilbc/interpolate_samples.c
	$(CC) $(CFLAGS) $(IncludePath) $(PreprocessOnlySwitch) $(OutputSwitch) $(IntermediateDirectory)/src_ilbc_interpolate_samples.c$(PreprocessSuffix) src/ilbc/interpolate_samples.c

$(IntermediateDirectory)/src_ilbc_lsf_check.c$(ObjectSuffix): src/ilbc/lsf_check.c $(IntermediateDirectory)/src_ilbc_lsf_check.c$(DependSuffix)
	$(CC) $(SourceSwitch) "/home/fym/722/cpp-project/AudioMixer/src/ilbc/lsf_check.c" $(CFLAGS) $(ObjectSwitch)$(IntermediateDirectory)/src_ilbc_lsf_check.c$(ObjectSuffix) $(IncludePath)
$(IntermediateDirectory)/src_ilbc_lsf_check.c$(DependSuffix): src/ilbc/lsf_check.c
	@$(CC) $(CFLAGS) $(IncludePath) -MG -MP -MT$(IntermediateDirectory)/src_ilbc_lsf_check.c$(ObjectSuffix) -MF$(IntermediateDirectory)/src_ilbc_lsf_check.c$(DependSuffix) -MM src/ilbc/lsf_check.c

$(IntermediateDirectory)/src_ilbc_lsf_check.c$(PreprocessSuffix): src/ilbc/lsf_check.c
	$(CC) $(CFLAGS) $(IncludePath) $(PreprocessOnlySwitch) $(OutputSwitch) $(IntermediateDirectory)/src_ilbc_lsf_check.c$(PreprocessSuffix) src/ilbc/lsf_check.c

$(IntermediateDirectory)/src_ilbc_lsf_interpolate_to_poly_dec.c$(ObjectSuffix): src/ilbc/lsf_interpolate_to_poly_dec.c $(IntermediateDirectory)/src_ilbc_lsf_interpolate_to_poly_dec.c$(DependSuffix)
	$(CC) $(SourceSwitch) "/home/fym/722/cpp-project/AudioMixer/src/ilbc/lsf_interpolate_to_poly_dec.c" $(CFLAGS) $(ObjectSwitch)$(IntermediateDirectory)/src_ilbc_lsf_interpolate_to_poly_dec.c$(ObjectSuffix) $(IncludePath)
$(IntermediateDirectory)/src_ilbc_lsf_interpolate_to_poly_dec.c$(DependSuffix): src/ilbc/lsf_interpolate_to_poly_dec.c
	@$(CC) $(CFLAGS) $(IncludePath) -MG -MP -MT$(IntermediateDirectory)/src_ilbc_lsf_interpolate_to_poly_dec.c$(ObjectSuffix) -MF$(IntermediateDirectory)/src_ilbc_lsf_interpolate_to_poly_dec.c$(DependSuffix) -MM src/ilbc/lsf_interpolate_to_poly_dec.c

$(IntermediateDirectory)/src_ilbc_lsf_interpolate_to_poly_dec.c$(PreprocessSuffix): src/ilbc/lsf_interpolate_to_poly_dec.c
	$(CC) $(CFLAGS) $(IncludePath) $(PreprocessOnlySwitch) $(OutputSwitch) $(IntermediateDirectory)/src_ilbc_lsf_interpolate_to_poly_dec.c$(PreprocessSuffix) src/ilbc/lsf_interpolate_to_poly_dec.c

$(IntermediateDirectory)/src_ilbc_lsf_interpolate_to_poly_enc.c$(ObjectSuffix): src/ilbc/lsf_interpolate_to_poly_enc.c $(IntermediateDirectory)/src_ilbc_lsf_interpolate_to_poly_enc.c$(DependSuffix)
	$(CC) $(SourceSwitch) "/home/fym/722/cpp-project/AudioMixer/src/ilbc/lsf_interpolate_to_poly_enc.c" $(CFLAGS) $(ObjectSwitch)$(IntermediateDirectory)/src_ilbc_lsf_interpolate_to_poly_enc.c$(ObjectSuffix) $(IncludePath)
$(IntermediateDirectory)/src_ilbc_lsf_interpolate_to_poly_enc.c$(DependSuffix): src/ilbc/lsf_interpolate_to_poly_enc.c
	@$(CC) $(CFLAGS) $(IncludePath) -MG -MP -MT$(IntermediateDirectory)/src_ilbc_lsf_interpolate_to_poly_enc.c$(ObjectSuffix) -MF$(IntermediateDirectory)/src_ilbc_lsf_interpolate_to_poly_enc.c$(DependSuffix) -MM src/ilbc/lsf_interpolate_to_poly_enc.c

$(IntermediateDirectory)/src_ilbc_lsf_interpolate_to_poly_enc.c$(PreprocessSuffix): src/ilbc/lsf_interpolate_to_poly_enc.c
	$(CC) $(CFLAGS) $(IncludePath) $(PreprocessOnlySwitch) $(OutputSwitch) $(IntermediateDirectory)/src_ilbc_lsf_interpolate_to_poly_enc.c$(PreprocessSuffix) src/ilbc/lsf_interpolate_to_poly_enc.c

$(IntermediateDirectory)/src_ilbc_lsf_to_lsp.c$(ObjectSuffix): src/ilbc/lsf_to_lsp.c $(IntermediateDirectory)/src_ilbc_lsf_to_lsp.c$(DependSuffix)
	$(CC) $(SourceSwitch) "/home/fym/722/cpp-project/AudioMixer/src/ilbc/lsf_to_lsp.c" $(CFLAGS) $(ObjectSwitch)$(IntermediateDirectory)/src_ilbc_lsf_to_lsp.c$(ObjectSuffix) $(IncludePath)
$(IntermediateDirectory)/src_ilbc_lsf_to_lsp.c$(DependSuffix): src/ilbc/lsf_to_lsp.c
	@$(CC) $(CFLAGS) $(IncludePath) -MG -MP -MT$(IntermediateDirectory)/src_ilbc_lsf_to_lsp.c$(ObjectSuffix) -MF$(IntermediateDirectory)/src_ilbc_lsf_to_lsp.c$(DependSuffix) -MM src/ilbc/lsf_to_lsp.c

$(IntermediateDirectory)/src_ilbc_lsf_to_lsp.c$(PreprocessSuffix): src/ilbc/lsf_to_lsp.c
	$(CC) $(CFLAGS) $(IncludePath) $(PreprocessOnlySwitch) $(OutputSwitch) $(IntermediateDirectory)/src_ilbc_lsf_to_lsp.c$(PreprocessSuffix) src/ilbc/lsf_to_lsp.c

$(IntermediateDirectory)/src_ilbc_lsp_to_lsf.c$(ObjectSuffix): src/ilbc/lsp_to_lsf.c $(IntermediateDirectory)/src_ilbc_lsp_to_lsf.c$(DependSuffix)
	$(CC) $(SourceSwitch) "/home/fym/722/cpp-project/AudioMixer/src/ilbc/lsp_to_lsf.c" $(CFLAGS) $(ObjectSwitch)$(IntermediateDirectory)/src_ilbc_lsp_to_lsf.c$(ObjectSuffix) $(IncludePath)
$(IntermediateDirectory)/src_ilbc_lsp_to_lsf.c$(DependSuffix): src/ilbc/lsp_to_lsf.c
	@$(CC) $(CFLAGS) $(IncludePath) -MG -MP -MT$(IntermediateDirectory)/src_ilbc_lsp_to_lsf.c$(ObjectSuffix) -MF$(IntermediateDirectory)/src_ilbc_lsp_to_lsf.c$(DependSuffix) -MM src/ilbc/lsp_to_lsf.c

$(IntermediateDirectory)/src_ilbc_lsp_to_lsf.c$(PreprocessSuffix): src/ilbc/lsp_to_lsf.c
	$(CC) $(CFLAGS) $(IncludePath) $(PreprocessOnlySwitch) $(OutputSwitch) $(IntermediateDirectory)/src_ilbc_lsp_to_lsf.c$(PreprocessSuffix) src/ilbc/lsp_to_lsf.c

$(IntermediateDirectory)/src_ilbc_min_max_operations.c$(ObjectSuffix): src/ilbc/min_max_operations.c $(IntermediateDirectory)/src_ilbc_min_max_operations.c$(DependSuffix)
	$(CC) $(SourceSwitch) "/home/fym/722/cpp-project/AudioMixer/src/ilbc/min_max_operations.c" $(CFLAGS) $(ObjectSwitch)$(IntermediateDirectory)/src_ilbc_min_max_operations.c$(ObjectSuffix) $(IncludePath)
$(IntermediateDirectory)/src_ilbc_min_max_operations.c$(DependSuffix): src/ilbc/min_max_operations.c
	@$(CC) $(CFLAGS) $(IncludePath) -MG -MP -MT$(IntermediateDirectory)/src_ilbc_min_max_operations.c$(ObjectSuffix) -MF$(IntermediateDirectory)/src_ilbc_min_max_operations.c$(DependSuffix) -MM src/ilbc/min_max_operations.c

$(IntermediateDirectory)/src_ilbc_min_max_operations.c$(PreprocessSuffix): src/ilbc/min_max_operations.c
	$(CC) $(CFLAGS) $(IncludePath) $(PreprocessOnlySwitch) $(OutputSwitch) $(IntermediateDirectory)/src_ilbc_min_max_operations.c$(PreprocessSuffix) src/ilbc/min_max_operations.c

$(IntermediateDirectory)/src_ilbc_main_test.c$(ObjectSuffix): src/ilbc/main_test.c $(IntermediateDirectory)/src_ilbc_main_test.c$(DependSuffix)
	$(CC) $(SourceSwitch) "/home/fym/722/cpp-project/AudioMixer/src/ilbc/main_test.c" $(CFLAGS) $(ObjectSwitch)$(IntermediateDirectory)/src_ilbc_main_test.c$(ObjectSuffix) $(IncludePath)
$(IntermediateDirectory)/src_ilbc_main_test.c$(DependSuffix): src/ilbc/main_test.c
	@$(CC) $(CFLAGS) $(IncludePath) -MG -MP -MT$(IntermediateDirectory)/src_ilbc_main_test.c$(ObjectSuffix) -MF$(IntermediateDirectory)/src_ilbc_main_test.c$(DependSuffix) -MM src/ilbc/main_test.c

$(IntermediateDirectory)/src_ilbc_main_test.c$(PreprocessSuffix): src/ilbc/main_test.c
	$(CC) $(CFLAGS) $(IncludePath) $(PreprocessOnlySwitch) $(OutputSwitch) $(IntermediateDirectory)/src_ilbc_main_test.c$(PreprocessSuffix) src/ilbc/main_test.c

$(IntermediateDirectory)/src_ilbc_my_corr.c$(ObjectSuffix): src/ilbc/my_corr.c $(IntermediateDirectory)/src_ilbc_my_corr.c$(DependSuffix)
	$(CC) $(SourceSwitch) "/home/fym/722/cpp-project/AudioMixer/src/ilbc/my_corr.c" $(CFLAGS) $(ObjectSwitch)$(IntermediateDirectory)/src_ilbc_my_corr.c$(ObjectSuffix) $(IncludePath)
$(IntermediateDirectory)/src_ilbc_my_corr.c$(DependSuffix): src/ilbc/my_corr.c
	@$(CC) $(CFLAGS) $(IncludePath) -MG -MP -MT$(IntermediateDirectory)/src_ilbc_my_corr.c$(ObjectSuffix) -MF$(IntermediateDirectory)/src_ilbc_my_corr.c$(DependSuffix) -MM src/ilbc/my_corr.c

$(IntermediateDirectory)/src_ilbc_my_corr.c$(PreprocessSuffix): src/ilbc/my_corr.c
	$(CC) $(CFLAGS) $(IncludePath) $(PreprocessOnlySwitch) $(OutputSwitch) $(IntermediateDirectory)/src_ilbc_my_corr.c$(PreprocessSuffix) src/ilbc/my_corr.c

$(IntermediateDirectory)/src_ilbc_constants.c$(ObjectSuffix): src/ilbc/constants.c $(IntermediateDirectory)/src_ilbc_constants.c$(DependSuffix)
	$(CC) $(SourceSwitch) "/home/fym/722/cpp-project/AudioMixer/src/ilbc/constants.c" $(CFLAGS) $(ObjectSwitch)$(IntermediateDirectory)/src_ilbc_constants.c$(ObjectSuffix) $(IncludePath)
$(IntermediateDirectory)/src_ilbc_constants.c$(DependSuffix): src/ilbc/constants.c
	@$(CC) $(CFLAGS) $(IncludePath) -MG -MP -MT$(IntermediateDirectory)/src_ilbc_constants.c$(ObjectSuffix) -MF$(IntermediateDirectory)/src_ilbc_constants.c$(DependSuffix) -MM src/ilbc/constants.c

$(IntermediateDirectory)/src_ilbc_constants.c$(PreprocessSuffix): src/ilbc/constants.c
	$(CC) $(CFLAGS) $(IncludePath) $(PreprocessOnlySwitch) $(OutputSwitch) $(IntermediateDirectory)/src_ilbc_constants.c$(PreprocessSuffix) src/ilbc/constants.c

$(IntermediateDirectory)/src_ilbc_poly_to_lsp.c$(ObjectSuffix): src/ilbc/poly_to_lsp.c $(IntermediateDirectory)/src_ilbc_poly_to_lsp.c$(DependSuffix)
	$(CC) $(SourceSwitch) "/home/fym/722/cpp-project/AudioMixer/src/ilbc/poly_to_lsp.c" $(CFLAGS) $(ObjectSwitch)$(IntermediateDirectory)/src_ilbc_poly_to_lsp.c$(ObjectSuffix) $(IncludePath)
$(IntermediateDirectory)/src_ilbc_poly_to_lsp.c$(DependSuffix): src/ilbc/poly_to_lsp.c
	@$(CC) $(CFLAGS) $(IncludePath) -MG -MP -MT$(IntermediateDirectory)/src_ilbc_poly_to_lsp.c$(ObjectSuffix) -MF$(IntermediateDirectory)/src_ilbc_poly_to_lsp.c$(DependSuffix) -MM src/ilbc/poly_to_lsp.c

$(IntermediateDirectory)/src_ilbc_poly_to_lsp.c$(PreprocessSuffix): src/ilbc/poly_to_lsp.c
	$(CC) $(CFLAGS) $(IncludePath) $(PreprocessOnlySwitch) $(OutputSwitch) $(IntermediateDirectory)/src_ilbc_poly_to_lsp.c$(PreprocessSuffix) src/ilbc/poly_to_lsp.c

$(IntermediateDirectory)/src_ilbc_poly_to_lsf.c$(ObjectSuffix): src/ilbc/poly_to_lsf.c $(IntermediateDirectory)/src_ilbc_poly_to_lsf.c$(DependSuffix)
	$(CC) $(SourceSwitch) "/home/fym/722/cpp-project/AudioMixer/src/ilbc/poly_to_lsf.c" $(CFLAGS) $(ObjectSwitch)$(IntermediateDirectory)/src_ilbc_poly_to_lsf.c$(ObjectSuffix) $(IncludePath)
$(IntermediateDirectory)/src_ilbc_poly_to_lsf.c$(DependSuffix): src/ilbc/poly_to_lsf.c
	@$(CC) $(CFLAGS) $(IncludePath) -MG -MP -MT$(IntermediateDirectory)/src_ilbc_poly_to_lsf.c$(ObjectSuffix) -MF$(IntermediateDirectory)/src_ilbc_poly_to_lsf.c$(DependSuffix) -MM src/ilbc/poly_to_lsf.c

$(IntermediateDirectory)/src_ilbc_poly_to_lsf.c$(PreprocessSuffix): src/ilbc/poly_to_lsf.c
	$(CC) $(CFLAGS) $(IncludePath) $(PreprocessOnlySwitch) $(OutputSwitch) $(IntermediateDirectory)/src_ilbc_poly_to_lsf.c$(PreprocessSuffix) src/ilbc/poly_to_lsf.c

$(IntermediateDirectory)/src_ilbc_lsf_to_poly.c$(ObjectSuffix): src/ilbc/lsf_to_poly.c $(IntermediateDirectory)/src_ilbc_lsf_to_poly.c$(DependSuffix)
	$(CC) $(SourceSwitch) "/home/fym/722/cpp-project/AudioMixer/src/ilbc/lsf_to_poly.c" $(CFLAGS) $(ObjectSwitch)$(IntermediateDirectory)/src_ilbc_lsf_to_poly.c$(ObjectSuffix) $(IncludePath)
$(IntermediateDirectory)/src_ilbc_lsf_to_poly.c$(DependSuffix): src/ilbc/lsf_to_poly.c
	@$(CC) $(CFLAGS) $(IncludePath) -MG -MP -MT$(IntermediateDirectory)/src_ilbc_lsf_to_poly.c$(ObjectSuffix) -MF$(IntermediateDirectory)/src_ilbc_lsf_to_poly.c$(DependSuffix) -MM src/ilbc/lsf_to_poly.c

$(IntermediateDirectory)/src_ilbc_lsf_to_poly.c$(PreprocessSuffix): src/ilbc/lsf_to_poly.c
	$(CC) $(CFLAGS) $(IncludePath) $(PreprocessOnlySwitch) $(OutputSwitch) $(IntermediateDirectory)/src_ilbc_lsf_to_poly.c$(PreprocessSuffix) src/ilbc/lsf_to_poly.c

$(IntermediateDirectory)/src_ilbc_real_fft.c$(ObjectSuffix): src/ilbc/real_fft.c $(IntermediateDirectory)/src_ilbc_real_fft.c$(DependSuffix)
	$(CC) $(SourceSwitch) "/home/fym/722/cpp-project/AudioMixer/src/ilbc/real_fft.c" $(CFLAGS) $(ObjectSwitch)$(IntermediateDirectory)/src_ilbc_real_fft.c$(ObjectSuffix) $(IncludePath)
$(IntermediateDirectory)/src_ilbc_real_fft.c$(DependSuffix): src/ilbc/real_fft.c
	@$(CC) $(CFLAGS) $(IncludePath) -MG -MP -MT$(IntermediateDirectory)/src_ilbc_real_fft.c$(ObjectSuffix) -MF$(IntermediateDirectory)/src_ilbc_real_fft.c$(DependSuffix) -MM src/ilbc/real_fft.c

$(IntermediateDirectory)/src_ilbc_real_fft.c$(PreprocessSuffix): src/ilbc/real_fft.c
	$(CC) $(CFLAGS) $(IncludePath) $(PreprocessOnlySwitch) $(OutputSwitch) $(IntermediateDirectory)/src_ilbc_real_fft.c$(PreprocessSuffix) src/ilbc/real_fft.c

$(IntermediateDirectory)/src_ilbc_refiner.c$(ObjectSuffix): src/ilbc/refiner.c $(IntermediateDirectory)/src_ilbc_refiner.c$(DependSuffix)
	$(CC) $(SourceSwitch) "/home/fym/722/cpp-project/AudioMixer/src/ilbc/refiner.c" $(CFLAGS) $(ObjectSwitch)$(IntermediateDirectory)/src_ilbc_refiner.c$(ObjectSuffix) $(IncludePath)
$(IntermediateDirectory)/src_ilbc_refiner.c$(DependSuffix): src/ilbc/refiner.c
	@$(CC) $(CFLAGS) $(IncludePath) -MG -MP -MT$(IntermediateDirectory)/src_ilbc_refiner.c$(ObjectSuffix) -MF$(IntermediateDirectory)/src_ilbc_refiner.c$(DependSuffix) -MM src/ilbc/refiner.c

$(IntermediateDirectory)/src_ilbc_refiner.c$(PreprocessSuffix): src/ilbc/refiner.c
	$(CC) $(CFLAGS) $(IncludePath) $(PreprocessOnlySwitch) $(OutputSwitch) $(IntermediateDirectory)/src_ilbc_refiner.c$(PreprocessSuffix) src/ilbc/refiner.c

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

$(IntermediateDirectory)/src_jrtplib_rtprandomurandom.cpp$(ObjectSuffix): src/jrtplib/rtprandomurandom.cpp $(IntermediateDirectory)/src_jrtplib_rtprandomurandom.cpp$(DependSuffix)
	$(CXX) $(IncludePCH) $(SourceSwitch) "/home/fym/722/cpp-project/AudioMixer/src/jrtplib/rtprandomurandom.cpp" $(CXXFLAGS) $(ObjectSwitch)$(IntermediateDirectory)/src_jrtplib_rtprandomurandom.cpp$(ObjectSuffix) $(IncludePath)
$(IntermediateDirectory)/src_jrtplib_rtprandomurandom.cpp$(DependSuffix): src/jrtplib/rtprandomurandom.cpp
	@$(CXX) $(CXXFLAGS) $(IncludePCH) $(IncludePath) -MG -MP -MT$(IntermediateDirectory)/src_jrtplib_rtprandomurandom.cpp$(ObjectSuffix) -MF$(IntermediateDirectory)/src_jrtplib_rtprandomurandom.cpp$(DependSuffix) -MM src/jrtplib/rtprandomurandom.cpp

$(IntermediateDirectory)/src_jrtplib_rtprandomurandom.cpp$(PreprocessSuffix): src/jrtplib/rtprandomurandom.cpp
	$(CXX) $(CXXFLAGS) $(IncludePCH) $(IncludePath) $(PreprocessOnlySwitch) $(OutputSwitch) $(IntermediateDirectory)/src_jrtplib_rtprandomurandom.cpp$(PreprocessSuffix) src/jrtplib/rtprandomurandom.cpp

$(IntermediateDirectory)/src_thread_TaskThread.cpp$(ObjectSuffix): src/thread/TaskThread.cpp $(IntermediateDirectory)/src_thread_TaskThread.cpp$(DependSuffix)
	$(CXX) $(IncludePCH) $(SourceSwitch) "/home/fym/722/cpp-project/AudioMixer/src/thread/TaskThread.cpp" $(CXXFLAGS) $(ObjectSwitch)$(IntermediateDirectory)/src_thread_TaskThread.cpp$(ObjectSuffix) $(IncludePath)
$(IntermediateDirectory)/src_thread_TaskThread.cpp$(DependSuffix): src/thread/TaskThread.cpp
	@$(CXX) $(CXXFLAGS) $(IncludePCH) $(IncludePath) -MG -MP -MT$(IntermediateDirectory)/src_thread_TaskThread.cpp$(ObjectSuffix) -MF$(IntermediateDirectory)/src_thread_TaskThread.cpp$(DependSuffix) -MM src/thread/TaskThread.cpp

$(IntermediateDirectory)/src_thread_TaskThread.cpp$(PreprocessSuffix): src/thread/TaskThread.cpp
	$(CXX) $(CXXFLAGS) $(IncludePCH) $(IncludePath) $(PreprocessOnlySwitch) $(OutputSwitch) $(IntermediateDirectory)/src_thread_TaskThread.cpp$(PreprocessSuffix) src/thread/TaskThread.cpp

$(IntermediateDirectory)/src_ilbc_dot_product_with_scale.c$(ObjectSuffix): src/ilbc/dot_product_with_scale.c $(IntermediateDirectory)/src_ilbc_dot_product_with_scale.c$(DependSuffix)
	$(CC) $(SourceSwitch) "/home/fym/722/cpp-project/AudioMixer/src/ilbc/dot_product_with_scale.c" $(CFLAGS) $(ObjectSwitch)$(IntermediateDirectory)/src_ilbc_dot_product_with_scale.c$(ObjectSuffix) $(IncludePath)
$(IntermediateDirectory)/src_ilbc_dot_product_with_scale.c$(DependSuffix): src/ilbc/dot_product_with_scale.c
	@$(CC) $(CFLAGS) $(IncludePath) -MG -MP -MT$(IntermediateDirectory)/src_ilbc_dot_product_with_scale.c$(ObjectSuffix) -MF$(IntermediateDirectory)/src_ilbc_dot_product_with_scale.c$(DependSuffix) -MM src/ilbc/dot_product_with_scale.c

$(IntermediateDirectory)/src_ilbc_dot_product_with_scale.c$(PreprocessSuffix): src/ilbc/dot_product_with_scale.c
	$(CC) $(CFLAGS) $(IncludePath) $(PreprocessOnlySwitch) $(OutputSwitch) $(IntermediateDirectory)/src_ilbc_dot_product_with_scale.c$(PreprocessSuffix) src/ilbc/dot_product_with_scale.c

$(IntermediateDirectory)/src_ilbc_sort_sq.c$(ObjectSuffix): src/ilbc/sort_sq.c $(IntermediateDirectory)/src_ilbc_sort_sq.c$(DependSuffix)
	$(CC) $(SourceSwitch) "/home/fym/722/cpp-project/AudioMixer/src/ilbc/sort_sq.c" $(CFLAGS) $(ObjectSwitch)$(IntermediateDirectory)/src_ilbc_sort_sq.c$(ObjectSuffix) $(IncludePath)
$(IntermediateDirectory)/src_ilbc_sort_sq.c$(DependSuffix): src/ilbc/sort_sq.c
	@$(CC) $(CFLAGS) $(IncludePath) -MG -MP -MT$(IntermediateDirectory)/src_ilbc_sort_sq.c$(ObjectSuffix) -MF$(IntermediateDirectory)/src_ilbc_sort_sq.c$(DependSuffix) -MM src/ilbc/sort_sq.c

$(IntermediateDirectory)/src_ilbc_sort_sq.c$(PreprocessSuffix): src/ilbc/sort_sq.c
	$(CC) $(CFLAGS) $(IncludePath) $(PreprocessOnlySwitch) $(OutputSwitch) $(IntermediateDirectory)/src_ilbc_sort_sq.c$(PreprocessSuffix) src/ilbc/sort_sq.c

$(IntermediateDirectory)/src_jrtplib_rtpudpv4transmitter.cpp$(ObjectSuffix): src/jrtplib/rtpudpv4transmitter.cpp $(IntermediateDirectory)/src_jrtplib_rtpudpv4transmitter.cpp$(DependSuffix)
	$(CXX) $(IncludePCH) $(SourceSwitch) "/home/fym/722/cpp-project/AudioMixer/src/jrtplib/rtpudpv4transmitter.cpp" $(CXXFLAGS) $(ObjectSwitch)$(IntermediateDirectory)/src_jrtplib_rtpudpv4transmitter.cpp$(ObjectSuffix) $(IncludePath)
$(IntermediateDirectory)/src_jrtplib_rtpudpv4transmitter.cpp$(DependSuffix): src/jrtplib/rtpudpv4transmitter.cpp
	@$(CXX) $(CXXFLAGS) $(IncludePCH) $(IncludePath) -MG -MP -MT$(IntermediateDirectory)/src_jrtplib_rtpudpv4transmitter.cpp$(ObjectSuffix) -MF$(IntermediateDirectory)/src_jrtplib_rtpudpv4transmitter.cpp$(DependSuffix) -MM src/jrtplib/rtpudpv4transmitter.cpp

$(IntermediateDirectory)/src_jrtplib_rtpudpv4transmitter.cpp$(PreprocessSuffix): src/jrtplib/rtpudpv4transmitter.cpp
	$(CXX) $(CXXFLAGS) $(IncludePCH) $(IncludePath) $(PreprocessOnlySwitch) $(OutputSwitch) $(IntermediateDirectory)/src_jrtplib_rtpudpv4transmitter.cpp$(PreprocessSuffix) src/jrtplib/rtpudpv4transmitter.cpp

$(IntermediateDirectory)/src_jrtplib_jmutex.cpp$(ObjectSuffix): src/jrtplib/jmutex.cpp $(IntermediateDirectory)/src_jrtplib_jmutex.cpp$(DependSuffix)
	$(CXX) $(IncludePCH) $(SourceSwitch) "/home/fym/722/cpp-project/AudioMixer/src/jrtplib/jmutex.cpp" $(CXXFLAGS) $(ObjectSwitch)$(IntermediateDirectory)/src_jrtplib_jmutex.cpp$(ObjectSuffix) $(IncludePath)
$(IntermediateDirectory)/src_jrtplib_jmutex.cpp$(DependSuffix): src/jrtplib/jmutex.cpp
	@$(CXX) $(CXXFLAGS) $(IncludePCH) $(IncludePath) -MG -MP -MT$(IntermediateDirectory)/src_jrtplib_jmutex.cpp$(ObjectSuffix) -MF$(IntermediateDirectory)/src_jrtplib_jmutex.cpp$(DependSuffix) -MM src/jrtplib/jmutex.cpp

$(IntermediateDirectory)/src_jrtplib_jmutex.cpp$(PreprocessSuffix): src/jrtplib/jmutex.cpp
	$(CXX) $(CXXFLAGS) $(IncludePCH) $(IncludePath) $(PreprocessOnlySwitch) $(OutputSwitch) $(IntermediateDirectory)/src_jrtplib_jmutex.cpp$(PreprocessSuffix) src/jrtplib/jmutex.cpp

$(IntermediateDirectory)/src_ilbc_enhancer.c$(ObjectSuffix): src/ilbc/enhancer.c $(IntermediateDirectory)/src_ilbc_enhancer.c$(DependSuffix)
	$(CC) $(SourceSwitch) "/home/fym/722/cpp-project/AudioMixer/src/ilbc/enhancer.c" $(CFLAGS) $(ObjectSwitch)$(IntermediateDirectory)/src_ilbc_enhancer.c$(ObjectSuffix) $(IncludePath)
$(IntermediateDirectory)/src_ilbc_enhancer.c$(DependSuffix): src/ilbc/enhancer.c
	@$(CC) $(CFLAGS) $(IncludePath) -MG -MP -MT$(IntermediateDirectory)/src_ilbc_enhancer.c$(ObjectSuffix) -MF$(IntermediateDirectory)/src_ilbc_enhancer.c$(DependSuffix) -MM src/ilbc/enhancer.c

$(IntermediateDirectory)/src_ilbc_enhancer.c$(PreprocessSuffix): src/ilbc/enhancer.c
	$(CC) $(CFLAGS) $(IncludePath) $(PreprocessOnlySwitch) $(OutputSwitch) $(IntermediateDirectory)/src_ilbc_enhancer.c$(PreprocessSuffix) src/ilbc/enhancer.c

$(IntermediateDirectory)/src_ilbc_comp_corr.c$(ObjectSuffix): src/ilbc/comp_corr.c $(IntermediateDirectory)/src_ilbc_comp_corr.c$(DependSuffix)
	$(CC) $(SourceSwitch) "/home/fym/722/cpp-project/AudioMixer/src/ilbc/comp_corr.c" $(CFLAGS) $(ObjectSwitch)$(IntermediateDirectory)/src_ilbc_comp_corr.c$(ObjectSuffix) $(IncludePath)
$(IntermediateDirectory)/src_ilbc_comp_corr.c$(DependSuffix): src/ilbc/comp_corr.c
	@$(CC) $(CFLAGS) $(IncludePath) -MG -MP -MT$(IntermediateDirectory)/src_ilbc_comp_corr.c$(ObjectSuffix) -MF$(IntermediateDirectory)/src_ilbc_comp_corr.c$(DependSuffix) -MM src/ilbc/comp_corr.c

$(IntermediateDirectory)/src_ilbc_comp_corr.c$(PreprocessSuffix): src/ilbc/comp_corr.c
	$(CC) $(CFLAGS) $(IncludePath) $(PreprocessOnlySwitch) $(OutputSwitch) $(IntermediateDirectory)/src_ilbc_comp_corr.c$(PreprocessSuffix) src/ilbc/comp_corr.c

$(IntermediateDirectory)/src_jrtplib_rtpsourcedata.cpp$(ObjectSuffix): src/jrtplib/rtpsourcedata.cpp $(IntermediateDirectory)/src_jrtplib_rtpsourcedata.cpp$(DependSuffix)
	$(CXX) $(IncludePCH) $(SourceSwitch) "/home/fym/722/cpp-project/AudioMixer/src/jrtplib/rtpsourcedata.cpp" $(CXXFLAGS) $(ObjectSwitch)$(IntermediateDirectory)/src_jrtplib_rtpsourcedata.cpp$(ObjectSuffix) $(IncludePath)
$(IntermediateDirectory)/src_jrtplib_rtpsourcedata.cpp$(DependSuffix): src/jrtplib/rtpsourcedata.cpp
	@$(CXX) $(CXXFLAGS) $(IncludePCH) $(IncludePath) -MG -MP -MT$(IntermediateDirectory)/src_jrtplib_rtpsourcedata.cpp$(ObjectSuffix) -MF$(IntermediateDirectory)/src_jrtplib_rtpsourcedata.cpp$(DependSuffix) -MM src/jrtplib/rtpsourcedata.cpp

$(IntermediateDirectory)/src_jrtplib_rtpsourcedata.cpp$(PreprocessSuffix): src/jrtplib/rtpsourcedata.cpp
	$(CXX) $(CXXFLAGS) $(IncludePCH) $(IncludePath) $(PreprocessOnlySwitch) $(OutputSwitch) $(IntermediateDirectory)/src_jrtplib_rtpsourcedata.cpp$(PreprocessSuffix) src/jrtplib/rtpsourcedata.cpp

$(IntermediateDirectory)/src_ilbc_pack_bits.c$(ObjectSuffix): src/ilbc/pack_bits.c $(IntermediateDirectory)/src_ilbc_pack_bits.c$(DependSuffix)
	$(CC) $(SourceSwitch) "/home/fym/722/cpp-project/AudioMixer/src/ilbc/pack_bits.c" $(CFLAGS) $(ObjectSwitch)$(IntermediateDirectory)/src_ilbc_pack_bits.c$(ObjectSuffix) $(IncludePath)
$(IntermediateDirectory)/src_ilbc_pack_bits.c$(DependSuffix): src/ilbc/pack_bits.c
	@$(CC) $(CFLAGS) $(IncludePath) -MG -MP -MT$(IntermediateDirectory)/src_ilbc_pack_bits.c$(ObjectSuffix) -MF$(IntermediateDirectory)/src_ilbc_pack_bits.c$(DependSuffix) -MM src/ilbc/pack_bits.c

$(IntermediateDirectory)/src_ilbc_pack_bits.c$(PreprocessSuffix): src/ilbc/pack_bits.c
	$(CC) $(CFLAGS) $(IncludePath) $(PreprocessOnlySwitch) $(OutputSwitch) $(IntermediateDirectory)/src_ilbc_pack_bits.c$(PreprocessSuffix) src/ilbc/pack_bits.c

$(IntermediateDirectory)/src_jrtplib_rtptcpaddress.cpp$(ObjectSuffix): src/jrtplib/rtptcpaddress.cpp $(IntermediateDirectory)/src_jrtplib_rtptcpaddress.cpp$(DependSuffix)
	$(CXX) $(IncludePCH) $(SourceSwitch) "/home/fym/722/cpp-project/AudioMixer/src/jrtplib/rtptcpaddress.cpp" $(CXXFLAGS) $(ObjectSwitch)$(IntermediateDirectory)/src_jrtplib_rtptcpaddress.cpp$(ObjectSuffix) $(IncludePath)
$(IntermediateDirectory)/src_jrtplib_rtptcpaddress.cpp$(DependSuffix): src/jrtplib/rtptcpaddress.cpp
	@$(CXX) $(CXXFLAGS) $(IncludePCH) $(IncludePath) -MG -MP -MT$(IntermediateDirectory)/src_jrtplib_rtptcpaddress.cpp$(ObjectSuffix) -MF$(IntermediateDirectory)/src_jrtplib_rtptcpaddress.cpp$(DependSuffix) -MM src/jrtplib/rtptcpaddress.cpp

$(IntermediateDirectory)/src_jrtplib_rtptcpaddress.cpp$(PreprocessSuffix): src/jrtplib/rtptcpaddress.cpp
	$(CXX) $(CXXFLAGS) $(IncludePCH) $(IncludePath) $(PreprocessOnlySwitch) $(OutputSwitch) $(IntermediateDirectory)/src_jrtplib_rtptcpaddress.cpp$(PreprocessSuffix) src/jrtplib/rtptcpaddress.cpp

$(IntermediateDirectory)/src_jrtplib_rtptimeutilities.cpp$(ObjectSuffix): src/jrtplib/rtptimeutilities.cpp $(IntermediateDirectory)/src_jrtplib_rtptimeutilities.cpp$(DependSuffix)
	$(CXX) $(IncludePCH) $(SourceSwitch) "/home/fym/722/cpp-project/AudioMixer/src/jrtplib/rtptimeutilities.cpp" $(CXXFLAGS) $(ObjectSwitch)$(IntermediateDirectory)/src_jrtplib_rtptimeutilities.cpp$(ObjectSuffix) $(IncludePath)
$(IntermediateDirectory)/src_jrtplib_rtptimeutilities.cpp$(DependSuffix): src/jrtplib/rtptimeutilities.cpp
	@$(CXX) $(CXXFLAGS) $(IncludePCH) $(IncludePath) -MG -MP -MT$(IntermediateDirectory)/src_jrtplib_rtptimeutilities.cpp$(ObjectSuffix) -MF$(IntermediateDirectory)/src_jrtplib_rtptimeutilities.cpp$(DependSuffix) -MM src/jrtplib/rtptimeutilities.cpp

$(IntermediateDirectory)/src_jrtplib_rtptimeutilities.cpp$(PreprocessSuffix): src/jrtplib/rtptimeutilities.cpp
	$(CXX) $(CXXFLAGS) $(IncludePCH) $(IncludePath) $(PreprocessOnlySwitch) $(OutputSwitch) $(IntermediateDirectory)/src_jrtplib_rtptimeutilities.cpp$(PreprocessSuffix) src/jrtplib/rtptimeutilities.cpp

$(IntermediateDirectory)/src_main_UserAgent.cpp$(ObjectSuffix): src/main/UserAgent.cpp $(IntermediateDirectory)/src_main_UserAgent.cpp$(DependSuffix)
	$(CXX) $(IncludePCH) $(SourceSwitch) "/home/fym/722/cpp-project/AudioMixer/src/main/UserAgent.cpp" $(CXXFLAGS) $(ObjectSwitch)$(IntermediateDirectory)/src_main_UserAgent.cpp$(ObjectSuffix) $(IncludePath)
$(IntermediateDirectory)/src_main_UserAgent.cpp$(DependSuffix): src/main/UserAgent.cpp
	@$(CXX) $(CXXFLAGS) $(IncludePCH) $(IncludePath) -MG -MP -MT$(IntermediateDirectory)/src_main_UserAgent.cpp$(ObjectSuffix) -MF$(IntermediateDirectory)/src_main_UserAgent.cpp$(DependSuffix) -MM src/main/UserAgent.cpp

$(IntermediateDirectory)/src_main_UserAgent.cpp$(PreprocessSuffix): src/main/UserAgent.cpp
	$(CXX) $(CXXFLAGS) $(IncludePCH) $(IncludePath) $(PreprocessOnlySwitch) $(OutputSwitch) $(IntermediateDirectory)/src_main_UserAgent.cpp$(PreprocessSuffix) src/main/UserAgent.cpp

$(IntermediateDirectory)/src_ilbc_ilbc_interface.c$(ObjectSuffix): src/ilbc/ilbc_interface.c $(IntermediateDirectory)/src_ilbc_ilbc_interface.c$(DependSuffix)
	$(CC) $(SourceSwitch) "/home/fym/722/cpp-project/AudioMixer/src/ilbc/ilbc_interface.c" $(CFLAGS) $(ObjectSwitch)$(IntermediateDirectory)/src_ilbc_ilbc_interface.c$(ObjectSuffix) $(IncludePath)
$(IntermediateDirectory)/src_ilbc_ilbc_interface.c$(DependSuffix): src/ilbc/ilbc_interface.c
	@$(CC) $(CFLAGS) $(IncludePath) -MG -MP -MT$(IntermediateDirectory)/src_ilbc_ilbc_interface.c$(ObjectSuffix) -MF$(IntermediateDirectory)/src_ilbc_ilbc_interface.c$(DependSuffix) -MM src/ilbc/ilbc_interface.c

$(IntermediateDirectory)/src_ilbc_ilbc_interface.c$(PreprocessSuffix): src/ilbc/ilbc_interface.c
	$(CC) $(CFLAGS) $(IncludePath) $(PreprocessOnlySwitch) $(OutputSwitch) $(IntermediateDirectory)/src_ilbc_ilbc_interface.c$(PreprocessSuffix) src/ilbc/ilbc_interface.c

$(IntermediateDirectory)/src_ilbc_encode.c$(ObjectSuffix): src/ilbc/encode.c $(IntermediateDirectory)/src_ilbc_encode.c$(DependSuffix)
	$(CC) $(SourceSwitch) "/home/fym/722/cpp-project/AudioMixer/src/ilbc/encode.c" $(CFLAGS) $(ObjectSwitch)$(IntermediateDirectory)/src_ilbc_encode.c$(ObjectSuffix) $(IncludePath)
$(IntermediateDirectory)/src_ilbc_encode.c$(DependSuffix): src/ilbc/encode.c
	@$(CC) $(CFLAGS) $(IncludePath) -MG -MP -MT$(IntermediateDirectory)/src_ilbc_encode.c$(ObjectSuffix) -MF$(IntermediateDirectory)/src_ilbc_encode.c$(DependSuffix) -MM src/ilbc/encode.c

$(IntermediateDirectory)/src_ilbc_encode.c$(PreprocessSuffix): src/ilbc/encode.c
	$(CC) $(CFLAGS) $(IncludePath) $(PreprocessOnlySwitch) $(OutputSwitch) $(IntermediateDirectory)/src_ilbc_encode.c$(PreprocessSuffix) src/ilbc/encode.c

$(IntermediateDirectory)/src_jrtplib_rtppollthread.cpp$(ObjectSuffix): src/jrtplib/rtppollthread.cpp $(IntermediateDirectory)/src_jrtplib_rtppollthread.cpp$(DependSuffix)
	$(CXX) $(IncludePCH) $(SourceSwitch) "/home/fym/722/cpp-project/AudioMixer/src/jrtplib/rtppollthread.cpp" $(CXXFLAGS) $(ObjectSwitch)$(IntermediateDirectory)/src_jrtplib_rtppollthread.cpp$(ObjectSuffix) $(IncludePath)
$(IntermediateDirectory)/src_jrtplib_rtppollthread.cpp$(DependSuffix): src/jrtplib/rtppollthread.cpp
	@$(CXX) $(CXXFLAGS) $(IncludePCH) $(IncludePath) -MG -MP -MT$(IntermediateDirectory)/src_jrtplib_rtppollthread.cpp$(ObjectSuffix) -MF$(IntermediateDirectory)/src_jrtplib_rtppollthread.cpp$(DependSuffix) -MM src/jrtplib/rtppollthread.cpp

$(IntermediateDirectory)/src_jrtplib_rtppollthread.cpp$(PreprocessSuffix): src/jrtplib/rtppollthread.cpp
	$(CXX) $(CXXFLAGS) $(IncludePCH) $(IncludePath) $(PreprocessOnlySwitch) $(OutputSwitch) $(IntermediateDirectory)/src_jrtplib_rtppollthread.cpp$(PreprocessSuffix) src/jrtplib/rtppollthread.cpp

$(IntermediateDirectory)/src_main_ScheduleServer.cpp$(ObjectSuffix): src/main/ScheduleServer.cpp $(IntermediateDirectory)/src_main_ScheduleServer.cpp$(DependSuffix)
	$(CXX) $(IncludePCH) $(SourceSwitch) "/home/fym/722/cpp-project/AudioMixer/src/main/ScheduleServer.cpp" $(CXXFLAGS) $(ObjectSwitch)$(IntermediateDirectory)/src_main_ScheduleServer.cpp$(ObjectSuffix) $(IncludePath)
$(IntermediateDirectory)/src_main_ScheduleServer.cpp$(DependSuffix): src/main/ScheduleServer.cpp
	@$(CXX) $(CXXFLAGS) $(IncludePCH) $(IncludePath) -MG -MP -MT$(IntermediateDirectory)/src_main_ScheduleServer.cpp$(ObjectSuffix) -MF$(IntermediateDirectory)/src_main_ScheduleServer.cpp$(DependSuffix) -MM src/main/ScheduleServer.cpp

$(IntermediateDirectory)/src_main_ScheduleServer.cpp$(PreprocessSuffix): src/main/ScheduleServer.cpp
	$(CXX) $(CXXFLAGS) $(IncludePCH) $(IncludePath) $(PreprocessOnlySwitch) $(OutputSwitch) $(IntermediateDirectory)/src_main_ScheduleServer.cpp$(PreprocessSuffix) src/main/ScheduleServer.cpp

$(IntermediateDirectory)/src_thread_AudioMixThread.cpp$(ObjectSuffix): src/thread/AudioMixThread.cpp $(IntermediateDirectory)/src_thread_AudioMixThread.cpp$(DependSuffix)
	$(CXX) $(IncludePCH) $(SourceSwitch) "/home/fym/722/cpp-project/AudioMixer/src/thread/AudioMixThread.cpp" $(CXXFLAGS) $(ObjectSwitch)$(IntermediateDirectory)/src_thread_AudioMixThread.cpp$(ObjectSuffix) $(IncludePath)
$(IntermediateDirectory)/src_thread_AudioMixThread.cpp$(DependSuffix): src/thread/AudioMixThread.cpp
	@$(CXX) $(CXXFLAGS) $(IncludePCH) $(IncludePath) -MG -MP -MT$(IntermediateDirectory)/src_thread_AudioMixThread.cpp$(ObjectSuffix) -MF$(IntermediateDirectory)/src_thread_AudioMixThread.cpp$(DependSuffix) -MM src/thread/AudioMixThread.cpp

$(IntermediateDirectory)/src_thread_AudioMixThread.cpp$(PreprocessSuffix): src/thread/AudioMixThread.cpp
	$(CXX) $(CXXFLAGS) $(IncludePCH) $(IncludePath) $(PreprocessOnlySwitch) $(OutputSwitch) $(IntermediateDirectory)/src_thread_AudioMixThread.cpp$(PreprocessSuffix) src/thread/AudioMixThread.cpp

$(IntermediateDirectory)/src_ilbc_nearest_neighbor.c$(ObjectSuffix): src/ilbc/nearest_neighbor.c $(IntermediateDirectory)/src_ilbc_nearest_neighbor.c$(DependSuffix)
	$(CC) $(SourceSwitch) "/home/fym/722/cpp-project/AudioMixer/src/ilbc/nearest_neighbor.c" $(CFLAGS) $(ObjectSwitch)$(IntermediateDirectory)/src_ilbc_nearest_neighbor.c$(ObjectSuffix) $(IncludePath)
$(IntermediateDirectory)/src_ilbc_nearest_neighbor.c$(DependSuffix): src/ilbc/nearest_neighbor.c
	@$(CC) $(CFLAGS) $(IncludePath) -MG -MP -MT$(IntermediateDirectory)/src_ilbc_nearest_neighbor.c$(ObjectSuffix) -MF$(IntermediateDirectory)/src_ilbc_nearest_neighbor.c$(DependSuffix) -MM src/ilbc/nearest_neighbor.c

$(IntermediateDirectory)/src_ilbc_nearest_neighbor.c$(PreprocessSuffix): src/ilbc/nearest_neighbor.c
	$(CC) $(CFLAGS) $(IncludePath) $(PreprocessOnlySwitch) $(OutputSwitch) $(IntermediateDirectory)/src_ilbc_nearest_neighbor.c$(PreprocessSuffix) src/ilbc/nearest_neighbor.c

$(IntermediateDirectory)/src_jrtplib_rtpsecuresession.cpp$(ObjectSuffix): src/jrtplib/rtpsecuresession.cpp $(IntermediateDirectory)/src_jrtplib_rtpsecuresession.cpp$(DependSuffix)
	$(CXX) $(IncludePCH) $(SourceSwitch) "/home/fym/722/cpp-project/AudioMixer/src/jrtplib/rtpsecuresession.cpp" $(CXXFLAGS) $(ObjectSwitch)$(IntermediateDirectory)/src_jrtplib_rtpsecuresession.cpp$(ObjectSuffix) $(IncludePath)
$(IntermediateDirectory)/src_jrtplib_rtpsecuresession.cpp$(DependSuffix): src/jrtplib/rtpsecuresession.cpp
	@$(CXX) $(CXXFLAGS) $(IncludePCH) $(IncludePath) -MG -MP -MT$(IntermediateDirectory)/src_jrtplib_rtpsecuresession.cpp$(ObjectSuffix) -MF$(IntermediateDirectory)/src_jrtplib_rtpsecuresession.cpp$(DependSuffix) -MM src/jrtplib/rtpsecuresession.cpp

$(IntermediateDirectory)/src_jrtplib_rtpsecuresession.cpp$(PreprocessSuffix): src/jrtplib/rtpsecuresession.cpp
	$(CXX) $(CXXFLAGS) $(IncludePCH) $(IncludePath) $(PreprocessOnlySwitch) $(OutputSwitch) $(IntermediateDirectory)/src_jrtplib_rtpsecuresession.cpp$(PreprocessSuffix) src/jrtplib/rtpsecuresession.cpp

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

$(IntermediateDirectory)/src_ilbc_decode.c$(ObjectSuffix): src/ilbc/decode.c $(IntermediateDirectory)/src_ilbc_decode.c$(DependSuffix)
	$(CC) $(SourceSwitch) "/home/fym/722/cpp-project/AudioMixer/src/ilbc/decode.c" $(CFLAGS) $(ObjectSwitch)$(IntermediateDirectory)/src_ilbc_decode.c$(ObjectSuffix) $(IncludePath)
$(IntermediateDirectory)/src_ilbc_decode.c$(DependSuffix): src/ilbc/decode.c
	@$(CC) $(CFLAGS) $(IncludePath) -MG -MP -MT$(IntermediateDirectory)/src_ilbc_decode.c$(ObjectSuffix) -MF$(IntermediateDirectory)/src_ilbc_decode.c$(DependSuffix) -MM src/ilbc/decode.c

$(IntermediateDirectory)/src_ilbc_decode.c$(PreprocessSuffix): src/ilbc/decode.c
	$(CC) $(CFLAGS) $(IncludePath) $(PreprocessOnlySwitch) $(OutputSwitch) $(IntermediateDirectory)/src_ilbc_decode.c$(PreprocessSuffix) src/ilbc/decode.c

$(IntermediateDirectory)/src_thread_LocalRecordThread.cpp$(ObjectSuffix): src/thread/LocalRecordThread.cpp $(IntermediateDirectory)/src_thread_LocalRecordThread.cpp$(DependSuffix)
	$(CXX) $(IncludePCH) $(SourceSwitch) "/home/fym/722/cpp-project/AudioMixer/src/thread/LocalRecordThread.cpp" $(CXXFLAGS) $(ObjectSwitch)$(IntermediateDirectory)/src_thread_LocalRecordThread.cpp$(ObjectSuffix) $(IncludePath)
$(IntermediateDirectory)/src_thread_LocalRecordThread.cpp$(DependSuffix): src/thread/LocalRecordThread.cpp
	@$(CXX) $(CXXFLAGS) $(IncludePCH) $(IncludePath) -MG -MP -MT$(IntermediateDirectory)/src_thread_LocalRecordThread.cpp$(ObjectSuffix) -MF$(IntermediateDirectory)/src_thread_LocalRecordThread.cpp$(DependSuffix) -MM src/thread/LocalRecordThread.cpp

$(IntermediateDirectory)/src_thread_LocalRecordThread.cpp$(PreprocessSuffix): src/thread/LocalRecordThread.cpp
	$(CXX) $(CXXFLAGS) $(IncludePCH) $(IncludePath) $(PreprocessOnlySwitch) $(OutputSwitch) $(IntermediateDirectory)/src_thread_LocalRecordThread.cpp$(PreprocessSuffix) src/thread/LocalRecordThread.cpp

$(IntermediateDirectory)/src_jrtplib_rtpsessionsources.cpp$(ObjectSuffix): src/jrtplib/rtpsessionsources.cpp $(IntermediateDirectory)/src_jrtplib_rtpsessionsources.cpp$(DependSuffix)
	$(CXX) $(IncludePCH) $(SourceSwitch) "/home/fym/722/cpp-project/AudioMixer/src/jrtplib/rtpsessionsources.cpp" $(CXXFLAGS) $(ObjectSwitch)$(IntermediateDirectory)/src_jrtplib_rtpsessionsources.cpp$(ObjectSuffix) $(IncludePath)
$(IntermediateDirectory)/src_jrtplib_rtpsessionsources.cpp$(DependSuffix): src/jrtplib/rtpsessionsources.cpp
	@$(CXX) $(CXXFLAGS) $(IncludePCH) $(IncludePath) -MG -MP -MT$(IntermediateDirectory)/src_jrtplib_rtpsessionsources.cpp$(ObjectSuffix) -MF$(IntermediateDirectory)/src_jrtplib_rtpsessionsources.cpp$(DependSuffix) -MM src/jrtplib/rtpsessionsources.cpp

$(IntermediateDirectory)/src_jrtplib_rtpsessionsources.cpp$(PreprocessSuffix): src/jrtplib/rtpsessionsources.cpp
	$(CXX) $(CXXFLAGS) $(IncludePCH) $(IncludePath) $(PreprocessOnlySwitch) $(OutputSwitch) $(IntermediateDirectory)/src_jrtplib_rtpsessionsources.cpp$(PreprocessSuffix) src/jrtplib/rtpsessionsources.cpp

$(IntermediateDirectory)/src_jrtplib_rtpbyteaddress.cpp$(ObjectSuffix): src/jrtplib/rtpbyteaddress.cpp $(IntermediateDirectory)/src_jrtplib_rtpbyteaddress.cpp$(DependSuffix)
	$(CXX) $(IncludePCH) $(SourceSwitch) "/home/fym/722/cpp-project/AudioMixer/src/jrtplib/rtpbyteaddress.cpp" $(CXXFLAGS) $(ObjectSwitch)$(IntermediateDirectory)/src_jrtplib_rtpbyteaddress.cpp$(ObjectSuffix) $(IncludePath)
$(IntermediateDirectory)/src_jrtplib_rtpbyteaddress.cpp$(DependSuffix): src/jrtplib/rtpbyteaddress.cpp
	@$(CXX) $(CXXFLAGS) $(IncludePCH) $(IncludePath) -MG -MP -MT$(IntermediateDirectory)/src_jrtplib_rtpbyteaddress.cpp$(ObjectSuffix) -MF$(IntermediateDirectory)/src_jrtplib_rtpbyteaddress.cpp$(DependSuffix) -MM src/jrtplib/rtpbyteaddress.cpp

$(IntermediateDirectory)/src_jrtplib_rtpbyteaddress.cpp$(PreprocessSuffix): src/jrtplib/rtpbyteaddress.cpp
	$(CXX) $(CXXFLAGS) $(IncludePCH) $(IncludePath) $(PreprocessOnlySwitch) $(OutputSwitch) $(IntermediateDirectory)/src_jrtplib_rtpbyteaddress.cpp$(PreprocessSuffix) src/jrtplib/rtpbyteaddress.cpp

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

$(IntermediateDirectory)/src_ilbc_cb_update_best_index.c$(ObjectSuffix): src/ilbc/cb_update_best_index.c $(IntermediateDirectory)/src_ilbc_cb_update_best_index.c$(DependSuffix)
	$(CC) $(SourceSwitch) "/home/fym/722/cpp-project/AudioMixer/src/ilbc/cb_update_best_index.c" $(CFLAGS) $(ObjectSwitch)$(IntermediateDirectory)/src_ilbc_cb_update_best_index.c$(ObjectSuffix) $(IncludePath)
$(IntermediateDirectory)/src_ilbc_cb_update_best_index.c$(DependSuffix): src/ilbc/cb_update_best_index.c
	@$(CC) $(CFLAGS) $(IncludePath) -MG -MP -MT$(IntermediateDirectory)/src_ilbc_cb_update_best_index.c$(ObjectSuffix) -MF$(IntermediateDirectory)/src_ilbc_cb_update_best_index.c$(DependSuffix) -MM src/ilbc/cb_update_best_index.c

$(IntermediateDirectory)/src_ilbc_cb_update_best_index.c$(PreprocessSuffix): src/ilbc/cb_update_best_index.c
	$(CC) $(CFLAGS) $(IncludePath) $(PreprocessOnlySwitch) $(OutputSwitch) $(IntermediateDirectory)/src_ilbc_cb_update_best_index.c$(PreprocessSuffix) src/ilbc/cb_update_best_index.c

$(IntermediateDirectory)/src_task_ConferenceTask.cpp$(ObjectSuffix): src/task/ConferenceTask.cpp $(IntermediateDirectory)/src_task_ConferenceTask.cpp$(DependSuffix)
	$(CXX) $(IncludePCH) $(SourceSwitch) "/home/fym/722/cpp-project/AudioMixer/src/task/ConferenceTask.cpp" $(CXXFLAGS) $(ObjectSwitch)$(IntermediateDirectory)/src_task_ConferenceTask.cpp$(ObjectSuffix) $(IncludePath)
$(IntermediateDirectory)/src_task_ConferenceTask.cpp$(DependSuffix): src/task/ConferenceTask.cpp
	@$(CXX) $(CXXFLAGS) $(IncludePCH) $(IncludePath) -MG -MP -MT$(IntermediateDirectory)/src_task_ConferenceTask.cpp$(ObjectSuffix) -MF$(IntermediateDirectory)/src_task_ConferenceTask.cpp$(DependSuffix) -MM src/task/ConferenceTask.cpp

$(IntermediateDirectory)/src_task_ConferenceTask.cpp$(PreprocessSuffix): src/task/ConferenceTask.cpp
	$(CXX) $(CXXFLAGS) $(IncludePCH) $(IncludePath) $(PreprocessOnlySwitch) $(OutputSwitch) $(IntermediateDirectory)/src_task_ConferenceTask.cpp$(PreprocessSuffix) src/task/ConferenceTask.cpp

$(IntermediateDirectory)/src_jrtplib_rtcpcompoundpacket.cpp$(ObjectSuffix): src/jrtplib/rtcpcompoundpacket.cpp $(IntermediateDirectory)/src_jrtplib_rtcpcompoundpacket.cpp$(DependSuffix)
	$(CXX) $(IncludePCH) $(SourceSwitch) "/home/fym/722/cpp-project/AudioMixer/src/jrtplib/rtcpcompoundpacket.cpp" $(CXXFLAGS) $(ObjectSwitch)$(IntermediateDirectory)/src_jrtplib_rtcpcompoundpacket.cpp$(ObjectSuffix) $(IncludePath)
$(IntermediateDirectory)/src_jrtplib_rtcpcompoundpacket.cpp$(DependSuffix): src/jrtplib/rtcpcompoundpacket.cpp
	@$(CXX) $(CXXFLAGS) $(IncludePCH) $(IncludePath) -MG -MP -MT$(IntermediateDirectory)/src_jrtplib_rtcpcompoundpacket.cpp$(ObjectSuffix) -MF$(IntermediateDirectory)/src_jrtplib_rtcpcompoundpacket.cpp$(DependSuffix) -MM src/jrtplib/rtcpcompoundpacket.cpp

$(IntermediateDirectory)/src_jrtplib_rtcpcompoundpacket.cpp$(PreprocessSuffix): src/jrtplib/rtcpcompoundpacket.cpp
	$(CXX) $(CXXFLAGS) $(IncludePCH) $(IncludePath) $(PreprocessOnlySwitch) $(OutputSwitch) $(IntermediateDirectory)/src_jrtplib_rtcpcompoundpacket.cpp$(PreprocessSuffix) src/jrtplib/rtcpcompoundpacket.cpp

$(IntermediateDirectory)/src_codec_PCMCodec.cpp$(ObjectSuffix): src/codec/PCMCodec.cpp $(IntermediateDirectory)/src_codec_PCMCodec.cpp$(DependSuffix)
	$(CXX) $(IncludePCH) $(SourceSwitch) "/home/fym/722/cpp-project/AudioMixer/src/codec/PCMCodec.cpp" $(CXXFLAGS) $(ObjectSwitch)$(IntermediateDirectory)/src_codec_PCMCodec.cpp$(ObjectSuffix) $(IncludePath)
$(IntermediateDirectory)/src_codec_PCMCodec.cpp$(DependSuffix): src/codec/PCMCodec.cpp
	@$(CXX) $(CXXFLAGS) $(IncludePCH) $(IncludePath) -MG -MP -MT$(IntermediateDirectory)/src_codec_PCMCodec.cpp$(ObjectSuffix) -MF$(IntermediateDirectory)/src_codec_PCMCodec.cpp$(DependSuffix) -MM src/codec/PCMCodec.cpp

$(IntermediateDirectory)/src_codec_PCMCodec.cpp$(PreprocessSuffix): src/codec/PCMCodec.cpp
	$(CXX) $(CXXFLAGS) $(IncludePCH) $(IncludePath) $(PreprocessOnlySwitch) $(OutputSwitch) $(IntermediateDirectory)/src_codec_PCMCodec.cpp$(PreprocessSuffix) src/codec/PCMCodec.cpp

$(IntermediateDirectory)/src_jrtplib_rtpabortdescriptors.cpp$(ObjectSuffix): src/jrtplib/rtpabortdescriptors.cpp $(IntermediateDirectory)/src_jrtplib_rtpabortdescriptors.cpp$(DependSuffix)
	$(CXX) $(IncludePCH) $(SourceSwitch) "/home/fym/722/cpp-project/AudioMixer/src/jrtplib/rtpabortdescriptors.cpp" $(CXXFLAGS) $(ObjectSwitch)$(IntermediateDirectory)/src_jrtplib_rtpabortdescriptors.cpp$(ObjectSuffix) $(IncludePath)
$(IntermediateDirectory)/src_jrtplib_rtpabortdescriptors.cpp$(DependSuffix): src/jrtplib/rtpabortdescriptors.cpp
	@$(CXX) $(CXXFLAGS) $(IncludePCH) $(IncludePath) -MG -MP -MT$(IntermediateDirectory)/src_jrtplib_rtpabortdescriptors.cpp$(ObjectSuffix) -MF$(IntermediateDirectory)/src_jrtplib_rtpabortdescriptors.cpp$(DependSuffix) -MM src/jrtplib/rtpabortdescriptors.cpp

$(IntermediateDirectory)/src_jrtplib_rtpabortdescriptors.cpp$(PreprocessSuffix): src/jrtplib/rtpabortdescriptors.cpp
	$(CXX) $(CXXFLAGS) $(IncludePCH) $(IncludePath) $(PreprocessOnlySwitch) $(OutputSwitch) $(IntermediateDirectory)/src_jrtplib_rtpabortdescriptors.cpp$(PreprocessSuffix) src/jrtplib/rtpabortdescriptors.cpp

$(IntermediateDirectory)/src_ilbc_augmented_cb_corr.c$(ObjectSuffix): src/ilbc/augmented_cb_corr.c $(IntermediateDirectory)/src_ilbc_augmented_cb_corr.c$(DependSuffix)
	$(CC) $(SourceSwitch) "/home/fym/722/cpp-project/AudioMixer/src/ilbc/augmented_cb_corr.c" $(CFLAGS) $(ObjectSwitch)$(IntermediateDirectory)/src_ilbc_augmented_cb_corr.c$(ObjectSuffix) $(IncludePath)
$(IntermediateDirectory)/src_ilbc_augmented_cb_corr.c$(DependSuffix): src/ilbc/augmented_cb_corr.c
	@$(CC) $(CFLAGS) $(IncludePath) -MG -MP -MT$(IntermediateDirectory)/src_ilbc_augmented_cb_corr.c$(ObjectSuffix) -MF$(IntermediateDirectory)/src_ilbc_augmented_cb_corr.c$(DependSuffix) -MM src/ilbc/augmented_cb_corr.c

$(IntermediateDirectory)/src_ilbc_augmented_cb_corr.c$(PreprocessSuffix): src/ilbc/augmented_cb_corr.c
	$(CC) $(CFLAGS) $(IncludePath) $(PreprocessOnlySwitch) $(OutputSwitch) $(IntermediateDirectory)/src_ilbc_augmented_cb_corr.c$(PreprocessSuffix) src/ilbc/augmented_cb_corr.c

$(IntermediateDirectory)/src_jrtplib_rtppacketbuilder.cpp$(ObjectSuffix): src/jrtplib/rtppacketbuilder.cpp $(IntermediateDirectory)/src_jrtplib_rtppacketbuilder.cpp$(DependSuffix)
	$(CXX) $(IncludePCH) $(SourceSwitch) "/home/fym/722/cpp-project/AudioMixer/src/jrtplib/rtppacketbuilder.cpp" $(CXXFLAGS) $(ObjectSwitch)$(IntermediateDirectory)/src_jrtplib_rtppacketbuilder.cpp$(ObjectSuffix) $(IncludePath)
$(IntermediateDirectory)/src_jrtplib_rtppacketbuilder.cpp$(DependSuffix): src/jrtplib/rtppacketbuilder.cpp
	@$(CXX) $(CXXFLAGS) $(IncludePCH) $(IncludePath) -MG -MP -MT$(IntermediateDirectory)/src_jrtplib_rtppacketbuilder.cpp$(ObjectSuffix) -MF$(IntermediateDirectory)/src_jrtplib_rtppacketbuilder.cpp$(DependSuffix) -MM src/jrtplib/rtppacketbuilder.cpp

$(IntermediateDirectory)/src_jrtplib_rtppacketbuilder.cpp$(PreprocessSuffix): src/jrtplib/rtppacketbuilder.cpp
	$(CXX) $(CXXFLAGS) $(IncludePCH) $(IncludePath) $(PreprocessOnlySwitch) $(OutputSwitch) $(IntermediateDirectory)/src_jrtplib_rtppacketbuilder.cpp$(PreprocessSuffix) src/jrtplib/rtppacketbuilder.cpp

$(IntermediateDirectory)/main.cpp$(ObjectSuffix): main.cpp $(IntermediateDirectory)/main.cpp$(DependSuffix)
	$(CXX) $(IncludePCH) $(SourceSwitch) "/home/fym/722/cpp-project/AudioMixer/main.cpp" $(CXXFLAGS) $(ObjectSwitch)$(IntermediateDirectory)/main.cpp$(ObjectSuffix) $(IncludePath)
$(IntermediateDirectory)/main.cpp$(DependSuffix): main.cpp
	@$(CXX) $(CXXFLAGS) $(IncludePCH) $(IncludePath) -MG -MP -MT$(IntermediateDirectory)/main.cpp$(ObjectSuffix) -MF$(IntermediateDirectory)/main.cpp$(DependSuffix) -MM main.cpp

$(IntermediateDirectory)/main.cpp$(PreprocessSuffix): main.cpp
	$(CXX) $(CXXFLAGS) $(IncludePCH) $(IncludePath) $(PreprocessOnlySwitch) $(OutputSwitch) $(IntermediateDirectory)/main.cpp$(PreprocessSuffix) main.cpp

$(IntermediateDirectory)/src_jrtplib_rtpsources.cpp$(ObjectSuffix): src/jrtplib/rtpsources.cpp $(IntermediateDirectory)/src_jrtplib_rtpsources.cpp$(DependSuffix)
	$(CXX) $(IncludePCH) $(SourceSwitch) "/home/fym/722/cpp-project/AudioMixer/src/jrtplib/rtpsources.cpp" $(CXXFLAGS) $(ObjectSwitch)$(IntermediateDirectory)/src_jrtplib_rtpsources.cpp$(ObjectSuffix) $(IncludePath)
$(IntermediateDirectory)/src_jrtplib_rtpsources.cpp$(DependSuffix): src/jrtplib/rtpsources.cpp
	@$(CXX) $(CXXFLAGS) $(IncludePCH) $(IncludePath) -MG -MP -MT$(IntermediateDirectory)/src_jrtplib_rtpsources.cpp$(ObjectSuffix) -MF$(IntermediateDirectory)/src_jrtplib_rtpsources.cpp$(DependSuffix) -MM src/jrtplib/rtpsources.cpp

$(IntermediateDirectory)/src_jrtplib_rtpsources.cpp$(PreprocessSuffix): src/jrtplib/rtpsources.cpp
	$(CXX) $(CXXFLAGS) $(IncludePCH) $(IncludePath) $(PreprocessOnlySwitch) $(OutputSwitch) $(IntermediateDirectory)/src_jrtplib_rtpsources.cpp$(PreprocessSuffix) src/jrtplib/rtpsources.cpp

$(IntermediateDirectory)/src_ilbc_interpolate.c$(ObjectSuffix): src/ilbc/interpolate.c $(IntermediateDirectory)/src_ilbc_interpolate.c$(DependSuffix)
	$(CC) $(SourceSwitch) "/home/fym/722/cpp-project/AudioMixer/src/ilbc/interpolate.c" $(CFLAGS) $(ObjectSwitch)$(IntermediateDirectory)/src_ilbc_interpolate.c$(ObjectSuffix) $(IncludePath)
$(IntermediateDirectory)/src_ilbc_interpolate.c$(DependSuffix): src/ilbc/interpolate.c
	@$(CC) $(CFLAGS) $(IncludePath) -MG -MP -MT$(IntermediateDirectory)/src_ilbc_interpolate.c$(ObjectSuffix) -MF$(IntermediateDirectory)/src_ilbc_interpolate.c$(DependSuffix) -MM src/ilbc/interpolate.c

$(IntermediateDirectory)/src_ilbc_interpolate.c$(PreprocessSuffix): src/ilbc/interpolate.c
	$(CC) $(CFLAGS) $(IncludePath) $(PreprocessOnlySwitch) $(OutputSwitch) $(IntermediateDirectory)/src_ilbc_interpolate.c$(PreprocessSuffix) src/ilbc/interpolate.c

$(IntermediateDirectory)/src_ilbc_cross_correlation.c$(ObjectSuffix): src/ilbc/cross_correlation.c $(IntermediateDirectory)/src_ilbc_cross_correlation.c$(DependSuffix)
	$(CC) $(SourceSwitch) "/home/fym/722/cpp-project/AudioMixer/src/ilbc/cross_correlation.c" $(CFLAGS) $(ObjectSwitch)$(IntermediateDirectory)/src_ilbc_cross_correlation.c$(ObjectSuffix) $(IncludePath)
$(IntermediateDirectory)/src_ilbc_cross_correlation.c$(DependSuffix): src/ilbc/cross_correlation.c
	@$(CC) $(CFLAGS) $(IncludePath) -MG -MP -MT$(IntermediateDirectory)/src_ilbc_cross_correlation.c$(ObjectSuffix) -MF$(IntermediateDirectory)/src_ilbc_cross_correlation.c$(DependSuffix) -MM src/ilbc/cross_correlation.c

$(IntermediateDirectory)/src_ilbc_cross_correlation.c$(PreprocessSuffix): src/ilbc/cross_correlation.c
	$(CC) $(CFLAGS) $(IncludePath) $(PreprocessOnlySwitch) $(OutputSwitch) $(IntermediateDirectory)/src_ilbc_cross_correlation.c$(PreprocessSuffix) src/ilbc/cross_correlation.c

$(IntermediateDirectory)/src_thread_BaseThread.cpp$(ObjectSuffix): src/thread/BaseThread.cpp $(IntermediateDirectory)/src_thread_BaseThread.cpp$(DependSuffix)
	$(CXX) $(IncludePCH) $(SourceSwitch) "/home/fym/722/cpp-project/AudioMixer/src/thread/BaseThread.cpp" $(CXXFLAGS) $(ObjectSwitch)$(IntermediateDirectory)/src_thread_BaseThread.cpp$(ObjectSuffix) $(IncludePath)
$(IntermediateDirectory)/src_thread_BaseThread.cpp$(DependSuffix): src/thread/BaseThread.cpp
	@$(CXX) $(CXXFLAGS) $(IncludePCH) $(IncludePath) -MG -MP -MT$(IntermediateDirectory)/src_thread_BaseThread.cpp$(ObjectSuffix) -MF$(IntermediateDirectory)/src_thread_BaseThread.cpp$(DependSuffix) -MM src/thread/BaseThread.cpp

$(IntermediateDirectory)/src_thread_BaseThread.cpp$(PreprocessSuffix): src/thread/BaseThread.cpp
	$(CXX) $(CXXFLAGS) $(IncludePCH) $(IncludePath) $(PreprocessOnlySwitch) $(OutputSwitch) $(IntermediateDirectory)/src_thread_BaseThread.cpp$(PreprocessSuffix) src/thread/BaseThread.cpp

$(IntermediateDirectory)/src_ilbc_cb_mem_energy_augmentation.c$(ObjectSuffix): src/ilbc/cb_mem_energy_augmentation.c $(IntermediateDirectory)/src_ilbc_cb_mem_energy_augmentation.c$(DependSuffix)
	$(CC) $(SourceSwitch) "/home/fym/722/cpp-project/AudioMixer/src/ilbc/cb_mem_energy_augmentation.c" $(CFLAGS) $(ObjectSwitch)$(IntermediateDirectory)/src_ilbc_cb_mem_energy_augmentation.c$(ObjectSuffix) $(IncludePath)
$(IntermediateDirectory)/src_ilbc_cb_mem_energy_augmentation.c$(DependSuffix): src/ilbc/cb_mem_energy_augmentation.c
	@$(CC) $(CFLAGS) $(IncludePath) -MG -MP -MT$(IntermediateDirectory)/src_ilbc_cb_mem_energy_augmentation.c$(ObjectSuffix) -MF$(IntermediateDirectory)/src_ilbc_cb_mem_energy_augmentation.c$(DependSuffix) -MM src/ilbc/cb_mem_energy_augmentation.c

$(IntermediateDirectory)/src_ilbc_cb_mem_energy_augmentation.c$(PreprocessSuffix): src/ilbc/cb_mem_energy_augmentation.c
	$(CC) $(CFLAGS) $(IncludePath) $(PreprocessOnlySwitch) $(OutputSwitch) $(IntermediateDirectory)/src_ilbc_cb_mem_energy_augmentation.c$(PreprocessSuffix) src/ilbc/cb_mem_energy_augmentation.c

$(IntermediateDirectory)/src_jrtplib_rtperrors.cpp$(ObjectSuffix): src/jrtplib/rtperrors.cpp $(IntermediateDirectory)/src_jrtplib_rtperrors.cpp$(DependSuffix)
	$(CXX) $(IncludePCH) $(SourceSwitch) "/home/fym/722/cpp-project/AudioMixer/src/jrtplib/rtperrors.cpp" $(CXXFLAGS) $(ObjectSwitch)$(IntermediateDirectory)/src_jrtplib_rtperrors.cpp$(ObjectSuffix) $(IncludePath)
$(IntermediateDirectory)/src_jrtplib_rtperrors.cpp$(DependSuffix): src/jrtplib/rtperrors.cpp
	@$(CXX) $(CXXFLAGS) $(IncludePCH) $(IncludePath) -MG -MP -MT$(IntermediateDirectory)/src_jrtplib_rtperrors.cpp$(ObjectSuffix) -MF$(IntermediateDirectory)/src_jrtplib_rtperrors.cpp$(DependSuffix) -MM src/jrtplib/rtperrors.cpp

$(IntermediateDirectory)/src_jrtplib_rtperrors.cpp$(PreprocessSuffix): src/jrtplib/rtperrors.cpp
	$(CXX) $(CXXFLAGS) $(IncludePCH) $(IncludePath) $(PreprocessOnlySwitch) $(OutputSwitch) $(IntermediateDirectory)/src_jrtplib_rtperrors.cpp$(PreprocessSuffix) src/jrtplib/rtperrors.cpp

$(IntermediateDirectory)/src_jrtplib_rtprandomrand48.cpp$(ObjectSuffix): src/jrtplib/rtprandomrand48.cpp $(IntermediateDirectory)/src_jrtplib_rtprandomrand48.cpp$(DependSuffix)
	$(CXX) $(IncludePCH) $(SourceSwitch) "/home/fym/722/cpp-project/AudioMixer/src/jrtplib/rtprandomrand48.cpp" $(CXXFLAGS) $(ObjectSwitch)$(IntermediateDirectory)/src_jrtplib_rtprandomrand48.cpp$(ObjectSuffix) $(IncludePath)
$(IntermediateDirectory)/src_jrtplib_rtprandomrand48.cpp$(DependSuffix): src/jrtplib/rtprandomrand48.cpp
	@$(CXX) $(CXXFLAGS) $(IncludePCH) $(IncludePath) -MG -MP -MT$(IntermediateDirectory)/src_jrtplib_rtprandomrand48.cpp$(ObjectSuffix) -MF$(IntermediateDirectory)/src_jrtplib_rtprandomrand48.cpp$(DependSuffix) -MM src/jrtplib/rtprandomrand48.cpp

$(IntermediateDirectory)/src_jrtplib_rtprandomrand48.cpp$(PreprocessSuffix): src/jrtplib/rtprandomrand48.cpp
	$(CXX) $(CXXFLAGS) $(IncludePCH) $(IncludePath) $(PreprocessOnlySwitch) $(OutputSwitch) $(IntermediateDirectory)/src_jrtplib_rtprandomrand48.cpp$(PreprocessSuffix) src/jrtplib/rtprandomrand48.cpp

$(IntermediateDirectory)/src_ilbc_bw_expand.c$(ObjectSuffix): src/ilbc/bw_expand.c $(IntermediateDirectory)/src_ilbc_bw_expand.c$(DependSuffix)
	$(CC) $(SourceSwitch) "/home/fym/722/cpp-project/AudioMixer/src/ilbc/bw_expand.c" $(CFLAGS) $(ObjectSwitch)$(IntermediateDirectory)/src_ilbc_bw_expand.c$(ObjectSuffix) $(IncludePath)
$(IntermediateDirectory)/src_ilbc_bw_expand.c$(DependSuffix): src/ilbc/bw_expand.c
	@$(CC) $(CFLAGS) $(IncludePath) -MG -MP -MT$(IntermediateDirectory)/src_ilbc_bw_expand.c$(ObjectSuffix) -MF$(IntermediateDirectory)/src_ilbc_bw_expand.c$(DependSuffix) -MM src/ilbc/bw_expand.c

$(IntermediateDirectory)/src_ilbc_bw_expand.c$(PreprocessSuffix): src/ilbc/bw_expand.c
	$(CC) $(CFLAGS) $(IncludePath) $(PreprocessOnlySwitch) $(OutputSwitch) $(IntermediateDirectory)/src_ilbc_bw_expand.c$(PreprocessSuffix) src/ilbc/bw_expand.c

$(IntermediateDirectory)/src_jrtplib_rtpipv6destination.cpp$(ObjectSuffix): src/jrtplib/rtpipv6destination.cpp $(IntermediateDirectory)/src_jrtplib_rtpipv6destination.cpp$(DependSuffix)
	$(CXX) $(IncludePCH) $(SourceSwitch) "/home/fym/722/cpp-project/AudioMixer/src/jrtplib/rtpipv6destination.cpp" $(CXXFLAGS) $(ObjectSwitch)$(IntermediateDirectory)/src_jrtplib_rtpipv6destination.cpp$(ObjectSuffix) $(IncludePath)
$(IntermediateDirectory)/src_jrtplib_rtpipv6destination.cpp$(DependSuffix): src/jrtplib/rtpipv6destination.cpp
	@$(CXX) $(CXXFLAGS) $(IncludePCH) $(IncludePath) -MG -MP -MT$(IntermediateDirectory)/src_jrtplib_rtpipv6destination.cpp$(ObjectSuffix) -MF$(IntermediateDirectory)/src_jrtplib_rtpipv6destination.cpp$(DependSuffix) -MM src/jrtplib/rtpipv6destination.cpp

$(IntermediateDirectory)/src_jrtplib_rtpipv6destination.cpp$(PreprocessSuffix): src/jrtplib/rtpipv6destination.cpp
	$(CXX) $(CXXFLAGS) $(IncludePCH) $(IncludePath) $(PreprocessOnlySwitch) $(OutputSwitch) $(IntermediateDirectory)/src_jrtplib_rtpipv6destination.cpp$(PreprocessSuffix) src/jrtplib/rtpipv6destination.cpp

$(IntermediateDirectory)/src_ilbc_do_plc.c$(ObjectSuffix): src/ilbc/do_plc.c $(IntermediateDirectory)/src_ilbc_do_plc.c$(DependSuffix)
	$(CC) $(SourceSwitch) "/home/fym/722/cpp-project/AudioMixer/src/ilbc/do_plc.c" $(CFLAGS) $(ObjectSwitch)$(IntermediateDirectory)/src_ilbc_do_plc.c$(ObjectSuffix) $(IncludePath)
$(IntermediateDirectory)/src_ilbc_do_plc.c$(DependSuffix): src/ilbc/do_plc.c
	@$(CC) $(CFLAGS) $(IncludePath) -MG -MP -MT$(IntermediateDirectory)/src_ilbc_do_plc.c$(ObjectSuffix) -MF$(IntermediateDirectory)/src_ilbc_do_plc.c$(DependSuffix) -MM src/ilbc/do_plc.c

$(IntermediateDirectory)/src_ilbc_do_plc.c$(PreprocessSuffix): src/ilbc/do_plc.c
	$(CC) $(CFLAGS) $(IncludePath) $(PreprocessOnlySwitch) $(OutputSwitch) $(IntermediateDirectory)/src_ilbc_do_plc.c$(PreprocessSuffix) src/ilbc/do_plc.c

$(IntermediateDirectory)/src_misc_CommandContextParse.cpp$(ObjectSuffix): src/misc/CommandContextParse.cpp $(IntermediateDirectory)/src_misc_CommandContextParse.cpp$(DependSuffix)
	$(CXX) $(IncludePCH) $(SourceSwitch) "/home/fym/722/cpp-project/AudioMixer/src/misc/CommandContextParse.cpp" $(CXXFLAGS) $(ObjectSwitch)$(IntermediateDirectory)/src_misc_CommandContextParse.cpp$(ObjectSuffix) $(IncludePath)
$(IntermediateDirectory)/src_misc_CommandContextParse.cpp$(DependSuffix): src/misc/CommandContextParse.cpp
	@$(CXX) $(CXXFLAGS) $(IncludePCH) $(IncludePath) -MG -MP -MT$(IntermediateDirectory)/src_misc_CommandContextParse.cpp$(ObjectSuffix) -MF$(IntermediateDirectory)/src_misc_CommandContextParse.cpp$(DependSuffix) -MM src/misc/CommandContextParse.cpp

$(IntermediateDirectory)/src_misc_CommandContextParse.cpp$(PreprocessSuffix): src/misc/CommandContextParse.cpp
	$(CXX) $(CXXFLAGS) $(IncludePCH) $(IncludePath) $(PreprocessOnlySwitch) $(OutputSwitch) $(IntermediateDirectory)/src_misc_CommandContextParse.cpp$(PreprocessSuffix) src/misc/CommandContextParse.cpp

$(IntermediateDirectory)/src_ilbc_gain_dequant.c$(ObjectSuffix): src/ilbc/gain_dequant.c $(IntermediateDirectory)/src_ilbc_gain_dequant.c$(DependSuffix)
	$(CC) $(SourceSwitch) "/home/fym/722/cpp-project/AudioMixer/src/ilbc/gain_dequant.c" $(CFLAGS) $(ObjectSwitch)$(IntermediateDirectory)/src_ilbc_gain_dequant.c$(ObjectSuffix) $(IncludePath)
$(IntermediateDirectory)/src_ilbc_gain_dequant.c$(DependSuffix): src/ilbc/gain_dequant.c
	@$(CC) $(CFLAGS) $(IncludePath) -MG -MP -MT$(IntermediateDirectory)/src_ilbc_gain_dequant.c$(ObjectSuffix) -MF$(IntermediateDirectory)/src_ilbc_gain_dequant.c$(DependSuffix) -MM src/ilbc/gain_dequant.c

$(IntermediateDirectory)/src_ilbc_gain_dequant.c$(PreprocessSuffix): src/ilbc/gain_dequant.c
	$(CC) $(CFLAGS) $(IncludePath) $(PreprocessOnlySwitch) $(OutputSwitch) $(IntermediateDirectory)/src_ilbc_gain_dequant.c$(PreprocessSuffix) src/ilbc/gain_dequant.c

$(IntermediateDirectory)/src_ilbc_spl_init.c$(ObjectSuffix): src/ilbc/spl_init.c $(IntermediateDirectory)/src_ilbc_spl_init.c$(DependSuffix)
	$(CC) $(SourceSwitch) "/home/fym/722/cpp-project/AudioMixer/src/ilbc/spl_init.c" $(CFLAGS) $(ObjectSwitch)$(IntermediateDirectory)/src_ilbc_spl_init.c$(ObjectSuffix) $(IncludePath)
$(IntermediateDirectory)/src_ilbc_spl_init.c$(DependSuffix): src/ilbc/spl_init.c
	@$(CC) $(CFLAGS) $(IncludePath) -MG -MP -MT$(IntermediateDirectory)/src_ilbc_spl_init.c$(ObjectSuffix) -MF$(IntermediateDirectory)/src_ilbc_spl_init.c$(DependSuffix) -MM src/ilbc/spl_init.c

$(IntermediateDirectory)/src_ilbc_spl_init.c$(PreprocessSuffix): src/ilbc/spl_init.c
	$(CC) $(CFLAGS) $(IncludePath) $(PreprocessOnlySwitch) $(OutputSwitch) $(IntermediateDirectory)/src_ilbc_spl_init.c$(PreprocessSuffix) src/ilbc/spl_init.c

$(IntermediateDirectory)/src_ilbc_state_construct.c$(ObjectSuffix): src/ilbc/state_construct.c $(IntermediateDirectory)/src_ilbc_state_construct.c$(DependSuffix)
	$(CC) $(SourceSwitch) "/home/fym/722/cpp-project/AudioMixer/src/ilbc/state_construct.c" $(CFLAGS) $(ObjectSwitch)$(IntermediateDirectory)/src_ilbc_state_construct.c$(ObjectSuffix) $(IncludePath)
$(IntermediateDirectory)/src_ilbc_state_construct.c$(DependSuffix): src/ilbc/state_construct.c
	@$(CC) $(CFLAGS) $(IncludePath) -MG -MP -MT$(IntermediateDirectory)/src_ilbc_state_construct.c$(ObjectSuffix) -MF$(IntermediateDirectory)/src_ilbc_state_construct.c$(DependSuffix) -MM src/ilbc/state_construct.c

$(IntermediateDirectory)/src_ilbc_state_construct.c$(PreprocessSuffix): src/ilbc/state_construct.c
	$(CC) $(CFLAGS) $(IncludePath) $(PreprocessOnlySwitch) $(OutputSwitch) $(IntermediateDirectory)/src_ilbc_state_construct.c$(PreprocessSuffix) src/ilbc/state_construct.c

$(IntermediateDirectory)/src_misc_MiscTool.cpp$(ObjectSuffix): src/misc/MiscTool.cpp $(IntermediateDirectory)/src_misc_MiscTool.cpp$(DependSuffix)
	$(CXX) $(IncludePCH) $(SourceSwitch) "/home/fym/722/cpp-project/AudioMixer/src/misc/MiscTool.cpp" $(CXXFLAGS) $(ObjectSwitch)$(IntermediateDirectory)/src_misc_MiscTool.cpp$(ObjectSuffix) $(IncludePath)
$(IntermediateDirectory)/src_misc_MiscTool.cpp$(DependSuffix): src/misc/MiscTool.cpp
	@$(CXX) $(CXXFLAGS) $(IncludePCH) $(IncludePath) -MG -MP -MT$(IntermediateDirectory)/src_misc_MiscTool.cpp$(ObjectSuffix) -MF$(IntermediateDirectory)/src_misc_MiscTool.cpp$(DependSuffix) -MM src/misc/MiscTool.cpp

$(IntermediateDirectory)/src_misc_MiscTool.cpp$(PreprocessSuffix): src/misc/MiscTool.cpp
	$(CXX) $(CXXFLAGS) $(IncludePCH) $(IncludePath) $(PreprocessOnlySwitch) $(OutputSwitch) $(IntermediateDirectory)/src_misc_MiscTool.cpp$(PreprocessSuffix) src/misc/MiscTool.cpp

$(IntermediateDirectory)/src_misc_ConfigBox.cpp$(ObjectSuffix): src/misc/ConfigBox.cpp $(IntermediateDirectory)/src_misc_ConfigBox.cpp$(DependSuffix)
	$(CXX) $(IncludePCH) $(SourceSwitch) "/home/fym/722/cpp-project/AudioMixer/src/misc/ConfigBox.cpp" $(CXXFLAGS) $(ObjectSwitch)$(IntermediateDirectory)/src_misc_ConfigBox.cpp$(ObjectSuffix) $(IncludePath)
$(IntermediateDirectory)/src_misc_ConfigBox.cpp$(DependSuffix): src/misc/ConfigBox.cpp
	@$(CXX) $(CXXFLAGS) $(IncludePCH) $(IncludePath) -MG -MP -MT$(IntermediateDirectory)/src_misc_ConfigBox.cpp$(ObjectSuffix) -MF$(IntermediateDirectory)/src_misc_ConfigBox.cpp$(DependSuffix) -MM src/misc/ConfigBox.cpp

$(IntermediateDirectory)/src_misc_ConfigBox.cpp$(PreprocessSuffix): src/misc/ConfigBox.cpp
	$(CXX) $(CXXFLAGS) $(IncludePCH) $(IncludePath) $(PreprocessOnlySwitch) $(OutputSwitch) $(IntermediateDirectory)/src_misc_ConfigBox.cpp$(PreprocessSuffix) src/misc/ConfigBox.cpp

$(IntermediateDirectory)/src_ilbc_smooth_out_data.c$(ObjectSuffix): src/ilbc/smooth_out_data.c $(IntermediateDirectory)/src_ilbc_smooth_out_data.c$(DependSuffix)
	$(CC) $(SourceSwitch) "/home/fym/722/cpp-project/AudioMixer/src/ilbc/smooth_out_data.c" $(CFLAGS) $(ObjectSwitch)$(IntermediateDirectory)/src_ilbc_smooth_out_data.c$(ObjectSuffix) $(IncludePath)
$(IntermediateDirectory)/src_ilbc_smooth_out_data.c$(DependSuffix): src/ilbc/smooth_out_data.c
	@$(CC) $(CFLAGS) $(IncludePath) -MG -MP -MT$(IntermediateDirectory)/src_ilbc_smooth_out_data.c$(ObjectSuffix) -MF$(IntermediateDirectory)/src_ilbc_smooth_out_data.c$(DependSuffix) -MM src/ilbc/smooth_out_data.c

$(IntermediateDirectory)/src_ilbc_smooth_out_data.c$(PreprocessSuffix): src/ilbc/smooth_out_data.c
	$(CC) $(CFLAGS) $(IncludePath) $(PreprocessOnlySwitch) $(OutputSwitch) $(IntermediateDirectory)/src_ilbc_smooth_out_data.c$(PreprocessSuffix) src/ilbc/smooth_out_data.c

$(IntermediateDirectory)/src_ilbc_vq4.c$(ObjectSuffix): src/ilbc/vq4.c $(IntermediateDirectory)/src_ilbc_vq4.c$(DependSuffix)
	$(CC) $(SourceSwitch) "/home/fym/722/cpp-project/AudioMixer/src/ilbc/vq4.c" $(CFLAGS) $(ObjectSwitch)$(IntermediateDirectory)/src_ilbc_vq4.c$(ObjectSuffix) $(IncludePath)
$(IntermediateDirectory)/src_ilbc_vq4.c$(DependSuffix): src/ilbc/vq4.c
	@$(CC) $(CFLAGS) $(IncludePath) -MG -MP -MT$(IntermediateDirectory)/src_ilbc_vq4.c$(ObjectSuffix) -MF$(IntermediateDirectory)/src_ilbc_vq4.c$(DependSuffix) -MM src/ilbc/vq4.c

$(IntermediateDirectory)/src_ilbc_vq4.c$(PreprocessSuffix): src/ilbc/vq4.c
	$(CC) $(CFLAGS) $(IncludePath) $(PreprocessOnlySwitch) $(OutputSwitch) $(IntermediateDirectory)/src_ilbc_vq4.c$(PreprocessSuffix) src/ilbc/vq4.c

$(IntermediateDirectory)/src_ilbc_frame_classify.c$(ObjectSuffix): src/ilbc/frame_classify.c $(IntermediateDirectory)/src_ilbc_frame_classify.c$(DependSuffix)
	$(CC) $(SourceSwitch) "/home/fym/722/cpp-project/AudioMixer/src/ilbc/frame_classify.c" $(CFLAGS) $(ObjectSwitch)$(IntermediateDirectory)/src_ilbc_frame_classify.c$(ObjectSuffix) $(IncludePath)
$(IntermediateDirectory)/src_ilbc_frame_classify.c$(DependSuffix): src/ilbc/frame_classify.c
	@$(CC) $(CFLAGS) $(IncludePath) -MG -MP -MT$(IntermediateDirectory)/src_ilbc_frame_classify.c$(ObjectSuffix) -MF$(IntermediateDirectory)/src_ilbc_frame_classify.c$(DependSuffix) -MM src/ilbc/frame_classify.c

$(IntermediateDirectory)/src_ilbc_frame_classify.c$(PreprocessSuffix): src/ilbc/frame_classify.c
	$(CC) $(CFLAGS) $(IncludePath) $(PreprocessOnlySwitch) $(OutputSwitch) $(IntermediateDirectory)/src_ilbc_frame_classify.c$(PreprocessSuffix) src/ilbc/frame_classify.c

$(IntermediateDirectory)/src_ilbc_abs_quant_loop.c$(ObjectSuffix): src/ilbc/abs_quant_loop.c $(IntermediateDirectory)/src_ilbc_abs_quant_loop.c$(DependSuffix)
	$(CC) $(SourceSwitch) "/home/fym/722/cpp-project/AudioMixer/src/ilbc/abs_quant_loop.c" $(CFLAGS) $(ObjectSwitch)$(IntermediateDirectory)/src_ilbc_abs_quant_loop.c$(ObjectSuffix) $(IncludePath)
$(IntermediateDirectory)/src_ilbc_abs_quant_loop.c$(DependSuffix): src/ilbc/abs_quant_loop.c
	@$(CC) $(CFLAGS) $(IncludePath) -MG -MP -MT$(IntermediateDirectory)/src_ilbc_abs_quant_loop.c$(ObjectSuffix) -MF$(IntermediateDirectory)/src_ilbc_abs_quant_loop.c$(DependSuffix) -MM src/ilbc/abs_quant_loop.c

$(IntermediateDirectory)/src_ilbc_abs_quant_loop.c$(PreprocessSuffix): src/ilbc/abs_quant_loop.c
	$(CC) $(CFLAGS) $(IncludePath) $(PreprocessOnlySwitch) $(OutputSwitch) $(IntermediateDirectory)/src_ilbc_abs_quant_loop.c$(PreprocessSuffix) src/ilbc/abs_quant_loop.c

$(IntermediateDirectory)/src_codec_iLBCCodec.cpp$(ObjectSuffix): src/codec/iLBCCodec.cpp $(IntermediateDirectory)/src_codec_iLBCCodec.cpp$(DependSuffix)
	$(CXX) $(IncludePCH) $(SourceSwitch) "/home/fym/722/cpp-project/AudioMixer/src/codec/iLBCCodec.cpp" $(CXXFLAGS) $(ObjectSwitch)$(IntermediateDirectory)/src_codec_iLBCCodec.cpp$(ObjectSuffix) $(IncludePath)
$(IntermediateDirectory)/src_codec_iLBCCodec.cpp$(DependSuffix): src/codec/iLBCCodec.cpp
	@$(CXX) $(CXXFLAGS) $(IncludePCH) $(IncludePath) -MG -MP -MT$(IntermediateDirectory)/src_codec_iLBCCodec.cpp$(ObjectSuffix) -MF$(IntermediateDirectory)/src_codec_iLBCCodec.cpp$(DependSuffix) -MM src/codec/iLBCCodec.cpp

$(IntermediateDirectory)/src_codec_iLBCCodec.cpp$(PreprocessSuffix): src/codec/iLBCCodec.cpp
	$(CXX) $(CXXFLAGS) $(IncludePCH) $(IncludePath) $(PreprocessOnlySwitch) $(OutputSwitch) $(IntermediateDirectory)/src_codec_iLBCCodec.cpp$(PreprocessSuffix) src/codec/iLBCCodec.cpp

$(IntermediateDirectory)/src_ilbc_state_search.c$(ObjectSuffix): src/ilbc/state_search.c $(IntermediateDirectory)/src_ilbc_state_search.c$(DependSuffix)
	$(CC) $(SourceSwitch) "/home/fym/722/cpp-project/AudioMixer/src/ilbc/state_search.c" $(CFLAGS) $(ObjectSwitch)$(IntermediateDirectory)/src_ilbc_state_search.c$(ObjectSuffix) $(IncludePath)
$(IntermediateDirectory)/src_ilbc_state_search.c$(DependSuffix): src/ilbc/state_search.c
	@$(CC) $(CFLAGS) $(IncludePath) -MG -MP -MT$(IntermediateDirectory)/src_ilbc_state_search.c$(ObjectSuffix) -MF$(IntermediateDirectory)/src_ilbc_state_search.c$(DependSuffix) -MM src/ilbc/state_search.c

$(IntermediateDirectory)/src_ilbc_state_search.c$(PreprocessSuffix): src/ilbc/state_search.c
	$(CC) $(CFLAGS) $(IncludePath) $(PreprocessOnlySwitch) $(OutputSwitch) $(IntermediateDirectory)/src_ilbc_state_search.c$(PreprocessSuffix) src/ilbc/state_search.c

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

$(IntermediateDirectory)/src_jrtplib_rtptcptransmitter.cpp$(ObjectSuffix): src/jrtplib/rtptcptransmitter.cpp $(IntermediateDirectory)/src_jrtplib_rtptcptransmitter.cpp$(DependSuffix)
	$(CXX) $(IncludePCH) $(SourceSwitch) "/home/fym/722/cpp-project/AudioMixer/src/jrtplib/rtptcptransmitter.cpp" $(CXXFLAGS) $(ObjectSwitch)$(IntermediateDirectory)/src_jrtplib_rtptcptransmitter.cpp$(ObjectSuffix) $(IncludePath)
$(IntermediateDirectory)/src_jrtplib_rtptcptransmitter.cpp$(DependSuffix): src/jrtplib/rtptcptransmitter.cpp
	@$(CXX) $(CXXFLAGS) $(IncludePCH) $(IncludePath) -MG -MP -MT$(IntermediateDirectory)/src_jrtplib_rtptcptransmitter.cpp$(ObjectSuffix) -MF$(IntermediateDirectory)/src_jrtplib_rtptcptransmitter.cpp$(DependSuffix) -MM src/jrtplib/rtptcptransmitter.cpp

$(IntermediateDirectory)/src_jrtplib_rtptcptransmitter.cpp$(PreprocessSuffix): src/jrtplib/rtptcptransmitter.cpp
	$(CXX) $(CXXFLAGS) $(IncludePCH) $(IncludePath) $(PreprocessOnlySwitch) $(OutputSwitch) $(IntermediateDirectory)/src_jrtplib_rtptcptransmitter.cpp$(PreprocessSuffix) src/jrtplib/rtptcptransmitter.cpp

$(IntermediateDirectory)/src_jrtplib_rtpsession.cpp$(ObjectSuffix): src/jrtplib/rtpsession.cpp $(IntermediateDirectory)/src_jrtplib_rtpsession.cpp$(DependSuffix)
	$(CXX) $(IncludePCH) $(SourceSwitch) "/home/fym/722/cpp-project/AudioMixer/src/jrtplib/rtpsession.cpp" $(CXXFLAGS) $(ObjectSwitch)$(IntermediateDirectory)/src_jrtplib_rtpsession.cpp$(ObjectSuffix) $(IncludePath)
$(IntermediateDirectory)/src_jrtplib_rtpsession.cpp$(DependSuffix): src/jrtplib/rtpsession.cpp
	@$(CXX) $(CXXFLAGS) $(IncludePCH) $(IncludePath) -MG -MP -MT$(IntermediateDirectory)/src_jrtplib_rtpsession.cpp$(ObjectSuffix) -MF$(IntermediateDirectory)/src_jrtplib_rtpsession.cpp$(DependSuffix) -MM src/jrtplib/rtpsession.cpp

$(IntermediateDirectory)/src_jrtplib_rtpsession.cpp$(PreprocessSuffix): src/jrtplib/rtpsession.cpp
	$(CXX) $(CXXFLAGS) $(IncludePCH) $(IncludePath) $(PreprocessOnlySwitch) $(OutputSwitch) $(IntermediateDirectory)/src_jrtplib_rtpsession.cpp$(PreprocessSuffix) src/jrtplib/rtpsession.cpp

$(IntermediateDirectory)/src_ilbc_complex_fft.c$(ObjectSuffix): src/ilbc/complex_fft.c $(IntermediateDirectory)/src_ilbc_complex_fft.c$(DependSuffix)
	$(CC) $(SourceSwitch) "/home/fym/722/cpp-project/AudioMixer/src/ilbc/complex_fft.c" $(CFLAGS) $(ObjectSwitch)$(IntermediateDirectory)/src_ilbc_complex_fft.c$(ObjectSuffix) $(IncludePath)
$(IntermediateDirectory)/src_ilbc_complex_fft.c$(DependSuffix): src/ilbc/complex_fft.c
	@$(CC) $(CFLAGS) $(IncludePath) -MG -MP -MT$(IntermediateDirectory)/src_ilbc_complex_fft.c$(ObjectSuffix) -MF$(IntermediateDirectory)/src_ilbc_complex_fft.c$(DependSuffix) -MM src/ilbc/complex_fft.c

$(IntermediateDirectory)/src_ilbc_complex_fft.c$(PreprocessSuffix): src/ilbc/complex_fft.c
	$(CC) $(CFLAGS) $(IncludePath) $(PreprocessOnlySwitch) $(OutputSwitch) $(IntermediateDirectory)/src_ilbc_complex_fft.c$(PreprocessSuffix) src/ilbc/complex_fft.c

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

$(IntermediateDirectory)/src_ilbc_enhancer_interface.c$(ObjectSuffix): src/ilbc/enhancer_interface.c $(IntermediateDirectory)/src_ilbc_enhancer_interface.c$(DependSuffix)
	$(CC) $(SourceSwitch) "/home/fym/722/cpp-project/AudioMixer/src/ilbc/enhancer_interface.c" $(CFLAGS) $(ObjectSwitch)$(IntermediateDirectory)/src_ilbc_enhancer_interface.c$(ObjectSuffix) $(IncludePath)
$(IntermediateDirectory)/src_ilbc_enhancer_interface.c$(DependSuffix): src/ilbc/enhancer_interface.c
	@$(CC) $(CFLAGS) $(IncludePath) -MG -MP -MT$(IntermediateDirectory)/src_ilbc_enhancer_interface.c$(ObjectSuffix) -MF$(IntermediateDirectory)/src_ilbc_enhancer_interface.c$(DependSuffix) -MM src/ilbc/enhancer_interface.c

$(IntermediateDirectory)/src_ilbc_enhancer_interface.c$(PreprocessSuffix): src/ilbc/enhancer_interface.c
	$(CC) $(CFLAGS) $(IncludePath) $(PreprocessOnlySwitch) $(OutputSwitch) $(IntermediateDirectory)/src_ilbc_enhancer_interface.c$(PreprocessSuffix) src/ilbc/enhancer_interface.c

$(IntermediateDirectory)/src_jrtplib_rtpdebug.cpp$(ObjectSuffix): src/jrtplib/rtpdebug.cpp $(IntermediateDirectory)/src_jrtplib_rtpdebug.cpp$(DependSuffix)
	$(CXX) $(IncludePCH) $(SourceSwitch) "/home/fym/722/cpp-project/AudioMixer/src/jrtplib/rtpdebug.cpp" $(CXXFLAGS) $(ObjectSwitch)$(IntermediateDirectory)/src_jrtplib_rtpdebug.cpp$(ObjectSuffix) $(IncludePath)
$(IntermediateDirectory)/src_jrtplib_rtpdebug.cpp$(DependSuffix): src/jrtplib/rtpdebug.cpp
	@$(CXX) $(CXXFLAGS) $(IncludePCH) $(IncludePath) -MG -MP -MT$(IntermediateDirectory)/src_jrtplib_rtpdebug.cpp$(ObjectSuffix) -MF$(IntermediateDirectory)/src_jrtplib_rtpdebug.cpp$(DependSuffix) -MM src/jrtplib/rtpdebug.cpp

$(IntermediateDirectory)/src_jrtplib_rtpdebug.cpp$(PreprocessSuffix): src/jrtplib/rtpdebug.cpp
	$(CXX) $(CXXFLAGS) $(IncludePCH) $(IncludePath) $(PreprocessOnlySwitch) $(OutputSwitch) $(IntermediateDirectory)/src_jrtplib_rtpdebug.cpp$(PreprocessSuffix) src/jrtplib/rtpdebug.cpp

$(IntermediateDirectory)/src_ilbc_simple_interpolate_lsf.c$(ObjectSuffix): src/ilbc/simple_interpolate_lsf.c $(IntermediateDirectory)/src_ilbc_simple_interpolate_lsf.c$(DependSuffix)
	$(CC) $(SourceSwitch) "/home/fym/722/cpp-project/AudioMixer/src/ilbc/simple_interpolate_lsf.c" $(CFLAGS) $(ObjectSwitch)$(IntermediateDirectory)/src_ilbc_simple_interpolate_lsf.c$(ObjectSuffix) $(IncludePath)
$(IntermediateDirectory)/src_ilbc_simple_interpolate_lsf.c$(DependSuffix): src/ilbc/simple_interpolate_lsf.c
	@$(CC) $(CFLAGS) $(IncludePath) -MG -MP -MT$(IntermediateDirectory)/src_ilbc_simple_interpolate_lsf.c$(ObjectSuffix) -MF$(IntermediateDirectory)/src_ilbc_simple_interpolate_lsf.c$(DependSuffix) -MM src/ilbc/simple_interpolate_lsf.c

$(IntermediateDirectory)/src_ilbc_simple_interpolate_lsf.c$(PreprocessSuffix): src/ilbc/simple_interpolate_lsf.c
	$(CC) $(CFLAGS) $(IncludePath) $(PreprocessOnlySwitch) $(OutputSwitch) $(IntermediateDirectory)/src_ilbc_simple_interpolate_lsf.c$(PreprocessSuffix) src/ilbc/simple_interpolate_lsf.c

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

$(IntermediateDirectory)/src_ilbc_lpc_encode.c$(ObjectSuffix): src/ilbc/lpc_encode.c $(IntermediateDirectory)/src_ilbc_lpc_encode.c$(DependSuffix)
	$(CC) $(SourceSwitch) "/home/fym/722/cpp-project/AudioMixer/src/ilbc/lpc_encode.c" $(CFLAGS) $(ObjectSwitch)$(IntermediateDirectory)/src_ilbc_lpc_encode.c$(ObjectSuffix) $(IncludePath)
$(IntermediateDirectory)/src_ilbc_lpc_encode.c$(DependSuffix): src/ilbc/lpc_encode.c
	@$(CC) $(CFLAGS) $(IncludePath) -MG -MP -MT$(IntermediateDirectory)/src_ilbc_lpc_encode.c$(ObjectSuffix) -MF$(IntermediateDirectory)/src_ilbc_lpc_encode.c$(DependSuffix) -MM src/ilbc/lpc_encode.c

$(IntermediateDirectory)/src_ilbc_lpc_encode.c$(PreprocessSuffix): src/ilbc/lpc_encode.c
	$(CC) $(CFLAGS) $(IncludePath) $(PreprocessOnlySwitch) $(OutputSwitch) $(IntermediateDirectory)/src_ilbc_lpc_encode.c$(PreprocessSuffix) src/ilbc/lpc_encode.c

$(IntermediateDirectory)/src_jrtplib_rtpipv4destination.cpp$(ObjectSuffix): src/jrtplib/rtpipv4destination.cpp $(IntermediateDirectory)/src_jrtplib_rtpipv4destination.cpp$(DependSuffix)
	$(CXX) $(IncludePCH) $(SourceSwitch) "/home/fym/722/cpp-project/AudioMixer/src/jrtplib/rtpipv4destination.cpp" $(CXXFLAGS) $(ObjectSwitch)$(IntermediateDirectory)/src_jrtplib_rtpipv4destination.cpp$(ObjectSuffix) $(IncludePath)
$(IntermediateDirectory)/src_jrtplib_rtpipv4destination.cpp$(DependSuffix): src/jrtplib/rtpipv4destination.cpp
	@$(CXX) $(CXXFLAGS) $(IncludePCH) $(IncludePath) -MG -MP -MT$(IntermediateDirectory)/src_jrtplib_rtpipv4destination.cpp$(ObjectSuffix) -MF$(IntermediateDirectory)/src_jrtplib_rtpipv4destination.cpp$(DependSuffix) -MM src/jrtplib/rtpipv4destination.cpp

$(IntermediateDirectory)/src_jrtplib_rtpipv4destination.cpp$(PreprocessSuffix): src/jrtplib/rtpipv4destination.cpp
	$(CXX) $(CXXFLAGS) $(IncludePCH) $(IncludePath) $(PreprocessOnlySwitch) $(OutputSwitch) $(IntermediateDirectory)/src_jrtplib_rtpipv4destination.cpp$(PreprocessSuffix) src/jrtplib/rtpipv4destination.cpp

$(IntermediateDirectory)/src_ilbc_get_sync_seq.c$(ObjectSuffix): src/ilbc/get_sync_seq.c $(IntermediateDirectory)/src_ilbc_get_sync_seq.c$(DependSuffix)
	$(CC) $(SourceSwitch) "/home/fym/722/cpp-project/AudioMixer/src/ilbc/get_sync_seq.c" $(CFLAGS) $(ObjectSwitch)$(IntermediateDirectory)/src_ilbc_get_sync_seq.c$(ObjectSuffix) $(IncludePath)
$(IntermediateDirectory)/src_ilbc_get_sync_seq.c$(DependSuffix): src/ilbc/get_sync_seq.c
	@$(CC) $(CFLAGS) $(IncludePath) -MG -MP -MT$(IntermediateDirectory)/src_ilbc_get_sync_seq.c$(ObjectSuffix) -MF$(IntermediateDirectory)/src_ilbc_get_sync_seq.c$(DependSuffix) -MM src/ilbc/get_sync_seq.c

$(IntermediateDirectory)/src_ilbc_get_sync_seq.c$(PreprocessSuffix): src/ilbc/get_sync_seq.c
	$(CC) $(CFLAGS) $(IncludePath) $(PreprocessOnlySwitch) $(OutputSwitch) $(IntermediateDirectory)/src_ilbc_get_sync_seq.c$(PreprocessSuffix) src/ilbc/get_sync_seq.c

$(IntermediateDirectory)/src_thread_PCMPlayThread.cpp$(ObjectSuffix): src/thread/PCMPlayThread.cpp $(IntermediateDirectory)/src_thread_PCMPlayThread.cpp$(DependSuffix)
	$(CXX) $(IncludePCH) $(SourceSwitch) "/home/fym/722/cpp-project/AudioMixer/src/thread/PCMPlayThread.cpp" $(CXXFLAGS) $(ObjectSwitch)$(IntermediateDirectory)/src_thread_PCMPlayThread.cpp$(ObjectSuffix) $(IncludePath)
$(IntermediateDirectory)/src_thread_PCMPlayThread.cpp$(DependSuffix): src/thread/PCMPlayThread.cpp
	@$(CXX) $(CXXFLAGS) $(IncludePCH) $(IncludePath) -MG -MP -MT$(IntermediateDirectory)/src_thread_PCMPlayThread.cpp$(ObjectSuffix) -MF$(IntermediateDirectory)/src_thread_PCMPlayThread.cpp$(DependSuffix) -MM src/thread/PCMPlayThread.cpp

$(IntermediateDirectory)/src_thread_PCMPlayThread.cpp$(PreprocessSuffix): src/thread/PCMPlayThread.cpp
	$(CXX) $(CXXFLAGS) $(IncludePCH) $(IncludePath) $(PreprocessOnlySwitch) $(OutputSwitch) $(IntermediateDirectory)/src_thread_PCMPlayThread.cpp$(PreprocessSuffix) src/thread/PCMPlayThread.cpp

$(IntermediateDirectory)/src_jrtplib_rtpipv4address.cpp$(ObjectSuffix): src/jrtplib/rtpipv4address.cpp $(IntermediateDirectory)/src_jrtplib_rtpipv4address.cpp$(DependSuffix)
	$(CXX) $(IncludePCH) $(SourceSwitch) "/home/fym/722/cpp-project/AudioMixer/src/jrtplib/rtpipv4address.cpp" $(CXXFLAGS) $(ObjectSwitch)$(IntermediateDirectory)/src_jrtplib_rtpipv4address.cpp$(ObjectSuffix) $(IncludePath)
$(IntermediateDirectory)/src_jrtplib_rtpipv4address.cpp$(DependSuffix): src/jrtplib/rtpipv4address.cpp
	@$(CXX) $(CXXFLAGS) $(IncludePCH) $(IncludePath) -MG -MP -MT$(IntermediateDirectory)/src_jrtplib_rtpipv4address.cpp$(ObjectSuffix) -MF$(IntermediateDirectory)/src_jrtplib_rtpipv4address.cpp$(DependSuffix) -MM src/jrtplib/rtpipv4address.cpp

$(IntermediateDirectory)/src_jrtplib_rtpipv4address.cpp$(PreprocessSuffix): src/jrtplib/rtpipv4address.cpp
	$(CXX) $(CXXFLAGS) $(IncludePCH) $(IncludePath) $(PreprocessOnlySwitch) $(OutputSwitch) $(IntermediateDirectory)/src_jrtplib_rtpipv4address.cpp$(PreprocessSuffix) src/jrtplib/rtpipv4address.cpp

$(IntermediateDirectory)/src_jrtplib_rtcpsrpacket.cpp$(ObjectSuffix): src/jrtplib/rtcpsrpacket.cpp $(IntermediateDirectory)/src_jrtplib_rtcpsrpacket.cpp$(DependSuffix)
	$(CXX) $(IncludePCH) $(SourceSwitch) "/home/fym/722/cpp-project/AudioMixer/src/jrtplib/rtcpsrpacket.cpp" $(CXXFLAGS) $(ObjectSwitch)$(IntermediateDirectory)/src_jrtplib_rtcpsrpacket.cpp$(ObjectSuffix) $(IncludePath)
$(IntermediateDirectory)/src_jrtplib_rtcpsrpacket.cpp$(DependSuffix): src/jrtplib/rtcpsrpacket.cpp
	@$(CXX) $(CXXFLAGS) $(IncludePCH) $(IncludePath) -MG -MP -MT$(IntermediateDirectory)/src_jrtplib_rtcpsrpacket.cpp$(ObjectSuffix) -MF$(IntermediateDirectory)/src_jrtplib_rtcpsrpacket.cpp$(DependSuffix) -MM src/jrtplib/rtcpsrpacket.cpp

$(IntermediateDirectory)/src_jrtplib_rtcpsrpacket.cpp$(PreprocessSuffix): src/jrtplib/rtcpsrpacket.cpp
	$(CXX) $(CXXFLAGS) $(IncludePCH) $(IncludePath) $(PreprocessOnlySwitch) $(OutputSwitch) $(IntermediateDirectory)/src_jrtplib_rtcpsrpacket.cpp$(PreprocessSuffix) src/jrtplib/rtcpsrpacket.cpp

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

$(IntermediateDirectory)/src_ilbc_init_decode.c$(ObjectSuffix): src/ilbc/init_decode.c $(IntermediateDirectory)/src_ilbc_init_decode.c$(DependSuffix)
	$(CC) $(SourceSwitch) "/home/fym/722/cpp-project/AudioMixer/src/ilbc/init_decode.c" $(CFLAGS) $(ObjectSwitch)$(IntermediateDirectory)/src_ilbc_init_decode.c$(ObjectSuffix) $(IncludePath)
$(IntermediateDirectory)/src_ilbc_init_decode.c$(DependSuffix): src/ilbc/init_decode.c
	@$(CC) $(CFLAGS) $(IncludePath) -MG -MP -MT$(IntermediateDirectory)/src_ilbc_init_decode.c$(ObjectSuffix) -MF$(IntermediateDirectory)/src_ilbc_init_decode.c$(DependSuffix) -MM src/ilbc/init_decode.c

$(IntermediateDirectory)/src_ilbc_init_decode.c$(PreprocessSuffix): src/ilbc/init_decode.c
	$(CC) $(CFLAGS) $(IncludePath) $(PreprocessOnlySwitch) $(OutputSwitch) $(IntermediateDirectory)/src_ilbc_init_decode.c$(PreprocessSuffix) src/ilbc/init_decode.c

$(IntermediateDirectory)/src_jrtplib_rtpcollisionlist.cpp$(ObjectSuffix): src/jrtplib/rtpcollisionlist.cpp $(IntermediateDirectory)/src_jrtplib_rtpcollisionlist.cpp$(DependSuffix)
	$(CXX) $(IncludePCH) $(SourceSwitch) "/home/fym/722/cpp-project/AudioMixer/src/jrtplib/rtpcollisionlist.cpp" $(CXXFLAGS) $(ObjectSwitch)$(IntermediateDirectory)/src_jrtplib_rtpcollisionlist.cpp$(ObjectSuffix) $(IncludePath)
$(IntermediateDirectory)/src_jrtplib_rtpcollisionlist.cpp$(DependSuffix): src/jrtplib/rtpcollisionlist.cpp
	@$(CXX) $(CXXFLAGS) $(IncludePCH) $(IncludePath) -MG -MP -MT$(IntermediateDirectory)/src_jrtplib_rtpcollisionlist.cpp$(ObjectSuffix) -MF$(IntermediateDirectory)/src_jrtplib_rtpcollisionlist.cpp$(DependSuffix) -MM src/jrtplib/rtpcollisionlist.cpp

$(IntermediateDirectory)/src_jrtplib_rtpcollisionlist.cpp$(PreprocessSuffix): src/jrtplib/rtpcollisionlist.cpp
	$(CXX) $(CXXFLAGS) $(IncludePCH) $(IncludePath) $(PreprocessOnlySwitch) $(OutputSwitch) $(IntermediateDirectory)/src_jrtplib_rtpcollisionlist.cpp$(PreprocessSuffix) src/jrtplib/rtpcollisionlist.cpp

$(IntermediateDirectory)/src_ilbc_division_operations.c$(ObjectSuffix): src/ilbc/division_operations.c $(IntermediateDirectory)/src_ilbc_division_operations.c$(DependSuffix)
	$(CC) $(SourceSwitch) "/home/fym/722/cpp-project/AudioMixer/src/ilbc/division_operations.c" $(CFLAGS) $(ObjectSwitch)$(IntermediateDirectory)/src_ilbc_division_operations.c$(ObjectSuffix) $(IncludePath)
$(IntermediateDirectory)/src_ilbc_division_operations.c$(DependSuffix): src/ilbc/division_operations.c
	@$(CC) $(CFLAGS) $(IncludePath) -MG -MP -MT$(IntermediateDirectory)/src_ilbc_division_operations.c$(ObjectSuffix) -MF$(IntermediateDirectory)/src_ilbc_division_operations.c$(DependSuffix) -MM src/ilbc/division_operations.c

$(IntermediateDirectory)/src_ilbc_division_operations.c$(PreprocessSuffix): src/ilbc/division_operations.c
	$(CC) $(CFLAGS) $(IncludePath) $(PreprocessOnlySwitch) $(OutputSwitch) $(IntermediateDirectory)/src_ilbc_division_operations.c$(PreprocessSuffix) src/ilbc/division_operations.c

$(IntermediateDirectory)/src_ilbc_vector_scaling_operations.c$(ObjectSuffix): src/ilbc/vector_scaling_operations.c $(IntermediateDirectory)/src_ilbc_vector_scaling_operations.c$(DependSuffix)
	$(CC) $(SourceSwitch) "/home/fym/722/cpp-project/AudioMixer/src/ilbc/vector_scaling_operations.c" $(CFLAGS) $(ObjectSwitch)$(IntermediateDirectory)/src_ilbc_vector_scaling_operations.c$(ObjectSuffix) $(IncludePath)
$(IntermediateDirectory)/src_ilbc_vector_scaling_operations.c$(DependSuffix): src/ilbc/vector_scaling_operations.c
	@$(CC) $(CFLAGS) $(IncludePath) -MG -MP -MT$(IntermediateDirectory)/src_ilbc_vector_scaling_operations.c$(ObjectSuffix) -MF$(IntermediateDirectory)/src_ilbc_vector_scaling_operations.c$(DependSuffix) -MM src/ilbc/vector_scaling_operations.c

$(IntermediateDirectory)/src_ilbc_vector_scaling_operations.c$(PreprocessSuffix): src/ilbc/vector_scaling_operations.c
	$(CC) $(CFLAGS) $(IncludePath) $(PreprocessOnlySwitch) $(OutputSwitch) $(IntermediateDirectory)/src_ilbc_vector_scaling_operations.c$(PreprocessSuffix) src/ilbc/vector_scaling_operations.c

$(IntermediateDirectory)/src_ilbc_levinson_durbin.c$(ObjectSuffix): src/ilbc/levinson_durbin.c $(IntermediateDirectory)/src_ilbc_levinson_durbin.c$(DependSuffix)
	$(CC) $(SourceSwitch) "/home/fym/722/cpp-project/AudioMixer/src/ilbc/levinson_durbin.c" $(CFLAGS) $(ObjectSwitch)$(IntermediateDirectory)/src_ilbc_levinson_durbin.c$(ObjectSuffix) $(IncludePath)
$(IntermediateDirectory)/src_ilbc_levinson_durbin.c$(DependSuffix): src/ilbc/levinson_durbin.c
	@$(CC) $(CFLAGS) $(IncludePath) -MG -MP -MT$(IntermediateDirectory)/src_ilbc_levinson_durbin.c$(ObjectSuffix) -MF$(IntermediateDirectory)/src_ilbc_levinson_durbin.c$(DependSuffix) -MM src/ilbc/levinson_durbin.c

$(IntermediateDirectory)/src_ilbc_levinson_durbin.c$(PreprocessSuffix): src/ilbc/levinson_durbin.c
	$(CC) $(CFLAGS) $(IncludePath) $(PreprocessOnlySwitch) $(OutputSwitch) $(IntermediateDirectory)/src_ilbc_levinson_durbin.c$(PreprocessSuffix) src/ilbc/levinson_durbin.c

$(IntermediateDirectory)/src_jrtplib_rtcprrpacket.cpp$(ObjectSuffix): src/jrtplib/rtcprrpacket.cpp $(IntermediateDirectory)/src_jrtplib_rtcprrpacket.cpp$(DependSuffix)
	$(CXX) $(IncludePCH) $(SourceSwitch) "/home/fym/722/cpp-project/AudioMixer/src/jrtplib/rtcprrpacket.cpp" $(CXXFLAGS) $(ObjectSwitch)$(IntermediateDirectory)/src_jrtplib_rtcprrpacket.cpp$(ObjectSuffix) $(IncludePath)
$(IntermediateDirectory)/src_jrtplib_rtcprrpacket.cpp$(DependSuffix): src/jrtplib/rtcprrpacket.cpp
	@$(CXX) $(CXXFLAGS) $(IncludePCH) $(IncludePath) -MG -MP -MT$(IntermediateDirectory)/src_jrtplib_rtcprrpacket.cpp$(ObjectSuffix) -MF$(IntermediateDirectory)/src_jrtplib_rtcprrpacket.cpp$(DependSuffix) -MM src/jrtplib/rtcprrpacket.cpp

$(IntermediateDirectory)/src_jrtplib_rtcprrpacket.cpp$(PreprocessSuffix): src/jrtplib/rtcprrpacket.cpp
	$(CXX) $(CXXFLAGS) $(IncludePCH) $(IncludePath) $(PreprocessOnlySwitch) $(OutputSwitch) $(IntermediateDirectory)/src_jrtplib_rtcprrpacket.cpp$(PreprocessSuffix) src/jrtplib/rtcprrpacket.cpp

$(IntermediateDirectory)/src_ilbc_split_vq.c$(ObjectSuffix): src/ilbc/split_vq.c $(IntermediateDirectory)/src_ilbc_split_vq.c$(DependSuffix)
	$(CC) $(SourceSwitch) "/home/fym/722/cpp-project/AudioMixer/src/ilbc/split_vq.c" $(CFLAGS) $(ObjectSwitch)$(IntermediateDirectory)/src_ilbc_split_vq.c$(ObjectSuffix) $(IncludePath)
$(IntermediateDirectory)/src_ilbc_split_vq.c$(DependSuffix): src/ilbc/split_vq.c
	@$(CC) $(CFLAGS) $(IncludePath) -MG -MP -MT$(IntermediateDirectory)/src_ilbc_split_vq.c$(ObjectSuffix) -MF$(IntermediateDirectory)/src_ilbc_split_vq.c$(DependSuffix) -MM src/ilbc/split_vq.c

$(IntermediateDirectory)/src_ilbc_split_vq.c$(PreprocessSuffix): src/ilbc/split_vq.c
	$(CC) $(CFLAGS) $(IncludePath) $(PreprocessOnlySwitch) $(OutputSwitch) $(IntermediateDirectory)/src_ilbc_split_vq.c$(PreprocessSuffix) src/ilbc/split_vq.c

$(IntermediateDirectory)/src_jrtplib_rtcppacketbuilder.cpp$(ObjectSuffix): src/jrtplib/rtcppacketbuilder.cpp $(IntermediateDirectory)/src_jrtplib_rtcppacketbuilder.cpp$(DependSuffix)
	$(CXX) $(IncludePCH) $(SourceSwitch) "/home/fym/722/cpp-project/AudioMixer/src/jrtplib/rtcppacketbuilder.cpp" $(CXXFLAGS) $(ObjectSwitch)$(IntermediateDirectory)/src_jrtplib_rtcppacketbuilder.cpp$(ObjectSuffix) $(IncludePath)
$(IntermediateDirectory)/src_jrtplib_rtcppacketbuilder.cpp$(DependSuffix): src/jrtplib/rtcppacketbuilder.cpp
	@$(CXX) $(CXXFLAGS) $(IncludePCH) $(IncludePath) -MG -MP -MT$(IntermediateDirectory)/src_jrtplib_rtcppacketbuilder.cpp$(ObjectSuffix) -MF$(IntermediateDirectory)/src_jrtplib_rtcppacketbuilder.cpp$(DependSuffix) -MM src/jrtplib/rtcppacketbuilder.cpp

$(IntermediateDirectory)/src_jrtplib_rtcppacketbuilder.cpp$(PreprocessSuffix): src/jrtplib/rtcppacketbuilder.cpp
	$(CXX) $(CXXFLAGS) $(IncludePCH) $(IncludePath) $(PreprocessOnlySwitch) $(OutputSwitch) $(IntermediateDirectory)/src_jrtplib_rtcppacketbuilder.cpp$(PreprocessSuffix) src/jrtplib/rtcppacketbuilder.cpp

$(IntermediateDirectory)/src_jrtplib_rtcppacket.cpp$(ObjectSuffix): src/jrtplib/rtcppacket.cpp $(IntermediateDirectory)/src_jrtplib_rtcppacket.cpp$(DependSuffix)
	$(CXX) $(IncludePCH) $(SourceSwitch) "/home/fym/722/cpp-project/AudioMixer/src/jrtplib/rtcppacket.cpp" $(CXXFLAGS) $(ObjectSwitch)$(IntermediateDirectory)/src_jrtplib_rtcppacket.cpp$(ObjectSuffix) $(IncludePath)
$(IntermediateDirectory)/src_jrtplib_rtcppacket.cpp$(DependSuffix): src/jrtplib/rtcppacket.cpp
	@$(CXX) $(CXXFLAGS) $(IncludePCH) $(IncludePath) -MG -MP -MT$(IntermediateDirectory)/src_jrtplib_rtcppacket.cpp$(ObjectSuffix) -MF$(IntermediateDirectory)/src_jrtplib_rtcppacket.cpp$(DependSuffix) -MM src/jrtplib/rtcppacket.cpp

$(IntermediateDirectory)/src_jrtplib_rtcppacket.cpp$(PreprocessSuffix): src/jrtplib/rtcppacket.cpp
	$(CXX) $(CXXFLAGS) $(IncludePCH) $(IncludePath) $(PreprocessOnlySwitch) $(OutputSwitch) $(IntermediateDirectory)/src_jrtplib_rtcppacket.cpp$(PreprocessSuffix) src/jrtplib/rtcppacket.cpp

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

$(IntermediateDirectory)/src_jrtplib_rtcpapppacket.cpp$(ObjectSuffix): src/jrtplib/rtcpapppacket.cpp $(IntermediateDirectory)/src_jrtplib_rtcpapppacket.cpp$(DependSuffix)
	$(CXX) $(IncludePCH) $(SourceSwitch) "/home/fym/722/cpp-project/AudioMixer/src/jrtplib/rtcpapppacket.cpp" $(CXXFLAGS) $(ObjectSwitch)$(IntermediateDirectory)/src_jrtplib_rtcpapppacket.cpp$(ObjectSuffix) $(IncludePath)
$(IntermediateDirectory)/src_jrtplib_rtcpapppacket.cpp$(DependSuffix): src/jrtplib/rtcpapppacket.cpp
	@$(CXX) $(CXXFLAGS) $(IncludePCH) $(IncludePath) -MG -MP -MT$(IntermediateDirectory)/src_jrtplib_rtcpapppacket.cpp$(ObjectSuffix) -MF$(IntermediateDirectory)/src_jrtplib_rtcpapppacket.cpp$(DependSuffix) -MM src/jrtplib/rtcpapppacket.cpp

$(IntermediateDirectory)/src_jrtplib_rtcpapppacket.cpp$(PreprocessSuffix): src/jrtplib/rtcpapppacket.cpp
	$(CXX) $(CXXFLAGS) $(IncludePCH) $(IncludePath) $(PreprocessOnlySwitch) $(OutputSwitch) $(IntermediateDirectory)/src_jrtplib_rtcpapppacket.cpp$(PreprocessSuffix) src/jrtplib/rtcpapppacket.cpp

$(IntermediateDirectory)/src_jrtplib_jthread.cpp$(ObjectSuffix): src/jrtplib/jthread.cpp $(IntermediateDirectory)/src_jrtplib_jthread.cpp$(DependSuffix)
	$(CXX) $(IncludePCH) $(SourceSwitch) "/home/fym/722/cpp-project/AudioMixer/src/jrtplib/jthread.cpp" $(CXXFLAGS) $(ObjectSwitch)$(IntermediateDirectory)/src_jrtplib_jthread.cpp$(ObjectSuffix) $(IncludePath)
$(IntermediateDirectory)/src_jrtplib_jthread.cpp$(DependSuffix): src/jrtplib/jthread.cpp
	@$(CXX) $(CXXFLAGS) $(IncludePCH) $(IncludePath) -MG -MP -MT$(IntermediateDirectory)/src_jrtplib_jthread.cpp$(ObjectSuffix) -MF$(IntermediateDirectory)/src_jrtplib_jthread.cpp$(DependSuffix) -MM src/jrtplib/jthread.cpp

$(IntermediateDirectory)/src_jrtplib_jthread.cpp$(PreprocessSuffix): src/jrtplib/jthread.cpp
	$(CXX) $(CXXFLAGS) $(IncludePCH) $(IncludePath) $(PreprocessOnlySwitch) $(OutputSwitch) $(IntermediateDirectory)/src_jrtplib_jthread.cpp$(PreprocessSuffix) src/jrtplib/jthread.cpp

$(IntermediateDirectory)/src_thread_AudioSendThread.cpp$(ObjectSuffix): src/thread/AudioSendThread.cpp $(IntermediateDirectory)/src_thread_AudioSendThread.cpp$(DependSuffix)
	$(CXX) $(IncludePCH) $(SourceSwitch) "/home/fym/722/cpp-project/AudioMixer/src/thread/AudioSendThread.cpp" $(CXXFLAGS) $(ObjectSwitch)$(IntermediateDirectory)/src_thread_AudioSendThread.cpp$(ObjectSuffix) $(IncludePath)
$(IntermediateDirectory)/src_thread_AudioSendThread.cpp$(DependSuffix): src/thread/AudioSendThread.cpp
	@$(CXX) $(CXXFLAGS) $(IncludePCH) $(IncludePath) -MG -MP -MT$(IntermediateDirectory)/src_thread_AudioSendThread.cpp$(ObjectSuffix) -MF$(IntermediateDirectory)/src_thread_AudioSendThread.cpp$(DependSuffix) -MM src/thread/AudioSendThread.cpp

$(IntermediateDirectory)/src_thread_AudioSendThread.cpp$(PreprocessSuffix): src/thread/AudioSendThread.cpp
	$(CXX) $(CXXFLAGS) $(IncludePCH) $(IncludePath) $(PreprocessOnlySwitch) $(OutputSwitch) $(IntermediateDirectory)/src_thread_AudioSendThread.cpp$(PreprocessSuffix) src/thread/AudioSendThread.cpp

$(IntermediateDirectory)/src_module_JRTPSession.cpp$(ObjectSuffix): src/module/JRTPSession.cpp $(IntermediateDirectory)/src_module_JRTPSession.cpp$(DependSuffix)
	$(CXX) $(IncludePCH) $(SourceSwitch) "/home/fym/722/cpp-project/AudioMixer/src/module/JRTPSession.cpp" $(CXXFLAGS) $(ObjectSwitch)$(IntermediateDirectory)/src_module_JRTPSession.cpp$(ObjectSuffix) $(IncludePath)
$(IntermediateDirectory)/src_module_JRTPSession.cpp$(DependSuffix): src/module/JRTPSession.cpp
	@$(CXX) $(CXXFLAGS) $(IncludePCH) $(IncludePath) -MG -MP -MT$(IntermediateDirectory)/src_module_JRTPSession.cpp$(ObjectSuffix) -MF$(IntermediateDirectory)/src_module_JRTPSession.cpp$(DependSuffix) -MM src/module/JRTPSession.cpp

$(IntermediateDirectory)/src_module_JRTPSession.cpp$(PreprocessSuffix): src/module/JRTPSession.cpp
	$(CXX) $(CXXFLAGS) $(IncludePCH) $(IncludePath) $(PreprocessOnlySwitch) $(OutputSwitch) $(IntermediateDirectory)/src_module_JRTPSession.cpp$(PreprocessSuffix) src/module/JRTPSession.cpp

$(IntermediateDirectory)/src_ilbc_enh_upsample.c$(ObjectSuffix): src/ilbc/enh_upsample.c $(IntermediateDirectory)/src_ilbc_enh_upsample.c$(DependSuffix)
	$(CC) $(SourceSwitch) "/home/fym/722/cpp-project/AudioMixer/src/ilbc/enh_upsample.c" $(CFLAGS) $(ObjectSwitch)$(IntermediateDirectory)/src_ilbc_enh_upsample.c$(ObjectSuffix) $(IncludePath)
$(IntermediateDirectory)/src_ilbc_enh_upsample.c$(DependSuffix): src/ilbc/enh_upsample.c
	@$(CC) $(CFLAGS) $(IncludePath) -MG -MP -MT$(IntermediateDirectory)/src_ilbc_enh_upsample.c$(ObjectSuffix) -MF$(IntermediateDirectory)/src_ilbc_enh_upsample.c$(DependSuffix) -MM src/ilbc/enh_upsample.c

$(IntermediateDirectory)/src_ilbc_enh_upsample.c$(PreprocessSuffix): src/ilbc/enh_upsample.c
	$(CC) $(CFLAGS) $(IncludePath) $(PreprocessOnlySwitch) $(OutputSwitch) $(IntermediateDirectory)/src_ilbc_enh_upsample.c$(PreprocessSuffix) src/ilbc/enh_upsample.c

$(IntermediateDirectory)/src_ilbc_window32_w32.c$(ObjectSuffix): src/ilbc/window32_w32.c $(IntermediateDirectory)/src_ilbc_window32_w32.c$(DependSuffix)
	$(CC) $(SourceSwitch) "/home/fym/722/cpp-project/AudioMixer/src/ilbc/window32_w32.c" $(CFLAGS) $(ObjectSwitch)$(IntermediateDirectory)/src_ilbc_window32_w32.c$(ObjectSuffix) $(IncludePath)
$(IntermediateDirectory)/src_ilbc_window32_w32.c$(DependSuffix): src/ilbc/window32_w32.c
	@$(CC) $(CFLAGS) $(IncludePath) -MG -MP -MT$(IntermediateDirectory)/src_ilbc_window32_w32.c$(ObjectSuffix) -MF$(IntermediateDirectory)/src_ilbc_window32_w32.c$(DependSuffix) -MM src/ilbc/window32_w32.c

$(IntermediateDirectory)/src_ilbc_window32_w32.c$(PreprocessSuffix): src/ilbc/window32_w32.c
	$(CC) $(CFLAGS) $(IncludePath) $(PreprocessOnlySwitch) $(OutputSwitch) $(IntermediateDirectory)/src_ilbc_window32_w32.c$(PreprocessSuffix) src/ilbc/window32_w32.c

$(IntermediateDirectory)/src_jrtplib_rtppacket.cpp$(ObjectSuffix): src/jrtplib/rtppacket.cpp $(IntermediateDirectory)/src_jrtplib_rtppacket.cpp$(DependSuffix)
	$(CXX) $(IncludePCH) $(SourceSwitch) "/home/fym/722/cpp-project/AudioMixer/src/jrtplib/rtppacket.cpp" $(CXXFLAGS) $(ObjectSwitch)$(IntermediateDirectory)/src_jrtplib_rtppacket.cpp$(ObjectSuffix) $(IncludePath)
$(IntermediateDirectory)/src_jrtplib_rtppacket.cpp$(DependSuffix): src/jrtplib/rtppacket.cpp
	@$(CXX) $(CXXFLAGS) $(IncludePCH) $(IncludePath) -MG -MP -MT$(IntermediateDirectory)/src_jrtplib_rtppacket.cpp$(ObjectSuffix) -MF$(IntermediateDirectory)/src_jrtplib_rtppacket.cpp$(DependSuffix) -MM src/jrtplib/rtppacket.cpp

$(IntermediateDirectory)/src_jrtplib_rtppacket.cpp$(PreprocessSuffix): src/jrtplib/rtppacket.cpp
	$(CXX) $(CXXFLAGS) $(IncludePCH) $(IncludePath) $(PreprocessOnlySwitch) $(OutputSwitch) $(IntermediateDirectory)/src_jrtplib_rtppacket.cpp$(PreprocessSuffix) src/jrtplib/rtppacket.cpp

$(IntermediateDirectory)/src_ilbc_vq3.c$(ObjectSuffix): src/ilbc/vq3.c $(IntermediateDirectory)/src_ilbc_vq3.c$(DependSuffix)
	$(CC) $(SourceSwitch) "/home/fym/722/cpp-project/AudioMixer/src/ilbc/vq3.c" $(CFLAGS) $(ObjectSwitch)$(IntermediateDirectory)/src_ilbc_vq3.c$(ObjectSuffix) $(IncludePath)
$(IntermediateDirectory)/src_ilbc_vq3.c$(DependSuffix): src/ilbc/vq3.c
	@$(CC) $(CFLAGS) $(IncludePath) -MG -MP -MT$(IntermediateDirectory)/src_ilbc_vq3.c$(ObjectSuffix) -MF$(IntermediateDirectory)/src_ilbc_vq3.c$(DependSuffix) -MM src/ilbc/vq3.c

$(IntermediateDirectory)/src_ilbc_vq3.c$(PreprocessSuffix): src/ilbc/vq3.c
	$(CC) $(CFLAGS) $(IncludePath) $(PreprocessOnlySwitch) $(OutputSwitch) $(IntermediateDirectory)/src_ilbc_vq3.c$(PreprocessSuffix) src/ilbc/vq3.c

$(IntermediateDirectory)/src_ilbc_unpack_bits.c$(ObjectSuffix): src/ilbc/unpack_bits.c $(IntermediateDirectory)/src_ilbc_unpack_bits.c$(DependSuffix)
	$(CC) $(SourceSwitch) "/home/fym/722/cpp-project/AudioMixer/src/ilbc/unpack_bits.c" $(CFLAGS) $(ObjectSwitch)$(IntermediateDirectory)/src_ilbc_unpack_bits.c$(ObjectSuffix) $(IncludePath)
$(IntermediateDirectory)/src_ilbc_unpack_bits.c$(DependSuffix): src/ilbc/unpack_bits.c
	@$(CC) $(CFLAGS) $(IncludePath) -MG -MP -MT$(IntermediateDirectory)/src_ilbc_unpack_bits.c$(ObjectSuffix) -MF$(IntermediateDirectory)/src_ilbc_unpack_bits.c$(DependSuffix) -MM src/ilbc/unpack_bits.c

$(IntermediateDirectory)/src_ilbc_unpack_bits.c$(PreprocessSuffix): src/ilbc/unpack_bits.c
	$(CC) $(CFLAGS) $(IncludePath) $(PreprocessOnlySwitch) $(OutputSwitch) $(IntermediateDirectory)/src_ilbc_unpack_bits.c$(PreprocessSuffix) src/ilbc/unpack_bits.c

$(IntermediateDirectory)/src_ilbc_spl_sqrt_floor.c$(ObjectSuffix): src/ilbc/spl_sqrt_floor.c $(IntermediateDirectory)/src_ilbc_spl_sqrt_floor.c$(DependSuffix)
	$(CC) $(SourceSwitch) "/home/fym/722/cpp-project/AudioMixer/src/ilbc/spl_sqrt_floor.c" $(CFLAGS) $(ObjectSwitch)$(IntermediateDirectory)/src_ilbc_spl_sqrt_floor.c$(ObjectSuffix) $(IncludePath)
$(IntermediateDirectory)/src_ilbc_spl_sqrt_floor.c$(DependSuffix): src/ilbc/spl_sqrt_floor.c
	@$(CC) $(CFLAGS) $(IncludePath) -MG -MP -MT$(IntermediateDirectory)/src_ilbc_spl_sqrt_floor.c$(ObjectSuffix) -MF$(IntermediateDirectory)/src_ilbc_spl_sqrt_floor.c$(DependSuffix) -MM src/ilbc/spl_sqrt_floor.c

$(IntermediateDirectory)/src_ilbc_spl_sqrt_floor.c$(PreprocessSuffix): src/ilbc/spl_sqrt_floor.c
	$(CC) $(CFLAGS) $(IncludePath) $(PreprocessOnlySwitch) $(OutputSwitch) $(IntermediateDirectory)/src_ilbc_spl_sqrt_floor.c$(PreprocessSuffix) src/ilbc/spl_sqrt_floor.c

$(IntermediateDirectory)/src_ilbc_swap_bytes.c$(ObjectSuffix): src/ilbc/swap_bytes.c $(IntermediateDirectory)/src_ilbc_swap_bytes.c$(DependSuffix)
	$(CC) $(SourceSwitch) "/home/fym/722/cpp-project/AudioMixer/src/ilbc/swap_bytes.c" $(CFLAGS) $(ObjectSwitch)$(IntermediateDirectory)/src_ilbc_swap_bytes.c$(ObjectSuffix) $(IncludePath)
$(IntermediateDirectory)/src_ilbc_swap_bytes.c$(DependSuffix): src/ilbc/swap_bytes.c
	@$(CC) $(CFLAGS) $(IncludePath) -MG -MP -MT$(IntermediateDirectory)/src_ilbc_swap_bytes.c$(ObjectSuffix) -MF$(IntermediateDirectory)/src_ilbc_swap_bytes.c$(DependSuffix) -MM src/ilbc/swap_bytes.c

$(IntermediateDirectory)/src_ilbc_swap_bytes.c$(PreprocessSuffix): src/ilbc/swap_bytes.c
	$(CC) $(CFLAGS) $(IncludePath) $(PreprocessOnlySwitch) $(OutputSwitch) $(IntermediateDirectory)/src_ilbc_swap_bytes.c$(PreprocessSuffix) src/ilbc/swap_bytes.c

$(IntermediateDirectory)/src_ilbc_index_conv_enc.c$(ObjectSuffix): src/ilbc/index_conv_enc.c $(IntermediateDirectory)/src_ilbc_index_conv_enc.c$(DependSuffix)
	$(CC) $(SourceSwitch) "/home/fym/722/cpp-project/AudioMixer/src/ilbc/index_conv_enc.c" $(CFLAGS) $(ObjectSwitch)$(IntermediateDirectory)/src_ilbc_index_conv_enc.c$(ObjectSuffix) $(IncludePath)
$(IntermediateDirectory)/src_ilbc_index_conv_enc.c$(DependSuffix): src/ilbc/index_conv_enc.c
	@$(CC) $(CFLAGS) $(IncludePath) -MG -MP -MT$(IntermediateDirectory)/src_ilbc_index_conv_enc.c$(ObjectSuffix) -MF$(IntermediateDirectory)/src_ilbc_index_conv_enc.c$(DependSuffix) -MM src/ilbc/index_conv_enc.c

$(IntermediateDirectory)/src_ilbc_index_conv_enc.c$(PreprocessSuffix): src/ilbc/index_conv_enc.c
	$(CC) $(CFLAGS) $(IncludePath) $(PreprocessOnlySwitch) $(OutputSwitch) $(IntermediateDirectory)/src_ilbc_index_conv_enc.c$(PreprocessSuffix) src/ilbc/index_conv_enc.c

$(IntermediateDirectory)/src_thread_LocalPlayThread.cpp$(ObjectSuffix): src/thread/LocalPlayThread.cpp $(IntermediateDirectory)/src_thread_LocalPlayThread.cpp$(DependSuffix)
	$(CXX) $(IncludePCH) $(SourceSwitch) "/home/fym/722/cpp-project/AudioMixer/src/thread/LocalPlayThread.cpp" $(CXXFLAGS) $(ObjectSwitch)$(IntermediateDirectory)/src_thread_LocalPlayThread.cpp$(ObjectSuffix) $(IncludePath)
$(IntermediateDirectory)/src_thread_LocalPlayThread.cpp$(DependSuffix): src/thread/LocalPlayThread.cpp
	@$(CXX) $(CXXFLAGS) $(IncludePCH) $(IncludePath) -MG -MP -MT$(IntermediateDirectory)/src_thread_LocalPlayThread.cpp$(ObjectSuffix) -MF$(IntermediateDirectory)/src_thread_LocalPlayThread.cpp$(DependSuffix) -MM src/thread/LocalPlayThread.cpp

$(IntermediateDirectory)/src_thread_LocalPlayThread.cpp$(PreprocessSuffix): src/thread/LocalPlayThread.cpp
	$(CXX) $(CXXFLAGS) $(IncludePCH) $(IncludePath) $(PreprocessOnlySwitch) $(OutputSwitch) $(IntermediateDirectory)/src_thread_LocalPlayThread.cpp$(PreprocessSuffix) src/thread/LocalPlayThread.cpp

$(IntermediateDirectory)/src_ilbc_smooth.c$(ObjectSuffix): src/ilbc/smooth.c $(IntermediateDirectory)/src_ilbc_smooth.c$(DependSuffix)
	$(CC) $(SourceSwitch) "/home/fym/722/cpp-project/AudioMixer/src/ilbc/smooth.c" $(CFLAGS) $(ObjectSwitch)$(IntermediateDirectory)/src_ilbc_smooth.c$(ObjectSuffix) $(IncludePath)
$(IntermediateDirectory)/src_ilbc_smooth.c$(DependSuffix): src/ilbc/smooth.c
	@$(CC) $(CFLAGS) $(IncludePath) -MG -MP -MT$(IntermediateDirectory)/src_ilbc_smooth.c$(ObjectSuffix) -MF$(IntermediateDirectory)/src_ilbc_smooth.c$(DependSuffix) -MM src/ilbc/smooth.c

$(IntermediateDirectory)/src_ilbc_smooth.c$(PreprocessSuffix): src/ilbc/smooth.c
	$(CC) $(CFLAGS) $(IncludePath) $(PreprocessOnlySwitch) $(OutputSwitch) $(IntermediateDirectory)/src_ilbc_smooth.c$(PreprocessSuffix) src/ilbc/smooth.c

$(IntermediateDirectory)/src_ilbc_simple_lsf_quant.c$(ObjectSuffix): src/ilbc/simple_lsf_quant.c $(IntermediateDirectory)/src_ilbc_simple_lsf_quant.c$(DependSuffix)
	$(CC) $(SourceSwitch) "/home/fym/722/cpp-project/AudioMixer/src/ilbc/simple_lsf_quant.c" $(CFLAGS) $(ObjectSwitch)$(IntermediateDirectory)/src_ilbc_simple_lsf_quant.c$(ObjectSuffix) $(IncludePath)
$(IntermediateDirectory)/src_ilbc_simple_lsf_quant.c$(DependSuffix): src/ilbc/simple_lsf_quant.c
	@$(CC) $(CFLAGS) $(IncludePath) -MG -MP -MT$(IntermediateDirectory)/src_ilbc_simple_lsf_quant.c$(ObjectSuffix) -MF$(IntermediateDirectory)/src_ilbc_simple_lsf_quant.c$(DependSuffix) -MM src/ilbc/simple_lsf_quant.c

$(IntermediateDirectory)/src_ilbc_simple_lsf_quant.c$(PreprocessSuffix): src/ilbc/simple_lsf_quant.c
	$(CC) $(CFLAGS) $(IncludePath) $(PreprocessOnlySwitch) $(OutputSwitch) $(IntermediateDirectory)/src_ilbc_simple_lsf_quant.c$(PreprocessSuffix) src/ilbc/simple_lsf_quant.c

$(IntermediateDirectory)/src_ilbc_simple_lsf_dequant.c$(ObjectSuffix): src/ilbc/simple_lsf_dequant.c $(IntermediateDirectory)/src_ilbc_simple_lsf_dequant.c$(DependSuffix)
	$(CC) $(SourceSwitch) "/home/fym/722/cpp-project/AudioMixer/src/ilbc/simple_lsf_dequant.c" $(CFLAGS) $(ObjectSwitch)$(IntermediateDirectory)/src_ilbc_simple_lsf_dequant.c$(ObjectSuffix) $(IncludePath)
$(IntermediateDirectory)/src_ilbc_simple_lsf_dequant.c$(DependSuffix): src/ilbc/simple_lsf_dequant.c
	@$(CC) $(CFLAGS) $(IncludePath) -MG -MP -MT$(IntermediateDirectory)/src_ilbc_simple_lsf_dequant.c$(ObjectSuffix) -MF$(IntermediateDirectory)/src_ilbc_simple_lsf_dequant.c$(DependSuffix) -MM src/ilbc/simple_lsf_dequant.c

$(IntermediateDirectory)/src_ilbc_simple_lsf_dequant.c$(PreprocessSuffix): src/ilbc/simple_lsf_dequant.c
	$(CC) $(CFLAGS) $(IncludePath) $(PreprocessOnlySwitch) $(OutputSwitch) $(IntermediateDirectory)/src_ilbc_simple_lsf_dequant.c$(PreprocessSuffix) src/ilbc/simple_lsf_dequant.c

$(IntermediateDirectory)/src_ilbc_xcorr_coef.c$(ObjectSuffix): src/ilbc/xcorr_coef.c $(IntermediateDirectory)/src_ilbc_xcorr_coef.c$(DependSuffix)
	$(CC) $(SourceSwitch) "/home/fym/722/cpp-project/AudioMixer/src/ilbc/xcorr_coef.c" $(CFLAGS) $(ObjectSwitch)$(IntermediateDirectory)/src_ilbc_xcorr_coef.c$(ObjectSuffix) $(IncludePath)
$(IntermediateDirectory)/src_ilbc_xcorr_coef.c$(DependSuffix): src/ilbc/xcorr_coef.c
	@$(CC) $(CFLAGS) $(IncludePath) -MG -MP -MT$(IntermediateDirectory)/src_ilbc_xcorr_coef.c$(ObjectSuffix) -MF$(IntermediateDirectory)/src_ilbc_xcorr_coef.c$(DependSuffix) -MM src/ilbc/xcorr_coef.c

$(IntermediateDirectory)/src_ilbc_xcorr_coef.c$(PreprocessSuffix): src/ilbc/xcorr_coef.c
	$(CC) $(CFLAGS) $(IncludePath) $(PreprocessOnlySwitch) $(OutputSwitch) $(IntermediateDirectory)/src_ilbc_xcorr_coef.c$(PreprocessSuffix) src/ilbc/xcorr_coef.c

$(IntermediateDirectory)/src_ilbc_simple_lpc_analysis.c$(ObjectSuffix): src/ilbc/simple_lpc_analysis.c $(IntermediateDirectory)/src_ilbc_simple_lpc_analysis.c$(DependSuffix)
	$(CC) $(SourceSwitch) "/home/fym/722/cpp-project/AudioMixer/src/ilbc/simple_lpc_analysis.c" $(CFLAGS) $(ObjectSwitch)$(IntermediateDirectory)/src_ilbc_simple_lpc_analysis.c$(ObjectSuffix) $(IncludePath)
$(IntermediateDirectory)/src_ilbc_simple_lpc_analysis.c$(DependSuffix): src/ilbc/simple_lpc_analysis.c
	@$(CC) $(CFLAGS) $(IncludePath) -MG -MP -MT$(IntermediateDirectory)/src_ilbc_simple_lpc_analysis.c$(ObjectSuffix) -MF$(IntermediateDirectory)/src_ilbc_simple_lpc_analysis.c$(DependSuffix) -MM src/ilbc/simple_lpc_analysis.c

$(IntermediateDirectory)/src_ilbc_simple_lpc_analysis.c$(PreprocessSuffix): src/ilbc/simple_lpc_analysis.c
	$(CC) $(CFLAGS) $(IncludePath) $(PreprocessOnlySwitch) $(OutputSwitch) $(IntermediateDirectory)/src_ilbc_simple_lpc_analysis.c$(PreprocessSuffix) src/ilbc/simple_lpc_analysis.c


-include $(IntermediateDirectory)/*$(DependSuffix)
##
## Clean
##
clean:
	$(RM) -r ./Debug/


