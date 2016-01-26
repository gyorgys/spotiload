# Compiler flags...
CPP_COMPILER = g++
C_COMPILER = gcc

# Include paths...
Debug_Include_Path=-I"../mpglib" -I"../include" -I".." 
ReleaseNASM_Include_Path=-I"../mpglib" -I"../include" -I".." 
ReleaseSSE2_Include_Path=-I"../mpglib" -I"../include" -I".." 
Release_Include_Path=-I"../mpglib" -I"../include" -I".." 

# Library paths...
Debug_Library_Path=
ReleaseNASM_Library_Path=
ReleaseSSE2_Library_Path=
Release_Library_Path=

# Additional libraries...
Debug_Libraries=
ReleaseNASM_Libraries=
ReleaseSSE2_Libraries=
Release_Libraries=

# Preprocessor definitions...
Debug_Preprocessor_Definitions=-D _DEBUG -D _WINDOWS -D HAVE_MPGLIB -D GCC_BUILD -D HAVE_CONFIG_H 
ReleaseNASM_Preprocessor_Definitions=-D NDEBUG -D _WINDOWS -D HAVE_MPGLIB -D GCC_BUILD -D HAVE_CONFIG_H -D HAVE_NASM -D MMX_choose_table -D _CRT_SECURE_NO_DEPRECATE 
ReleaseSSE2_Preprocessor_Definitions=-D NDEBUG -D _WINDOWS -D HAVE_MPGLIB -D GCC_BUILD -D HAVE_CONFIG_H 
Release_Preprocessor_Definitions=-D NDEBUG -D _WINDOWS -D HAVE_MPGLIB -D GCC_BUILD -D HAVE_CONFIG_H 

# Implictly linked object files...
Debug_Implicitly_Linked_Objects=
ReleaseNASM_Implicitly_Linked_Objects=
ReleaseSSE2_Implicitly_Linked_Objects=
Release_Implicitly_Linked_Objects=

# Compiler flags...
Debug_Compiler_Flags=-Wall -O0 
ReleaseNASM_Compiler_Flags=-Wall -O3 
ReleaseSSE2_Compiler_Flags=-Wall -O3 
Release_Compiler_Flags=-Wall -O3 

# Builds all configurations for this project...
.PHONY: build_all_configurations
build_all_configurations: Debug ReleaseNASM ReleaseSSE2 Release 

# Builds the Debug configuration...
.PHONY: Debug
Debug: create_folders ../../../../../obj/Debug/gcclibmp3lame-static/../libmp3lame/bitstream.o ../../../../../obj/Debug/gcclibmp3lame-static/../libmp3lame/encoder.o ../../../../../obj/Debug/gcclibmp3lame-static/../libmp3lame/fft.o ../../../../../obj/Debug/gcclibmp3lame-static/../libmp3lame/gain_analysis.o ../../../../../obj/Debug/gcclibmp3lame-static/../libmp3lame/id3tag.o ../../../../../obj/Debug/gcclibmp3lame-static/../libmp3lame/lame.o ../../../../../obj/Debug/gcclibmp3lame-static/../libmp3lame/mpglib_interface.o ../../../../../obj/Debug/gcclibmp3lame-static/../libmp3lame/newmdct.o ../../../../../obj/Debug/gcclibmp3lame-static/../libmp3lame/presets.o ../../../../../obj/Debug/gcclibmp3lame-static/../libmp3lame/psymodel.o ../../../../../obj/Debug/gcclibmp3lame-static/../libmp3lame/quantize.o ../../../../../obj/Debug/gcclibmp3lame-static/../libmp3lame/quantize_pvt.o ../../../../../obj/Debug/gcclibmp3lame-static/../libmp3lame/reservoir.o ../../../../../obj/Debug/gcclibmp3lame-static/../libmp3lame/set_get.o ../../../../../obj/Debug/gcclibmp3lame-static/../libmp3lame/tables.o ../../../../../obj/Debug/gcclibmp3lame-static/../libmp3lame/takehiro.o ../../../../../obj/Debug/gcclibmp3lame-static/../libmp3lame/util.o ../../../../../obj/Debug/gcclibmp3lame-static/../libmp3lame/vbrquantize.o ../../../../../obj/Debug/gcclibmp3lame-static/../libmp3lame/VbrTag.o ../../../../../obj/Debug/gcclibmp3lame-static/../libmp3lame/version.o ../../../../../obj/Debug/gcclibmp3lame-static/../libmp3lame/vector/xmm_quantize_sub.o 
	ar rcs ../../../../../output/gccDebug/liblibmp3lame-static.a ../../../../../obj/Debug/gcclibmp3lame-static/../libmp3lame/bitstream.o ../../../../../obj/Debug/gcclibmp3lame-static/../libmp3lame/encoder.o ../../../../../obj/Debug/gcclibmp3lame-static/../libmp3lame/fft.o ../../../../../obj/Debug/gcclibmp3lame-static/../libmp3lame/gain_analysis.o ../../../../../obj/Debug/gcclibmp3lame-static/../libmp3lame/id3tag.o ../../../../../obj/Debug/gcclibmp3lame-static/../libmp3lame/lame.o ../../../../../obj/Debug/gcclibmp3lame-static/../libmp3lame/mpglib_interface.o ../../../../../obj/Debug/gcclibmp3lame-static/../libmp3lame/newmdct.o ../../../../../obj/Debug/gcclibmp3lame-static/../libmp3lame/presets.o ../../../../../obj/Debug/gcclibmp3lame-static/../libmp3lame/psymodel.o ../../../../../obj/Debug/gcclibmp3lame-static/../libmp3lame/quantize.o ../../../../../obj/Debug/gcclibmp3lame-static/../libmp3lame/quantize_pvt.o ../../../../../obj/Debug/gcclibmp3lame-static/../libmp3lame/reservoir.o ../../../../../obj/Debug/gcclibmp3lame-static/../libmp3lame/set_get.o ../../../../../obj/Debug/gcclibmp3lame-static/../libmp3lame/tables.o ../../../../../obj/Debug/gcclibmp3lame-static/../libmp3lame/takehiro.o ../../../../../obj/Debug/gcclibmp3lame-static/../libmp3lame/util.o ../../../../../obj/Debug/gcclibmp3lame-static/../libmp3lame/vbrquantize.o ../../../../../obj/Debug/gcclibmp3lame-static/../libmp3lame/VbrTag.o ../../../../../obj/Debug/gcclibmp3lame-static/../libmp3lame/version.o ../../../../../obj/Debug/gcclibmp3lame-static/../libmp3lame/vector/xmm_quantize_sub.o  $(Debug_Implicitly_Linked_Objects)

# Compiles file ../libmp3lame/bitstream.c for the Debug configuration...
-include ../../../../../obj/Debug/gcclibmp3lame-static/../libmp3lame/bitstream.d
../../../../../obj/Debug/gcclibmp3lame-static/../libmp3lame/bitstream.o: ../libmp3lame/bitstream.c
	$(C_COMPILER) $(Debug_Preprocessor_Definitions) $(Debug_Compiler_Flags) -c ../libmp3lame/bitstream.c $(Debug_Include_Path) -o ../../../../../obj/Debug/gcclibmp3lame-static/../libmp3lame/bitstream.o
	$(C_COMPILER) $(Debug_Preprocessor_Definitions) $(Debug_Compiler_Flags) -MM ../libmp3lame/bitstream.c $(Debug_Include_Path) > ../../../../../obj/Debug/gcclibmp3lame-static/../libmp3lame/bitstream.d

# Compiles file ../libmp3lame/encoder.c for the Debug configuration...
-include ../../../../../obj/Debug/gcclibmp3lame-static/../libmp3lame/encoder.d
../../../../../obj/Debug/gcclibmp3lame-static/../libmp3lame/encoder.o: ../libmp3lame/encoder.c
	$(C_COMPILER) $(Debug_Preprocessor_Definitions) $(Debug_Compiler_Flags) -c ../libmp3lame/encoder.c $(Debug_Include_Path) -o ../../../../../obj/Debug/gcclibmp3lame-static/../libmp3lame/encoder.o
	$(C_COMPILER) $(Debug_Preprocessor_Definitions) $(Debug_Compiler_Flags) -MM ../libmp3lame/encoder.c $(Debug_Include_Path) > ../../../../../obj/Debug/gcclibmp3lame-static/../libmp3lame/encoder.d

# Compiles file ../libmp3lame/fft.c for the Debug configuration...
-include ../../../../../obj/Debug/gcclibmp3lame-static/../libmp3lame/fft.d
../../../../../obj/Debug/gcclibmp3lame-static/../libmp3lame/fft.o: ../libmp3lame/fft.c
	$(C_COMPILER) $(Debug_Preprocessor_Definitions) $(Debug_Compiler_Flags) -c ../libmp3lame/fft.c $(Debug_Include_Path) -o ../../../../../obj/Debug/gcclibmp3lame-static/../libmp3lame/fft.o
	$(C_COMPILER) $(Debug_Preprocessor_Definitions) $(Debug_Compiler_Flags) -MM ../libmp3lame/fft.c $(Debug_Include_Path) > ../../../../../obj/Debug/gcclibmp3lame-static/../libmp3lame/fft.d

# Compiles file ../libmp3lame/gain_analysis.c for the Debug configuration...
-include ../../../../../obj/Debug/gcclibmp3lame-static/../libmp3lame/gain_analysis.d
../../../../../obj/Debug/gcclibmp3lame-static/../libmp3lame/gain_analysis.o: ../libmp3lame/gain_analysis.c
	$(C_COMPILER) $(Debug_Preprocessor_Definitions) $(Debug_Compiler_Flags) -c ../libmp3lame/gain_analysis.c $(Debug_Include_Path) -o ../../../../../obj/Debug/gcclibmp3lame-static/../libmp3lame/gain_analysis.o
	$(C_COMPILER) $(Debug_Preprocessor_Definitions) $(Debug_Compiler_Flags) -MM ../libmp3lame/gain_analysis.c $(Debug_Include_Path) > ../../../../../obj/Debug/gcclibmp3lame-static/../libmp3lame/gain_analysis.d

# Compiles file ../libmp3lame/id3tag.c for the Debug configuration...
-include ../../../../../obj/Debug/gcclibmp3lame-static/../libmp3lame/id3tag.d
../../../../../obj/Debug/gcclibmp3lame-static/../libmp3lame/id3tag.o: ../libmp3lame/id3tag.c
	$(C_COMPILER) $(Debug_Preprocessor_Definitions) $(Debug_Compiler_Flags) -c ../libmp3lame/id3tag.c $(Debug_Include_Path) -o ../../../../../obj/Debug/gcclibmp3lame-static/../libmp3lame/id3tag.o
	$(C_COMPILER) $(Debug_Preprocessor_Definitions) $(Debug_Compiler_Flags) -MM ../libmp3lame/id3tag.c $(Debug_Include_Path) > ../../../../../obj/Debug/gcclibmp3lame-static/../libmp3lame/id3tag.d

# Compiles file ../libmp3lame/lame.c for the Debug configuration...
-include ../../../../../obj/Debug/gcclibmp3lame-static/../libmp3lame/lame.d
../../../../../obj/Debug/gcclibmp3lame-static/../libmp3lame/lame.o: ../libmp3lame/lame.c
	$(C_COMPILER) $(Debug_Preprocessor_Definitions) $(Debug_Compiler_Flags) -c ../libmp3lame/lame.c $(Debug_Include_Path) -o ../../../../../obj/Debug/gcclibmp3lame-static/../libmp3lame/lame.o
	$(C_COMPILER) $(Debug_Preprocessor_Definitions) $(Debug_Compiler_Flags) -MM ../libmp3lame/lame.c $(Debug_Include_Path) > ../../../../../obj/Debug/gcclibmp3lame-static/../libmp3lame/lame.d

# Compiles file ../libmp3lame/mpglib_interface.c for the Debug configuration...
-include ../../../../../obj/Debug/gcclibmp3lame-static/../libmp3lame/mpglib_interface.d
../../../../../obj/Debug/gcclibmp3lame-static/../libmp3lame/mpglib_interface.o: ../libmp3lame/mpglib_interface.c
	$(C_COMPILER) $(Debug_Preprocessor_Definitions) $(Debug_Compiler_Flags) -c ../libmp3lame/mpglib_interface.c $(Debug_Include_Path) -o ../../../../../obj/Debug/gcclibmp3lame-static/../libmp3lame/mpglib_interface.o
	$(C_COMPILER) $(Debug_Preprocessor_Definitions) $(Debug_Compiler_Flags) -MM ../libmp3lame/mpglib_interface.c $(Debug_Include_Path) > ../../../../../obj/Debug/gcclibmp3lame-static/../libmp3lame/mpglib_interface.d

