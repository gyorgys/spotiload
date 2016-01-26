# Compiler flags...
CPP_COMPILER = g++
C_COMPILER = gcc

# Include paths...
Debug_Include_Path=-I"../libmp3lame" -I"../include" -I".." 
ReleaseNASM_Include_Path=-I"../libmp3lame" -I"../include" -I".." 
ReleaseSSE2_Include_Path=-I"../libmp3lame" -I"../include" -I".." 
Release_Include_Path=-I"../libmp3lame" -I"../include" -I".." 

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
Debug_Preprocessor_Definitions=-D _DEBUG -D _WINDOWS -D USE_LAYER_2 -D HAVE_MPGLIB -D GCC_BUILD -D HAVE_CONFIG_H 
ReleaseNASM_Preprocessor_Definitions=-D NDEBUG -D HAVE_MPGLIB -D _WINDOWS -D USE_LAYER_2 -D GCC_BUILD -D HAVE_CONFIG_H 
ReleaseSSE2_Preprocessor_Definitions=-D NDEBUG -D HAVE_MPGLIB -D _WINDOWS -D USE_LAYER_2 -D GCC_BUILD -D HAVE_CONFIG_H 
Release_Preprocessor_Definitions=-D NDEBUG -D HAVE_MPGLIB -D _WINDOWS -D USE_LAYER_2 -D GCC_BUILD -D HAVE_CONFIG_H 

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
Debug: create_folders ../../../../../obj/Debug/gcclibmpghip-static/../mpglib/common.o ../../../../../obj/Debug/gcclibmpghip-static/../mpglib/dct64_i386.o ../../../../../obj/Debug/gcclibmpghip-static/../mpglib/decode_i386.o ../../../../../obj/Debug/gcclibmpghip-static/../mpglib/interface.o ../../../../../obj/Debug/gcclibmpghip-static/../mpglib/layer1.o ../../../../../obj/Debug/gcclibmpghip-static/../mpglib/layer2.o ../../../../../obj/Debug/gcclibmpghip-static/../mpglib/layer3.o ../../../../../obj/Debug/gcclibmpghip-static/../mpglib/tabinit.o 
	ar rcs ../../../../../output/gccDebug/liblibmpghip-static.a ../../../../../obj/Debug/gcclibmpghip-static/../mpglib/common.o ../../../../../obj/Debug/gcclibmpghip-static/../mpglib/dct64_i386.o ../../../../../obj/Debug/gcclibmpghip-static/../mpglib/decode_i386.o ../../../../../obj/Debug/gcclibmpghip-static/../mpglib/interface.o ../../../../../obj/Debug/gcclibmpghip-static/../mpglib/layer1.o ../../../../../obj/Debug/gcclibmpghip-static/../mpglib/layer2.o ../../../../../obj/Debug/gcclibmpghip-static/../mpglib/layer3.o ../../../../../obj/Debug/gcclibmpghip-static/../mpglib/tabinit.o  $(Debug_Implicitly_Linked_Objects)

# Compiles file ../mpglib/common.c for the Debug configuration...
-include ../../../../../obj/Debug/gcclibmpghip-static/../mpglib/common.d
../../../../../obj/Debug/gcclibmpghip-static/../mpglib/common.o: ../mpglib/common.c
	$(C_COMPILER) $(Debug_Preprocessor_Definitions) $(Debug_Compiler_Flags) -c ../mpglib/common.c $(Debug_Include_Path) -o ../../../../../obj/Debug/gcclibmpghip-static/../mpglib/common.o
	$(C_COMPILER) $(Debug_Preprocessor_Definitions) $(Debug_Compiler_Flags) -MM ../mpglib/common.c $(Debug_Include_Path) > ../../../../../obj/Debug/gcclibmpghip-static/../mpglib/common.d

# Compiles file ../mpglib/dct64_i386.c for the Debug configuration...
-include ../../../../../obj/Debug/gcclibmpghip-static/../mpglib/dct64_i386.d
../../../../../obj/Debug/gcclibmpghip-static/../mpglib/dct64_i386.o: ../mpglib/dct64_i386.c
	$(C_COMPILER) $(Debug_Preprocessor_Definitions) $(Debug_Compiler_Flags) -c ../mpglib/dct64_i386.c $(Debug_Include_Path) -o ../../../../../obj/Debug/gcclibmpghip-static/../mpglib/dct64_i386.o
	$(C_COMPILER) $(Debug_Preprocessor_Definitions) $(Debug_Compiler_Flags) -MM ../mpglib/dct64_i386.c $(Debug_Include_Path) > ../../../../../obj/Debug/gcclibmpghip-static/../mpglib/dct64_i386.d