# Compiles file ../libmp3lame/newmdct.c for the Debug configuration...
-include ../../../../../obj/Debug/gcclibmp3lame-static/../libmp3lame/newmdct.d
../../../../../obj/Debug/gcclibmp3lame-static/../libmp3lame/newmdct.o: ../libmp3lame/newmdct.c
	$(C_COMPILER) $(Debug_Preprocessor_Definitions) $(Debug_Compiler_Flags) -c ../libmp3lame/newmdct.c $(Debug_Include_Path) -o ../../../../../obj/Debug/gcclibmp3lame-static/../libmp3lame/newmdct.o
	$(C_COMPILER) $(Debug_Preprocessor_Definitions) $(Debug_Compiler_Flags) -MM ../libmp3lame/newmdct.c $(Debug_Include_Path) > ../../../../../obj/Debug/gcclibmp3lame-static/../libmp3lame/newmdct.d

# Compiles file ../libmp3lame/presets.c for the Debug configuration...
-include ../../../../../obj/Debug/gcclibmp3lame-static/../libmp3lame/presets.d
../../../../../obj/Debug/gcclibmp3lame-static/../libmp3lame/presets.o: ../libmp3lame/presets.c
	$(C_COMPILER) $(Debug_Preprocessor_Definitions) $(Debug_Compiler_Flags) -c ../libmp3lame/presets.c $(Debug_Include_Path) -o ../../../../../obj/Debug/gcclibmp3lame-static/../libmp3lame/presets.o
	$(C_COMPILER) $(Debug_Preprocessor_Definitions) $(Debug_Compiler_Flags) -MM ../libmp3lame/presets.c $(Debug_Include_Path) > ../../../../../obj/Debug/gcclibmp3lame-static/../libmp3lame/presets.d

# Compiles file ../libmp3lame/psymodel.c for the Debug configuration...
-include ../../../../../obj/Debug/gcclibmp3lame-static/../libmp3lame/psymodel.d
../../../../../obj/Debug/gcclibmp3lame-static/../libmp3lame/psymodel.o: ../libmp3lame/psymodel.c
	$(C_COMPILER) $(Debug_Preprocessor_Definitions) $(Debug_Compiler_Flags) -c ../libmp3lame/psymodel.c $(Debug_Include_Path) -o ../../../../../obj/Debug/gcclibmp3lame-static/../libmp3lame/psymodel.o
	$(C_COMPILER) $(Debug_Preprocessor_Definitions) $(Debug_Compiler_Flags) -MM ../libmp3lame/psymodel.c $(Debug_Include_Path) > ../../../../../obj/Debug/gcclibmp3lame-static/../libmp3lame/psymodel.d

# Compiles file ../libmp3lame/quantize.c for the Debug configuration...
-include ../../../../../obj/Debug/gcclibmp3lame-static/../libmp3lame/quantize.d
../../../../../obj/Debug/gcclibmp3lame-static/../libmp3lame/quantize.o: ../libmp3lame/quantize.c
	$(C_COMPILER) $(Debug_Preprocessor_Definitions) $(Debug_Compiler_Flags) -c ../libmp3lame/quantize.c $(Debug_Include_Path) -o ../../../../../obj/Debug/gcclibmp3lame-static/../libmp3lame/quantize.o
	$(C_COMPILER) $(Debug_Preprocessor_Definitions) $(Debug_Compiler_Flags) -MM ../libmp3lame/quantize.c $(Debug_Include_Path) > ../../../../../obj/Debug/gcclibmp3lame-static/../libmp3lame/quantize.d

# Compiles file ../libmp3lame/quantize_pvt.c for the Debug configuration...
-include ../../../../../obj/Debug/gcclibmp3lame-static/../libmp3lame/quantize_pvt.d
../../../../../obj/Debug/gcclibmp3lame-static/../libmp3lame/quantize_pvt.o: ../libmp3lame/quantize_pvt.c
	$(C_COMPILER) $(Debug_Preprocessor_Definitions) $(Debug_Compiler_Flags) -c ../libmp3lame/quantize_pvt.c $(Debug_Include_Path) -o ../../../../../obj/Debug/gcclibmp3lame-static/../libmp3lame/quantize_pvt.o
	$(C_COMPILER) $(Debug_Preprocessor_Definitions) $(Debug_Compiler_Flags) -MM ../libmp3lame/quantize_pvt.c $(Debug_Include_Path) > ../../../../../obj/Debug/gcclibmp3lame-static/../libmp3lame/quantize_pvt.d

# Compiles file ../libmp3lame/reservoir.c for the Debug configuration...
-include ../../../../../obj/Debug/gcclibmp3lame-static/../libmp3lame/reservoir.d
../../../../../obj/Debug/gcclibmp3lame-static/../libmp3lame/reservoir.o: ../libmp3lame/reservoir.c
	$(C_COMPILER) $(Debug_Preprocessor_Definitions) $(Debug_Compiler_Flags) -c ../libmp3lame/reservoir.c $(Debug_Include_Path) -o ../../../../../obj/Debug/gcclibmp3lame-static/../libmp3lame/reservoir.o
	$(C_COMPILER) $(Debug_Preprocessor_Definitions) $(Debug_Compiler_Flags) -MM ../libmp3lame/reservoir.c $(Debug_Include_Path) > ../../../../../obj/Debug/gcclibmp3lame-static/../libmp3lame/reservoir.d

# Compiles file ../libmp3lame/set_get.c for the Debug configuration...
-include ../../../../../obj/Debug/gcclibmp3lame-static/../libmp3lame/set_get.d
../../../../../obj/Debug/gcclibmp3lame-static/../libmp3lame/set_get.o: ../libmp3lame/set_get.c
	$(C_COMPILER) $(Debug_Preprocessor_Definitions) $(Debug_Compiler_Flags) -c ../libmp3lame/set_get.c $(Debug_Include_Path) -o ../../../../../obj/Debug/gcclibmp3lame-static/../libmp3lame/set_get.o
	$(C_COMPILER) $(Debug_Preprocessor_Definitions) $(Debug_Compiler_Flags) -MM ../libmp3lame/set_get.c $(Debug_Include_Path) > ../../../../../obj/Debug/gcclibmp3lame-static/../libmp3lame/set_get.d

# Compiles file ../libmp3lame/tables.c for the Debug configuration...
-include ../../../../../obj/Debug/gcclibmp3lame-static/../libmp3lame/tables.d
../../../../../obj/Debug/gcclibmp3lame-static/../libmp3lame/tables.o: ../libmp3lame/tables.c
	$(C_COMPILER) $(Debug_Preprocessor_Definitions) $(Debug_Compiler_Flags) -c ../libmp3lame/tables.c $(Debug_Include_Path) -o ../../../../../obj/Debug/gcclibmp3lame-static/../libmp3lame/tables.o
	$(C_COMPILER) $(Debug_Preprocessor_Definitions) $(Debug_Compiler_Flags) -MM ../libmp3lame/tables.c $(Debug_Include_Path) > ../../../../../obj/Debug/gcclibmp3lame-static/../libmp3lame/tables.d

# Compiles file ../libmp3lame/takehiro.c for the Debug configuration...
-include ../../../../../obj/Debug/gcclibmp3lame-static/../libmp3lame/takehiro.d
../../../../../obj/Debug/gcclibmp3lame-static/../libmp3lame/takehiro.o: ../libmp3lame/takehiro.c
	$(C_COMPILER) $(Debug_Preprocessor_Definitions) $(Debug_Compiler_Flags) -c ../libmp3lame/takehiro.c $(Debug_Include_Path) -o ../../../../../obj/Debug/gcclibmp3lame-static/../libmp3lame/takehiro.o
	$(C_COMPILER) $(Debug_Preprocessor_Definitions) $(Debug_Compiler_Flags) -MM ../libmp3lame/takehiro.c $(Debug_Include_Path) > ../../../../../obj/Debug/gcclibmp3lame-static/../libmp3lame/takehiro.d

# Compiles file ../libmp3lame/util.c for the Debug configuration...
-include ../../../../../obj/Debug/gcclibmp3lame-static/../libmp3lame/util.d
../../../../../obj/Debug/gcclibmp3lame-static/../libmp3lame/util.o: ../libmp3lame/util.c
	$(C_COMPILER) $(Debug_Preprocessor_Definitions) $(Debug_Compiler_Flags) -c ../libmp3lame/util.c $(Debug_Include_Path) -o ../../../../../obj/Debug/gcclibmp3lame-static/../libmp3lame/util.o
	$(C_COMPILER) $(Debug_Preprocessor_Definitions) $(Debug_Compiler_Flags) -MM ../libmp3lame/util.c $(Debug_Include_Path) > ../../../../../obj/Debug/gcclibmp3lame-static/../libmp3lame/util.d

# Compiles file ../libmp3lame/vbrquantize.c for the Debug configuration...
-include ../../../../../obj/Debug/gcclibmp3lame-static/../libmp3lame/vbrquantize.d
../../../../../obj/Debug/gcclibmp3lame-static/../libmp3lame/vbrquantize.o: ../libmp3lame/vbrquantize.c
	$(C_COMPILER) $(Debug_Preprocessor_Definitions) $(Debug_Compiler_Flags) -c ../libmp3lame/vbrquantize.c $(Debug_Include_Path) -o ../../../../../obj/Debug/gcclibmp3lame-static/../libmp3lame/vbrquantize.o
	$(C_COMPILER) $(Debug_Preprocessor_Definitions) $(Debug_Compiler_Flags) -MM ../libmp3lame/vbrquantize.c $(Debug_Include_Path) > ../../../../../obj/Debug/gcclibmp3lame-static/../libmp3lame/vbrquantize.d

# Compiles file ../libmp3lame/VbrTag.c for the Debug configuration...
-include ../../../../../obj/Debug/gcclibmp3lame-static/../libmp3lame/VbrTag.d
../../../../../obj/Debug/gcclibmp3lame-static/../libmp3lame/VbrTag.o: ../libmp3lame/VbrTag.c
	$(C_COMPILER) $(Debug_Preprocessor_Definitions) $(Debug_Compiler_Flags) -c ../libmp3lame/VbrTag.c $(Debug_Include_Path) -o ../../../../../obj/Debug/gcclibmp3lame-static/../libmp3lame/VbrTag.o
	$(C_COMPILER) $(Debug_Preprocessor_Definitions) $(Debug_Compiler_Flags) -MM ../libmp3lame/VbrTag.c $(Debug_Include_Path) > ../../../../../obj/Debug/gcclibmp3lame-static/../libmp3lame/VbrTag.d

# Compiles file ../libmp3lame/version.c for the Debug configuration...
-include ../../../../../obj/Debug/gcclibmp3lame-static/../libmp3lame/version.d
../../../../../obj/Debug/gcclibmp3lame-static/../libmp3lame/version.o: ../libmp3lame/version.c
	$(C_COMPILER) $(Debug_Preprocessor_Definitions) $(Debug_Compiler_Flags) -c ../libmp3lame/version.c $(Debug_Include_Path) -o ../../../../../obj/Debug/gcclibmp3lame-static/../libmp3lame/version.o
	$(C_COMPILER) $(Debug_Preprocessor_Definitions) $(Debug_Compiler_Flags) -MM ../libmp3lame/version.c $(Debug_Include_Path) > ../../../../../obj/Debug/gcclibmp3lame-static/../libmp3lame/version.d

# Compiles file ../libmp3lame/vector/xmm_quantize_sub.c for the Debug configuration...
-include ../../../../../obj/Debug/gcclibmp3lame-static/../libmp3lame/vector/xmm_quantize_sub.d
../../../../../obj/Debug/gcclibmp3lame-static/../libmp3lame/vector/xmm_quantize_sub.o: ../libmp3lame/vector/xmm_quantize_sub.c
	$(C_COMPILER) $(Debug_Preprocessor_Definitions) $(Debug_Compiler_Flags) -c ../libmp3lame/vector/xmm_quantize_sub.c $(Debug_Include_Path) -o ../../../../../obj/Debug/gcclibmp3lame-static/../libmp3lame/vector/xmm_quantize_sub.o
	$(C_COMPILER) $(Debug_Preprocessor_Definitions) $(Debug_Compiler_Flags) -MM ../libmp3lame/vector/xmm_quantize_sub.c $(Debug_Include_Path) > ../../../../../obj/Debug/gcclibmp3lame-static/../libmp3lame/vector/xmm_quantize_sub.d