# Compiles file ../mpglib/decode_i386.c for the Debug configuration...
-include ../../../../../obj/Debug/gcclibmpghip-static/../mpglib/decode_i386.d
../../../../../obj/Debug/gcclibmpghip-static/../mpglib/decode_i386.o: ../mpglib/decode_i386.c
	$(C_COMPILER) $(Debug_Preprocessor_Definitions) $(Debug_Compiler_Flags) -c ../mpglib/decode_i386.c $(Debug_Include_Path) -o ../../../../../obj/Debug/gcclibmpghip-static/../mpglib/decode_i386.o
	$(C_COMPILER) $(Debug_Preprocessor_Definitions) $(Debug_Compiler_Flags) -MM ../mpglib/decode_i386.c $(Debug_Include_Path) > ../../../../../obj/Debug/gcclibmpghip-static/../mpglib/decode_i386.d

# Compiles file ../mpglib/interface.c for the Debug configuration...
-include ../../../../../obj/Debug/gcclibmpghip-static/../mpglib/interface.d
../../../../../obj/Debug/gcclibmpghip-static/../mpglib/interface.o: ../mpglib/interface.c
	$(C_COMPILER) $(Debug_Preprocessor_Definitions) $(Debug_Compiler_Flags) -c ../mpglib/interface.c $(Debug_Include_Path) -o ../../../../../obj/Debug/gcclibmpghip-static/../mpglib/interface.o
	$(C_COMPILER) $(Debug_Preprocessor_Definitions) $(Debug_Compiler_Flags) -MM ../mpglib/interface.c $(Debug_Include_Path) > ../../../../../obj/Debug/gcclibmpghip-static/../mpglib/interface.d

# Compiles file ../mpglib/layer1.c for the Debug configuration...
-include ../../../../../obj/Debug/gcclibmpghip-static/../mpglib/layer1.d
../../../../../obj/Debug/gcclibmpghip-static/../mpglib/layer1.o: ../mpglib/layer1.c
	$(C_COMPILER) $(Debug_Preprocessor_Definitions) $(Debug_Compiler_Flags) -c ../mpglib/layer1.c $(Debug_Include_Path) -o ../../../../../obj/Debug/gcclibmpghip-static/../mpglib/layer1.o
	$(C_COMPILER) $(Debug_Preprocessor_Definitions) $(Debug_Compiler_Flags) -MM ../mpglib/layer1.c $(Debug_Include_Path) > ../../../../../obj/Debug/gcclibmpghip-static/../mpglib/layer1.d

# Compiles file ../mpglib/layer2.c for the Debug configuration...
-include ../../../../../obj/Debug/gcclibmpghip-static/../mpglib/layer2.d
../../../../../obj/Debug/gcclibmpghip-static/../mpglib/layer2.o: ../mpglib/layer2.c
	$(C_COMPILER) $(Debug_Preprocessor_Definitions) $(Debug_Compiler_Flags) -c ../mpglib/layer2.c $(Debug_Include_Path) -o ../../../../../obj/Debug/gcclibmpghip-static/../mpglib/layer2.o
	$(C_COMPILER) $(Debug_Preprocessor_Definitions) $(Debug_Compiler_Flags) -MM ../mpglib/layer2.c $(Debug_Include_Path) > ../../../../../obj/Debug/gcclibmpghip-static/../mpglib/layer2.d

# Compiles file ../mpglib/layer3.c for the Debug configuration...
-include ../../../../../obj/Debug/gcclibmpghip-static/../mpglib/layer3.d
../../../../../obj/Debug/gcclibmpghip-static/../mpglib/layer3.o: ../mpglib/layer3.c
	$(C_COMPILER) $(Debug_Preprocessor_Definitions) $(Debug_Compiler_Flags) -c ../mpglib/layer3.c $(Debug_Include_Path) -o ../../../../../obj/Debug/gcclibmpghip-static/../mpglib/layer3.o
	$(C_COMPILER) $(Debug_Preprocessor_Definitions) $(Debug_Compiler_Flags) -MM ../mpglib/layer3.c $(Debug_Include_Path) > ../../../../../obj/Debug/gcclibmpghip-static/../mpglib/layer3.d

# Compiles file ../mpglib/tabinit.c for the Debug configuration...
-include ../../../../../obj/Debug/gcclibmpghip-static/../mpglib/tabinit.d
../../../../../obj/Debug/gcclibmpghip-static/../mpglib/tabinit.o: ../mpglib/tabinit.c
	$(C_COMPILER) $(Debug_Preprocessor_Definitions) $(Debug_Compiler_Flags) -c ../mpglib/tabinit.c $(Debug_Include_Path) -o ../../../../../obj/Debug/gcclibmpghip-static/../mpglib/tabinit.o
	$(C_COMPILER) $(Debug_Preprocessor_Definitions) $(Debug_Compiler_Flags) -MM ../mpglib/tabinit.c $(Debug_Include_Path) > ../../../../../obj/Debug/gcclibmpghip-static/../mpglib/tabinit.d