# Builds the ReleaseNASM configuration...
.PHONY: ReleaseNASM
ReleaseNASM: create_folders ../../../../../obj/ReleaseNASM/gcclibmp3lame-static/../libmp3lame/bitstream.o ../../../../../obj/ReleaseNASM/gcclibmp3lame-static/../libmp3lame/encoder.o ../../../../../obj/ReleaseNASM/gcclibmp3lame-static/../libmp3lame/fft.o ../../../../../obj/ReleaseNASM/gcclibmp3lame-static/../libmp3lame/gain_analysis.o ../../../../../obj/ReleaseNASM/gcclibmp3lame-static/../libmp3lame/id3tag.o ../../../../../obj/ReleaseNASM/gcclibmp3lame-static/../libmp3lame/lame.o ../../../../../obj/ReleaseNASM/gcclibmp3lame-static/../libmp3lame/mpglib_interface.o ../../../../../obj/ReleaseNASM/gcclibmp3lame-static/../libmp3lame/newmdct.o ../../../../../obj/ReleaseNASM/gcclibmp3lame-static/../libmp3lame/presets.o ../../../../../obj/ReleaseNASM/gcclibmp3lame-static/../libmp3lame/psymodel.o ../../../../../obj/ReleaseNASM/gcclibmp3lame-static/../libmp3lame/quantize.o ../../../../../obj/ReleaseNASM/gcclibmp3lame-static/../libmp3lame/quantize_pvt.o ../../../../../obj/ReleaseNASM/gcclibmp3lame-static/../libmp3lame/reservoir.o ../../../../../obj/ReleaseNASM/gcclibmp3lame-static/../libmp3lame/set_get.o ../../../../../obj/ReleaseNASM/gcclibmp3lame-static/../libmp3lame/tables.o ../../../../../obj/ReleaseNASM/gcclibmp3lame-static/../libmp3lame/takehiro.o ../../../../../obj/ReleaseNASM/gcclibmp3lame-static/../libmp3lame/util.o ../../../../../obj/ReleaseNASM/gcclibmp3lame-static/../libmp3lame/vbrquantize.o ../../../../../obj/ReleaseNASM/gcclibmp3lame-static/../libmp3lame/VbrTag.o ../../../../../obj/ReleaseNASM/gcclibmp3lame-static/../libmp3lame/version.o ../../../../../obj/ReleaseNASM/gcclibmp3lame-static/../libmp3lame/vector/xmm_quantize_sub.o 
	ar rcs ../../../../../output/gccReleaseNASM/liblibmp3lame-static.a ../../../../../obj/ReleaseNASM/gcclibmp3lame-static/../libmp3lame/bitstream.o ../../../../../obj/ReleaseNASM/gcclibmp3lame-static/../libmp3lame/encoder.o ../../../../../obj/ReleaseNASM/gcclibmp3lame-static/../libmp3lame/fft.o ../../../../../obj/ReleaseNASM/gcclibmp3lame-static/../libmp3lame/gain_analysis.o ../../../../../obj/ReleaseNASM/gcclibmp3lame-static/../libmp3lame/id3tag.o ../../../../../obj/ReleaseNASM/gcclibmp3lame-static/../libmp3lame/lame.o ../../../../../obj/ReleaseNASM/gcclibmp3lame-static/../libmp3lame/mpglib_interface.o ../../../../../obj/ReleaseNASM/gcclibmp3lame-static/../libmp3lame/newmdct.o ../../../../../obj/ReleaseNASM/gcclibmp3lame-static/../libmp3lame/presets.o ../../../../../obj/ReleaseNASM/gcclibmp3lame-static/../libmp3lame/psymodel.o ../../../../../obj/ReleaseNASM/gcclibmp3lame-static/../libmp3lame/quantize.o ../../../../../obj/ReleaseNASM/gcclibmp3lame-static/../libmp3lame/quantize_pvt.o ../../../../../obj/ReleaseNASM/gcclibmp3lame-static/../libmp3lame/reservoir.o ../../../../../obj/ReleaseNASM/gcclibmp3lame-static/../libmp3lame/set_get.o ../../../../../obj/ReleaseNASM/gcclibmp3lame-static/../libmp3lame/tables.o ../../../../../obj/ReleaseNASM/gcclibmp3lame-static/../libmp3lame/takehiro.o ../../../../../obj/ReleaseNASM/gcclibmp3lame-static/../libmp3lame/util.o ../../../../../obj/ReleaseNASM/gcclibmp3lame-static/../libmp3lame/vbrquantize.o ../../../../../obj/ReleaseNASM/gcclibmp3lame-static/../libmp3lame/VbrTag.o ../../../../../obj/ReleaseNASM/gcclibmp3lame-static/../libmp3lame/version.o ../../../../../obj/ReleaseNASM/gcclibmp3lame-static/../libmp3lame/vector/xmm_quantize_sub.o  $(ReleaseNASM_Implicitly_Linked_Objects)

# Compiles file ../libmp3lame/bitstream.c for the ReleaseNASM configuration...
-include ../../../../../obj/ReleaseNASM/gcclibmp3lame-static/../libmp3lame/bitstream.d
../../../../../obj/ReleaseNASM/gcclibmp3lame-static/../libmp3lame/bitstream.o: ../libmp3lame/bitstream.c
	$(C_COMPILER) $(ReleaseNASM_Preprocessor_Definitions) $(ReleaseNASM_Compiler_Flags) -c ../libmp3lame/bitstream.c $(ReleaseNASM_Include_Path) -o ../../../../../obj/ReleaseNASM/gcclibmp3lame-static/../libmp3lame/bitstream.o
	$(C_COMPILER) $(ReleaseNASM_Preprocessor_Definitions) $(ReleaseNASM_Compiler_Flags) -MM ../libmp3lame/bitstream.c $(ReleaseNASM_Include_Path) > ../../../../../obj/ReleaseNASM/gcclibmp3lame-static/../libmp3lame/bitstream.d

# Compiles file ../libmp3lame/encoder.c for the ReleaseNASM configuration...
-include ../../../../../obj/ReleaseNASM/gcclibmp3lame-static/../libmp3lame/encoder.d
../../../../../obj/ReleaseNASM/gcclibmp3lame-static/../libmp3lame/encoder.o: ../libmp3lame/encoder.c
	$(C_COMPILER) $(ReleaseNASM_Preprocessor_Definitions) $(ReleaseNASM_Compiler_Flags) -c ../libmp3lame/encoder.c $(ReleaseNASM_Include_Path) -o ../../../../../obj/ReleaseNASM/gcclibmp3lame-static/../libmp3lame/encoder.o
	$(C_COMPILER) $(ReleaseNASM_Preprocessor_Definitions) $(ReleaseNASM_Compiler_Flags) -MM ../libmp3lame/encoder.c $(ReleaseNASM_Include_Path) > ../../../../../obj/ReleaseNASM/gcclibmp3lame-static/../libmp3lame/encoder.d

# Compiles file ../libmp3lame/fft.c for the ReleaseNASM configuration...
-include ../../../../../obj/ReleaseNASM/gcclibmp3lame-static/../libmp3lame/fft.d
../../../../../obj/ReleaseNASM/gcclibmp3lame-static/../libmp3lame/fft.o: ../libmp3lame/fft.c
	$(C_COMPILER) $(ReleaseNASM_Preprocessor_Definitions) $(ReleaseNASM_Compiler_Flags) -c ../libmp3lame/fft.c $(ReleaseNASM_Include_Path) -o ../../../../../obj/ReleaseNASM/gcclibmp3lame-static/../libmp3lame/fft.o
	$(C_COMPILER) $(ReleaseNASM_Preprocessor_Definitions) $(ReleaseNASM_Compiler_Flags) -MM ../libmp3lame/fft.c $(ReleaseNASM_Include_Path) > ../../../../../obj/ReleaseNASM/gcclibmp3lame-static/../libmp3lame/fft.d

# Compiles file ../libmp3lame/gain_analysis.c for the ReleaseNASM configuration...
-include ../../../../../obj/ReleaseNASM/gcclibmp3lame-static/../libmp3lame/gain_analysis.d
../../../../../obj/ReleaseNASM/gcclibmp3lame-static/../libmp3lame/gain_analysis.o: ../libmp3lame/gain_analysis.c
	$(C_COMPILER) $(ReleaseNASM_Preprocessor_Definitions) $(ReleaseNASM_Compiler_Flags) -c ../libmp3lame/gain_analysis.c $(ReleaseNASM_Include_Path) -o ../../../../../obj/ReleaseNASM/gcclibmp3lame-static/../libmp3lame/gain_analysis.o
	$(C_COMPILER) $(ReleaseNASM_Preprocessor_Definitions) $(ReleaseNASM_Compiler_Flags) -MM ../libmp3lame/gain_analysis.c $(ReleaseNASM_Include_Path) > ../../../../../obj/ReleaseNASM/gcclibmp3lame-static/../libmp3lame/gain_analysis.d

# Compiles file ../libmp3lame/id3tag.c for the ReleaseNASM configuration...
-include ../../../../../obj/ReleaseNASM/gcclibmp3lame-static/../libmp3lame/id3tag.d
../../../../../obj/ReleaseNASM/gcclibmp3lame-static/../libmp3lame/id3tag.o: ../libmp3lame/id3tag.c
	$(C_COMPILER) $(ReleaseNASM_Preprocessor_Definitions) $(ReleaseNASM_Compiler_Flags) -c ../libmp3lame/id3tag.c $(ReleaseNASM_Include_Path) -o ../../../../../obj/ReleaseNASM/gcclibmp3lame-static/../libmp3lame/id3tag.o
	$(C_COMPILER) $(ReleaseNASM_Preprocessor_Definitions) $(ReleaseNASM_Compiler_Flags) -MM ../libmp3lame/id3tag.c $(ReleaseNASM_Include_Path) > ../../../../../obj/ReleaseNASM/gcclibmp3lame-static/../libmp3lame/id3tag.d

# Compiles file ../libmp3lame/lame.c for the ReleaseNASM configuration...
-include ../../../../../obj/ReleaseNASM/gcclibmp3lame-static/../libmp3lame/lame.d
../../../../../obj/ReleaseNASM/gcclibmp3lame-static/../libmp3lame/lame.o: ../libmp3lame/lame.c
	$(C_COMPILER) $(ReleaseNASM_Preprocessor_Definitions) $(ReleaseNASM_Compiler_Flags) -c ../libmp3lame/lame.c $(ReleaseNASM_Include_Path) -o ../../../../../obj/ReleaseNASM/gcclibmp3lame-static/../libmp3lame/lame.o
	$(C_COMPILER) $(ReleaseNASM_Preprocessor_Definitions) $(ReleaseNASM_Compiler_Flags) -MM ../libmp3lame/lame.c $(ReleaseNASM_Include_Path) > ../../../../../obj/ReleaseNASM/gcclibmp3lame-static/../libmp3lame/lame.d

# Compiles file ../libmp3lame/mpglib_interface.c for the ReleaseNASM configuration...
-include ../../../../../obj/ReleaseNASM/gcclibmp3lame-static/../libmp3lame/mpglib_interface.d
../../../../../obj/ReleaseNASM/gcclibmp3lame-static/../libmp3lame/mpglib_interface.o: ../libmp3lame/mpglib_interface.c
	$(C_COMPILER) $(ReleaseNASM_Preprocessor_Definitions) $(ReleaseNASM_Compiler_Flags) -c ../libmp3lame/mpglib_interface.c $(ReleaseNASM_Include_Path) -o ../../../../../obj/ReleaseNASM/gcclibmp3lame-static/../libmp3lame/mpglib_interface.o
	$(C_COMPILER) $(ReleaseNASM_Preprocessor_Definitions) $(ReleaseNASM_Compiler_Flags) -MM ../libmp3lame/mpglib_interface.c $(ReleaseNASM_Include_Path) > ../../../../../obj/ReleaseNASM/gcclibmp3lame-static/../libmp3lame/mpglib_interface.d

# Compiles file ../libmp3lame/newmdct.c for the ReleaseNASM configuration...
-include ../../../../../obj/ReleaseNASM/gcclibmp3lame-static/../libmp3lame/newmdct.d
../../../../../obj/ReleaseNASM/gcclibmp3lame-static/../libmp3lame/newmdct.o: ../libmp3lame/newmdct.c
	$(C_COMPILER) $(ReleaseNASM_Preprocessor_Definitions) $(ReleaseNASM_Compiler_Flags) -c ../libmp3lame/newmdct.c $(ReleaseNASM_Include_Path) -o ../../../../../obj/ReleaseNASM/gcclibmp3lame-static/../libmp3lame/newmdct.o
	$(C_COMPILER) $(ReleaseNASM_Preprocessor_Definitions) $(ReleaseNASM_Compiler_Flags) -MM ../libmp3lame/newmdct.c $(ReleaseNASM_Include_Path) > ../../../../../obj/ReleaseNASM/gcclibmp3lame-static/../libmp3lame/newmdct.d

# Compiles file ../libmp3lame/presets.c for the ReleaseNASM configuration...
-include ../../../../../obj/ReleaseNASM/gcclibmp3lame-static/../libmp3lame/presets.d
../../../../../obj/ReleaseNASM/gcclibmp3lame-static/../libmp3lame/presets.o: ../libmp3lame/presets.c
	$(C_COMPILER) $(ReleaseNASM_Preprocessor_Definitions) $(ReleaseNASM_Compiler_Flags) -c ../libmp3lame/presets.c $(ReleaseNASM_Include_Path) -o ../../../../../obj/ReleaseNASM/gcclibmp3lame-static/../libmp3lame/presets.o
	$(C_COMPILER) $(ReleaseNASM_Preprocessor_Definitions) $(ReleaseNASM_Compiler_Flags) -MM ../libmp3lame/presets.c $(ReleaseNASM_Include_Path) > ../../../../../obj/ReleaseNASM/gcclibmp3lame-static/../libmp3lame/presets.d

# Compiles file ../libmp3lame/psymodel.c for the ReleaseNASM configuration...
-include ../../../../../obj/ReleaseNASM/gcclibmp3lame-static/../libmp3lame/psymodel.d
../../../../../obj/ReleaseNASM/gcclibmp3lame-static/../libmp3lame/psymodel.o: ../libmp3lame/psymodel.c
	$(C_COMPILER) $(ReleaseNASM_Preprocessor_Definitions) $(ReleaseNASM_Compiler_Flags) -c ../libmp3lame/psymodel.c $(ReleaseNASM_Include_Path) -o ../../../../../obj/ReleaseNASM/gcclibmp3lame-static/../libmp3lame/psymodel.o
	$(C_COMPILER) $(ReleaseNASM_Preprocessor_Definitions) $(ReleaseNASM_Compiler_Flags) -MM ../libmp3lame/psymodel.c $(ReleaseNASM_Include_Path) > ../../../../../obj/ReleaseNASM/gcclibmp3lame-static/../libmp3lame/psymodel.d

# Compiles file ../libmp3lame/quantize.c for the ReleaseNASM configuration...
-include ../../../../../obj/ReleaseNASM/gcclibmp3lame-static/../libmp3lame/quantize.d
../../../../../obj/ReleaseNASM/gcclibmp3lame-static/../libmp3lame/quantize.o: ../libmp3lame/quantize.c
	$(C_COMPILER) $(ReleaseNASM_Preprocessor_Definitions) $(ReleaseNASM_Compiler_Flags) -c ../libmp3lame/quantize.c $(ReleaseNASM_Include_Path) -o ../../../../../obj/ReleaseNASM/gcclibmp3lame-static/../libmp3lame/quantize.o
	$(C_COMPILER) $(ReleaseNASM_Preprocessor_Definitions) $(ReleaseNASM_Compiler_Flags) -MM ../libmp3lame/quantize.c $(ReleaseNASM_Include_Path) > ../../../../../obj/ReleaseNASM/gcclibmp3lame-static/../libmp3lame/quantize.d

# Compiles file ../libmp3lame/quantize_pvt.c for the ReleaseNASM configuration...
-include ../../../../../obj/ReleaseNASM/gcclibmp3lame-static/../libmp3lame/quantize_pvt.d
../../../../../obj/ReleaseNASM/gcclibmp3lame-static/../libmp3lame/quantize_pvt.o: ../libmp3lame/quantize_pvt.c
	$(C_COMPILER) $(ReleaseNASM_Preprocessor_Definitions) $(ReleaseNASM_Compiler_Flags) -c ../libmp3lame/quantize_pvt.c $(ReleaseNASM_Include_Path) -o ../../../../../obj/ReleaseNASM/gcclibmp3lame-static/../libmp3lame/quantize_pvt.o
	$(C_COMPILER) $(ReleaseNASM_Preprocessor_Definitions) $(ReleaseNASM_Compiler_Flags) -MM ../libmp3lame/quantize_pvt.c $(ReleaseNASM_Include_Path) > ../../../../../obj/ReleaseNASM/gcclibmp3lame-static/../libmp3lame/quantize_pvt.d

# Compiles file ../libmp3lame/reservoir.c for the ReleaseNASM configuration...
-include ../../../../../obj/ReleaseNASM/gcclibmp3lame-static/../libmp3lame/reservoir.d
../../../../../obj/ReleaseNASM/gcclibmp3lame-static/../libmp3lame/reservoir.o: ../libmp3lame/reservoir.c
	$(C_COMPILER) $(ReleaseNASM_Preprocessor_Definitions) $(ReleaseNASM_Compiler_Flags) -c ../libmp3lame/reservoir.c $(ReleaseNASM_Include_Path) -o ../../../../../obj/ReleaseNASM/gcclibmp3lame-static/../libmp3lame/reservoir.o
	$(C_COMPILER) $(ReleaseNASM_Preprocessor_Definitions) $(ReleaseNASM_Compiler_Flags) -MM ../libmp3lame/reservoir.c $(ReleaseNASM_Include_Path) > ../../../../../obj/ReleaseNASM/gcclibmp3lame-static/../libmp3lame/reservoir.d

# Compiles file ../libmp3lame/set_get.c for the ReleaseNASM configuration...
-include ../../../../../obj/ReleaseNASM/gcclibmp3lame-static/../libmp3lame/set_get.d
../../../../../obj/ReleaseNASM/gcclibmp3lame-static/../libmp3lame/set_get.o: ../libmp3lame/set_get.c
	$(C_COMPILER) $(ReleaseNASM_Preprocessor_Definitions) $(ReleaseNASM_Compiler_Flags) -c ../libmp3lame/set_get.c $(ReleaseNASM_Include_Path) -o ../../../../../obj/ReleaseNASM/gcclibmp3lame-static/../libmp3lame/set_get.o
	$(C_COMPILER) $(ReleaseNASM_Preprocessor_Definitions) $(ReleaseNASM_Compiler_Flags) -MM ../libmp3lame/set_get.c $(ReleaseNASM_Include_Path) > ../../../../../obj/ReleaseNASM/gcclibmp3lame-static/../libmp3lame/set_get.d

# Compiles file ../libmp3lame/tables.c for the ReleaseNASM configuration...
-include ../../../../../obj/ReleaseNASM/gcclibmp3lame-static/../libmp3lame/tables.d
../../../../../obj/ReleaseNASM/gcclibmp3lame-static/../libmp3lame/tables.o: ../libmp3lame/tables.c
	$(C_COMPILER) $(ReleaseNASM_Preprocessor_Definitions) $(ReleaseNASM_Compiler_Flags) -c ../libmp3lame/tables.c $(ReleaseNASM_Include_Path) -o ../../../../../obj/ReleaseNASM/gcclibmp3lame-static/../libmp3lame/tables.o
	$(C_COMPILER) $(ReleaseNASM_Preprocessor_Definitions) $(ReleaseNASM_Compiler_Flags) -MM ../libmp3lame/tables.c $(ReleaseNASM_Include_Path) > ../../../../../obj/ReleaseNASM/gcclibmp3lame-static/../libmp3lame/tables.d

# Compiles file ../libmp3lame/takehiro.c for the ReleaseNASM configuration...
-include ../../../../../obj/ReleaseNASM/gcclibmp3lame-static/../libmp3lame/takehiro.d
../../../../../obj/ReleaseNASM/gcclibmp3lame-static/../libmp3lame/takehiro.o: ../libmp3lame/takehiro.c
	$(C_COMPILER) $(ReleaseNASM_Preprocessor_Definitions) $(ReleaseNASM_Compiler_Flags) -c ../libmp3lame/takehiro.c $(ReleaseNASM_Include_Path) -o ../../../../../obj/ReleaseNASM/gcclibmp3lame-static/../libmp3lame/takehiro.o
	$(C_COMPILER) $(ReleaseNASM_Preprocessor_Definitions) $(ReleaseNASM_Compiler_Flags) -MM ../libmp3lame/takehiro.c $(ReleaseNASM_Include_Path) > ../../../../../obj/ReleaseNASM/gcclibmp3lame-static/../libmp3lame/takehiro.d

# Compiles file ../libmp3lame/util.c for the ReleaseNASM configuration...
-include ../../../../../obj/ReleaseNASM/gcclibmp3lame-static/../libmp3lame/util.d
../../../../../obj/ReleaseNASM/gcclibmp3lame-static/../libmp3lame/util.o: ../libmp3lame/util.c
	$(C_COMPILER) $(ReleaseNASM_Preprocessor_Definitions) $(ReleaseNASM_Compiler_Flags) -c ../libmp3lame/util.c $(ReleaseNASM_Include_Path) -o ../../../../../obj/ReleaseNASM/gcclibmp3lame-static/../libmp3lame/util.o
	$(C_COMPILER) $(ReleaseNASM_Preprocessor_Definitions) $(ReleaseNASM_Compiler_Flags) -MM ../libmp3lame/util.c $(ReleaseNASM_Include_Path) > ../../../../../obj/ReleaseNASM/gcclibmp3lame-static/../libmp3lame/util.d

# Compiles file ../libmp3lame/vbrquantize.c for the ReleaseNASM configuration...
-include ../../../../../obj/ReleaseNASM/gcclibmp3lame-static/../libmp3lame/vbrquantize.d
../../../../../obj/ReleaseNASM/gcclibmp3lame-static/../libmp3lame/vbrquantize.o: ../libmp3lame/vbrquantize.c
	$(C_COMPILER) $(ReleaseNASM_Preprocessor_Definitions) $(ReleaseNASM_Compiler_Flags) -c ../libmp3lame/vbrquantize.c $(ReleaseNASM_Include_Path) -o ../../../../../obj/ReleaseNASM/gcclibmp3lame-static/../libmp3lame/vbrquantize.o
	$(C_COMPILER) $(ReleaseNASM_Preprocessor_Definitions) $(ReleaseNASM_Compiler_Flags) -MM ../libmp3lame/vbrquantize.c $(ReleaseNASM_Include_Path) > ../../../../../obj/ReleaseNASM/gcclibmp3lame-static/../libmp3lame/vbrquantize.d

# Compiles file ../libmp3lame/VbrTag.c for the ReleaseNASM configuration...
-include ../../../../../obj/ReleaseNASM/gcclibmp3lame-static/../libmp3lame/VbrTag.d
../../../../../obj/ReleaseNASM/gcclibmp3lame-static/../libmp3lame/VbrTag.o: ../libmp3lame/VbrTag.c
	$(C_COMPILER) $(ReleaseNASM_Preprocessor_Definitions) $(ReleaseNASM_Compiler_Flags) -c ../libmp3lame/VbrTag.c $(ReleaseNASM_Include_Path) -o ../../../../../obj/ReleaseNASM/gcclibmp3lame-static/../libmp3lame/VbrTag.o
	$(C_COMPILER) $(ReleaseNASM_Preprocessor_Definitions) $(ReleaseNASM_Compiler_Flags) -MM ../libmp3lame/VbrTag.c $(ReleaseNASM_Include_Path) > ../../../../../obj/ReleaseNASM/gcclibmp3lame-static/../libmp3lame/VbrTag.d

# Compiles file ../libmp3lame/version.c for the ReleaseNASM configuration...
-include ../../../../../obj/ReleaseNASM/gcclibmp3lame-static/../libmp3lame/version.d
../../../../../obj/ReleaseNASM/gcclibmp3lame-static/../libmp3lame/version.o: ../libmp3lame/version.c
	$(C_COMPILER) $(ReleaseNASM_Preprocessor_Definitions) $(ReleaseNASM_Compiler_Flags) -c ../libmp3lame/version.c $(ReleaseNASM_Include_Path) -o ../../../../../obj/ReleaseNASM/gcclibmp3lame-static/../libmp3lame/version.o
	$(C_COMPILER) $(ReleaseNASM_Preprocessor_Definitions) $(ReleaseNASM_Compiler_Flags) -MM ../libmp3lame/version.c $(ReleaseNASM_Include_Path) > ../../../../../obj/ReleaseNASM/gcclibmp3lame-static/../libmp3lame/version.d

# Compiles file ../libmp3lame/vector/xmm_quantize_sub.c for the ReleaseNASM configuration...
-include ../../../../../obj/ReleaseNASM/gcclibmp3lame-static/../libmp3lame/vector/xmm_quantize_sub.d
../../../../../obj/ReleaseNASM/gcclibmp3lame-static/../libmp3lame/vector/xmm_quantize_sub.o: ../libmp3lame/vector/xmm_quantize_sub.c
	$(C_COMPILER) $(ReleaseNASM_Preprocessor_Definitions) $(ReleaseNASM_Compiler_Flags) -c ../libmp3lame/vector/xmm_quantize_sub.c $(ReleaseNASM_Include_Path) -o ../../../../../obj/ReleaseNASM/gcclibmp3lame-static/../libmp3lame/vector/xmm_quantize_sub.o
	$(C_COMPILER) $(ReleaseNASM_Preprocessor_Definitions) $(ReleaseNASM_Compiler_Flags) -MM ../libmp3lame/vector/xmm_quantize_sub.c $(ReleaseNASM_Include_Path) > ../../../../../obj/ReleaseNASM/gcclibmp3lame-static/../libmp3lame/vector/xmm_quantize_sub.d