# Builds the ReleaseNASM configuration...
.PHONY: ReleaseNASM
ReleaseNASM: create_folders ../../../../../obj/ReleaseNASM/gcclibmpghip-static/../mpglib/common.o ../../../../../obj/ReleaseNASM/gcclibmpghip-static/../mpglib/dct64_i386.o ../../../../../obj/ReleaseNASM/gcclibmpghip-static/../mpglib/decode_i386.o ../../../../../obj/ReleaseNASM/gcclibmpghip-static/../mpglib/interface.o ../../../../../obj/ReleaseNASM/gcclibmpghip-static/../mpglib/layer1.o ../../../../../obj/ReleaseNASM/gcclibmpghip-static/../mpglib/layer2.o ../../../../../obj/ReleaseNASM/gcclibmpghip-static/../mpglib/layer3.o ../../../../../obj/ReleaseNASM/gcclibmpghip-static/../mpglib/tabinit.o 
	ar rcs ../../../../../output/gccReleaseNASM/liblibmpghip-static.a ../../../../../obj/ReleaseNASM/gcclibmpghip-static/../mpglib/common.o ../../../../../obj/ReleaseNASM/gcclibmpghip-static/../mpglib/dct64_i386.o ../../../../../obj/ReleaseNASM/gcclibmpghip-static/../mpglib/decode_i386.o ../../../../../obj/ReleaseNASM/gcclibmpghip-static/../mpglib/interface.o ../../../../../obj/ReleaseNASM/gcclibmpghip-static/../mpglib/layer1.o ../../../../../obj/ReleaseNASM/gcclibmpghip-static/../mpglib/layer2.o ../../../../../obj/ReleaseNASM/gcclibmpghip-static/../mpglib/layer3.o ../../../../../obj/ReleaseNASM/gcclibmpghip-static/../mpglib/tabinit.o  $(ReleaseNASM_Implicitly_Linked_Objects)

# Compiles file ../mpglib/common.c for the ReleaseNASM configuration...
-include ../../../../../obj/ReleaseNASM/gcclibmpghip-static/../mpglib/common.d
../../../../../obj/ReleaseNASM/gcclibmpghip-static/../mpglib/common.o: ../mpglib/common.c
	$(C_COMPILER) $(ReleaseNASM_Preprocessor_Definitions) $(ReleaseNASM_Compiler_Flags) -c ../mpglib/common.c $(ReleaseNASM_Include_Path) -o ../../../../../obj/ReleaseNASM/gcclibmpghip-static/../mpglib/common.o
	$(C_COMPILER) $(ReleaseNASM_Preprocessor_Definitions) $(ReleaseNASM_Compiler_Flags) -MM ../mpglib/common.c $(ReleaseNASM_Include_Path) > ../../../../../obj/ReleaseNASM/gcclibmpghip-static/../mpglib/common.d

# Compiles file ../mpglib/dct64_i386.c for the ReleaseNASM configuration...
-include ../../../../../obj/ReleaseNASM/gcclibmpghip-static/../mpglib/dct64_i386.d
../../../../../obj/ReleaseNASM/gcclibmpghip-static/../mpglib/dct64_i386.o: ../mpglib/dct64_i386.c
	$(C_COMPILER) $(ReleaseNASM_Preprocessor_Definitions) $(ReleaseNASM_Compiler_Flags) -c ../mpglib/dct64_i386.c $(ReleaseNASM_Include_Path) -o ../../../../../obj/ReleaseNASM/gcclibmpghip-static/../mpglib/dct64_i386.o
	$(C_COMPILER) $(ReleaseNASM_Preprocessor_Definitions) $(ReleaseNASM_Compiler_Flags) -MM ../mpglib/dct64_i386.c $(ReleaseNASM_Include_Path) > ../../../../../obj/ReleaseNASM/gcclibmpghip-static/../mpglib/dct64_i386.d

# Compiles file ../mpglib/decode_i386.c for the ReleaseNASM configuration...
-include ../../../../../obj/ReleaseNASM/gcclibmpghip-static/../mpglib/decode_i386.d
../../../../../obj/ReleaseNASM/gcclibmpghip-static/../mpglib/decode_i386.o: ../mpglib/decode_i386.c
	$(C_COMPILER) $(ReleaseNASM_Preprocessor_Definitions) $(ReleaseNASM_Compiler_Flags) -c ../mpglib/decode_i386.c $(ReleaseNASM_Include_Path) -o ../../../../../obj/ReleaseNASM/gcclibmpghip-static/../mpglib/decode_i386.o
	$(C_COMPILER) $(ReleaseNASM_Preprocessor_Definitions) $(ReleaseNASM_Compiler_Flags) -MM ../mpglib/decode_i386.c $(ReleaseNASM_Include_Path) > ../../../../../obj/ReleaseNASM/gcclibmpghip-static/../mpglib/decode_i386.d

# Compiles file ../mpglib/interface.c for the ReleaseNASM configuration...
-include ../../../../../obj/ReleaseNASM/gcclibmpghip-static/../mpglib/interface.d
../../../../../obj/ReleaseNASM/gcclibmpghip-static/../mpglib/interface.o: ../mpglib/interface.c
	$(C_COMPILER) $(ReleaseNASM_Preprocessor_Definitions) $(ReleaseNASM_Compiler_Flags) -c ../mpglib/interface.c $(ReleaseNASM_Include_Path) -o ../../../../../obj/ReleaseNASM/gcclibmpghip-static/../mpglib/interface.o
	$(C_COMPILER) $(ReleaseNASM_Preprocessor_Definitions) $(ReleaseNASM_Compiler_Flags) -MM ../mpglib/interface.c $(ReleaseNASM_Include_Path) > ../../../../../obj/ReleaseNASM/gcclibmpghip-static/../mpglib/interface.d

# Compiles file ../mpglib/layer1.c for the ReleaseNASM configuration...
-include ../../../../../obj/ReleaseNASM/gcclibmpghip-static/../mpglib/layer1.d
../../../../../obj/ReleaseNASM/gcclibmpghip-static/../mpglib/layer1.o: ../mpglib/layer1.c
	$(C_COMPILER) $(ReleaseNASM_Preprocessor_Definitions) $(ReleaseNASM_Compiler_Flags) -c ../mpglib/layer1.c $(ReleaseNASM_Include_Path) -o ../../../../../obj/ReleaseNASM/gcclibmpghip-static/../mpglib/layer1.o
	$(C_COMPILER) $(ReleaseNASM_Preprocessor_Definitions) $(ReleaseNASM_Compiler_Flags) -MM ../mpglib/layer1.c $(ReleaseNASM_Include_Path) > ../../../../../obj/ReleaseNASM/gcclibmpghip-static/../mpglib/layer1.d

# Compiles file ../mpglib/layer2.c for the ReleaseNASM configuration...
-include ../../../../../obj/ReleaseNASM/gcclibmpghip-static/../mpglib/layer2.d
../../../../../obj/ReleaseNASM/gcclibmpghip-static/../mpglib/layer2.o: ../mpglib/layer2.c
	$(C_COMPILER) $(ReleaseNASM_Preprocessor_Definitions) $(ReleaseNASM_Compiler_Flags) -c ../mpglib/layer2.c $(ReleaseNASM_Include_Path) -o ../../../../../obj/ReleaseNASM/gcclibmpghip-static/../mpglib/layer2.o
	$(C_COMPILER) $(ReleaseNASM_Preprocessor_Definitions) $(ReleaseNASM_Compiler_Flags) -MM ../mpglib/layer2.c $(ReleaseNASM_Include_Path) > ../../../../../obj/ReleaseNASM/gcclibmpghip-static/../mpglib/layer2.d

# Compiles file ../mpglib/layer3.c for the ReleaseNASM configuration...
-include ../../../../../obj/ReleaseNASM/gcclibmpghip-static/../mpglib/layer3.d
../../../../../obj/ReleaseNASM/gcclibmpghip-static/../mpglib/layer3.o: ../mpglib/layer3.c
	$(C_COMPILER) $(ReleaseNASM_Preprocessor_Definitions) $(ReleaseNASM_Compiler_Flags) -c ../mpglib/layer3.c $(ReleaseNASM_Include_Path) -o ../../../../../obj/ReleaseNASM/gcclibmpghip-static/../mpglib/layer3.o
	$(C_COMPILER) $(ReleaseNASM_Preprocessor_Definitions) $(ReleaseNASM_Compiler_Flags) -MM ../mpglib/layer3.c $(ReleaseNASM_Include_Path) > ../../../../../obj/ReleaseNASM/gcclibmpghip-static/../mpglib/layer3.d

# Compiles file ../mpglib/tabinit.c for the ReleaseNASM configuration...
-include ../../../../../obj/ReleaseNASM/gcclibmpghip-static/../mpglib/tabinit.d
../../../../../obj/ReleaseNASM/gcclibmpghip-static/../mpglib/tabinit.o: ../mpglib/tabinit.c
	$(C_COMPILER) $(ReleaseNASM_Preprocessor_Definitions) $(ReleaseNASM_Compiler_Flags) -c ../mpglib/tabinit.c $(ReleaseNASM_Include_Path) -o ../../../../../obj/ReleaseNASM/gcclibmpghip-static/../mpglib/tabinit.o
	$(C_COMPILER) $(ReleaseNASM_Preprocessor_Definitions) $(ReleaseNASM_Compiler_Flags) -MM ../mpglib/tabinit.c $(ReleaseNASM_Include_Path) > ../../../../../obj/ReleaseNASM/gcclibmpghip-static/../mpglib/tabinit.d