# Builds the ReleaseSSE2 configuration...
.PHONY: ReleaseSSE2
ReleaseSSE2: create_folders ../../../../../obj/ReleaseSSE2/gcclibmp3lame-static/../libmp3lame/bitstream.o ../../../../../obj/ReleaseSSE2/gcclibmp3lame-static/../libmp3lame/encoder.o ../../../../../obj/ReleaseSSE2/gcclibmp3lame-static/../libmp3lame/fft.o ../../../../../obj/ReleaseSSE2/gcclibmp3lame-static/../libmp3lame/gain_analysis.o ../../../../../obj/ReleaseSSE2/gcclibmp3lame-static/../libmp3lame/id3tag.o ../../../../../obj/ReleaseSSE2/gcclibmp3lame-static/../libmp3lame/lame.o ../../../../../obj/ReleaseSSE2/gcclibmp3lame-static/../libmp3lame/mpglib_interface.o ../../../../../obj/ReleaseSSE2/gcclibmp3lame-static/../libmp3lame/newmdct.o ../../../../../obj/ReleaseSSE2/gcclibmp3lame-static/../libmp3lame/presets.o ../../../../../obj/ReleaseSSE2/gcclibmp3lame-static/../libmp3lame/psymodel.o ../../../../../obj/ReleaseSSE2/gcclibmp3lame-static/../libmp3lame/quantize.o ../../../../../obj/ReleaseSSE2/gcclibmp3lame-static/../libmp3lame/quantize_pvt.o ../../../../../obj/ReleaseSSE2/gcclibmp3lame-static/../libmp3lame/reservoir.o ../../../../../obj/ReleaseSSE2/gcclibmp3lame-static/../libmp3lame/set_get.o ../../../../../obj/ReleaseSSE2/gcclibmp3lame-static/../libmp3lame/tables.o ../../../../../obj/ReleaseSSE2/gcclibmp3lame-static/../libmp3lame/takehiro.o ../../../../../obj/ReleaseSSE2/gcclibmp3lame-static/../libmp3lame/util.o ../../../../../obj/ReleaseSSE2/gcclibmp3lame-static/../libmp3lame/vbrquantize.o ../../../../../obj/ReleaseSSE2/gcclibmp3lame-static/../libmp3lame/VbrTag.o ../../../../../obj/ReleaseSSE2/gcclibmp3lame-static/../libmp3lame/version.o ../../../../../obj/ReleaseSSE2/gcclibmp3lame-static/../libmp3lame/vector/xmm_quantize_sub.o 
	ar rcs ../../../../../output/gccReleaseSSE2/liblibmp3lame-static.a ../../../../../obj/ReleaseSSE2/gcclibmp3lame-static/../libmp3lame/bitstream.o ../../../../../obj/ReleaseSSE2/gcclibmp3lame-static/../libmp3lame/encoder.o ../../../../../obj/ReleaseSSE2/gcclibmp3lame-static/../libmp3lame/fft.o ../../../../../obj/ReleaseSSE2/gcclibmp3lame-static/../libmp3lame/gain_analysis.o ../../../../../obj/ReleaseSSE2/gcclibmp3lame-static/../libmp3lame/id3tag.o ../../../../../obj/ReleaseSSE2/gcclibmp3lame-static/../libmp3lame/lame.o ../../../../../obj/ReleaseSSE2/gcclibmp3lame-static/../libmp3lame/mpglib_interface.o ../../../../../obj/ReleaseSSE2/gcclibmp3lame-static/../libmp3lame/newmdct.o ../../../../../obj/ReleaseSSE2/gcclibmp3lame-static/../libmp3lame/presets.o ../../../../../obj/ReleaseSSE2/gcclibmp3lame-static/../libmp3lame/psymodel.o ../../../../../obj/ReleaseSSE2/gcclibmp3lame-static/../libmp3lame/quantize.o ../../../../../obj/ReleaseSSE2/gcclibmp3lame-static/../libmp3lame/quantize_pvt.o ../../../../../obj/ReleaseSSE2/gcclibmp3lame-static/../libmp3lame/reservoir.o ../../../../../obj/ReleaseSSE2/gcclibmp3lame-static/../libmp3lame/set_get.o ../../../../../obj/ReleaseSSE2/gcclibmp3lame-static/../libmp3lame/tables.o ../../../../../obj/ReleaseSSE2/gcclibmp3lame-static/../libmp3lame/takehiro.o ../../../../../obj/ReleaseSSE2/gcclibmp3lame-static/../libmp3lame/util.o ../../../../../obj/ReleaseSSE2/gcclibmp3lame-static/../libmp3lame/vbrquantize.o ../../../../../obj/ReleaseSSE2/gcclibmp3lame-static/../libmp3lame/VbrTag.o ../../../../../obj/ReleaseSSE2/gcclibmp3lame-static/../libmp3lame/version.o ../../../../../obj/ReleaseSSE2/gcclibmp3lame-static/../libmp3lame/vector/xmm_quantize_sub.o  $(ReleaseSSE2_Implicitly_Linked_Objects)

# Compiles file ../libmp3lame/bitstream.c for the ReleaseSSE2 configuration...
-include ../../../../../obj/ReleaseSSE2/gcclibmp3lame-static/../libmp3lame/bitstream.d
../../../../../obj/ReleaseSSE2/gcclibmp3lame-static/../libmp3lame/bitstream.o: ../libmp3lame/bitstream.c
	$(C_COMPILER) $(ReleaseSSE2_Preprocessor_Definitions) $(ReleaseSSE2_Compiler_Flags) -c ../libmp3lame/bitstream.c $(ReleaseSSE2_Include_Path) -o ../../../../../obj/ReleaseSSE2/gcclibmp3lame-static/../libmp3lame/bitstream.o
	$(C_COMPILER) $(ReleaseSSE2_Preprocessor_Definitions) $(ReleaseSSE2_Compiler_Flags) -MM ../libmp3lame/bitstream.c $(ReleaseSSE2_Include_Path) > ../../../../../obj/ReleaseSSE2/gcclibmp3lame-static/../libmp3lame/bitstream.d

# Compiles file ../libmp3lame/encoder.c for the ReleaseSSE2 configuration...
-include ../../../../../obj/ReleaseSSE2/gcclibmp3lame-static/../libmp3lame/encoder.d
../../../../../obj/ReleaseSSE2/gcclibmp3lame-static/../libmp3lame/encoder.o: ../libmp3lame/encoder.c
	$(C_COMPILER) $(ReleaseSSE2_Preprocessor_Definitions) $(ReleaseSSE2_Compiler_Flags) -c ../libmp3lame/encoder.c $(ReleaseSSE2_Include_Path) -o ../../../../../obj/ReleaseSSE2/gcclibmp3lame-static/../libmp3lame/encoder.o
	$(C_COMPILER) $(ReleaseSSE2_Preprocessor_Definitions) $(ReleaseSSE2_Compiler_Flags) -MM ../libmp3lame/encoder.c $(ReleaseSSE2_Include_Path) > ../../../../../obj/ReleaseSSE2/gcclibmp3lame-static/../libmp3lame/encoder.d

# Compiles file ../libmp3lame/fft.c for the ReleaseSSE2 configuration...
-include ../../../../../obj/ReleaseSSE2/gcclibmp3lame-static/../libmp3lame/fft.d
../../../../../obj/ReleaseSSE2/gcclibmp3lame-static/../libmp3lame/fft.o: ../libmp3lame/fft.c
	$(C_COMPILER) $(ReleaseSSE2_Preprocessor_Definitions) $(ReleaseSSE2_Compiler_Flags) -c ../libmp3lame/fft.c $(ReleaseSSE2_Include_Path) -o ../../../../../obj/ReleaseSSE2/gcclibmp3lame-static/../libmp3lame/fft.o
	$(C_COMPILER) $(ReleaseSSE2_Preprocessor_Definitions) $(ReleaseSSE2_Compiler_Flags) -MM ../libmp3lame/fft.c $(ReleaseSSE2_Include_Path) > ../../../../../obj/ReleaseSSE2/gcclibmp3lame-static/../libmp3lame/fft.d

# Compiles file ../libmp3lame/gain_analysis.c for the ReleaseSSE2 configuration...
-include ../../../../../obj/ReleaseSSE2/gcclibmp3lame-static/../libmp3lame/gain_analysis.d
../../../../../obj/ReleaseSSE2/gcclibmp3lame-static/../libmp3lame/gain_analysis.o: ../libmp3lame/gain_analysis.c
	$(C_COMPILER) $(ReleaseSSE2_Preprocessor_Definitions) $(ReleaseSSE2_Compiler_Flags) -c ../libmp3lame/gain_analysis.c $(ReleaseSSE2_Include_Path) -o ../../../../../obj/ReleaseSSE2/gcclibmp3lame-static/../libmp3lame/gain_analysis.o
	$(C_COMPILER) $(ReleaseSSE2_Preprocessor_Definitions) $(ReleaseSSE2_Compiler_Flags) -MM ../libmp3lame/gain_analysis.c $(ReleaseSSE2_Include_Path) > ../../../../../obj/ReleaseSSE2/gcclibmp3lame-static/../libmp3lame/gain_analysis.d

# Compiles file ../libmp3lame/id3tag.c for the ReleaseSSE2 configuration...
-include ../../../../../obj/ReleaseSSE2/gcclibmp3lame-static/../libmp3lame/id3tag.d
../../../../../obj/ReleaseSSE2/gcclibmp3lame-static/../libmp3lame/id3tag.o: ../libmp3lame/id3tag.c
	$(C_COMPILER) $(ReleaseSSE2_Preprocessor_Definitions) $(ReleaseSSE2_Compiler_Flags) -c ../libmp3lame/id3tag.c $(ReleaseSSE2_Include_Path) -o ../../../../../obj/ReleaseSSE2/gcclibmp3lame-static/../libmp3lame/id3tag.o
	$(C_COMPILER) $(ReleaseSSE2_Preprocessor_Definitions) $(ReleaseSSE2_Compiler_Flags) -MM ../libmp3lame/id3tag.c $(ReleaseSSE2_Include_Path) > ../../../../../obj/ReleaseSSE2/gcclibmp3lame-static/../libmp3lame/id3tag.d

# Compiles file ../libmp3lame/lame.c for the ReleaseSSE2 configuration...
-include ../../../../../obj/ReleaseSSE2/gcclibmp3lame-static/../libmp3lame/lame.d
../../../../../obj/ReleaseSSE2/gcclibmp3lame-static/../libmp3lame/lame.o: ../libmp3lame/lame.c
	$(C_COMPILER) $(ReleaseSSE2_Preprocessor_Definitions) $(ReleaseSSE2_Compiler_Flags) -c ../libmp3lame/lame.c $(ReleaseSSE2_Include_Path) -o ../../../../../obj/ReleaseSSE2/gcclibmp3lame-static/../libmp3lame/lame.o
	$(C_COMPILER) $(ReleaseSSE2_Preprocessor_Definitions) $(ReleaseSSE2_Compiler_Flags) -MM ../libmp3lame/lame.c $(ReleaseSSE2_Include_Path) > ../../../../../obj/ReleaseSSE2/gcclibmp3lame-static/../libmp3lame/lame.d

# Compiles file ../libmp3lame/mpglib_interface.c for the ReleaseSSE2 configuration...
-include ../../../../../obj/ReleaseSSE2/gcclibmp3lame-static/../libmp3lame/mpglib_interface.d
../../../../../obj/ReleaseSSE2/gcclibmp3lame-static/../libmp3lame/mpglib_interface.o: ../libmp3lame/mpglib_interface.c
	$(C_COMPILER) $(ReleaseSSE2_Preprocessor_Definitions) $(ReleaseSSE2_Compiler_Flags) -c ../libmp3lame/mpglib_interface.c $(ReleaseSSE2_Include_Path) -o ../../../../../obj/ReleaseSSE2/gcclibmp3lame-static/../libmp3lame/mpglib_interface.o
	$(C_COMPILER) $(ReleaseSSE2_Preprocessor_Definitions) $(ReleaseSSE2_Compiler_Flags) -MM ../libmp3lame/mpglib_interface.c $(ReleaseSSE2_Include_Path) > ../../../../../obj/ReleaseSSE2/gcclibmp3lame-static/../libmp3lame/mpglib_interface.d

# Compiles file ../libmp3lame/newmdct.c for the ReleaseSSE2 configuration...
-include ../../../../../obj/ReleaseSSE2/gcclibmp3lame-static/../libmp3lame/newmdct.d
../../../../../obj/ReleaseSSE2/gcclibmp3lame-static/../libmp3lame/newmdct.o: ../libmp3lame/newmdct.c
	$(C_COMPILER) $(ReleaseSSE2_Preprocessor_Definitions) $(ReleaseSSE2_Compiler_Flags) -c ../libmp3lame/newmdct.c $(ReleaseSSE2_Include_Path) -o ../../../../../obj/ReleaseSSE2/gcclibmp3lame-static/../libmp3lame/newmdct.o
	$(C_COMPILER) $(ReleaseSSE2_Preprocessor_Definitions) $(ReleaseSSE2_Compiler_Flags) -MM ../libmp3lame/newmdct.c $(ReleaseSSE2_Include_Path) > ../../../../../obj/ReleaseSSE2/gcclibmp3lame-static/../libmp3lame/newmdct.d