# Builds the ReleaseSSE2 configuration...
.PHONY: ReleaseSSE2
ReleaseSSE2: create_folders ../../../../../obj/ReleaseSSE2/gcclibmpghip-static/../mpglib/common.o ../../../../../obj/ReleaseSSE2/gcclibmpghip-static/../mpglib/dct64_i386.o ../../../../../obj/ReleaseSSE2/gcclibmpghip-static/../mpglib/decode_i386.o ../../../../../obj/ReleaseSSE2/gcclibmpghip-static/../mpglib/interface.o ../../../../../obj/ReleaseSSE2/gcclibmpghip-static/../mpglib/layer1.o ../../../../../obj/ReleaseSSE2/gcclibmpghip-static/../mpglib/layer2.o ../../../../../obj/ReleaseSSE2/gcclibmpghip-static/../mpglib/layer3.o ../../../../../obj/ReleaseSSE2/gcclibmpghip-static/../mpglib/tabinit.o 
	ar rcs ../../../../../output/gccReleaseSSE2/liblibmpghip-static.a ../../../../../obj/ReleaseSSE2/gcclibmpghip-static/../mpglib/common.o ../../../../../obj/ReleaseSSE2/gcclibmpghip-static/../mpglib/dct64_i386.o ../../../../../obj/ReleaseSSE2/gcclibmpghip-static/../mpglib/decode_i386.o ../../../../../obj/ReleaseSSE2/gcclibmpghip-static/../mpglib/interface.o ../../../../../obj/ReleaseSSE2/gcclibmpghip-static/../mpglib/layer1.o ../../../../../obj/ReleaseSSE2/gcclibmpghip-static/../mpglib/layer2.o ../../../../../obj/ReleaseSSE2/gcclibmpghip-static/../mpglib/layer3.o ../../../../../obj/ReleaseSSE2/gcclibmpghip-static/../mpglib/tabinit.o  $(ReleaseSSE2_Implicitly_Linked_Objects)

# Compiles file ../mpglib/common.c for the ReleaseSSE2 configuration...
-include ../../../../../obj/ReleaseSSE2/gcclibmpghip-static/../mpglib/common.d
../../../../../obj/ReleaseSSE2/gcclibmpghip-static/../mpglib/common.o: ../mpglib/common.c
	$(C_COMPILER) $(ReleaseSSE2_Preprocessor_Definitions) $(ReleaseSSE2_Compiler_Flags) -c ../mpglib/common.c $(ReleaseSSE2_Include_Path) -o ../../../../../obj/ReleaseSSE2/gcclibmpghip-static/../mpglib/common.o
	$(C_COMPILER) $(ReleaseSSE2_Preprocessor_Definitions) $(ReleaseSSE2_Compiler_Flags) -MM ../mpglib/common.c $(ReleaseSSE2_Include_Path) > ../../../../../obj/ReleaseSSE2/gcclibmpghip-static/../mpglib/common.d

# Compiles file ../mpglib/dct64_i386.c for the ReleaseSSE2 configuration...
-include ../../../../../obj/ReleaseSSE2/gcclibmpghip-static/../mpglib/dct64_i386.d
../../../../../obj/ReleaseSSE2/gcclibmpghip-static/../mpglib/dct64_i386.o: ../mpglib/dct64_i386.c
	$(C_COMPILER) $(ReleaseSSE2_Preprocessor_Definitions) $(ReleaseSSE2_Compiler_Flags) -c ../mpglib/dct64_i386.c $(ReleaseSSE2_Include_Path) -o ../../../../../obj/ReleaseSSE2/gcclibmpghip-static/../mpglib/dct64_i386.o
	$(C_COMPILER) $(ReleaseSSE2_Preprocessor_Definitions) $(ReleaseSSE2_Compiler_Flags) -MM ../mpglib/dct64_i386.c $(ReleaseSSE2_Include_Path) > ../../../../../obj/ReleaseSSE2/gcclibmpghip-static/../mpglib/dct64_i386.d

# Compiles file ../mpglib/decode_i386.c for the ReleaseSSE2 configuration...
-include ../../../../../obj/ReleaseSSE2/gcclibmpghip-static/../mpglib/decode_i386.d
../../../../../obj/ReleaseSSE2/gcclibmpghip-static/../mpglib/decode_i386.o: ../mpglib/decode_i386.c
	$(C_COMPILER) $(ReleaseSSE2_Preprocessor_Definitions) $(ReleaseSSE2_Compiler_Flags) -c ../mpglib/decode_i386.c $(ReleaseSSE2_Include_Path) -o ../../../../../obj/ReleaseSSE2/gcclibmpghip-static/../mpglib/decode_i386.o
	$(C_COMPILER) $(ReleaseSSE2_Preprocessor_Definitions) $(ReleaseSSE2_Compiler_Flags) -MM ../mpglib/decode_i386.c $(ReleaseSSE2_Include_Path) > ../../../../../obj/ReleaseSSE2/gcclibmpghip-static/../mpglib/decode_i386.d

# Compiles file ../mpglib/interface.c for the ReleaseSSE2 configuration...
-include ../../../../../obj/ReleaseSSE2/gcclibmpghip-static/../mpglib/interface.d
../../../../../obj/ReleaseSSE2/gcclibmpghip-static/../mpglib/interface.o: ../mpglib/interface.c
	$(C_COMPILER) $(ReleaseSSE2_Preprocessor_Definitions) $(ReleaseSSE2_Compiler_Flags) -c ../mpglib/interface.c $(ReleaseSSE2_Include_Path) -o ../../../../../obj/ReleaseSSE2/gcclibmpghip-static/../mpglib/interface.o
	$(C_COMPILER) $(ReleaseSSE2_Preprocessor_Definitions) $(ReleaseSSE2_Compiler_Flags) -MM ../mpglib/interface.c $(ReleaseSSE2_Include_Path) > ../../../../../obj/ReleaseSSE2/gcclibmpghip-static/../mpglib/interface.d