# Compiles file ../libmp3lame/presets.c for the ReleaseSSE2 configuration...
-include ../../../../../obj/ReleaseSSE2/gcclibmp3lame-static/../libmp3lame/presets.d
../../../../../obj/ReleaseSSE2/gcclibmp3lame-static/../libmp3lame/presets.o: ../libmp3lame/presets.c
	$(C_COMPILER) $(ReleaseSSE2_Preprocessor_Definitions) $(ReleaseSSE2_Compiler_Flags) -c ../libmp3lame/presets.c $(ReleaseSSE2_Include_Path) -o ../../../../../obj/ReleaseSSE2/gcclibmp3lame-static/../libmp3lame/presets.o
	$(C_COMPILER) $(ReleaseSSE2_Preprocessor_Definitions) $(ReleaseSSE2_Compiler_Flags) -MM ../libmp3lame/presets.c $(ReleaseSSE2_Include_Path) > ../../../../../obj/ReleaseSSE2/gcclibmp3lame-static/../libmp3lame/presets.d

# Compiles file ../libmp3lame/psymodel.c for the ReleaseSSE2 configuration...
-include ../../../../../obj/ReleaseSSE2/gcclibmp3lame-static/../libmp3lame/psymodel.d
../../../../../obj/ReleaseSSE2/gcclibmp3lame-static/../libmp3lame/psymodel.o: ../libmp3lame/psymodel.c
	$(C_COMPILER) $(ReleaseSSE2_Preprocessor_Definitions) $(ReleaseSSE2_Compiler_Flags) -c ../libmp3lame/psymodel.c $(ReleaseSSE2_Include_Path) -o ../../../../../obj/ReleaseSSE2/gcclibmp3lame-static/../libmp3lame/psymodel.o
	$(C_COMPILER) $(ReleaseSSE2_Preprocessor_Definitions) $(ReleaseSSE2_Compiler_Flags) -MM ../libmp3lame/psymodel.c $(ReleaseSSE2_Include_Path) > ../../../../../obj/ReleaseSSE2/gcclibmp3lame-static/../libmp3lame/psymodel.d

# Compiles file ../libmp3lame/quantize.c for the ReleaseSSE2 configuration...
-include ../../../../../obj/ReleaseSSE2/gcclibmp3lame-static/../libmp3lame/quantize.d
../../../../../obj/ReleaseSSE2/gcclibmp3lame-static/../libmp3lame/quantize.o: ../libmp3lame/quantize.c
	$(C_COMPILER) $(ReleaseSSE2_Preprocessor_Definitions) $(ReleaseSSE2_Compiler_Flags) -c ../libmp3lame/quantize.c $(ReleaseSSE2_Include_Path) -o ../../../../../obj/ReleaseSSE2/gcclibmp3lame-static/../libmp3lame/quantize.o
	$(C_COMPILER) $(ReleaseSSE2_Preprocessor_Definitions) $(ReleaseSSE2_Compiler_Flags) -MM ../libmp3lame/quantize.c $(ReleaseSSE2_Include_Path) > ../../../../../obj/ReleaseSSE2/gcclibmp3lame-static/../libmp3lame/quantize.d

# Compiles file ../libmp3lame/quantize_pvt.c for the ReleaseSSE2 configuration...
-include ../../../../../obj/ReleaseSSE2/gcclibmp3lame-static/../libmp3lame/quantize_pvt.d
../../../../../obj/ReleaseSSE2/gcclibmp3lame-static/../libmp3lame/quantize_pvt.o: ../libmp3lame/quantize_pvt.c
	$(C_COMPILER) $(ReleaseSSE2_Preprocessor_Definitions) $(ReleaseSSE2_Compiler_Flags) -c ../libmp3lame/quantize_pvt.c $(ReleaseSSE2_Include_Path) -o ../../../../../obj/ReleaseSSE2/gcclibmp3lame-static/../libmp3lame/quantize_pvt.o
	$(C_COMPILER) $(ReleaseSSE2_Preprocessor_Definitions) $(ReleaseSSE2_Compiler_Flags) -MM ../libmp3lame/quantize_pvt.c $(ReleaseSSE2_Include_Path) > ../../../../../obj/ReleaseSSE2/gcclibmp3lame-static/../libmp3lame/quantize_pvt.d

# Compiles file ../libmp3lame/reservoir.c for the ReleaseSSE2 configuration...
-include ../../../../../obj/ReleaseSSE2/gcclibmp3lame-static/../libmp3lame/reservoir.d
../../../../../obj/ReleaseSSE2/gcclibmp3lame-static/../libmp3lame/reservoir.o: ../libmp3lame/reservoir.c
	$(C_COMPILER) $(ReleaseSSE2_Preprocessor_Definitions) $(ReleaseSSE2_Compiler_Flags) -c ../libmp3lame/reservoir.c $(ReleaseSSE2_Include_Path) -o ../../../../../obj/ReleaseSSE2/gcclibmp3lame-static/../libmp3lame/reservoir.o
	$(C_COMPILER) $(ReleaseSSE2_Preprocessor_Definitions) $(ReleaseSSE2_Compiler_Flags) -MM ../libmp3lame/reservoir.c $(ReleaseSSE2_Include_Path) > ../../../../../obj/ReleaseSSE2/gcclibmp3lame-static/../libmp3lame/reservoir.d

# Compiles file ../libmp3lame/set_get.c for the ReleaseSSE2 configuration...
-include ../../../../../obj/ReleaseSSE2/gcclibmp3lame-static/../libmp3lame/set_get.d
../../../../../obj/ReleaseSSE2/gcclibmp3lame-static/../libmp3lame/set_get.o: ../libmp3lame/set_get.c
	$(C_COMPILER) $(ReleaseSSE2_Preprocessor_Definitions) $(ReleaseSSE2_Compiler_Flags) -c ../libmp3lame/set_get.c $(ReleaseSSE2_Include_Path) -o ../../../../../obj/ReleaseSSE2/gcclibmp3lame-static/../libmp3lame/set_get.o
	$(C_COMPILER) $(ReleaseSSE2_Preprocessor_Definitions) $(ReleaseSSE2_Compiler_Flags) -MM ../libmp3lame/set_get.c $(ReleaseSSE2_Include_Path) > ../../../../../obj/ReleaseSSE2/gcclibmp3lame-static/../libmp3lame/set_get.d

# Compiles file ../libmp3lame/tables.c for the ReleaseSSE2 configuration...
-include ../../../../../obj/ReleaseSSE2/gcclibmp3lame-static/../libmp3lame/tables.d
../../../../../obj/ReleaseSSE2/gcclibmp3lame-static/../libmp3lame/tables.o: ../libmp3lame/tables.c
	$(C_COMPILER) $(ReleaseSSE2_Preprocessor_Definitions) $(ReleaseSSE2_Compiler_Flags) -c ../libmp3lame/tables.c $(ReleaseSSE2_Include_Path) -o ../../../../../obj/ReleaseSSE2/gcclibmp3lame-static/../libmp3lame/tables.o
	$(C_COMPILER) $(ReleaseSSE2_Preprocessor_Definitions) $(ReleaseSSE2_Compiler_Flags) -MM ../libmp3lame/tables.c $(ReleaseSSE2_Include_Path) > ../../../../../obj/ReleaseSSE2/gcclibmp3lame-static/../libmp3lame/tables.d

# Compiles file ../libmp3lame/takehiro.c for the ReleaseSSE2 configuration...
-include ../../../../../obj/ReleaseSSE2/gcclibmp3lame-static/../libmp3lame/takehiro.d
../../../../../obj/ReleaseSSE2/gcclibmp3lame-static/../libmp3lame/takehiro.o: ../libmp3lame/takehiro.c
	$(C_COMPILER) $(ReleaseSSE2_Preprocessor_Definitions) $(ReleaseSSE2_Compiler_Flags) -c ../libmp3lame/takehiro.c $(ReleaseSSE2_Include_Path) -o ../../../../../obj/ReleaseSSE2/gcclibmp3lame-static/../libmp3lame/takehiro.o
	$(C_COMPILER) $(ReleaseSSE2_Preprocessor_Definitions) $(ReleaseSSE2_Compiler_Flags) -MM ../libmp3lame/takehiro.c $(ReleaseSSE2_Include_Path) > ../../../../../obj/ReleaseSSE2/gcclibmp3lame-static/../libmp3lame/takehiro.d

# Compiles file ../libmp3lame/util.c for the ReleaseSSE2 configuration...
-include ../../../../../obj/ReleaseSSE2/gcclibmp3lame-static/../libmp3lame/util.d
../../../../../obj/ReleaseSSE2/gcclibmp3lame-static/../libmp3lame/util.o: ../libmp3lame/util.c
	$(C_COMPILER) $(ReleaseSSE2_Preprocessor_Definitions) $(ReleaseSSE2_Compiler_Flags) -c ../libmp3lame/util.c $(ReleaseSSE2_Include_Path) -o ../../../../../obj/ReleaseSSE2/gcclibmp3lame-static/../libmp3lame/util.o
	$(C_COMPILER) $(ReleaseSSE2_Preprocessor_Definitions) $(ReleaseSSE2_Compiler_Flags) -MM ../libmp3lame/util.c $(ReleaseSSE2_Include_Path) > ../../../../../obj/ReleaseSSE2/gcclibmp3lame-static/../libmp3lame/util.d

# Compiles file ../libmp3lame/vbrquantize.c for the ReleaseSSE2 configuration...
-include ../../../../../obj/ReleaseSSE2/gcclibmp3lame-static/../libmp3lame/vbrquantize.d
../../../../../obj/ReleaseSSE2/gcclibmp3lame-static/../libmp3lame/vbrquantize.o: ../libmp3lame/vbrquantize.c
	$(C_COMPILER) $(ReleaseSSE2_Preprocessor_Definitions) $(ReleaseSSE2_Compiler_Flags) -c ../libmp3lame/vbrquantize.c $(ReleaseSSE2_Include_Path) -o ../../../../../obj/ReleaseSSE2/gcclibmp3lame-static/../libmp3lame/vbrquantize.o
	$(C_COMPILER) $(ReleaseSSE2_Preprocessor_Definitions) $(ReleaseSSE2_Compiler_Flags) -MM ../libmp3lame/vbrquantize.c $(ReleaseSSE2_Include_Path) > ../../../../../obj/ReleaseSSE2/gcclibmp3lame-static/../libmp3lame/vbrquantize.d

# Compiles file ../libmp3lame/VbrTag.c for the ReleaseSSE2 configuration...
-include ../../../../../obj/ReleaseSSE2/gcclibmp3lame-static/../libmp3lame/VbrTag.d
../../../../../obj/ReleaseSSE2/gcclibmp3lame-static/../libmp3lame/VbrTag.o: ../libmp3lame/VbrTag.c
	$(C_COMPILER) $(ReleaseSSE2_Preprocessor_Definitions) $(ReleaseSSE2_Compiler_Flags) -c ../libmp3lame/VbrTag.c $(ReleaseSSE2_Include_Path) -o ../../../../../obj/ReleaseSSE2/gcclibmp3lame-static/../libmp3lame/VbrTag.o
	$(C_COMPILER) $(ReleaseSSE2_Preprocessor_Definitions) $(ReleaseSSE2_Compiler_Flags) -MM ../libmp3lame/VbrTag.c $(ReleaseSSE2_Include_Path) > ../../../../../obj/ReleaseSSE2/gcclibmp3lame-static/../libmp3lame/VbrTag.d

# Compiles file ../libmp3lame/version.c for the ReleaseSSE2 configuration...
-include ../../../../../obj/ReleaseSSE2/gcclibmp3lame-static/../libmp3lame/version.d
../../../../../obj/ReleaseSSE2/gcclibmp3lame-static/../libmp3lame/version.o: ../libmp3lame/version.c
	$(C_COMPILER) $(ReleaseSSE2_Preprocessor_Definitions) $(ReleaseSSE2_Compiler_Flags) -c ../libmp3lame/version.c $(ReleaseSSE2_Include_Path) -o ../../../../../obj/ReleaseSSE2/gcclibmp3lame-static/../libmp3lame/version.o
	$(C_COMPILER) $(ReleaseSSE2_Preprocessor_Definitions) $(ReleaseSSE2_Compiler_Flags) -MM ../libmp3lame/version.c $(ReleaseSSE2_Include_Path) > ../../../../../obj/ReleaseSSE2/gcclibmp3lame-static/../libmp3lame/version.d

# Compiles file ../libmp3lame/vector/xmm_quantize_sub.c for the ReleaseSSE2 configuration...
-include ../../../../../obj/ReleaseSSE2/gcclibmp3lame-static/../libmp3lame/vector/xmm_quantize_sub.d
../../../../../obj/ReleaseSSE2/gcclibmp3lame-static/../libmp3lame/vector/xmm_quantize_sub.o: ../libmp3lame/vector/xmm_quantize_sub.c
	$(C_COMPILER) $(ReleaseSSE2_Preprocessor_Definitions) $(ReleaseSSE2_Compiler_Flags) -c ../libmp3lame/vector/xmm_quantize_sub.c $(ReleaseSSE2_Include_Path) -o ../../../../../obj/ReleaseSSE2/gcclibmp3lame-static/../libmp3lame/vector/xmm_quantize_sub.o
	$(C_COMPILER) $(ReleaseSSE2_Preprocessor_Definitions) $(ReleaseSSE2_Compiler_Flags) -MM ../libmp3lame/vector/xmm_quantize_sub.c $(ReleaseSSE2_Include_Path) > ../../../../../obj/ReleaseSSE2/gcclibmp3lame-static/../libmp3lame/vector/xmm_quantize_sub.d

# Builds the Release configuration...
.PHONY: Release
Release: create_folders ../../../../../obj/Release/gcclibmp3lame-static/../libmp3lame/bitstream.o ../../../../../obj/Release/gcclibmp3lame-static/../libmp3lame/encoder.o ../../../../../obj/Release/gcclibmp3lame-static/../libmp3lame/fft.o ../../../../../obj/Release/gcclibmp3lame-static/../libmp3lame/gain_analysis.o ../../../../../obj/Release/gcclibmp3lame-static/../libmp3lame/id3tag.o ../../../../../obj/Release/gcclibmp3lame-static/../libmp3lame/lame.o ../../../../../obj/Release/gcclibmp3lame-static/../libmp3lame/mpglib_interface.o ../../../../../obj/Release/gcclibmp3lame-static/../libmp3lame/newmdct.o ../../../../../obj/Release/gcclibmp3lame-static/../libmp3lame/presets.o ../../../../../obj/Release/gcclibmp3lame-static/../libmp3lame/psymodel.o ../../../../../obj/Release/gcclibmp3lame-static/../libmp3lame/quantize.o ../../../../../obj/Release/gcclibmp3lame-static/../libmp3lame/quantize_pvt.o ../../../../../obj/Release/gcclibmp3lame-static/../libmp3lame/reservoir.o ../../../../../obj/Release/gcclibmp3lame-static/../libmp3lame/set_get.o ../../../../../obj/Release/gcclibmp3lame-static/../libmp3lame/tables.o ../../../../../obj/Release/gcclibmp3lame-static/../libmp3lame/takehiro.o ../../../../../obj/Release/gcclibmp3lame-static/../libmp3lame/util.o ../../../../../obj/Release/gcclibmp3lame-static/../libmp3lame/vbrquantize.o ../../../../../obj/Release/gcclibmp3lame-static/../libmp3lame/VbrTag.o ../../../../../obj/Release/gcclibmp3lame-static/../libmp3lame/version.o ../../../../../obj/Release/gcclibmp3lame-static/../libmp3lame/vector/xmm_quantize_sub.o 
	ar rcs ../../../../../output/gccRelease/liblibmp3lame-static.a ../../../../../obj/Release/gcclibmp3lame-static/../libmp3lame/bitstream.o ../../../../../obj/Release/gcclibmp3lame-static/../libmp3lame/encoder.o ../../../../../obj/Release/gcclibmp3lame-static/../libmp3lame/fft.o ../../../../../obj/Release/gcclibmp3lame-static/../libmp3lame/gain_analysis.o ../../../../../obj/Release/gcclibmp3lame-static/../libmp3lame/id3tag.o ../../../../../obj/Release/gcclibmp3lame-static/../libmp3lame/lame.o ../../../../../obj/Release/gcclibmp3lame-static/../libmp3lame/mpglib_interface.o ../../../../../obj/Release/gcclibmp3lame-static/../libmp3lame/newmdct.o ../../../../../obj/Release/gcclibmp3lame-static/../libmp3lame/presets.o ../../../../../obj/Release/gcclibmp3lame-static/../libmp3lame/psymodel.o ../../../../../obj/Release/gcclibmp3lame-static/../libmp3lame/quantize.o ../../../../../obj/Release/gcclibmp3lame-static/../libmp3lame/quantize_pvt.o ../../../../../obj/Release/gcclibmp3lame-static/../libmp3lame/reservoir.o ../../../../../obj/Release/gcclibmp3lame-static/../libmp3lame/set_get.o ../../../../../obj/Release/gcclibmp3lame-static/../libmp3lame/tables.o ../../../../../obj/Release/gcclibmp3lame-static/../libmp3lame/takehiro.o ../../../../../obj/Release/gcclibmp3lame-static/../libmp3lame/util.o ../../../../../obj/Release/gcclibmp3lame-static/../libmp3lame/vbrquantize.o ../../../../../obj/Release/gcclibmp3lame-static/../libmp3lame/VbrTag.o ../../../../../obj/Release/gcclibmp3lame-static/../libmp3lame/version.o ../../../../../obj/Release/gcclibmp3lame-static/../libmp3lame/vector/xmm_quantize_sub.o  $(Release_Implicitly_Linked_Objects)

# Compiles file ../libmp3lame/bitstream.c for the Release configuration...
-include ../../../../../obj/Release/gcclibmp3lame-static/../libmp3lame/bitstream.d
../../../../../obj/Release/gcclibmp3lame-static/../libmp3lame/bitstream.o: ../libmp3lame/bitstream.c
	$(C_COMPILER) $(Release_Preprocessor_Definitions) $(Release_Compiler_Flags) -c ../libmp3lame/bitstream.c $(Release_Include_Path) -o ../../../../../obj/Release/gcclibmp3lame-static/../libmp3lame/bitstream.o
	$(C_COMPILER) $(Release_Preprocessor_Definitions) $(Release_Compiler_Flags) -MM ../libmp3lame/bitstream.c $(Release_Include_Path) > ../../../../../obj/Release/gcclibmp3lame-static/../libmp3lame/bitstream.d

# Compiles file ../libmp3lame/encoder.c for the Release configuration...
-include ../../../../../obj/Release/gcclibmp3lame-static/../libmp3lame/encoder.d
../../../../../obj/Release/gcclibmp3lame-static/../libmp3lame/encoder.o: ../libmp3lame/encoder.c
	$(C_COMPILER) $(Release_Preprocessor_Definitions) $(Release_Compiler_Flags) -c ../libmp3lame/encoder.c $(Release_Include_Path) -o ../../../../../obj/Release/gcclibmp3lame-static/../libmp3lame/encoder.o
	$(C_COMPILER) $(Release_Preprocessor_Definitions) $(Release_Compiler_Flags) -MM ../libmp3lame/encoder.c $(Release_Include_Path) > ../../../../../obj/Release/gcclibmp3lame-static/../libmp3lame/encoder.d

# Compiles file ../libmp3lame/fft.c for the Release configuration...
-include ../../../../../obj/Release/gcclibmp3lame-static/../libmp3lame/fft.d
../../../../../obj/Release/gcclibmp3lame-static/../libmp3lame/fft.o: ../libmp3lame/fft.c
	$(C_COMPILER) $(Release_Preprocessor_Definitions) $(Release_Compiler_Flags) -c ../libmp3lame/fft.c $(Release_Include_Path) -o ../../../../../obj/Release/gcclibmp3lame-static/../libmp3lame/fft.o
	$(C_COMPILER) $(Release_Preprocessor_Definitions) $(Release_Compiler_Flags) -MM ../libmp3lame/fft.c $(Release_Include_Path) > ../../../../../obj/Release/gcclibmp3lame-static/../libmp3lame/fft.d

# Compiles file ../libmp3lame/gain_analysis.c for the Release configuration...
-include ../../../../../obj/Release/gcclibmp3lame-static/../libmp3lame/gain_analysis.d
../../../../../obj/Release/gcclibmp3lame-static/../libmp3lame/gain_analysis.o: ../libmp3lame/gain_analysis.c
	$(C_COMPILER) $(Release_Preprocessor_Definitions) $(Release_Compiler_Flags) -c ../libmp3lame/gain_analysis.c $(Release_Include_Path) -o ../../../../../obj/Release/gcclibmp3lame-static/../libmp3lame/gain_analysis.o
	$(C_COMPILER) $(Release_Preprocessor_Definitions) $(Release_Compiler_Flags) -MM ../libmp3lame/gain_analysis.c $(Release_Include_Path) > ../../../../../obj/Release/gcclibmp3lame-static/../libmp3lame/gain_analysis.d

# Compiles file ../libmp3lame/id3tag.c for the Release configuration...
-include ../../../../../obj/Release/gcclibmp3lame-static/../libmp3lame/id3tag.d
../../../../../obj/Release/gcclibmp3lame-static/../libmp3lame/id3tag.o: ../libmp3lame/id3tag.c
	$(C_COMPILER) $(Release_Preprocessor_Definitions) $(Release_Compiler_Flags) -c ../libmp3lame/id3tag.c $(Release_Include_Path) -o ../../../../../obj/Release/gcclibmp3lame-static/../libmp3lame/id3tag.o
	$(C_COMPILER) $(Release_Preprocessor_Definitions) $(Release_Compiler_Flags) -MM ../libmp3lame/id3tag.c $(Release_Include_Path) > ../../../../../obj/Release/gcclibmp3lame-static/../libmp3lame/id3tag.d

# Compiles file ../libmp3lame/lame.c for the Release configuration...
-include ../../../../../obj/Release/gcclibmp3lame-static/../libmp3lame/lame.d
../../../../../obj/Release/gcclibmp3lame-static/../libmp3lame/lame.o: ../libmp3lame/lame.c
	$(C_COMPILER) $(Release_Preprocessor_Definitions) $(Release_Compiler_Flags) -c ../libmp3lame/lame.c $(Release_Include_Path) -o ../../../../../obj/Release/gcclibmp3lame-static/../libmp3lame/lame.o
	$(C_COMPILER) $(Release_Preprocessor_Definitions) $(Release_Compiler_Flags) -MM ../libmp3lame/lame.c $(Release_Include_Path) > ../../../../../obj/Release/gcclibmp3lame-static/../libmp3lame/lame.d

# Compiles file ../libmp3lame/mpglib_interface.c for the Release configuration...
-include ../../../../../obj/Release/gcclibmp3lame-static/../libmp3lame/mpglib_interface.d
../../../../../obj/Release/gcclibmp3lame-static/../libmp3lame/mpglib_interface.o: ../libmp3lame/mpglib_interface.c
	$(C_COMPILER) $(Release_Preprocessor_Definitions) $(Release_Compiler_Flags) -c ../libmp3lame/mpglib_interface.c $(Release_Include_Path) -o ../../../../../obj/Release/gcclibmp3lame-static/../libmp3lame/mpglib_interface.o
	$(C_COMPILER) $(Release_Preprocessor_Definitions) $(Release_Compiler_Flags) -MM ../libmp3lame/mpglib_interface.c $(Release_Include_Path) > ../../../../../obj/Release/gcclibmp3lame-static/../libmp3lame/mpglib_interface.d

# Compiles file ../libmp3lame/newmdct.c for the Release configuration...
-include ../../../../../obj/Release/gcclibmp3lame-static/../libmp3lame/newmdct.d
../../../../../obj/Release/gcclibmp3lame-static/../libmp3lame/newmdct.o: ../libmp3lame/newmdct.c
	$(C_COMPILER) $(Release_Preprocessor_Definitions) $(Release_Compiler_Flags) -c ../libmp3lame/newmdct.c $(Release_Include_Path) -o ../../../../../obj/Release/gcclibmp3lame-static/../libmp3lame/newmdct.o
	$(C_COMPILER) $(Release_Preprocessor_Definitions) $(Release_Compiler_Flags) -MM ../libmp3lame/newmdct.c $(Release_Include_Path) > ../../../../../obj/Release/gcclibmp3lame-static/../libmp3lame/newmdct.d

# Compiles file ../libmp3lame/presets.c for the Release configuration...
-include ../../../../../obj/Release/gcclibmp3lame-static/../libmp3lame/presets.d
../../../../../obj/Release/gcclibmp3lame-static/../libmp3lame/presets.o: ../libmp3lame/presets.c
	$(C_COMPILER) $(Release_Preprocessor_Definitions) $(Release_Compiler_Flags) -c ../libmp3lame/presets.c $(Release_Include_Path) -o ../../../../../obj/Release/gcclibmp3lame-static/../libmp3lame/presets.o
	$(C_COMPILER) $(Release_Preprocessor_Definitions) $(Release_Compiler_Flags) -MM ../libmp3lame/presets.c $(Release_Include_Path) > ../../../../../obj/Release/gcclibmp3lame-static/../libmp3lame/presets.d