# Compiles file ../mpglib/layer1.c for the ReleaseSSE2 configuration...
-include ../../../../../obj/ReleaseSSE2/gcclibmpghip-static/../mpglib/layer1.d
../../../../../obj/ReleaseSSE2/gcclibmpghip-static/../mpglib/layer1.o: ../mpglib/layer1.c
	$(C_COMPILER) $(ReleaseSSE2_Preprocessor_Definitions) $(ReleaseSSE2_Compiler_Flags) -c ../mpglib/layer1.c $(ReleaseSSE2_Include_Path) -o ../../../../../obj/ReleaseSSE2/gcclibmpghip-static/../mpglib/layer1.o
	$(C_COMPILER) $(ReleaseSSE2_Preprocessor_Definitions) $(ReleaseSSE2_Compiler_Flags) -MM ../mpglib/layer1.c $(ReleaseSSE2_Include_Path) > ../../../../../obj/ReleaseSSE2/gcclibmpghip-static/../mpglib/layer1.d

# Compiles file ../mpglib/layer2.c for the ReleaseSSE2 configuration...
-include ../../../../../obj/ReleaseSSE2/gcclibmpghip-static/../mpglib/layer2.d
../../../../../obj/ReleaseSSE2/gcclibmpghip-static/../mpglib/layer2.o: ../mpglib/layer2.c
	$(C_COMPILER) $(ReleaseSSE2_Preprocessor_Definitions) $(ReleaseSSE2_Compiler_Flags) -c ../mpglib/layer2.c $(ReleaseSSE2_Include_Path) -o ../../../../../obj/ReleaseSSE2/gcclibmpghip-static/../mpglib/layer2.o
	$(C_COMPILER) $(ReleaseSSE2_Preprocessor_Definitions) $(ReleaseSSE2_Compiler_Flags) -MM ../mpglib/layer2.c $(ReleaseSSE2_Include_Path) > ../../../../../obj/ReleaseSSE2/gcclibmpghip-static/../mpglib/layer2.d

# Compiles file ../mpglib/layer3.c for the ReleaseSSE2 configuration...
-include ../../../../../obj/ReleaseSSE2/gcclibmpghip-static/../mpglib/layer3.d
../../../../../obj/ReleaseSSE2/gcclibmpghip-static/../mpglib/layer3.o: ../mpglib/layer3.c
	$(C_COMPILER) $(ReleaseSSE2_Preprocessor_Definitions) $(ReleaseSSE2_Compiler_Flags) -c ../mpglib/layer3.c $(ReleaseSSE2_Include_Path) -o ../../../../../obj/ReleaseSSE2/gcclibmpghip-static/../mpglib/layer3.o
	$(C_COMPILER) $(ReleaseSSE2_Preprocessor_Definitions) $(ReleaseSSE2_Compiler_Flags) -MM ../mpglib/layer3.c $(ReleaseSSE2_Include_Path) > ../../../../../obj/ReleaseSSE2/gcclibmpghip-static/../mpglib/layer3.d

# Compiles file ../mpglib/tabinit.c for the ReleaseSSE2 configuration...
-include ../../../../../obj/ReleaseSSE2/gcclibmpghip-static/../mpglib/tabinit.d
../../../../../obj/ReleaseSSE2/gcclibmpghip-static/../mpglib/tabinit.o: ../mpglib/tabinit.c
	$(C_COMPILER) $(ReleaseSSE2_Preprocessor_Definitions) $(ReleaseSSE2_Compiler_Flags) -c ../mpglib/tabinit.c $(ReleaseSSE2_Include_Path) -o ../../../../../obj/ReleaseSSE2/gcclibmpghip-static/../mpglib/tabinit.o
	$(C_COMPILER) $(ReleaseSSE2_Preprocessor_Definitions) $(ReleaseSSE2_Compiler_Flags) -MM ../mpglib/tabinit.c $(ReleaseSSE2_Include_Path) > ../../../../../obj/ReleaseSSE2/gcclibmpghip-static/../mpglib/tabinit.d