# Compiles file ../libmp3lame/psymodel.c for the Release configuration...
-include ../../../../../obj/Release/gcclibmp3lame-static/../libmp3lame/psymodel.d
../../../../../obj/Release/gcclibmp3lame-static/../libmp3lame/psymodel.o: ../libmp3lame/psymodel.c
	$(C_COMPILER) $(Release_Preprocessor_Definitions) $(Release_Compiler_Flags) -c ../libmp3lame/psymodel.c $(Release_Include_Path) -o ../../../../../obj/Release/gcclibmp3lame-static/../libmp3lame/psymodel.o
	$(C_COMPILER) $(Release_Preprocessor_Definitions) $(Release_Compiler_Flags) -MM ../libmp3lame/psymodel.c $(Release_Include_Path) > ../../../../../obj/Release/gcclibmp3lame-static/../libmp3lame/psymodel.d

# Compiles file ../libmp3lame/quantize.c for the Release configuration...
-include ../../../../../obj/Release/gcclibmp3lame-static/../libmp3lame/quantize.d
../../../../../obj/Release/gcclibmp3lame-static/../libmp3lame/quantize.o: ../libmp3lame/quantize.c
	$(C_COMPILER) $(Release_Preprocessor_Definitions) $(Release_Compiler_Flags) -c ../libmp3lame/quantize.c $(Release_Include_Path) -o ../../../../../obj/Release/gcclibmp3lame-static/../libmp3lame/quantize.o
	$(C_COMPILER) $(Release_Preprocessor_Definitions) $(Release_Compiler_Flags) -MM ../libmp3lame/quantize.c $(Release_Include_Path) > ../../../../../obj/Release/gcclibmp3lame-static/../libmp3lame/quantize.d

# Compiles file ../libmp3lame/quantize_pvt.c for the Release configuration...
-include ../../../../../obj/Release/gcclibmp3lame-static/../libmp3lame/quantize_pvt.d
../../../../../obj/Release/gcclibmp3lame-static/../libmp3lame/quantize_pvt.o: ../libmp3lame/quantize_pvt.c
	$(C_COMPILER) $(Release_Preprocessor_Definitions) $(Release_Compiler_Flags) -c ../libmp3lame/quantize_pvt.c $(Release_Include_Path) -o ../../../../../obj/Release/gcclibmp3lame-static/../libmp3lame/quantize_pvt.o
	$(C_COMPILER) $(Release_Preprocessor_Definitions) $(Release_Compiler_Flags) -MM ../libmp3lame/quantize_pvt.c $(Release_Include_Path) > ../../../../../obj/Release/gcclibmp3lame-static/../libmp3lame/quantize_pvt.d

# Compiles file ../libmp3lame/reservoir.c for the Release configuration...
-include ../../../../../obj/Release/gcclibmp3lame-static/../libmp3lame/reservoir.d
../../../../../obj/Release/gcclibmp3lame-static/../libmp3lame/reservoir.o: ../libmp3lame/reservoir.c
	$(C_COMPILER) $(Release_Preprocessor_Definitions) $(Release_Compiler_Flags) -c ../libmp3lame/reservoir.c $(Release_Include_Path) -o ../../../../../obj/Release/gcclibmp3lame-static/../libmp3lame/reservoir.o
	$(C_COMPILER) $(Release_Preprocessor_Definitions) $(Release_Compiler_Flags) -MM ../libmp3lame/reservoir.c $(Release_Include_Path) > ../../../../../obj/Release/gcclibmp3lame-static/../libmp3lame/reservoir.d

# Compiles file ../libmp3lame/set_get.c for the Release configuration...
-include ../../../../../obj/Release/gcclibmp3lame-static/../libmp3lame/set_get.d
../../../../../obj/Release/gcclibmp3lame-static/../libmp3lame/set_get.o: ../libmp3lame/set_get.c
	$(C_COMPILER) $(Release_Preprocessor_Definitions) $(Release_Compiler_Flags) -c ../libmp3lame/set_get.c $(Release_Include_Path) -o ../../../../../obj/Release/gcclibmp3lame-static/../libmp3lame/set_get.o
	$(C_COMPILER) $(Release_Preprocessor_Definitions) $(Release_Compiler_Flags) -MM ../libmp3lame/set_get.c $(Release_Include_Path) > ../../../../../obj/Release/gcclibmp3lame-static/../libmp3lame/set_get.d

# Compiles file ../libmp3lame/tables.c for the Release configuration...
-include ../../../../../obj/Release/gcclibmp3lame-static/../libmp3lame/tables.d
../../../../../obj/Release/gcclibmp3lame-static/../libmp3lame/tables.o: ../libmp3lame/tables.c
	$(C_COMPILER) $(Release_Preprocessor_Definitions) $(Release_Compiler_Flags) -c ../libmp3lame/tables.c $(Release_Include_Path) -o ../../../../../obj/Release/gcclibmp3lame-static/../libmp3lame/tables.o
	$(C_COMPILER) $(Release_Preprocessor_Definitions) $(Release_Compiler_Flags) -MM ../libmp3lame/tables.c $(Release_Include_Path) > ../../../../../obj/Release/gcclibmp3lame-static/../libmp3lame/tables.d

# Compiles file ../libmp3lame/takehiro.c for the Release configuration...
-include ../../../../../obj/Release/gcclibmp3lame-static/../libmp3lame/takehiro.d
../../../../../obj/Release/gcclibmp3lame-static/../libmp3lame/takehiro.o: ../libmp3lame/takehiro.c
	$(C_COMPILER) $(Release_Preprocessor_Definitions) $(Release_Compiler_Flags) -c ../libmp3lame/takehiro.c $(Release_Include_Path) -o ../../../../../obj/Release/gcclibmp3lame-static/../libmp3lame/takehiro.o
	$(C_COMPILER) $(Release_Preprocessor_Definitions) $(Release_Compiler_Flags) -MM ../libmp3lame/takehiro.c $(Release_Include_Path) > ../../../../../obj/Release/gcclibmp3lame-static/../libmp3lame/takehiro.d

# Compiles file ../libmp3lame/util.c for the Release configuration...
-include ../../../../../obj/Release/gcclibmp3lame-static/../libmp3lame/util.d
../../../../../obj/Release/gcclibmp3lame-static/../libmp3lame/util.o: ../libmp3lame/util.c
	$(C_COMPILER) $(Release_Preprocessor_Definitions) $(Release_Compiler_Flags) -c ../libmp3lame/util.c $(Release_Include_Path) -o ../../../../../obj/Release/gcclibmp3lame-static/../libmp3lame/util.o
	$(C_COMPILER) $(Release_Preprocessor_Definitions) $(Release_Compiler_Flags) -MM ../libmp3lame/util.c $(Release_Include_Path) > ../../../../../obj/Release/gcclibmp3lame-static/../libmp3lame/util.d

# Compiles file ../libmp3lame/vbrquantize.c for the Release configuration...
-include ../../../../../obj/Release/gcclibmp3lame-static/../libmp3lame/vbrquantize.d
../../../../../obj/Release/gcclibmp3lame-static/../libmp3lame/vbrquantize.o: ../libmp3lame/vbrquantize.c
	$(C_COMPILER) $(Release_Preprocessor_Definitions) $(Release_Compiler_Flags) -c ../libmp3lame/vbrquantize.c $(Release_Include_Path) -o ../../../../../obj/Release/gcclibmp3lame-static/../libmp3lame/vbrquantize.o
	$(C_COMPILER) $(Release_Preprocessor_Definitions) $(Release_Compiler_Flags) -MM ../libmp3lame/vbrquantize.c $(Release_Include_Path) > ../../../../../obj/Release/gcclibmp3lame-static/../libmp3lame/vbrquantize.d

# Compiles file ../libmp3lame/VbrTag.c for the Release configuration...
-include ../../../../../obj/Release/gcclibmp3lame-static/../libmp3lame/VbrTag.d
../../../../../obj/Release/gcclibmp3lame-static/../libmp3lame/VbrTag.o: ../libmp3lame/VbrTag.c
	$(C_COMPILER) $(Release_Preprocessor_Definitions) $(Release_Compiler_Flags) -c ../libmp3lame/VbrTag.c $(Release_Include_Path) -o ../../../../../obj/Release/gcclibmp3lame-static/../libmp3lame/VbrTag.o
	$(C_COMPILER) $(Release_Preprocessor_Definitions) $(Release_Compiler_Flags) -MM ../libmp3lame/VbrTag.c $(Release_Include_Path) > ../../../../../obj/Release/gcclibmp3lame-static/../libmp3lame/VbrTag.d

# Compiles file ../libmp3lame/version.c for the Release configuration...
-include ../../../../../obj/Release/gcclibmp3lame-static/../libmp3lame/version.d
../../../../../obj/Release/gcclibmp3lame-static/../libmp3lame/version.o: ../libmp3lame/version.c
	$(C_COMPILER) $(Release_Preprocessor_Definitions) $(Release_Compiler_Flags) -c ../libmp3lame/version.c $(Release_Include_Path) -o ../../../../../obj/Release/gcclibmp3lame-static/../libmp3lame/version.o
	$(C_COMPILER) $(Release_Preprocessor_Definitions) $(Release_Compiler_Flags) -MM ../libmp3lame/version.c $(Release_Include_Path) > ../../../../../obj/Release/gcclibmp3lame-static/../libmp3lame/version.d

# Compiles file ../libmp3lame/vector/xmm_quantize_sub.c for the Release configuration...
-include ../../../../../obj/Release/gcclibmp3lame-static/../libmp3lame/vector/xmm_quantize_sub.d
../../../../../obj/Release/gcclibmp3lame-static/../libmp3lame/vector/xmm_quantize_sub.o: ../libmp3lame/vector/xmm_quantize_sub.c
	$(C_COMPILER) $(Release_Preprocessor_Definitions) $(Release_Compiler_Flags) -c ../libmp3lame/vector/xmm_quantize_sub.c $(Release_Include_Path) -o ../../../../../obj/Release/gcclibmp3lame-static/../libmp3lame/vector/xmm_quantize_sub.o
	$(C_COMPILER) $(Release_Preprocessor_Definitions) $(Release_Compiler_Flags) -MM ../libmp3lame/vector/xmm_quantize_sub.c $(Release_Include_Path) > ../../../../../obj/Release/gcclibmp3lame-static/../libmp3lame/vector/xmm_quantize_sub.d

# Creates the intermediate and output folders for each configuration...
.PHONY: create_folders
create_folders:
	mkdir -p ../../../../../obj/Debug/gcclibmp3lame-static/source
	mkdir -p ../../../../../output/gccDebug
	mkdir -p ../../../../../obj/ReleaseNASM/gcclibmp3lame-static/source
	mkdir -p ../../../../../output/gccReleaseNASM
	mkdir -p ../../../../../obj/ReleaseSSE2/gcclibmp3lame-static/source
	mkdir -p ../../../../../output/gccReleaseSSE2
	mkdir -p ../../../../../obj/Release/gcclibmp3lame-static/source
	mkdir -p ../../../../../output/gccRelease

# Cleans intermediate and output files (objects, libraries, executables)...
.PHONY: clean
clean:
	rm -f ../../../../../obj/Debug/gcclibmp3lame-static/*.o
	rm -f ../../../../../obj/Debug/gcclibmp3lame-static/*.d
	rm -f ../../../../../output/gccDebug/*.a
	rm -f ../../../../../output/gccDebug/*.so
	rm -f ../../../../../output/gccDebug/*.dll
	rm -f ../../../../../output/gccDebug/*.exe
	rm -f ../../../../../obj/ReleaseNASM/gcclibmp3lame-static/*.o
	rm -f ../../../../../obj/ReleaseNASM/gcclibmp3lame-static/*.d
	rm -f ../../../../../output/gccReleaseNASM/*.a
	rm -f ../../../../../output/gccReleaseNASM/*.so
	rm -f ../../../../../output/gccReleaseNASM/*.dll
	rm -f ../../../../../output/gccReleaseNASM/*.exe
	rm -f ../../../../../obj/ReleaseSSE2/gcclibmp3lame-static/*.o
	rm -f ../../../../../obj/ReleaseSSE2/gcclibmp3lame-static/*.d
	rm -f ../../../../../output/gccReleaseSSE2/*.a
	rm -f ../../../../../output/gccReleaseSSE2/*.so
	rm -f ../../../../../output/gccReleaseSSE2/*.dll
	rm -f ../../../../../output/gccReleaseSSE2/*.exe
	rm -f ../../../../../obj/Release/gcclibmp3lame-static/*.o
	rm -f ../../../../../obj/Release/gcclibmp3lame-static/*.d
	rm -f ../../../../../output/gccRelease/*.a
	rm -f ../../../../../output/gccRelease/*.so
	rm -f ../../../../../output/gccRelease/*.dll
	rm -f ../../../../../output/gccRelease/*.exe