# Builds the Release configuration...
.PHONY: Release
Release: create_folders ../../../../../obj/Release/gcclibmpghip-static/../mpglib/common.o ../../../../../obj/Release/gcclibmpghip-static/../mpglib/dct64_i386.o ../../../../../obj/Release/gcclibmpghip-static/../mpglib/decode_i386.o ../../../../../obj/Release/gcclibmpghip-static/../mpglib/interface.o ../../../../../obj/Release/gcclibmpghip-static/../mpglib/layer1.o ../../../../../obj/Release/gcclibmpghip-static/../mpglib/layer2.o ../../../../../obj/Release/gcclibmpghip-static/../mpglib/layer3.o ../../../../../obj/Release/gcclibmpghip-static/../mpglib/tabinit.o 
	ar rcs ../../../../../output/gccRelease/liblibmpghip-static.a ../../../../../obj/Release/gcclibmpghip-static/../mpglib/common.o ../../../../../obj/Release/gcclibmpghip-static/../mpglib/dct64_i386.o ../../../../../obj/Release/gcclibmpghip-static/../mpglib/decode_i386.o ../../../../../obj/Release/gcclibmpghip-static/../mpglib/interface.o ../../../../../obj/Release/gcclibmpghip-static/../mpglib/layer1.o ../../../../../obj/Release/gcclibmpghip-static/../mpglib/layer2.o ../../../../../obj/Release/gcclibmpghip-static/../mpglib/layer3.o ../../../../../obj/Release/gcclibmpghip-static/../mpglib/tabinit.o  $(Release_Implicitly_Linked_Objects)

# Compiles file ../mpglib/common.c for the Release configuration...
-include ../../../../../obj/Release/gcclibmpghip-static/../mpglib/common.d
../../../../../obj/Release/gcclibmpghip-static/../mpglib/common.o: ../mpglib/common.c
	$(C_COMPILER) $(Release_Preprocessor_Definitions) $(Release_Compiler_Flags) -c ../mpglib/common.c $(Release_Include_Path) -o ../../../../../obj/Release/gcclibmpghip-static/../mpglib/common.o
	$(C_COMPILER) $(Release_Preprocessor_Definitions) $(Release_Compiler_Flags) -MM ../mpglib/common.c $(Release_Include_Path) > ../../../../../obj/Release/gcclibmpghip-static/../mpglib/common.d

# Compiles file ../mpglib/dct64_i386.c for the Release configuration...
-include ../../../../../obj/Release/gcclibmpghip-static/../mpglib/dct64_i386.d
../../../../../obj/Release/gcclibmpghip-static/../mpglib/dct64_i386.o: ../mpglib/dct64_i386.c
	$(C_COMPILER) $(Release_Preprocessor_Definitions) $(Release_Compiler_Flags) -c ../mpglib/dct64_i386.c $(Release_Include_Path) -o ../../../../../obj/Release/gcclibmpghip-static/../mpglib/dct64_i386.o
	$(C_COMPILER) $(Release_Preprocessor_Definitions) $(Release_Compiler_Flags) -MM ../mpglib/dct64_i386.c $(Release_Include_Path) > ../../../../../obj/Release/gcclibmpghip-static/../mpglib/dct64_i386.d

# Compiles file ../mpglib/decode_i386.c for the Release configuration...
-include ../../../../../obj/Release/gcclibmpghip-static/../mpglib/decode_i386.d
../../../../../obj/Release/gcclibmpghip-static/../mpglib/decode_i386.o: ../mpglib/decode_i386.c
	$(C_COMPILER) $(Release_Preprocessor_Definitions) $(Release_Compiler_Flags) -c ../mpglib/decode_i386.c $(Release_Include_Path) -o ../../../../../obj/Release/gcclibmpghip-static/../mpglib/decode_i386.o
	$(C_COMPILER) $(Release_Preprocessor_Definitions) $(Release_Compiler_Flags) -MM ../mpglib/decode_i386.c $(Release_Include_Path) > ../../../../../obj/Release/gcclibmpghip-static/../mpglib/decode_i386.d

# Compiles file ../mpglib/interface.c for the Release configuration...
-include ../../../../../obj/Release/gcclibmpghip-static/../mpglib/interface.d
../../../../../obj/Release/gcclibmpghip-static/../mpglib/interface.o: ../mpglib/interface.c
	$(C_COMPILER) $(Release_Preprocessor_Definitions) $(Release_Compiler_Flags) -c ../mpglib/interface.c $(Release_Include_Path) -o ../../../../../obj/Release/gcclibmpghip-static/../mpglib/interface.o
	$(C_COMPILER) $(Release_Preprocessor_Definitions) $(Release_Compiler_Flags) -MM ../mpglib/interface.c $(Release_Include_Path) > ../../../../../obj/Release/gcclibmpghip-static/../mpglib/interface.d

# Compiles file ../mpglib/layer1.c for the Release configuration...
-include ../../../../../obj/Release/gcclibmpghip-static/../mpglib/layer1.d
../../../../../obj/Release/gcclibmpghip-static/../mpglib/layer1.o: ../mpglib/layer1.c
	$(C_COMPILER) $(Release_Preprocessor_Definitions) $(Release_Compiler_Flags) -c ../mpglib/layer1.c $(Release_Include_Path) -o ../../../../../obj/Release/gcclibmpghip-static/../mpglib/layer1.o
	$(C_COMPILER) $(Release_Preprocessor_Definitions) $(Release_Compiler_Flags) -MM ../mpglib/layer1.c $(Release_Include_Path) > ../../../../../obj/Release/gcclibmpghip-static/../mpglib/layer1.d

# Compiles file ../mpglib/layer2.c for the Release configuration...
-include ../../../../../obj/Release/gcclibmpghip-static/../mpglib/layer2.d
../../../../../obj/Release/gcclibmpghip-static/../mpglib/layer2.o: ../mpglib/layer2.c
	$(C_COMPILER) $(Release_Preprocessor_Definitions) $(Release_Compiler_Flags) -c ../mpglib/layer2.c $(Release_Include_Path) -o ../../../../../obj/Release/gcclibmpghip-static/../mpglib/layer2.o
	$(C_COMPILER) $(Release_Preprocessor_Definitions) $(Release_Compiler_Flags) -MM ../mpglib/layer2.c $(Release_Include_Path) > ../../../../../obj/Release/gcclibmpghip-static/../mpglib/layer2.d

# Compiles file ../mpglib/layer3.c for the Release configuration...
-include ../../../../../obj/Release/gcclibmpghip-static/../mpglib/layer3.d
../../../../../obj/Release/gcclibmpghip-static/../mpglib/layer3.o: ../mpglib/layer3.c
	$(C_COMPILER) $(Release_Preprocessor_Definitions) $(Release_Compiler_Flags) -c ../mpglib/layer3.c $(Release_Include_Path) -o ../../../../../obj/Release/gcclibmpghip-static/../mpglib/layer3.o
	$(C_COMPILER) $(Release_Preprocessor_Definitions) $(Release_Compiler_Flags) -MM ../mpglib/layer3.c $(Release_Include_Path) > ../../../../../obj/Release/gcclibmpghip-static/../mpglib/layer3.d

# Compiles file ../mpglib/tabinit.c for the Release configuration...
-include ../../../../../obj/Release/gcclibmpghip-static/../mpglib/tabinit.d
../../../../../obj/Release/gcclibmpghip-static/../mpglib/tabinit.o: ../mpglib/tabinit.c
	$(C_COMPILER) $(Release_Preprocessor_Definitions) $(Release_Compiler_Flags) -c ../mpglib/tabinit.c $(Release_Include_Path) -o ../../../../../obj/Release/gcclibmpghip-static/../mpglib/tabinit.o
	$(C_COMPILER) $(Release_Preprocessor_Definitions) $(Release_Compiler_Flags) -MM ../mpglib/tabinit.c $(Release_Include_Path) > ../../../../../obj/Release/gcclibmpghip-static/../mpglib/tabinit.d

# Creates the intermediate and output folders for each configuration...
.PHONY: create_folders
create_folders:
	mkdir -p ../../../../../obj/Debug/gcclibmpghip-static/source
	mkdir -p ../../../../../output/gccDebug
	mkdir -p ../../../../../obj/ReleaseNASM/gcclibmpghip-static/source
	mkdir -p ../../../../../output/gccReleaseNASM
	mkdir -p ../../../../../obj/ReleaseSSE2/gcclibmpghip-static/source
	mkdir -p ../../../../../output/gccReleaseSSE2
	mkdir -p ../../../../../obj/Release/gcclibmpghip-static/source
	mkdir -p ../../../../../output/gccRelease

# Cleans intermediate and output files (objects, libraries, executables)...
.PHONY: clean
clean:
	rm -f ../../../../../obj/Debug/gcclibmpghip-static/*.o
	rm -f ../../../../../obj/Debug/gcclibmpghip-static/*.d
	rm -f ../../../../../output/gccDebug/*.a
	rm -f ../../../../../output/gccDebug/*.so
	rm -f ../../../../../output/gccDebug/*.dll
	rm -f ../../../../../output/gccDebug/*.exe
	rm -f ../../../../../obj/ReleaseNASM/gcclibmpghip-static/*.o
	rm -f ../../../../../obj/ReleaseNASM/gcclibmpghip-static/*.d
	rm -f ../../../../../output/gccReleaseNASM/*.a
	rm -f ../../../../../output/gccReleaseNASM/*.so
	rm -f ../../../../../output/gccReleaseNASM/*.dll
	rm -f ../../../../../output/gccReleaseNASM/*.exe
	rm -f ../../../../../obj/ReleaseSSE2/gcclibmpghip-static/*.o
	rm -f ../../../../../obj/ReleaseSSE2/gcclibmpghip-static/*.d
	rm -f ../../../../../output/gccReleaseSSE2/*.a
	rm -f ../../../../../output/gccReleaseSSE2/*.so
	rm -f ../../../../../output/gccReleaseSSE2/*.dll
	rm -f ../../../../../output/gccReleaseSSE2/*.exe
	rm -f ../../../../../obj/Release/gcclibmpghip-static/*.o
	rm -f ../../../../../obj/Release/gcclibmpghip-static/*.d
	rm -f ../../../../../output/gccRelease/*.a
	rm -f ../../../../../output/gccRelease/*.so
	rm -f ../../../../../output/gccRelease/*.dll
	rm -f ../../../../../output/gccRelease/*.exe

