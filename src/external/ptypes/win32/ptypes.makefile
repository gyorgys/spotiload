# Compiler flags...
CPP_COMPILER = g++
C_COMPILER = gcc

# Include paths...
Debug_Include_Path=-I"../include" 
Release_Include_Path=-I"../include" 

# Library paths...
Debug_Library_Path=
Release_Library_Path=

# Additional libraries...
Debug_Libraries=
Release_Libraries=

# Preprocessor definitions...
Debug_Preprocessor_Definitions=-D GCC_BUILD -D _DEBUG -D _LIB -D _WIN32 -D __WIN32__ -D _WIN32_WINNT=0x400 
Release_Preprocessor_Definitions=-D GCC_BUILD -D NDEBUG -D _LIB -D _WIN32 -D __WIN32__ -D _WIN32_WINNT=0x400 

# Implictly linked object files...
Debug_Implicitly_Linked_Objects=
Release_Implicitly_Linked_Objects=

# Compiler flags...
Debug_Compiler_Flags=-O0 
Release_Compiler_Flags=-O3 

# Builds all configurations for this project...
.PHONY: build_all_configurations
build_all_configurations: Debug Release 

# Builds the Debug configuration...
.PHONY: Debug
Debug: create_folders ../../../..//temp/ptypes/Debug/gccWin32/../src/pasync.o ../../../..//temp/ptypes/Debug/gccWin32/../src/patomic.o ../../../..//temp/ptypes/Debug/gccWin32/../src/pcomponent.o ../../../..//temp/ptypes/Debug/gccWin32/../src/pcset.o ../../../..//temp/ptypes/Debug/gccWin32/../src/pcsetdbg.o ../../../..//temp/ptypes/Debug/gccWin32/../src/pexcept.o ../../../..//temp/ptypes/Debug/gccWin32/../src/pfatal.o ../../../..//temp/ptypes/Debug/gccWin32/../src/pfdxstm.o ../../../..//temp/ptypes/Debug/gccWin32/../src/pinfile.o ../../../..//temp/ptypes/Debug/gccWin32/../src/pinfilter.o ../../../..//temp/ptypes/Debug/gccWin32/../src/pinmem.o ../../../..//temp/ptypes/Debug/gccWin32/../src/pinstm.o ../../../..//temp/ptypes/Debug/gccWin32/../src/pintee.o ../../../..//temp/ptypes/Debug/gccWin32/../src/piobase.o ../../../..//temp/ptypes/Debug/gccWin32/../src/pipbase.o ../../../..//temp/ptypes/Debug/gccWin32/../src/pipmsg.o ../../../..//temp/ptypes/Debug/gccWin32/../src/pipmsgsv.o ../../../..//temp/ptypes/Debug/gccWin32/../src/pipstm.o ../../../..//temp/ptypes/Debug/gccWin32/../src/pipstmsv.o ../../../..//temp/ptypes/Debug/gccWin32/../src/pipsvbase.o ../../../..//temp/ptypes/Debug/gccWin32/../src/pmd5.o ../../../..//temp/ptypes/Debug/gccWin32/../src/pmem.o ../../../..//temp/ptypes/Debug/gccWin32/../src/pmsgq.o ../../../..//temp/ptypes/Debug/gccWin32/../src/pmtxtable.o ../../../..//temp/ptypes/Debug/gccWin32/../src/pnpipe.o ../../../..//temp/ptypes/Debug/gccWin32/../src/pnpserver.o ../../../..//temp/ptypes/Debug/gccWin32/../src/pobjlist.o ../../../..//temp/ptypes/Debug/gccWin32/../src/poutfile.o ../../../..//temp/ptypes/Debug/gccWin32/../src/poutfilter.o ../../../..//temp/ptypes/Debug/gccWin32/../src/poutmem.o ../../../..//temp/ptypes/Debug/gccWin32/../src/poutstm.o ../../../..//temp/ptypes/Debug/gccWin32/../src/ppipe.o ../../../..//temp/ptypes/Debug/gccWin32/../src/ppodlist.o ../../../..//temp/ptypes/Debug/gccWin32/../src/pputf.o ../../../..//temp/ptypes/Debug/gccWin32/../src/prwlock.o ../../../..//temp/ptypes/Debug/gccWin32/../src/psemaphore.o ../../../..//temp/ptypes/Debug/gccWin32/../src/pstdio.o ../../../..//temp/ptypes/Debug/gccWin32/../src/pstrcase.o ../../../..//temp/ptypes/Debug/gccWin32/../src/pstrconv.o ../../../..//temp/ptypes/Debug/gccWin32/../src/pstring.o ../../../..//temp/ptypes/Debug/gccWin32/../src/pstrlist.o ../../../..//temp/ptypes/Debug/gccWin32/../src/pstrmanip.o ../../../..//temp/ptypes/Debug/gccWin32/../src/pstrtoi.o ../../../..//temp/ptypes/Debug/gccWin32/../src/pstrutils.o ../../../..//temp/ptypes/Debug/gccWin32/../src/ptextmap.o ../../../..//temp/ptypes/Debug/gccWin32/../src/pthread.o ../../../..//temp/ptypes/Debug/gccWin32/../src/ptime.o ../../../..//temp/ptypes/Debug/gccWin32/../src/ptimedsem.o ../../../..//temp/ptypes/Debug/gccWin32/../src/ptrigger.o ../../../..//temp/ptypes/Debug/gccWin32/../src/punit.o ../../../..//temp/ptypes/Debug/gccWin32/../src/punknown.o ../../../..//temp/ptypes/Debug/gccWin32/../src/pvariant.o ../../../..//temp/ptypes/Debug/gccWin32/../src/pversion.o 
	ar rcs ../../../..//temp/ptypes/Debug/gccWin32/libptypes.a ../../../..//temp/ptypes/Debug/gccWin32/../src/pasync.o ../../../..//temp/ptypes/Debug/gccWin32/../src/patomic.o ../../../..//temp/ptypes/Debug/gccWin32/../src/pcomponent.o ../../../..//temp/ptypes/Debug/gccWin32/../src/pcset.o ../../../..//temp/ptypes/Debug/gccWin32/../src/pcsetdbg.o ../../../..//temp/ptypes/Debug/gccWin32/../src/pexcept.o ../../../..//temp/ptypes/Debug/gccWin32/../src/pfatal.o ../../../..//temp/ptypes/Debug/gccWin32/../src/pfdxstm.o ../../../..//temp/ptypes/Debug/gccWin32/../src/pinfile.o ../../../..//temp/ptypes/Debug/gccWin32/../src/pinfilter.o ../../../..//temp/ptypes/Debug/gccWin32/../src/pinmem.o ../../../..//temp/ptypes/Debug/gccWin32/../src/pinstm.o ../../../..//temp/ptypes/Debug/gccWin32/../src/pintee.o ../../../..//temp/ptypes/Debug/gccWin32/../src/piobase.o ../../../..//temp/ptypes/Debug/gccWin32/../src/pipbase.o ../../../..//temp/ptypes/Debug/gccWin32/../src/pipmsg.o ../../../..//temp/ptypes/Debug/gccWin32/../src/pipmsgsv.o ../../../..//temp/ptypes/Debug/gccWin32/../src/pipstm.o ../../../..//temp/ptypes/Debug/gccWin32/../src/pipstmsv.o ../../../..//temp/ptypes/Debug/gccWin32/../src/pipsvbase.o ../../../..//temp/ptypes/Debug/gccWin32/../src/pmd5.o ../../../..//temp/ptypes/Debug/gccWin32/../src/pmem.o ../../../..//temp/ptypes/Debug/gccWin32/../src/pmsgq.o ../../../..//temp/ptypes/Debug/gccWin32/../src/pmtxtable.o ../../../..//temp/ptypes/Debug/gccWin32/../src/pnpipe.o ../../../..//temp/ptypes/Debug/gccWin32/../src/pnpserver.o ../../../..//temp/ptypes/Debug/gccWin32/../src/pobjlist.o ../../../..//temp/ptypes/Debug/gccWin32/../src/poutfile.o ../../../..//temp/ptypes/Debug/gccWin32/../src/poutfilter.o ../../../..//temp/ptypes/Debug/gccWin32/../src/poutmem.o ../../../..//temp/ptypes/Debug/gccWin32/../src/poutstm.o ../../../..//temp/ptypes/Debug/gccWin32/../src/ppipe.o ../../../..//temp/ptypes/Debug/gccWin32/../src/ppodlist.o ../../../..//temp/ptypes/Debug/gccWin32/../src/pputf.o ../../../..//temp/ptypes/Debug/gccWin32/../src/prwlock.o ../../../..//temp/ptypes/Debug/gccWin32/../src/psemaphore.o ../../../..//temp/ptypes/Debug/gccWin32/../src/pstdio.o ../../../..//temp/ptypes/Debug/gccWin32/../src/pstrcase.o ../../../..//temp/ptypes/Debug/gccWin32/../src/pstrconv.o ../../../..//temp/ptypes/Debug/gccWin32/../src/pstring.o ../../../..//temp/ptypes/Debug/gccWin32/../src/pstrlist.o ../../../..//temp/ptypes/Debug/gccWin32/../src/pstrmanip.o ../../../..//temp/ptypes/Debug/gccWin32/../src/pstrtoi.o ../../../..//temp/ptypes/Debug/gccWin32/../src/pstrutils.o ../../../..//temp/ptypes/Debug/gccWin32/../src/ptextmap.o ../../../..//temp/ptypes/Debug/gccWin32/../src/pthread.o ../../../..//temp/ptypes/Debug/gccWin32/../src/ptime.o ../../../..//temp/ptypes/Debug/gccWin32/../src/ptimedsem.o ../../../..//temp/ptypes/Debug/gccWin32/../src/ptrigger.o ../../../..//temp/ptypes/Debug/gccWin32/../src/punit.o ../../../..//temp/ptypes/Debug/gccWin32/../src/punknown.o ../../../..//temp/ptypes/Debug/gccWin32/../src/pvariant.o ../../../..//temp/ptypes/Debug/gccWin32/../src/pversion.o  $(Debug_Implicitly_Linked_Objects)

# Compiles file ../src/pasync.cxx for the Debug configuration...
-include ../../../..//temp/ptypes/Debug/gccWin32/../src/pasync.d
../../../..//temp/ptypes/Debug/gccWin32/../src/pasync.o: ../src/pasync.cxx
	$(CPP_COMPILER) $(Debug_Preprocessor_Definitions) $(Debug_Compiler_Flags) -c ../src/pasync.cxx $(Debug_Include_Path) -o ../../../..//temp/ptypes/Debug/gccWin32/../src/pasync.o
	$(CPP_COMPILER) $(Debug_Preprocessor_Definitions) $(Debug_Compiler_Flags) -MM ../src/pasync.cxx $(Debug_Include_Path) > ../../../..//temp/ptypes/Debug/gccWin32/../src/pasync.d

# Compiles file ../src/patomic.cxx for the Debug configuration...
-include ../../../..//temp/ptypes/Debug/gccWin32/../src/patomic.d
../../../..//temp/ptypes/Debug/gccWin32/../src/patomic.o: ../src/patomic.cxx
	$(CPP_COMPILER) $(Debug_Preprocessor_Definitions) $(Debug_Compiler_Flags) -c ../src/patomic.cxx $(Debug_Include_Path) -o ../../../..//temp/ptypes/Debug/gccWin32/../src/patomic.o
	$(CPP_COMPILER) $(Debug_Preprocessor_Definitions) $(Debug_Compiler_Flags) -MM ../src/patomic.cxx $(Debug_Include_Path) > ../../../..//temp/ptypes/Debug/gccWin32/../src/patomic.d

# Compiles file ../src/pcomponent.cxx for the Debug configuration...
-include ../../../..//temp/ptypes/Debug/gccWin32/../src/pcomponent.d
../../../..//temp/ptypes/Debug/gccWin32/../src/pcomponent.o: ../src/pcomponent.cxx
	$(CPP_COMPILER) $(Debug_Preprocessor_Definitions) $(Debug_Compiler_Flags) -c ../src/pcomponent.cxx $(Debug_Include_Path) -o ../../../..//temp/ptypes/Debug/gccWin32/../src/pcomponent.o
	$(CPP_COMPILER) $(Debug_Preprocessor_Definitions) $(Debug_Compiler_Flags) -MM ../src/pcomponent.cxx $(Debug_Include_Path) > ../../../..//temp/ptypes/Debug/gccWin32/../src/pcomponent.d

# Compiles file ../src/pcset.cxx for the Debug configuration...
-include ../../../..//temp/ptypes/Debug/gccWin32/../src/pcset.d
../../../..//temp/ptypes/Debug/gccWin32/../src/pcset.o: ../src/pcset.cxx
	$(CPP_COMPILER) $(Debug_Preprocessor_Definitions) $(Debug_Compiler_Flags) -c ../src/pcset.cxx $(Debug_Include_Path) -o ../../../..//temp/ptypes/Debug/gccWin32/../src/pcset.o
	$(CPP_COMPILER) $(Debug_Preprocessor_Definitions) $(Debug_Compiler_Flags) -MM ../src/pcset.cxx $(Debug_Include_Path) > ../../../..//temp/ptypes/Debug/gccWin32/../src/pcset.d

# Compiles file ../src/pcsetdbg.cxx for the Debug configuration...
-include ../../../..//temp/ptypes/Debug/gccWin32/../src/pcsetdbg.d
../../../..//temp/ptypes/Debug/gccWin32/../src/pcsetdbg.o: ../src/pcsetdbg.cxx
	$(CPP_COMPILER) $(Debug_Preprocessor_Definitions) $(Debug_Compiler_Flags) -c ../src/pcsetdbg.cxx $(Debug_Include_Path) -o ../../../..//temp/ptypes/Debug/gccWin32/../src/pcsetdbg.o
	$(CPP_COMPILER) $(Debug_Preprocessor_Definitions) $(Debug_Compiler_Flags) -MM ../src/pcsetdbg.cxx $(Debug_Include_Path) > ../../../..//temp/ptypes/Debug/gccWin32/../src/pcsetdbg.d

# Compiles file ../src/pexcept.cxx for the Debug configuration...
-include ../../../..//temp/ptypes/Debug/gccWin32/../src/pexcept.d
../../../..//temp/ptypes/Debug/gccWin32/../src/pexcept.o: ../src/pexcept.cxx
	$(CPP_COMPILER) $(Debug_Preprocessor_Definitions) $(Debug_Compiler_Flags) -c ../src/pexcept.cxx $(Debug_Include_Path) -o ../../../..//temp/ptypes/Debug/gccWin32/../src/pexcept.o
	$(CPP_COMPILER) $(Debug_Preprocessor_Definitions) $(Debug_Compiler_Flags) -MM ../src/pexcept.cxx $(Debug_Include_Path) > ../../../..//temp/ptypes/Debug/gccWin32/../src/pexcept.d

# Compiles file ../src/pfatal.cxx for the Debug configuration...
-include ../../../..//temp/ptypes/Debug/gccWin32/../src/pfatal.d
../../../..//temp/ptypes/Debug/gccWin32/../src/pfatal.o: ../src/pfatal.cxx
	$(CPP_COMPILER) $(Debug_Preprocessor_Definitions) $(Debug_Compiler_Flags) -c ../src/pfatal.cxx $(Debug_Include_Path) -o ../../../..//temp/ptypes/Debug/gccWin32/../src/pfatal.o
	$(CPP_COMPILER) $(Debug_Preprocessor_Definitions) $(Debug_Compiler_Flags) -MM ../src/pfatal.cxx $(Debug_Include_Path) > ../../../..//temp/ptypes/Debug/gccWin32/../src/pfatal.d

# Compiles file ../src/pfdxstm.cxx for the Debug configuration...
-include ../../../..//temp/ptypes/Debug/gccWin32/../src/pfdxstm.d
../../../..//temp/ptypes/Debug/gccWin32/../src/pfdxstm.o: ../src/pfdxstm.cxx
	$(CPP_COMPILER) $(Debug_Preprocessor_Definitions) $(Debug_Compiler_Flags) -c ../src/pfdxstm.cxx $(Debug_Include_Path) -o ../../../..//temp/ptypes/Debug/gccWin32/../src/pfdxstm.o
	$(CPP_COMPILER) $(Debug_Preprocessor_Definitions) $(Debug_Compiler_Flags) -MM ../src/pfdxstm.cxx $(Debug_Include_Path) > ../../../..//temp/ptypes/Debug/gccWin32/../src/pfdxstm.d

# Compiles file ../src/pinfile.cxx for the Debug configuration...
-include ../../../..//temp/ptypes/Debug/gccWin32/../src/pinfile.d
../../../..//temp/ptypes/Debug/gccWin32/../src/pinfile.o: ../src/pinfile.cxx
	$(CPP_COMPILER) $(Debug_Preprocessor_Definitions) $(Debug_Compiler_Flags) -c ../src/pinfile.cxx $(Debug_Include_Path) -o ../../../..//temp/ptypes/Debug/gccWin32/../src/pinfile.o
	$(CPP_COMPILER) $(Debug_Preprocessor_Definitions) $(Debug_Compiler_Flags) -MM ../src/pinfile.cxx $(Debug_Include_Path) > ../../../..//temp/ptypes/Debug/gccWin32/../src/pinfile.d

# Compiles file ../src/pinfilter.cxx for the Debug configuration...
-include ../../../..//temp/ptypes/Debug/gccWin32/../src/pinfilter.d
../../../..//temp/ptypes/Debug/gccWin32/../src/pinfilter.o: ../src/pinfilter.cxx
	$(CPP_COMPILER) $(Debug_Preprocessor_Definitions) $(Debug_Compiler_Flags) -c ../src/pinfilter.cxx $(Debug_Include_Path) -o ../../../..//temp/ptypes/Debug/gccWin32/../src/pinfilter.o
	$(CPP_COMPILER) $(Debug_Preprocessor_Definitions) $(Debug_Compiler_Flags) -MM ../src/pinfilter.cxx $(Debug_Include_Path) > ../../../..//temp/ptypes/Debug/gccWin32/../src/pinfilter.d

# Compiles file ../src/pinmem.cxx for the Debug configuration...
-include ../../../..//temp/ptypes/Debug/gccWin32/../src/pinmem.d
../../../..//temp/ptypes/Debug/gccWin32/../src/pinmem.o: ../src/pinmem.cxx
	$(CPP_COMPILER) $(Debug_Preprocessor_Definitions) $(Debug_Compiler_Flags) -c ../src/pinmem.cxx $(Debug_Include_Path) -o ../../../..//temp/ptypes/Debug/gccWin32/../src/pinmem.o
	$(CPP_COMPILER) $(Debug_Preprocessor_Definitions) $(Debug_Compiler_Flags) -MM ../src/pinmem.cxx $(Debug_Include_Path) > ../../../..//temp/ptypes/Debug/gccWin32/../src/pinmem.d

# Compiles file ../src/pinstm.cxx for the Debug configuration...
-include ../../../..//temp/ptypes/Debug/gccWin32/../src/pinstm.d
../../../..//temp/ptypes/Debug/gccWin32/../src/pinstm.o: ../src/pinstm.cxx
	$(CPP_COMPILER) $(Debug_Preprocessor_Definitions) $(Debug_Compiler_Flags) -c ../src/pinstm.cxx $(Debug_Include_Path) -o ../../../..//temp/ptypes/Debug/gccWin32/../src/pinstm.o
	$(CPP_COMPILER) $(Debug_Preprocessor_Definitions) $(Debug_Compiler_Flags) -MM ../src/pinstm.cxx $(Debug_Include_Path) > ../../../..//temp/ptypes/Debug/gccWin32/../src/pinstm.d

# Compiles file ../src/pintee.cxx for the Debug configuration...
-include ../../../..//temp/ptypes/Debug/gccWin32/../src/pintee.d
../../../..//temp/ptypes/Debug/gccWin32/../src/pintee.o: ../src/pintee.cxx
	$(CPP_COMPILER) $(Debug_Preprocessor_Definitions) $(Debug_Compiler_Flags) -c ../src/pintee.cxx $(Debug_Include_Path) -o ../../../..//temp/ptypes/Debug/gccWin32/../src/pintee.o
	$(CPP_COMPILER) $(Debug_Preprocessor_Definitions) $(Debug_Compiler_Flags) -MM ../src/pintee.cxx $(Debug_Include_Path) > ../../../..//temp/ptypes/Debug/gccWin32/../src/pintee.d

# Compiles file ../src/piobase.cxx for the Debug configuration...
-include ../../../..//temp/ptypes/Debug/gccWin32/../src/piobase.d
../../../..//temp/ptypes/Debug/gccWin32/../src/piobase.o: ../src/piobase.cxx
	$(CPP_COMPILER) $(Debug_Preprocessor_Definitions) $(Debug_Compiler_Flags) -c ../src/piobase.cxx $(Debug_Include_Path) -o ../../../..//temp/ptypes/Debug/gccWin32/../src/piobase.o
	$(CPP_COMPILER) $(Debug_Preprocessor_Definitions) $(Debug_Compiler_Flags) -MM ../src/piobase.cxx $(Debug_Include_Path) > ../../../..//temp/ptypes/Debug/gccWin32/../src/piobase.d

# Compiles file ../src/pipbase.cxx for the Debug configuration...
-include ../../../..//temp/ptypes/Debug/gccWin32/../src/pipbase.d
../../../..//temp/ptypes/Debug/gccWin32/../src/pipbase.o: ../src/pipbase.cxx
	$(CPP_COMPILER) $(Debug_Preprocessor_Definitions) $(Debug_Compiler_Flags) -c ../src/pipbase.cxx $(Debug_Include_Path) -o ../../../..//temp/ptypes/Debug/gccWin32/../src/pipbase.o
	$(CPP_COMPILER) $(Debug_Preprocessor_Definitions) $(Debug_Compiler_Flags) -MM ../src/pipbase.cxx $(Debug_Include_Path) > ../../../..//temp/ptypes/Debug/gccWin32/../src/pipbase.d

# Compiles file ../src/pipmsg.cxx for the Debug configuration...
-include ../../../..//temp/ptypes/Debug/gccWin32/../src/pipmsg.d
../../../..//temp/ptypes/Debug/gccWin32/../src/pipmsg.o: ../src/pipmsg.cxx
	$(CPP_COMPILER) $(Debug_Preprocessor_Definitions) $(Debug_Compiler_Flags) -c ../src/pipmsg.cxx $(Debug_Include_Path) -o ../../../..//temp/ptypes/Debug/gccWin32/../src/pipmsg.o
	$(CPP_COMPILER) $(Debug_Preprocessor_Definitions) $(Debug_Compiler_Flags) -MM ../src/pipmsg.cxx $(Debug_Include_Path) > ../../../..//temp/ptypes/Debug/gccWin32/../src/pipmsg.d

# Compiles file ../src/pipmsgsv.cxx for the Debug configuration...
-include ../../../..//temp/ptypes/Debug/gccWin32/../src/pipmsgsv.d
../../../..//temp/ptypes/Debug/gccWin32/../src/pipmsgsv.o: ../src/pipmsgsv.cxx
	$(CPP_COMPILER) $(Debug_Preprocessor_Definitions) $(Debug_Compiler_Flags) -c ../src/pipmsgsv.cxx $(Debug_Include_Path) -o ../../../..//temp/ptypes/Debug/gccWin32/../src/pipmsgsv.o
	$(CPP_COMPILER) $(Debug_Preprocessor_Definitions) $(Debug_Compiler_Flags) -MM ../src/pipmsgsv.cxx $(Debug_Include_Path) > ../../../..//temp/ptypes/Debug/gccWin32/../src/pipmsgsv.d

# Compiles file ../src/pipstm.cxx for the Debug configuration...
-include ../../../..//temp/ptypes/Debug/gccWin32/../src/pipstm.d
../../../..//temp/ptypes/Debug/gccWin32/../src/pipstm.o: ../src/pipstm.cxx
	$(CPP_COMPILER) $(Debug_Preprocessor_Definitions) $(Debug_Compiler_Flags) -c ../src/pipstm.cxx $(Debug_Include_Path) -o ../../../..//temp/ptypes/Debug/gccWin32/../src/pipstm.o
	$(CPP_COMPILER) $(Debug_Preprocessor_Definitions) $(Debug_Compiler_Flags) -MM ../src/pipstm.cxx $(Debug_Include_Path) > ../../../..//temp/ptypes/Debug/gccWin32/../src/pipstm.d

# Compiles file ../src/pipstmsv.cxx for the Debug configuration...
-include ../../../..//temp/ptypes/Debug/gccWin32/../src/pipstmsv.d
../../../..//temp/ptypes/Debug/gccWin32/../src/pipstmsv.o: ../src/pipstmsv.cxx
	$(CPP_COMPILER) $(Debug_Preprocessor_Definitions) $(Debug_Compiler_Flags) -c ../src/pipstmsv.cxx $(Debug_Include_Path) -o ../../../..//temp/ptypes/Debug/gccWin32/../src/pipstmsv.o
	$(CPP_COMPILER) $(Debug_Preprocessor_Definitions) $(Debug_Compiler_Flags) -MM ../src/pipstmsv.cxx $(Debug_Include_Path) > ../../../..//temp/ptypes/Debug/gccWin32/../src/pipstmsv.d

# Compiles file ../src/pipsvbase.cxx for the Debug configuration...
-include ../../../..//temp/ptypes/Debug/gccWin32/../src/pipsvbase.d
../../../..//temp/ptypes/Debug/gccWin32/../src/pipsvbase.o: ../src/pipsvbase.cxx
	$(CPP_COMPILER) $(Debug_Preprocessor_Definitions) $(Debug_Compiler_Flags) -c ../src/pipsvbase.cxx $(Debug_Include_Path) -o ../../../..//temp/ptypes/Debug/gccWin32/../src/pipsvbase.o
	$(CPP_COMPILER) $(Debug_Preprocessor_Definitions) $(Debug_Compiler_Flags) -MM ../src/pipsvbase.cxx $(Debug_Include_Path) > ../../../..//temp/ptypes/Debug/gccWin32/../src/pipsvbase.d

# Compiles file ../src/pmd5.cxx for the Debug configuration...
-include ../../../..//temp/ptypes/Debug/gccWin32/../src/pmd5.d
../../../..//temp/ptypes/Debug/gccWin32/../src/pmd5.o: ../src/pmd5.cxx
	$(CPP_COMPILER) $(Debug_Preprocessor_Definitions) $(Debug_Compiler_Flags) -c ../src/pmd5.cxx $(Debug_Include_Path) -o ../../../..//temp/ptypes/Debug/gccWin32/../src/pmd5.o
	$(CPP_COMPILER) $(Debug_Preprocessor_Definitions) $(Debug_Compiler_Flags) -MM ../src/pmd5.cxx $(Debug_Include_Path) > ../../../..//temp/ptypes/Debug/gccWin32/../src/pmd5.d

# Compiles file ../src/pmem.cxx for the Debug configuration...
-include ../../../..//temp/ptypes/Debug/gccWin32/../src/pmem.d
../../../..//temp/ptypes/Debug/gccWin32/../src/pmem.o: ../src/pmem.cxx
	$(CPP_COMPILER) $(Debug_Preprocessor_Definitions) $(Debug_Compiler_Flags) -c ../src/pmem.cxx $(Debug_Include_Path) -o ../../../..//temp/ptypes/Debug/gccWin32/../src/pmem.o
	$(CPP_COMPILER) $(Debug_Preprocessor_Definitions) $(Debug_Compiler_Flags) -MM ../src/pmem.cxx $(Debug_Include_Path) > ../../../..//temp/ptypes/Debug/gccWin32/../src/pmem.d

# Compiles file ../src/pmsgq.cxx for the Debug configuration...
-include ../../../..//temp/ptypes/Debug/gccWin32/../src/pmsgq.d
../../../..//temp/ptypes/Debug/gccWin32/../src/pmsgq.o: ../src/pmsgq.cxx
	$(CPP_COMPILER) $(Debug_Preprocessor_Definitions) $(Debug_Compiler_Flags) -c ../src/pmsgq.cxx $(Debug_Include_Path) -o ../../../..//temp/ptypes/Debug/gccWin32/../src/pmsgq.o
	$(CPP_COMPILER) $(Debug_Preprocessor_Definitions) $(Debug_Compiler_Flags) -MM ../src/pmsgq.cxx $(Debug_Include_Path) > ../../../..//temp/ptypes/Debug/gccWin32/../src/pmsgq.d

# Compiles file ../src/pmtxtable.cxx for the Debug configuration...
-include ../../../..//temp/ptypes/Debug/gccWin32/../src/pmtxtable.d
../../../..//temp/ptypes/Debug/gccWin32/../src/pmtxtable.o: ../src/pmtxtable.cxx
	$(CPP_COMPILER) $(Debug_Preprocessor_Definitions) $(Debug_Compiler_Flags) -c ../src/pmtxtable.cxx $(Debug_Include_Path) -o ../../../..//temp/ptypes/Debug/gccWin32/../src/pmtxtable.o
	$(CPP_COMPILER) $(Debug_Preprocessor_Definitions) $(Debug_Compiler_Flags) -MM ../src/pmtxtable.cxx $(Debug_Include_Path) > ../../../..//temp/ptypes/Debug/gccWin32/../src/pmtxtable.d

# Compiles file ../src/pnpipe.cxx for the Debug configuration...
-include ../../../..//temp/ptypes/Debug/gccWin32/../src/pnpipe.d
../../../..//temp/ptypes/Debug/gccWin32/../src/pnpipe.o: ../src/pnpipe.cxx
	$(CPP_COMPILER) $(Debug_Preprocessor_Definitions) $(Debug_Compiler_Flags) -c ../src/pnpipe.cxx $(Debug_Include_Path) -o ../../../..//temp/ptypes/Debug/gccWin32/../src/pnpipe.o
	$(CPP_COMPILER) $(Debug_Preprocessor_Definitions) $(Debug_Compiler_Flags) -MM ../src/pnpipe.cxx $(Debug_Include_Path) > ../../../..//temp/ptypes/Debug/gccWin32/../src/pnpipe.d

# Compiles file ../src/pnpserver.cxx for the Debug configuration...
-include ../../../..//temp/ptypes/Debug/gccWin32/../src/pnpserver.d
../../../..//temp/ptypes/Debug/gccWin32/../src/pnpserver.o: ../src/pnpserver.cxx
	$(CPP_COMPILER) $(Debug_Preprocessor_Definitions) $(Debug_Compiler_Flags) -c ../src/pnpserver.cxx $(Debug_Include_Path) -o ../../../..//temp/ptypes/Debug/gccWin32/../src/pnpserver.o
	$(CPP_COMPILER) $(Debug_Preprocessor_Definitions) $(Debug_Compiler_Flags) -MM ../src/pnpserver.cxx $(Debug_Include_Path) > ../../../..//temp/ptypes/Debug/gccWin32/../src/pnpserver.d

# Compiles file ../src/pobjlist.cxx for the Debug configuration...
-include ../../../..//temp/ptypes/Debug/gccWin32/../src/pobjlist.d
../../../..//temp/ptypes/Debug/gccWin32/../src/pobjlist.o: ../src/pobjlist.cxx
	$(CPP_COMPILER) $(Debug_Preprocessor_Definitions) $(Debug_Compiler_Flags) -c ../src/pobjlist.cxx $(Debug_Include_Path) -o ../../../..//temp/ptypes/Debug/gccWin32/../src/pobjlist.o
	$(CPP_COMPILER) $(Debug_Preprocessor_Definitions) $(Debug_Compiler_Flags) -MM ../src/pobjlist.cxx $(Debug_Include_Path) > ../../../..//temp/ptypes/Debug/gccWin32/../src/pobjlist.d

# Compiles file ../src/poutfile.cxx for the Debug configuration...
-include ../../../..//temp/ptypes/Debug/gccWin32/../src/poutfile.d
../../../..//temp/ptypes/Debug/gccWin32/../src/poutfile.o: ../src/poutfile.cxx
	$(CPP_COMPILER) $(Debug_Preprocessor_Definitions) $(Debug_Compiler_Flags) -c ../src/poutfile.cxx $(Debug_Include_Path) -o ../../../..//temp/ptypes/Debug/gccWin32/../src/poutfile.o
	$(CPP_COMPILER) $(Debug_Preprocessor_Definitions) $(Debug_Compiler_Flags) -MM ../src/poutfile.cxx $(Debug_Include_Path) > ../../../..//temp/ptypes/Debug/gccWin32/../src/poutfile.d

# Compiles file ../src/poutfilter.cxx for the Debug configuration...
-include ../../../..//temp/ptypes/Debug/gccWin32/../src/poutfilter.d
../../../..//temp/ptypes/Debug/gccWin32/../src/poutfilter.o: ../src/poutfilter.cxx
	$(CPP_COMPILER) $(Debug_Preprocessor_Definitions) $(Debug_Compiler_Flags) -c ../src/poutfilter.cxx $(Debug_Include_Path) -o ../../../..//temp/ptypes/Debug/gccWin32/../src/poutfilter.o
	$(CPP_COMPILER) $(Debug_Preprocessor_Definitions) $(Debug_Compiler_Flags) -MM ../src/poutfilter.cxx $(Debug_Include_Path) > ../../../..//temp/ptypes/Debug/gccWin32/../src/poutfilter.d

# Compiles file ../src/poutmem.cxx for the Debug configuration...
-include ../../../..//temp/ptypes/Debug/gccWin32/../src/poutmem.d
../../../..//temp/ptypes/Debug/gccWin32/../src/poutmem.o: ../src/poutmem.cxx
	$(CPP_COMPILER) $(Debug_Preprocessor_Definitions) $(Debug_Compiler_Flags) -c ../src/poutmem.cxx $(Debug_Include_Path) -o ../../../..//temp/ptypes/Debug/gccWin32/../src/poutmem.o
	$(CPP_COMPILER) $(Debug_Preprocessor_Definitions) $(Debug_Compiler_Flags) -MM ../src/poutmem.cxx $(Debug_Include_Path) > ../../../..//temp/ptypes/Debug/gccWin32/../src/poutmem.d

# Compiles file ../src/poutstm.cxx for the Debug configuration...
-include ../../../..//temp/ptypes/Debug/gccWin32/../src/poutstm.d
../../../..//temp/ptypes/Debug/gccWin32/../src/poutstm.o: ../src/poutstm.cxx
	$(CPP_COMPILER) $(Debug_Preprocessor_Definitions) $(Debug_Compiler_Flags) -c ../src/poutstm.cxx $(Debug_Include_Path) -o ../../../..//temp/ptypes/Debug/gccWin32/../src/poutstm.o
	$(CPP_COMPILER) $(Debug_Preprocessor_Definitions) $(Debug_Compiler_Flags) -MM ../src/poutstm.cxx $(Debug_Include_Path) > ../../../..//temp/ptypes/Debug/gccWin32/../src/poutstm.d

# Compiles file ../src/ppipe.cxx for the Debug configuration...
-include ../../../..//temp/ptypes/Debug/gccWin32/../src/ppipe.d
../../../..//temp/ptypes/Debug/gccWin32/../src/ppipe.o: ../src/ppipe.cxx
	$(CPP_COMPILER) $(Debug_Preprocessor_Definitions) $(Debug_Compiler_Flags) -c ../src/ppipe.cxx $(Debug_Include_Path) -o ../../../..//temp/ptypes/Debug/gccWin32/../src/ppipe.o
	$(CPP_COMPILER) $(Debug_Preprocessor_Definitions) $(Debug_Compiler_Flags) -MM ../src/ppipe.cxx $(Debug_Include_Path) > ../../../..//temp/ptypes/Debug/gccWin32/../src/ppipe.d

# Compiles file ../src/ppodlist.cxx for the Debug configuration...
-include ../../../..//temp/ptypes/Debug/gccWin32/../src/ppodlist.d
../../../..//temp/ptypes/Debug/gccWin32/../src/ppodlist.o: ../src/ppodlist.cxx
	$(CPP_COMPILER) $(Debug_Preprocessor_Definitions) $(Debug_Compiler_Flags) -c ../src/ppodlist.cxx $(Debug_Include_Path) -o ../../../..//temp/ptypes/Debug/gccWin32/../src/ppodlist.o
	$(CPP_COMPILER) $(Debug_Preprocessor_Definitions) $(Debug_Compiler_Flags) -MM ../src/ppodlist.cxx $(Debug_Include_Path) > ../../../..//temp/ptypes/Debug/gccWin32/../src/ppodlist.d

# Compiles file ../src/pputf.cxx for the Debug configuration...
-include ../../../..//temp/ptypes/Debug/gccWin32/../src/pputf.d
../../../..//temp/ptypes/Debug/gccWin32/../src/pputf.o: ../src/pputf.cxx
	$(CPP_COMPILER) $(Debug_Preprocessor_Definitions) $(Debug_Compiler_Flags) -c ../src/pputf.cxx $(Debug_Include_Path) -o ../../../..//temp/ptypes/Debug/gccWin32/../src/pputf.o
	$(CPP_COMPILER) $(Debug_Preprocessor_Definitions) $(Debug_Compiler_Flags) -MM ../src/pputf.cxx $(Debug_Include_Path) > ../../../..//temp/ptypes/Debug/gccWin32/../src/pputf.d

# Compiles file ../src/prwlock.cxx for the Debug configuration...
-include ../../../..//temp/ptypes/Debug/gccWin32/../src/prwlock.d
../../../..//temp/ptypes/Debug/gccWin32/../src/prwlock.o: ../src/prwlock.cxx
	$(CPP_COMPILER) $(Debug_Preprocessor_Definitions) $(Debug_Compiler_Flags) -c ../src/prwlock.cxx $(Debug_Include_Path) -o ../../../..//temp/ptypes/Debug/gccWin32/../src/prwlock.o
	$(CPP_COMPILER) $(Debug_Preprocessor_Definitions) $(Debug_Compiler_Flags) -MM ../src/prwlock.cxx $(Debug_Include_Path) > ../../../..//temp/ptypes/Debug/gccWin32/../src/prwlock.d

# Compiles file ../src/psemaphore.cxx for the Debug configuration...
-include ../../../..//temp/ptypes/Debug/gccWin32/../src/psemaphore.d
../../../..//temp/ptypes/Debug/gccWin32/../src/psemaphore.o: ../src/psemaphore.cxx
	$(CPP_COMPILER) $(Debug_Preprocessor_Definitions) $(Debug_Compiler_Flags) -c ../src/psemaphore.cxx $(Debug_Include_Path) -o ../../../..//temp/ptypes/Debug/gccWin32/../src/psemaphore.o
	$(CPP_COMPILER) $(Debug_Preprocessor_Definitions) $(Debug_Compiler_Flags) -MM ../src/psemaphore.cxx $(Debug_Include_Path) > ../../../..//temp/ptypes/Debug/gccWin32/../src/psemaphore.d

# Compiles file ../src/pstdio.cxx for the Debug configuration...
-include ../../../..//temp/ptypes/Debug/gccWin32/../src/pstdio.d
../../../..//temp/ptypes/Debug/gccWin32/../src/pstdio.o: ../src/pstdio.cxx
	$(CPP_COMPILER) $(Debug_Preprocessor_Definitions) $(Debug_Compiler_Flags) -c ../src/pstdio.cxx $(Debug_Include_Path) -o ../../../..//temp/ptypes/Debug/gccWin32/../src/pstdio.o
	$(CPP_COMPILER) $(Debug_Preprocessor_Definitions) $(Debug_Compiler_Flags) -MM ../src/pstdio.cxx $(Debug_Include_Path) > ../../../..//temp/ptypes/Debug/gccWin32/../src/pstdio.d

# Compiles file ../src/pstrcase.cxx for the Debug configuration...
-include ../../../..//temp/ptypes/Debug/gccWin32/../src/pstrcase.d
../../../..//temp/ptypes/Debug/gccWin32/../src/pstrcase.o: ../src/pstrcase.cxx
	$(CPP_COMPILER) $(Debug_Preprocessor_Definitions) $(Debug_Compiler_Flags) -c ../src/pstrcase.cxx $(Debug_Include_Path) -o ../../../..//temp/ptypes/Debug/gccWin32/../src/pstrcase.o
	$(CPP_COMPILER) $(Debug_Preprocessor_Definitions) $(Debug_Compiler_Flags) -MM ../src/pstrcase.cxx $(Debug_Include_Path) > ../../../..//temp/ptypes/Debug/gccWin32/../src/pstrcase.d

# Compiles file ../src/pstrconv.cxx for the Debug configuration...
-include ../../../..//temp/ptypes/Debug/gccWin32/../src/pstrconv.d
../../../..//temp/ptypes/Debug/gccWin32/../src/pstrconv.o: ../src/pstrconv.cxx
	$(CPP_COMPILER) $(Debug_Preprocessor_Definitions) $(Debug_Compiler_Flags) -c ../src/pstrconv.cxx $(Debug_Include_Path) -o ../../../..//temp/ptypes/Debug/gccWin32/../src/pstrconv.o
	$(CPP_COMPILER) $(Debug_Preprocessor_Definitions) $(Debug_Compiler_Flags) -MM ../src/pstrconv.cxx $(Debug_Include_Path) > ../../../..//temp/ptypes/Debug/gccWin32/../src/pstrconv.d

# Compiles file ../src/pstring.cxx for the Debug configuration...
-include ../../../..//temp/ptypes/Debug/gccWin32/../src/pstring.d
../../../..//temp/ptypes/Debug/gccWin32/../src/pstring.o: ../src/pstring.cxx
	$(CPP_COMPILER) $(Debug_Preprocessor_Definitions) $(Debug_Compiler_Flags) -c ../src/pstring.cxx $(Debug_Include_Path) -o ../../../..//temp/ptypes/Debug/gccWin32/../src/pstring.o
	$(CPP_COMPILER) $(Debug_Preprocessor_Definitions) $(Debug_Compiler_Flags) -MM ../src/pstring.cxx $(Debug_Include_Path) > ../../../..//temp/ptypes/Debug/gccWin32/../src/pstring.d

# Compiles file ../src/pstrlist.cxx for the Debug configuration...
-include ../../../..//temp/ptypes/Debug/gccWin32/../src/pstrlist.d
../../../..//temp/ptypes/Debug/gccWin32/../src/pstrlist.o: ../src/pstrlist.cxx
	$(CPP_COMPILER) $(Debug_Preprocessor_Definitions) $(Debug_Compiler_Flags) -c ../src/pstrlist.cxx $(Debug_Include_Path) -o ../../../..//temp/ptypes/Debug/gccWin32/../src/pstrlist.o
	$(CPP_COMPILER) $(Debug_Preprocessor_Definitions) $(Debug_Compiler_Flags) -MM ../src/pstrlist.cxx $(Debug_Include_Path) > ../../../..//temp/ptypes/Debug/gccWin32/../src/pstrlist.d

# Compiles file ../src/pstrmanip.cxx for the Debug configuration...
-include ../../../..//temp/ptypes/Debug/gccWin32/../src/pstrmanip.d
../../../..//temp/ptypes/Debug/gccWin32/../src/pstrmanip.o: ../src/pstrmanip.cxx
	$(CPP_COMPILER) $(Debug_Preprocessor_Definitions) $(Debug_Compiler_Flags) -c ../src/pstrmanip.cxx $(Debug_Include_Path) -o ../../../..//temp/ptypes/Debug/gccWin32/../src/pstrmanip.o
	$(CPP_COMPILER) $(Debug_Preprocessor_Definitions) $(Debug_Compiler_Flags) -MM ../src/pstrmanip.cxx $(Debug_Include_Path) > ../../../..//temp/ptypes/Debug/gccWin32/../src/pstrmanip.d

# Compiles file ../src/pstrtoi.cxx for the Debug configuration...
-include ../../../..//temp/ptypes/Debug/gccWin32/../src/pstrtoi.d
../../../..//temp/ptypes/Debug/gccWin32/../src/pstrtoi.o: ../src/pstrtoi.cxx
	$(CPP_COMPILER) $(Debug_Preprocessor_Definitions) $(Debug_Compiler_Flags) -c ../src/pstrtoi.cxx $(Debug_Include_Path) -o ../../../..//temp/ptypes/Debug/gccWin32/../src/pstrtoi.o
	$(CPP_COMPILER) $(Debug_Preprocessor_Definitions) $(Debug_Compiler_Flags) -MM ../src/pstrtoi.cxx $(Debug_Include_Path) > ../../../..//temp/ptypes/Debug/gccWin32/../src/pstrtoi.d

# Compiles file ../src/pstrutils.cxx for the Debug configuration...
-include ../../../..//temp/ptypes/Debug/gccWin32/../src/pstrutils.d
../../../..//temp/ptypes/Debug/gccWin32/../src/pstrutils.o: ../src/pstrutils.cxx
	$(CPP_COMPILER) $(Debug_Preprocessor_Definitions) $(Debug_Compiler_Flags) -c ../src/pstrutils.cxx $(Debug_Include_Path) -o ../../../..//temp/ptypes/Debug/gccWin32/../src/pstrutils.o
	$(CPP_COMPILER) $(Debug_Preprocessor_Definitions) $(Debug_Compiler_Flags) -MM ../src/pstrutils.cxx $(Debug_Include_Path) > ../../../..//temp/ptypes/Debug/gccWin32/../src/pstrutils.d

# Compiles file ../src/ptextmap.cxx for the Debug configuration...
-include ../../../..//temp/ptypes/Debug/gccWin32/../src/ptextmap.d
../../../..//temp/ptypes/Debug/gccWin32/../src/ptextmap.o: ../src/ptextmap.cxx
	$(CPP_COMPILER) $(Debug_Preprocessor_Definitions) $(Debug_Compiler_Flags) -c ../src/ptextmap.cxx $(Debug_Include_Path) -o ../../../..//temp/ptypes/Debug/gccWin32/../src/ptextmap.o
	$(CPP_COMPILER) $(Debug_Preprocessor_Definitions) $(Debug_Compiler_Flags) -MM ../src/ptextmap.cxx $(Debug_Include_Path) > ../../../..//temp/ptypes/Debug/gccWin32/../src/ptextmap.d

# Compiles file ../src/pthread.cxx for the Debug configuration...
-include ../../../..//temp/ptypes/Debug/gccWin32/../src/pthread.d
../../../..//temp/ptypes/Debug/gccWin32/../src/pthread.o: ../src/pthread.cxx
	$(CPP_COMPILER) $(Debug_Preprocessor_Definitions) $(Debug_Compiler_Flags) -c ../src/pthread.cxx $(Debug_Include_Path) -o ../../../..//temp/ptypes/Debug/gccWin32/../src/pthread.o
	$(CPP_COMPILER) $(Debug_Preprocessor_Definitions) $(Debug_Compiler_Flags) -MM ../src/pthread.cxx $(Debug_Include_Path) > ../../../..//temp/ptypes/Debug/gccWin32/../src/pthread.d

# Compiles file ../src/ptime.cxx for the Debug configuration...
-include ../../../..//temp/ptypes/Debug/gccWin32/../src/ptime.d
../../../..//temp/ptypes/Debug/gccWin32/../src/ptime.o: ../src/ptime.cxx
	$(CPP_COMPILER) $(Debug_Preprocessor_Definitions) $(Debug_Compiler_Flags) -c ../src/ptime.cxx $(Debug_Include_Path) -o ../../../..//temp/ptypes/Debug/gccWin32/../src/ptime.o
	$(CPP_COMPILER) $(Debug_Preprocessor_Definitions) $(Debug_Compiler_Flags) -MM ../src/ptime.cxx $(Debug_Include_Path) > ../../../..//temp/ptypes/Debug/gccWin32/../src/ptime.d

# Compiles file ../src/ptimedsem.cxx for the Debug configuration...
-include ../../../..//temp/ptypes/Debug/gccWin32/../src/ptimedsem.d
../../../..//temp/ptypes/Debug/gccWin32/../src/ptimedsem.o: ../src/ptimedsem.cxx
	$(CPP_COMPILER) $(Debug_Preprocessor_Definitions) $(Debug_Compiler_Flags) -c ../src/ptimedsem.cxx $(Debug_Include_Path) -o ../../../..//temp/ptypes/Debug/gccWin32/../src/ptimedsem.o
	$(CPP_COMPILER) $(Debug_Preprocessor_Definitions) $(Debug_Compiler_Flags) -MM ../src/ptimedsem.cxx $(Debug_Include_Path) > ../../../..//temp/ptypes/Debug/gccWin32/../src/ptimedsem.d

# Compiles file ../src/ptrigger.cxx for the Debug configuration...
-include ../../../..//temp/ptypes/Debug/gccWin32/../src/ptrigger.d
../../../..//temp/ptypes/Debug/gccWin32/../src/ptrigger.o: ../src/ptrigger.cxx
	$(CPP_COMPILER) $(Debug_Preprocessor_Definitions) $(Debug_Compiler_Flags) -c ../src/ptrigger.cxx $(Debug_Include_Path) -o ../../../..//temp/ptypes/Debug/gccWin32/../src/ptrigger.o
	$(CPP_COMPILER) $(Debug_Preprocessor_Definitions) $(Debug_Compiler_Flags) -MM ../src/ptrigger.cxx $(Debug_Include_Path) > ../../../..//temp/ptypes/Debug/gccWin32/../src/ptrigger.d

# Compiles file ../src/punit.cxx for the Debug configuration...
-include ../../../..//temp/ptypes/Debug/gccWin32/../src/punit.d
../../../..//temp/ptypes/Debug/gccWin32/../src/punit.o: ../src/punit.cxx
	$(CPP_COMPILER) $(Debug_Preprocessor_Definitions) $(Debug_Compiler_Flags) -c ../src/punit.cxx $(Debug_Include_Path) -o ../../../..//temp/ptypes/Debug/gccWin32/../src/punit.o
	$(CPP_COMPILER) $(Debug_Preprocessor_Definitions) $(Debug_Compiler_Flags) -MM ../src/punit.cxx $(Debug_Include_Path) > ../../../..//temp/ptypes/Debug/gccWin32/../src/punit.d

# Compiles file ../src/punknown.cxx for the Debug configuration...
-include ../../../..//temp/ptypes/Debug/gccWin32/../src/punknown.d
../../../..//temp/ptypes/Debug/gccWin32/../src/punknown.o: ../src/punknown.cxx
	$(CPP_COMPILER) $(Debug_Preprocessor_Definitions) $(Debug_Compiler_Flags) -c ../src/punknown.cxx $(Debug_Include_Path) -o ../../../..//temp/ptypes/Debug/gccWin32/../src/punknown.o
	$(CPP_COMPILER) $(Debug_Preprocessor_Definitions) $(Debug_Compiler_Flags) -MM ../src/punknown.cxx $(Debug_Include_Path) > ../../../..//temp/ptypes/Debug/gccWin32/../src/punknown.d

# Compiles file ../src/pvariant.cxx for the Debug configuration...
-include ../../../..//temp/ptypes/Debug/gccWin32/../src/pvariant.d
../../../..//temp/ptypes/Debug/gccWin32/../src/pvariant.o: ../src/pvariant.cxx
	$(CPP_COMPILER) $(Debug_Preprocessor_Definitions) $(Debug_Compiler_Flags) -c ../src/pvariant.cxx $(Debug_Include_Path) -o ../../../..//temp/ptypes/Debug/gccWin32/../src/pvariant.o
	$(CPP_COMPILER) $(Debug_Preprocessor_Definitions) $(Debug_Compiler_Flags) -MM ../src/pvariant.cxx $(Debug_Include_Path) > ../../../..//temp/ptypes/Debug/gccWin32/../src/pvariant.d

# Compiles file ../src/pversion.cxx for the Debug configuration...
-include ../../../..//temp/ptypes/Debug/gccWin32/../src/pversion.d
../../../..//temp/ptypes/Debug/gccWin32/../src/pversion.o: ../src/pversion.cxx
	$(CPP_COMPILER) $(Debug_Preprocessor_Definitions) $(Debug_Compiler_Flags) -c ../src/pversion.cxx $(Debug_Include_Path) -o ../../../..//temp/ptypes/Debug/gccWin32/../src/pversion.o
	$(CPP_COMPILER) $(Debug_Preprocessor_Definitions) $(Debug_Compiler_Flags) -MM ../src/pversion.cxx $(Debug_Include_Path) > ../../../..//temp/ptypes/Debug/gccWin32/../src/pversion.d

# Builds the Release configuration...
.PHONY: Release
Release: create_folders ../../../..//temp/ptypes/Release/gccWin32/../src/pasync.o ../../../..//temp/ptypes/Release/gccWin32/../src/patomic.o ../../../..//temp/ptypes/Release/gccWin32/../src/pcomponent.o ../../../..//temp/ptypes/Release/gccWin32/../src/pcset.o ../../../..//temp/ptypes/Release/gccWin32/../src/pcsetdbg.o ../../../..//temp/ptypes/Release/gccWin32/../src/pexcept.o ../../../..//temp/ptypes/Release/gccWin32/../src/pfatal.o ../../../..//temp/ptypes/Release/gccWin32/../src/pfdxstm.o ../../../..//temp/ptypes/Release/gccWin32/../src/pinfile.o ../../../..//temp/ptypes/Release/gccWin32/../src/pinfilter.o ../../../..//temp/ptypes/Release/gccWin32/../src/pinmem.o ../../../..//temp/ptypes/Release/gccWin32/../src/pinstm.o ../../../..//temp/ptypes/Release/gccWin32/../src/pintee.o ../../../..//temp/ptypes/Release/gccWin32/../src/piobase.o ../../../..//temp/ptypes/Release/gccWin32/../src/pipbase.o ../../../..//temp/ptypes/Release/gccWin32/../src/pipmsg.o ../../../..//temp/ptypes/Release/gccWin32/../src/pipmsgsv.o ../../../..//temp/ptypes/Release/gccWin32/../src/pipstm.o ../../../..//temp/ptypes/Release/gccWin32/../src/pipstmsv.o ../../../..//temp/ptypes/Release/gccWin32/../src/pipsvbase.o ../../../..//temp/ptypes/Release/gccWin32/../src/pmd5.o ../../../..//temp/ptypes/Release/gccWin32/../src/pmem.o ../../../..//temp/ptypes/Release/gccWin32/../src/pmsgq.o ../../../..//temp/ptypes/Release/gccWin32/../src/pmtxtable.o ../../../..//temp/ptypes/Release/gccWin32/../src/pnpipe.o ../../../..//temp/ptypes/Release/gccWin32/../src/pnpserver.o ../../../..//temp/ptypes/Release/gccWin32/../src/pobjlist.o ../../../..//temp/ptypes/Release/gccWin32/../src/poutfile.o ../../../..//temp/ptypes/Release/gccWin32/../src/poutfilter.o ../../../..//temp/ptypes/Release/gccWin32/../src/poutmem.o ../../../..//temp/ptypes/Release/gccWin32/../src/poutstm.o ../../../..//temp/ptypes/Release/gccWin32/../src/ppipe.o ../../../..//temp/ptypes/Release/gccWin32/../src/ppodlist.o ../../../..//temp/ptypes/Release/gccWin32/../src/pputf.o ../../../..//temp/ptypes/Release/gccWin32/../src/prwlock.o ../../../..//temp/ptypes/Release/gccWin32/../src/psemaphore.o ../../../..//temp/ptypes/Release/gccWin32/../src/pstdio.o ../../../..//temp/ptypes/Release/gccWin32/../src/pstrcase.o ../../../..//temp/ptypes/Release/gccWin32/../src/pstrconv.o ../../../..//temp/ptypes/Release/gccWin32/../src/pstring.o ../../../..//temp/ptypes/Release/gccWin32/../src/pstrlist.o ../../../..//temp/ptypes/Release/gccWin32/../src/pstrmanip.o ../../../..//temp/ptypes/Release/gccWin32/../src/pstrtoi.o ../../../..//temp/ptypes/Release/gccWin32/../src/pstrutils.o ../../../..//temp/ptypes/Release/gccWin32/../src/ptextmap.o ../../../..//temp/ptypes/Release/gccWin32/../src/pthread.o ../../../..//temp/ptypes/Release/gccWin32/../src/ptime.o ../../../..//temp/ptypes/Release/gccWin32/../src/ptimedsem.o ../../../..//temp/ptypes/Release/gccWin32/../src/ptrigger.o ../../../..//temp/ptypes/Release/gccWin32/../src/punit.o ../../../..//temp/ptypes/Release/gccWin32/../src/punknown.o ../../../..//temp/ptypes/Release/gccWin32/../src/pvariant.o ../../../..//temp/ptypes/Release/gccWin32/../src/pversion.o 
	ar rcs ../../../..//temp/ptypes/Release/gccWin32/libptypes.a ../../../..//temp/ptypes/Release/gccWin32/../src/pasync.o ../../../..//temp/ptypes/Release/gccWin32/../src/patomic.o ../../../..//temp/ptypes/Release/gccWin32/../src/pcomponent.o ../../../..//temp/ptypes/Release/gccWin32/../src/pcset.o ../../../..//temp/ptypes/Release/gccWin32/../src/pcsetdbg.o ../../../..//temp/ptypes/Release/gccWin32/../src/pexcept.o ../../../..//temp/ptypes/Release/gccWin32/../src/pfatal.o ../../../..//temp/ptypes/Release/gccWin32/../src/pfdxstm.o ../../../..//temp/ptypes/Release/gccWin32/../src/pinfile.o ../../../..//temp/ptypes/Release/gccWin32/../src/pinfilter.o ../../../..//temp/ptypes/Release/gccWin32/../src/pinmem.o ../../../..//temp/ptypes/Release/gccWin32/../src/pinstm.o ../../../..//temp/ptypes/Release/gccWin32/../src/pintee.o ../../../..//temp/ptypes/Release/gccWin32/../src/piobase.o ../../../..//temp/ptypes/Release/gccWin32/../src/pipbase.o ../../../..//temp/ptypes/Release/gccWin32/../src/pipmsg.o ../../../..//temp/ptypes/Release/gccWin32/../src/pipmsgsv.o ../../../..//temp/ptypes/Release/gccWin32/../src/pipstm.o ../../../..//temp/ptypes/Release/gccWin32/../src/pipstmsv.o ../../../..//temp/ptypes/Release/gccWin32/../src/pipsvbase.o ../../../..//temp/ptypes/Release/gccWin32/../src/pmd5.o ../../../..//temp/ptypes/Release/gccWin32/../src/pmem.o ../../../..//temp/ptypes/Release/gccWin32/../src/pmsgq.o ../../../..//temp/ptypes/Release/gccWin32/../src/pmtxtable.o ../../../..//temp/ptypes/Release/gccWin32/../src/pnpipe.o ../../../..//temp/ptypes/Release/gccWin32/../src/pnpserver.o ../../../..//temp/ptypes/Release/gccWin32/../src/pobjlist.o ../../../..//temp/ptypes/Release/gccWin32/../src/poutfile.o ../../../..//temp/ptypes/Release/gccWin32/../src/poutfilter.o ../../../..//temp/ptypes/Release/gccWin32/../src/poutmem.o ../../../..//temp/ptypes/Release/gccWin32/../src/poutstm.o ../../../..//temp/ptypes/Release/gccWin32/../src/ppipe.o ../../../..//temp/ptypes/Release/gccWin32/../src/ppodlist.o ../../../..//temp/ptypes/Release/gccWin32/../src/pputf.o ../../../..//temp/ptypes/Release/gccWin32/../src/prwlock.o ../../../..//temp/ptypes/Release/gccWin32/../src/psemaphore.o ../../../..//temp/ptypes/Release/gccWin32/../src/pstdio.o ../../../..//temp/ptypes/Release/gccWin32/../src/pstrcase.o ../../../..//temp/ptypes/Release/gccWin32/../src/pstrconv.o ../../../..//temp/ptypes/Release/gccWin32/../src/pstring.o ../../../..//temp/ptypes/Release/gccWin32/../src/pstrlist.o ../../../..//temp/ptypes/Release/gccWin32/../src/pstrmanip.o ../../../..//temp/ptypes/Release/gccWin32/../src/pstrtoi.o ../../../..//temp/ptypes/Release/gccWin32/../src/pstrutils.o ../../../..//temp/ptypes/Release/gccWin32/../src/ptextmap.o ../../../..//temp/ptypes/Release/gccWin32/../src/pthread.o ../../../..//temp/ptypes/Release/gccWin32/../src/ptime.o ../../../..//temp/ptypes/Release/gccWin32/../src/ptimedsem.o ../../../..//temp/ptypes/Release/gccWin32/../src/ptrigger.o ../../../..//temp/ptypes/Release/gccWin32/../src/punit.o ../../../..//temp/ptypes/Release/gccWin32/../src/punknown.o ../../../..//temp/ptypes/Release/gccWin32/../src/pvariant.o ../../../..//temp/ptypes/Release/gccWin32/../src/pversion.o  $(Release_Implicitly_Linked_Objects)

# Compiles file ../src/pasync.cxx for the Release configuration...
-include ../../../..//temp/ptypes/Release/gccWin32/../src/pasync.d
../../../..//temp/ptypes/Release/gccWin32/../src/pasync.o: ../src/pasync.cxx
	$(CPP_COMPILER) $(Release_Preprocessor_Definitions) $(Release_Compiler_Flags) -c ../src/pasync.cxx $(Release_Include_Path) -o ../../../..//temp/ptypes/Release/gccWin32/../src/pasync.o
	$(CPP_COMPILER) $(Release_Preprocessor_Definitions) $(Release_Compiler_Flags) -MM ../src/pasync.cxx $(Release_Include_Path) > ../../../..//temp/ptypes/Release/gccWin32/../src/pasync.d

# Compiles file ../src/patomic.cxx for the Release configuration...
-include ../../../..//temp/ptypes/Release/gccWin32/../src/patomic.d
../../../..//temp/ptypes/Release/gccWin32/../src/patomic.o: ../src/patomic.cxx
	$(CPP_COMPILER) $(Release_Preprocessor_Definitions) $(Release_Compiler_Flags) -c ../src/patomic.cxx $(Release_Include_Path) -o ../../../..//temp/ptypes/Release/gccWin32/../src/patomic.o
	$(CPP_COMPILER) $(Release_Preprocessor_Definitions) $(Release_Compiler_Flags) -MM ../src/patomic.cxx $(Release_Include_Path) > ../../../..//temp/ptypes/Release/gccWin32/../src/patomic.d

# Compiles file ../src/pcomponent.cxx for the Release configuration...
-include ../../../..//temp/ptypes/Release/gccWin32/../src/pcomponent.d
../../../..//temp/ptypes/Release/gccWin32/../src/pcomponent.o: ../src/pcomponent.cxx
	$(CPP_COMPILER) $(Release_Preprocessor_Definitions) $(Release_Compiler_Flags) -c ../src/pcomponent.cxx $(Release_Include_Path) -o ../../../..//temp/ptypes/Release/gccWin32/../src/pcomponent.o
	$(CPP_COMPILER) $(Release_Preprocessor_Definitions) $(Release_Compiler_Flags) -MM ../src/pcomponent.cxx $(Release_Include_Path) > ../../../..//temp/ptypes/Release/gccWin32/../src/pcomponent.d

# Compiles file ../src/pcset.cxx for the Release configuration...
-include ../../../..//temp/ptypes/Release/gccWin32/../src/pcset.d
../../../..//temp/ptypes/Release/gccWin32/../src/pcset.o: ../src/pcset.cxx
	$(CPP_COMPILER) $(Release_Preprocessor_Definitions) $(Release_Compiler_Flags) -c ../src/pcset.cxx $(Release_Include_Path) -o ../../../..//temp/ptypes/Release/gccWin32/../src/pcset.o
	$(CPP_COMPILER) $(Release_Preprocessor_Definitions) $(Release_Compiler_Flags) -MM ../src/pcset.cxx $(Release_Include_Path) > ../../../..//temp/ptypes/Release/gccWin32/../src/pcset.d

# Compiles file ../src/pcsetdbg.cxx for the Release configuration...
-include ../../../..//temp/ptypes/Release/gccWin32/../src/pcsetdbg.d
../../../..//temp/ptypes/Release/gccWin32/../src/pcsetdbg.o: ../src/pcsetdbg.cxx
	$(CPP_COMPILER) $(Release_Preprocessor_Definitions) $(Release_Compiler_Flags) -c ../src/pcsetdbg.cxx $(Release_Include_Path) -o ../../../..//temp/ptypes/Release/gccWin32/../src/pcsetdbg.o
	$(CPP_COMPILER) $(Release_Preprocessor_Definitions) $(Release_Compiler_Flags) -MM ../src/pcsetdbg.cxx $(Release_Include_Path) > ../../../..//temp/ptypes/Release/gccWin32/../src/pcsetdbg.d

# Compiles file ../src/pexcept.cxx for the Release configuration...
-include ../../../..//temp/ptypes/Release/gccWin32/../src/pexcept.d
../../../..//temp/ptypes/Release/gccWin32/../src/pexcept.o: ../src/pexcept.cxx
	$(CPP_COMPILER) $(Release_Preprocessor_Definitions) $(Release_Compiler_Flags) -c ../src/pexcept.cxx $(Release_Include_Path) -o ../../../..//temp/ptypes/Release/gccWin32/../src/pexcept.o
	$(CPP_COMPILER) $(Release_Preprocessor_Definitions) $(Release_Compiler_Flags) -MM ../src/pexcept.cxx $(Release_Include_Path) > ../../../..//temp/ptypes/Release/gccWin32/../src/pexcept.d

# Compiles file ../src/pfatal.cxx for the Release configuration...
-include ../../../..//temp/ptypes/Release/gccWin32/../src/pfatal.d
../../../..//temp/ptypes/Release/gccWin32/../src/pfatal.o: ../src/pfatal.cxx
	$(CPP_COMPILER) $(Release_Preprocessor_Definitions) $(Release_Compiler_Flags) -c ../src/pfatal.cxx $(Release_Include_Path) -o ../../../..//temp/ptypes/Release/gccWin32/../src/pfatal.o
	$(CPP_COMPILER) $(Release_Preprocessor_Definitions) $(Release_Compiler_Flags) -MM ../src/pfatal.cxx $(Release_Include_Path) > ../../../..//temp/ptypes/Release/gccWin32/../src/pfatal.d

# Compiles file ../src/pfdxstm.cxx for the Release configuration...
-include ../../../..//temp/ptypes/Release/gccWin32/../src/pfdxstm.d
../../../..//temp/ptypes/Release/gccWin32/../src/pfdxstm.o: ../src/pfdxstm.cxx
	$(CPP_COMPILER) $(Release_Preprocessor_Definitions) $(Release_Compiler_Flags) -c ../src/pfdxstm.cxx $(Release_Include_Path) -o ../../../..//temp/ptypes/Release/gccWin32/../src/pfdxstm.o
	$(CPP_COMPILER) $(Release_Preprocessor_Definitions) $(Release_Compiler_Flags) -MM ../src/pfdxstm.cxx $(Release_Include_Path) > ../../../..//temp/ptypes/Release/gccWin32/../src/pfdxstm.d

# Compiles file ../src/pinfile.cxx for the Release configuration...
-include ../../../..//temp/ptypes/Release/gccWin32/../src/pinfile.d
../../../..//temp/ptypes/Release/gccWin32/../src/pinfile.o: ../src/pinfile.cxx
	$(CPP_COMPILER) $(Release_Preprocessor_Definitions) $(Release_Compiler_Flags) -c ../src/pinfile.cxx $(Release_Include_Path) -o ../../../..//temp/ptypes/Release/gccWin32/../src/pinfile.o
	$(CPP_COMPILER) $(Release_Preprocessor_Definitions) $(Release_Compiler_Flags) -MM ../src/pinfile.cxx $(Release_Include_Path) > ../../../..//temp/ptypes/Release/gccWin32/../src/pinfile.d

# Compiles file ../src/pinfilter.cxx for the Release configuration...
-include ../../../..//temp/ptypes/Release/gccWin32/../src/pinfilter.d
../../../..//temp/ptypes/Release/gccWin32/../src/pinfilter.o: ../src/pinfilter.cxx
	$(CPP_COMPILER) $(Release_Preprocessor_Definitions) $(Release_Compiler_Flags) -c ../src/pinfilter.cxx $(Release_Include_Path) -o ../../../..//temp/ptypes/Release/gccWin32/../src/pinfilter.o
	$(CPP_COMPILER) $(Release_Preprocessor_Definitions) $(Release_Compiler_Flags) -MM ../src/pinfilter.cxx $(Release_Include_Path) > ../../../..//temp/ptypes/Release/gccWin32/../src/pinfilter.d

# Compiles file ../src/pinmem.cxx for the Release configuration...
-include ../../../..//temp/ptypes/Release/gccWin32/../src/pinmem.d
../../../..//temp/ptypes/Release/gccWin32/../src/pinmem.o: ../src/pinmem.cxx
	$(CPP_COMPILER) $(Release_Preprocessor_Definitions) $(Release_Compiler_Flags) -c ../src/pinmem.cxx $(Release_Include_Path) -o ../../../..//temp/ptypes/Release/gccWin32/../src/pinmem.o
	$(CPP_COMPILER) $(Release_Preprocessor_Definitions) $(Release_Compiler_Flags) -MM ../src/pinmem.cxx $(Release_Include_Path) > ../../../..//temp/ptypes/Release/gccWin32/../src/pinmem.d

# Compiles file ../src/pinstm.cxx for the Release configuration...
-include ../../../..//temp/ptypes/Release/gccWin32/../src/pinstm.d
../../../..//temp/ptypes/Release/gccWin32/../src/pinstm.o: ../src/pinstm.cxx
	$(CPP_COMPILER) $(Release_Preprocessor_Definitions) $(Release_Compiler_Flags) -c ../src/pinstm.cxx $(Release_Include_Path) -o ../../../..//temp/ptypes/Release/gccWin32/../src/pinstm.o
	$(CPP_COMPILER) $(Release_Preprocessor_Definitions) $(Release_Compiler_Flags) -MM ../src/pinstm.cxx $(Release_Include_Path) > ../../../..//temp/ptypes/Release/gccWin32/../src/pinstm.d

# Compiles file ../src/pintee.cxx for the Release configuration...
-include ../../../..//temp/ptypes/Release/gccWin32/../src/pintee.d
../../../..//temp/ptypes/Release/gccWin32/../src/pintee.o: ../src/pintee.cxx
	$(CPP_COMPILER) $(Release_Preprocessor_Definitions) $(Release_Compiler_Flags) -c ../src/pintee.cxx $(Release_Include_Path) -o ../../../..//temp/ptypes/Release/gccWin32/../src/pintee.o
	$(CPP_COMPILER) $(Release_Preprocessor_Definitions) $(Release_Compiler_Flags) -MM ../src/pintee.cxx $(Release_Include_Path) > ../../../..//temp/ptypes/Release/gccWin32/../src/pintee.d

# Compiles file ../src/piobase.cxx for the Release configuration...
-include ../../../..//temp/ptypes/Release/gccWin32/../src/piobase.d
../../../..//temp/ptypes/Release/gccWin32/../src/piobase.o: ../src/piobase.cxx
	$(CPP_COMPILER) $(Release_Preprocessor_Definitions) $(Release_Compiler_Flags) -c ../src/piobase.cxx $(Release_Include_Path) -o ../../../..//temp/ptypes/Release/gccWin32/../src/piobase.o
	$(CPP_COMPILER) $(Release_Preprocessor_Definitions) $(Release_Compiler_Flags) -MM ../src/piobase.cxx $(Release_Include_Path) > ../../../..//temp/ptypes/Release/gccWin32/../src/piobase.d

# Compiles file ../src/pipbase.cxx for the Release configuration...
-include ../../../..//temp/ptypes/Release/gccWin32/../src/pipbase.d
../../../..//temp/ptypes/Release/gccWin32/../src/pipbase.o: ../src/pipbase.cxx
	$(CPP_COMPILER) $(Release_Preprocessor_Definitions) $(Release_Compiler_Flags) -c ../src/pipbase.cxx $(Release_Include_Path) -o ../../../..//temp/ptypes/Release/gccWin32/../src/pipbase.o
	$(CPP_COMPILER) $(Release_Preprocessor_Definitions) $(Release_Compiler_Flags) -MM ../src/pipbase.cxx $(Release_Include_Path) > ../../../..//temp/ptypes/Release/gccWin32/../src/pipbase.d

# Compiles file ../src/pipmsg.cxx for the Release configuration...
-include ../../../..//temp/ptypes/Release/gccWin32/../src/pipmsg.d
../../../..//temp/ptypes/Release/gccWin32/../src/pipmsg.o: ../src/pipmsg.cxx
	$(CPP_COMPILER) $(Release_Preprocessor_Definitions) $(Release_Compiler_Flags) -c ../src/pipmsg.cxx $(Release_Include_Path) -o ../../../..//temp/ptypes/Release/gccWin32/../src/pipmsg.o
	$(CPP_COMPILER) $(Release_Preprocessor_Definitions) $(Release_Compiler_Flags) -MM ../src/pipmsg.cxx $(Release_Include_Path) > ../../../..//temp/ptypes/Release/gccWin32/../src/pipmsg.d

# Compiles file ../src/pipmsgsv.cxx for the Release configuration...
-include ../../../..//temp/ptypes/Release/gccWin32/../src/pipmsgsv.d
../../../..//temp/ptypes/Release/gccWin32/../src/pipmsgsv.o: ../src/pipmsgsv.cxx
	$(CPP_COMPILER) $(Release_Preprocessor_Definitions) $(Release_Compiler_Flags) -c ../src/pipmsgsv.cxx $(Release_Include_Path) -o ../../../..//temp/ptypes/Release/gccWin32/../src/pipmsgsv.o
	$(CPP_COMPILER) $(Release_Preprocessor_Definitions) $(Release_Compiler_Flags) -MM ../src/pipmsgsv.cxx $(Release_Include_Path) > ../../../..//temp/ptypes/Release/gccWin32/../src/pipmsgsv.d

# Compiles file ../src/pipstm.cxx for the Release configuration...
-include ../../../..//temp/ptypes/Release/gccWin32/../src/pipstm.d
../../../..//temp/ptypes/Release/gccWin32/../src/pipstm.o: ../src/pipstm.cxx
	$(CPP_COMPILER) $(Release_Preprocessor_Definitions) $(Release_Compiler_Flags) -c ../src/pipstm.cxx $(Release_Include_Path) -o ../../../..//temp/ptypes/Release/gccWin32/../src/pipstm.o
	$(CPP_COMPILER) $(Release_Preprocessor_Definitions) $(Release_Compiler_Flags) -MM ../src/pipstm.cxx $(Release_Include_Path) > ../../../..//temp/ptypes/Release/gccWin32/../src/pipstm.d

# Compiles file ../src/pipstmsv.cxx for the Release configuration...
-include ../../../..//temp/ptypes/Release/gccWin32/../src/pipstmsv.d
../../../..//temp/ptypes/Release/gccWin32/../src/pipstmsv.o: ../src/pipstmsv.cxx
	$(CPP_COMPILER) $(Release_Preprocessor_Definitions) $(Release_Compiler_Flags) -c ../src/pipstmsv.cxx $(Release_Include_Path) -o ../../../..//temp/ptypes/Release/gccWin32/../src/pipstmsv.o
	$(CPP_COMPILER) $(Release_Preprocessor_Definitions) $(Release_Compiler_Flags) -MM ../src/pipstmsv.cxx $(Release_Include_Path) > ../../../..//temp/ptypes/Release/gccWin32/../src/pipstmsv.d

# Compiles file ../src/pipsvbase.cxx for the Release configuration...
-include ../../../..//temp/ptypes/Release/gccWin32/../src/pipsvbase.d
../../../..//temp/ptypes/Release/gccWin32/../src/pipsvbase.o: ../src/pipsvbase.cxx
	$(CPP_COMPILER) $(Release_Preprocessor_Definitions) $(Release_Compiler_Flags) -c ../src/pipsvbase.cxx $(Release_Include_Path) -o ../../../..//temp/ptypes/Release/gccWin32/../src/pipsvbase.o
	$(CPP_COMPILER) $(Release_Preprocessor_Definitions) $(Release_Compiler_Flags) -MM ../src/pipsvbase.cxx $(Release_Include_Path) > ../../../..//temp/ptypes/Release/gccWin32/../src/pipsvbase.d

# Compiles file ../src/pmd5.cxx for the Release configuration...
-include ../../../..//temp/ptypes/Release/gccWin32/../src/pmd5.d
../../../..//temp/ptypes/Release/gccWin32/../src/pmd5.o: ../src/pmd5.cxx
	$(CPP_COMPILER) $(Release_Preprocessor_Definitions) $(Release_Compiler_Flags) -c ../src/pmd5.cxx $(Release_Include_Path) -o ../../../..//temp/ptypes/Release/gccWin32/../src/pmd5.o
	$(CPP_COMPILER) $(Release_Preprocessor_Definitions) $(Release_Compiler_Flags) -MM ../src/pmd5.cxx $(Release_Include_Path) > ../../../..//temp/ptypes/Release/gccWin32/../src/pmd5.d

# Compiles file ../src/pmem.cxx for the Release configuration...
-include ../../../..//temp/ptypes/Release/gccWin32/../src/pmem.d
../../../..//temp/ptypes/Release/gccWin32/../src/pmem.o: ../src/pmem.cxx
	$(CPP_COMPILER) $(Release_Preprocessor_Definitions) $(Release_Compiler_Flags) -c ../src/pmem.cxx $(Release_Include_Path) -o ../../../..//temp/ptypes/Release/gccWin32/../src/pmem.o
	$(CPP_COMPILER) $(Release_Preprocessor_Definitions) $(Release_Compiler_Flags) -MM ../src/pmem.cxx $(Release_Include_Path) > ../../../..//temp/ptypes/Release/gccWin32/../src/pmem.d

# Compiles file ../src/pmsgq.cxx for the Release configuration...
-include ../../../..//temp/ptypes/Release/gccWin32/../src/pmsgq.d
../../../..//temp/ptypes/Release/gccWin32/../src/pmsgq.o: ../src/pmsgq.cxx
	$(CPP_COMPILER) $(Release_Preprocessor_Definitions) $(Release_Compiler_Flags) -c ../src/pmsgq.cxx $(Release_Include_Path) -o ../../../..//temp/ptypes/Release/gccWin32/../src/pmsgq.o
	$(CPP_COMPILER) $(Release_Preprocessor_Definitions) $(Release_Compiler_Flags) -MM ../src/pmsgq.cxx $(Release_Include_Path) > ../../../..//temp/ptypes/Release/gccWin32/../src/pmsgq.d

# Compiles file ../src/pmtxtable.cxx for the Release configuration...
-include ../../../..//temp/ptypes/Release/gccWin32/../src/pmtxtable.d
../../../..//temp/ptypes/Release/gccWin32/../src/pmtxtable.o: ../src/pmtxtable.cxx
	$(CPP_COMPILER) $(Release_Preprocessor_Definitions) $(Release_Compiler_Flags) -c ../src/pmtxtable.cxx $(Release_Include_Path) -o ../../../..//temp/ptypes/Release/gccWin32/../src/pmtxtable.o
	$(CPP_COMPILER) $(Release_Preprocessor_Definitions) $(Release_Compiler_Flags) -MM ../src/pmtxtable.cxx $(Release_Include_Path) > ../../../..//temp/ptypes/Release/gccWin32/../src/pmtxtable.d

# Compiles file ../src/pnpipe.cxx for the Release configuration...
-include ../../../..//temp/ptypes/Release/gccWin32/../src/pnpipe.d
../../../..//temp/ptypes/Release/gccWin32/../src/pnpipe.o: ../src/pnpipe.cxx
	$(CPP_COMPILER) $(Release_Preprocessor_Definitions) $(Release_Compiler_Flags) -c ../src/pnpipe.cxx $(Release_Include_Path) -o ../../../..//temp/ptypes/Release/gccWin32/../src/pnpipe.o
	$(CPP_COMPILER) $(Release_Preprocessor_Definitions) $(Release_Compiler_Flags) -MM ../src/pnpipe.cxx $(Release_Include_Path) > ../../../..//temp/ptypes/Release/gccWin32/../src/pnpipe.d

# Compiles file ../src/pnpserver.cxx for the Release configuration...
-include ../../../..//temp/ptypes/Release/gccWin32/../src/pnpserver.d
../../../..//temp/ptypes/Release/gccWin32/../src/pnpserver.o: ../src/pnpserver.cxx
	$(CPP_COMPILER) $(Release_Preprocessor_Definitions) $(Release_Compiler_Flags) -c ../src/pnpserver.cxx $(Release_Include_Path) -o ../../../..//temp/ptypes/Release/gccWin32/../src/pnpserver.o
	$(CPP_COMPILER) $(Release_Preprocessor_Definitions) $(Release_Compiler_Flags) -MM ../src/pnpserver.cxx $(Release_Include_Path) > ../../../..//temp/ptypes/Release/gccWin32/../src/pnpserver.d

# Compiles file ../src/pobjlist.cxx for the Release configuration...
-include ../../../..//temp/ptypes/Release/gccWin32/../src/pobjlist.d
../../../..//temp/ptypes/Release/gccWin32/../src/pobjlist.o: ../src/pobjlist.cxx
	$(CPP_COMPILER) $(Release_Preprocessor_Definitions) $(Release_Compiler_Flags) -c ../src/pobjlist.cxx $(Release_Include_Path) -o ../../../..//temp/ptypes/Release/gccWin32/../src/pobjlist.o
	$(CPP_COMPILER) $(Release_Preprocessor_Definitions) $(Release_Compiler_Flags) -MM ../src/pobjlist.cxx $(Release_Include_Path) > ../../../..//temp/ptypes/Release/gccWin32/../src/pobjlist.d

# Compiles file ../src/poutfile.cxx for the Release configuration...
-include ../../../..//temp/ptypes/Release/gccWin32/../src/poutfile.d
../../../..//temp/ptypes/Release/gccWin32/../src/poutfile.o: ../src/poutfile.cxx
	$(CPP_COMPILER) $(Release_Preprocessor_Definitions) $(Release_Compiler_Flags) -c ../src/poutfile.cxx $(Release_Include_Path) -o ../../../..//temp/ptypes/Release/gccWin32/../src/poutfile.o
	$(CPP_COMPILER) $(Release_Preprocessor_Definitions) $(Release_Compiler_Flags) -MM ../src/poutfile.cxx $(Release_Include_Path) > ../../../..//temp/ptypes/Release/gccWin32/../src/poutfile.d

# Compiles file ../src/poutfilter.cxx for the Release configuration...
-include ../../../..//temp/ptypes/Release/gccWin32/../src/poutfilter.d
../../../..//temp/ptypes/Release/gccWin32/../src/poutfilter.o: ../src/poutfilter.cxx
	$(CPP_COMPILER) $(Release_Preprocessor_Definitions) $(Release_Compiler_Flags) -c ../src/poutfilter.cxx $(Release_Include_Path) -o ../../../..//temp/ptypes/Release/gccWin32/../src/poutfilter.o
	$(CPP_COMPILER) $(Release_Preprocessor_Definitions) $(Release_Compiler_Flags) -MM ../src/poutfilter.cxx $(Release_Include_Path) > ../../../..//temp/ptypes/Release/gccWin32/../src/poutfilter.d

# Compiles file ../src/poutmem.cxx for the Release configuration...
-include ../../../..//temp/ptypes/Release/gccWin32/../src/poutmem.d
../../../..//temp/ptypes/Release/gccWin32/../src/poutmem.o: ../src/poutmem.cxx
	$(CPP_COMPILER) $(Release_Preprocessor_Definitions) $(Release_Compiler_Flags) -c ../src/poutmem.cxx $(Release_Include_Path) -o ../../../..//temp/ptypes/Release/gccWin32/../src/poutmem.o
	$(CPP_COMPILER) $(Release_Preprocessor_Definitions) $(Release_Compiler_Flags) -MM ../src/poutmem.cxx $(Release_Include_Path) > ../../../..//temp/ptypes/Release/gccWin32/../src/poutmem.d

# Compiles file ../src/poutstm.cxx for the Release configuration...
-include ../../../..//temp/ptypes/Release/gccWin32/../src/poutstm.d
../../../..//temp/ptypes/Release/gccWin32/../src/poutstm.o: ../src/poutstm.cxx
	$(CPP_COMPILER) $(Release_Preprocessor_Definitions) $(Release_Compiler_Flags) -c ../src/poutstm.cxx $(Release_Include_Path) -o ../../../..//temp/ptypes/Release/gccWin32/../src/poutstm.o
	$(CPP_COMPILER) $(Release_Preprocessor_Definitions) $(Release_Compiler_Flags) -MM ../src/poutstm.cxx $(Release_Include_Path) > ../../../..//temp/ptypes/Release/gccWin32/../src/poutstm.d

# Compiles file ../src/ppipe.cxx for the Release configuration...
-include ../../../..//temp/ptypes/Release/gccWin32/../src/ppipe.d
../../../..//temp/ptypes/Release/gccWin32/../src/ppipe.o: ../src/ppipe.cxx
	$(CPP_COMPILER) $(Release_Preprocessor_Definitions) $(Release_Compiler_Flags) -c ../src/ppipe.cxx $(Release_Include_Path) -o ../../../..//temp/ptypes/Release/gccWin32/../src/ppipe.o
	$(CPP_COMPILER) $(Release_Preprocessor_Definitions) $(Release_Compiler_Flags) -MM ../src/ppipe.cxx $(Release_Include_Path) > ../../../..//temp/ptypes/Release/gccWin32/../src/ppipe.d

# Compiles file ../src/ppodlist.cxx for the Release configuration...
-include ../../../..//temp/ptypes/Release/gccWin32/../src/ppodlist.d
../../../..//temp/ptypes/Release/gccWin32/../src/ppodlist.o: ../src/ppodlist.cxx
	$(CPP_COMPILER) $(Release_Preprocessor_Definitions) $(Release_Compiler_Flags) -c ../src/ppodlist.cxx $(Release_Include_Path) -o ../../../..//temp/ptypes/Release/gccWin32/../src/ppodlist.o
	$(CPP_COMPILER) $(Release_Preprocessor_Definitions) $(Release_Compiler_Flags) -MM ../src/ppodlist.cxx $(Release_Include_Path) > ../../../..//temp/ptypes/Release/gccWin32/../src/ppodlist.d

# Compiles file ../src/pputf.cxx for the Release configuration...
-include ../../../..//temp/ptypes/Release/gccWin32/../src/pputf.d
../../../..//temp/ptypes/Release/gccWin32/../src/pputf.o: ../src/pputf.cxx
	$(CPP_COMPILER) $(Release_Preprocessor_Definitions) $(Release_Compiler_Flags) -c ../src/pputf.cxx $(Release_Include_Path) -o ../../../..//temp/ptypes/Release/gccWin32/../src/pputf.o
	$(CPP_COMPILER) $(Release_Preprocessor_Definitions) $(Release_Compiler_Flags) -MM ../src/pputf.cxx $(Release_Include_Path) > ../../../..//temp/ptypes/Release/gccWin32/../src/pputf.d

# Compiles file ../src/prwlock.cxx for the Release configuration...
-include ../../../..//temp/ptypes/Release/gccWin32/../src/prwlock.d
../../../..//temp/ptypes/Release/gccWin32/../src/prwlock.o: ../src/prwlock.cxx
	$(CPP_COMPILER) $(Release_Preprocessor_Definitions) $(Release_Compiler_Flags) -c ../src/prwlock.cxx $(Release_Include_Path) -o ../../../..//temp/ptypes/Release/gccWin32/../src/prwlock.o
	$(CPP_COMPILER) $(Release_Preprocessor_Definitions) $(Release_Compiler_Flags) -MM ../src/prwlock.cxx $(Release_Include_Path) > ../../../..//temp/ptypes/Release/gccWin32/../src/prwlock.d

# Compiles file ../src/psemaphore.cxx for the Release configuration...
-include ../../../..//temp/ptypes/Release/gccWin32/../src/psemaphore.d
../../../..//temp/ptypes/Release/gccWin32/../src/psemaphore.o: ../src/psemaphore.cxx
	$(CPP_COMPILER) $(Release_Preprocessor_Definitions) $(Release_Compiler_Flags) -c ../src/psemaphore.cxx $(Release_Include_Path) -o ../../../..//temp/ptypes/Release/gccWin32/../src/psemaphore.o
	$(CPP_COMPILER) $(Release_Preprocessor_Definitions) $(Release_Compiler_Flags) -MM ../src/psemaphore.cxx $(Release_Include_Path) > ../../../..//temp/ptypes/Release/gccWin32/../src/psemaphore.d

# Compiles file ../src/pstdio.cxx for the Release configuration...
-include ../../../..//temp/ptypes/Release/gccWin32/../src/pstdio.d
../../../..//temp/ptypes/Release/gccWin32/../src/pstdio.o: ../src/pstdio.cxx
	$(CPP_COMPILER) $(Release_Preprocessor_Definitions) $(Release_Compiler_Flags) -c ../src/pstdio.cxx $(Release_Include_Path) -o ../../../..//temp/ptypes/Release/gccWin32/../src/pstdio.o
	$(CPP_COMPILER) $(Release_Preprocessor_Definitions) $(Release_Compiler_Flags) -MM ../src/pstdio.cxx $(Release_Include_Path) > ../../../..//temp/ptypes/Release/gccWin32/../src/pstdio.d

# Compiles file ../src/pstrcase.cxx for the Release configuration...
-include ../../../..//temp/ptypes/Release/gccWin32/../src/pstrcase.d
../../../..//temp/ptypes/Release/gccWin32/../src/pstrcase.o: ../src/pstrcase.cxx
	$(CPP_COMPILER) $(Release_Preprocessor_Definitions) $(Release_Compiler_Flags) -c ../src/pstrcase.cxx $(Release_Include_Path) -o ../../../..//temp/ptypes/Release/gccWin32/../src/pstrcase.o
	$(CPP_COMPILER) $(Release_Preprocessor_Definitions) $(Release_Compiler_Flags) -MM ../src/pstrcase.cxx $(Release_Include_Path) > ../../../..//temp/ptypes/Release/gccWin32/../src/pstrcase.d

# Compiles file ../src/pstrconv.cxx for the Release configuration...
-include ../../../..//temp/ptypes/Release/gccWin32/../src/pstrconv.d
../../../..//temp/ptypes/Release/gccWin32/../src/pstrconv.o: ../src/pstrconv.cxx
	$(CPP_COMPILER) $(Release_Preprocessor_Definitions) $(Release_Compiler_Flags) -c ../src/pstrconv.cxx $(Release_Include_Path) -o ../../../..//temp/ptypes/Release/gccWin32/../src/pstrconv.o
	$(CPP_COMPILER) $(Release_Preprocessor_Definitions) $(Release_Compiler_Flags) -MM ../src/pstrconv.cxx $(Release_Include_Path) > ../../../..//temp/ptypes/Release/gccWin32/../src/pstrconv.d

# Compiles file ../src/pstring.cxx for the Release configuration...
-include ../../../..//temp/ptypes/Release/gccWin32/../src/pstring.d
../../../..//temp/ptypes/Release/gccWin32/../src/pstring.o: ../src/pstring.cxx
	$(CPP_COMPILER) $(Release_Preprocessor_Definitions) $(Release_Compiler_Flags) -c ../src/pstring.cxx $(Release_Include_Path) -o ../../../..//temp/ptypes/Release/gccWin32/../src/pstring.o
	$(CPP_COMPILER) $(Release_Preprocessor_Definitions) $(Release_Compiler_Flags) -MM ../src/pstring.cxx $(Release_Include_Path) > ../../../..//temp/ptypes/Release/gccWin32/../src/pstring.d

# Compiles file ../src/pstrlist.cxx for the Release configuration...
-include ../../../..//temp/ptypes/Release/gccWin32/../src/pstrlist.d
../../../..//temp/ptypes/Release/gccWin32/../src/pstrlist.o: ../src/pstrlist.cxx
	$(CPP_COMPILER) $(Release_Preprocessor_Definitions) $(Release_Compiler_Flags) -c ../src/pstrlist.cxx $(Release_Include_Path) -o ../../../..//temp/ptypes/Release/gccWin32/../src/pstrlist.o
	$(CPP_COMPILER) $(Release_Preprocessor_Definitions) $(Release_Compiler_Flags) -MM ../src/pstrlist.cxx $(Release_Include_Path) > ../../../..//temp/ptypes/Release/gccWin32/../src/pstrlist.d

# Compiles file ../src/pstrmanip.cxx for the Release configuration...
-include ../../../..//temp/ptypes/Release/gccWin32/../src/pstrmanip.d
../../../..//temp/ptypes/Release/gccWin32/../src/pstrmanip.o: ../src/pstrmanip.cxx
	$(CPP_COMPILER) $(Release_Preprocessor_Definitions) $(Release_Compiler_Flags) -c ../src/pstrmanip.cxx $(Release_Include_Path) -o ../../../..//temp/ptypes/Release/gccWin32/../src/pstrmanip.o
	$(CPP_COMPILER) $(Release_Preprocessor_Definitions) $(Release_Compiler_Flags) -MM ../src/pstrmanip.cxx $(Release_Include_Path) > ../../../..//temp/ptypes/Release/gccWin32/../src/pstrmanip.d

# Compiles file ../src/pstrtoi.cxx for the Release configuration...
-include ../../../..//temp/ptypes/Release/gccWin32/../src/pstrtoi.d
../../../..//temp/ptypes/Release/gccWin32/../src/pstrtoi.o: ../src/pstrtoi.cxx
	$(CPP_COMPILER) $(Release_Preprocessor_Definitions) $(Release_Compiler_Flags) -c ../src/pstrtoi.cxx $(Release_Include_Path) -o ../../../..//temp/ptypes/Release/gccWin32/../src/pstrtoi.o
	$(CPP_COMPILER) $(Release_Preprocessor_Definitions) $(Release_Compiler_Flags) -MM ../src/pstrtoi.cxx $(Release_Include_Path) > ../../../..//temp/ptypes/Release/gccWin32/../src/pstrtoi.d

# Compiles file ../src/pstrutils.cxx for the Release configuration...
-include ../../../..//temp/ptypes/Release/gccWin32/../src/pstrutils.d
../../../..//temp/ptypes/Release/gccWin32/../src/pstrutils.o: ../src/pstrutils.cxx
	$(CPP_COMPILER) $(Release_Preprocessor_Definitions) $(Release_Compiler_Flags) -c ../src/pstrutils.cxx $(Release_Include_Path) -o ../../../..//temp/ptypes/Release/gccWin32/../src/pstrutils.o
	$(CPP_COMPILER) $(Release_Preprocessor_Definitions) $(Release_Compiler_Flags) -MM ../src/pstrutils.cxx $(Release_Include_Path) > ../../../..//temp/ptypes/Release/gccWin32/../src/pstrutils.d

# Compiles file ../src/ptextmap.cxx for the Release configuration...
-include ../../../..//temp/ptypes/Release/gccWin32/../src/ptextmap.d
../../../..//temp/ptypes/Release/gccWin32/../src/ptextmap.o: ../src/ptextmap.cxx
	$(CPP_COMPILER) $(Release_Preprocessor_Definitions) $(Release_Compiler_Flags) -c ../src/ptextmap.cxx $(Release_Include_Path) -o ../../../..//temp/ptypes/Release/gccWin32/../src/ptextmap.o
	$(CPP_COMPILER) $(Release_Preprocessor_Definitions) $(Release_Compiler_Flags) -MM ../src/ptextmap.cxx $(Release_Include_Path) > ../../../..//temp/ptypes/Release/gccWin32/../src/ptextmap.d

# Compiles file ../src/pthread.cxx for the Release configuration...
-include ../../../..//temp/ptypes/Release/gccWin32/../src/pthread.d
../../../..//temp/ptypes/Release/gccWin32/../src/pthread.o: ../src/pthread.cxx
	$(CPP_COMPILER) $(Release_Preprocessor_Definitions) $(Release_Compiler_Flags) -c ../src/pthread.cxx $(Release_Include_Path) -o ../../../..//temp/ptypes/Release/gccWin32/../src/pthread.o
	$(CPP_COMPILER) $(Release_Preprocessor_Definitions) $(Release_Compiler_Flags) -MM ../src/pthread.cxx $(Release_Include_Path) > ../../../..//temp/ptypes/Release/gccWin32/../src/pthread.d

# Compiles file ../src/ptime.cxx for the Release configuration...
-include ../../../..//temp/ptypes/Release/gccWin32/../src/ptime.d
../../../..//temp/ptypes/Release/gccWin32/../src/ptime.o: ../src/ptime.cxx
	$(CPP_COMPILER) $(Release_Preprocessor_Definitions) $(Release_Compiler_Flags) -c ../src/ptime.cxx $(Release_Include_Path) -o ../../../..//temp/ptypes/Release/gccWin32/../src/ptime.o
	$(CPP_COMPILER) $(Release_Preprocessor_Definitions) $(Release_Compiler_Flags) -MM ../src/ptime.cxx $(Release_Include_Path) > ../../../..//temp/ptypes/Release/gccWin32/../src/ptime.d

# Compiles file ../src/ptimedsem.cxx for the Release configuration...
-include ../../../..//temp/ptypes/Release/gccWin32/../src/ptimedsem.d
../../../..//temp/ptypes/Release/gccWin32/../src/ptimedsem.o: ../src/ptimedsem.cxx
	$(CPP_COMPILER) $(Release_Preprocessor_Definitions) $(Release_Compiler_Flags) -c ../src/ptimedsem.cxx $(Release_Include_Path) -o ../../../..//temp/ptypes/Release/gccWin32/../src/ptimedsem.o
	$(CPP_COMPILER) $(Release_Preprocessor_Definitions) $(Release_Compiler_Flags) -MM ../src/ptimedsem.cxx $(Release_Include_Path) > ../../../..//temp/ptypes/Release/gccWin32/../src/ptimedsem.d

# Compiles file ../src/ptrigger.cxx for the Release configuration...
-include ../../../..//temp/ptypes/Release/gccWin32/../src/ptrigger.d
../../../..//temp/ptypes/Release/gccWin32/../src/ptrigger.o: ../src/ptrigger.cxx
	$(CPP_COMPILER) $(Release_Preprocessor_Definitions) $(Release_Compiler_Flags) -c ../src/ptrigger.cxx $(Release_Include_Path) -o ../../../..//temp/ptypes/Release/gccWin32/../src/ptrigger.o
	$(CPP_COMPILER) $(Release_Preprocessor_Definitions) $(Release_Compiler_Flags) -MM ../src/ptrigger.cxx $(Release_Include_Path) > ../../../..//temp/ptypes/Release/gccWin32/../src/ptrigger.d

# Compiles file ../src/punit.cxx for the Release configuration...
-include ../../../..//temp/ptypes/Release/gccWin32/../src/punit.d
../../../..//temp/ptypes/Release/gccWin32/../src/punit.o: ../src/punit.cxx
	$(CPP_COMPILER) $(Release_Preprocessor_Definitions) $(Release_Compiler_Flags) -c ../src/punit.cxx $(Release_Include_Path) -o ../../../..//temp/ptypes/Release/gccWin32/../src/punit.o
	$(CPP_COMPILER) $(Release_Preprocessor_Definitions) $(Release_Compiler_Flags) -MM ../src/punit.cxx $(Release_Include_Path) > ../../../..//temp/ptypes/Release/gccWin32/../src/punit.d

# Compiles file ../src/punknown.cxx for the Release configuration...
-include ../../../..//temp/ptypes/Release/gccWin32/../src/punknown.d
../../../..//temp/ptypes/Release/gccWin32/../src/punknown.o: ../src/punknown.cxx
	$(CPP_COMPILER) $(Release_Preprocessor_Definitions) $(Release_Compiler_Flags) -c ../src/punknown.cxx $(Release_Include_Path) -o ../../../..//temp/ptypes/Release/gccWin32/../src/punknown.o
	$(CPP_COMPILER) $(Release_Preprocessor_Definitions) $(Release_Compiler_Flags) -MM ../src/punknown.cxx $(Release_Include_Path) > ../../../..//temp/ptypes/Release/gccWin32/../src/punknown.d

# Compiles file ../src/pvariant.cxx for the Release configuration...
-include ../../../..//temp/ptypes/Release/gccWin32/../src/pvariant.d
../../../..//temp/ptypes/Release/gccWin32/../src/pvariant.o: ../src/pvariant.cxx
	$(CPP_COMPILER) $(Release_Preprocessor_Definitions) $(Release_Compiler_Flags) -c ../src/pvariant.cxx $(Release_Include_Path) -o ../../../..//temp/ptypes/Release/gccWin32/../src/pvariant.o
	$(CPP_COMPILER) $(Release_Preprocessor_Definitions) $(Release_Compiler_Flags) -MM ../src/pvariant.cxx $(Release_Include_Path) > ../../../..//temp/ptypes/Release/gccWin32/../src/pvariant.d

# Compiles file ../src/pversion.cxx for the Release configuration...
-include ../../../..//temp/ptypes/Release/gccWin32/../src/pversion.d
../../../..//temp/ptypes/Release/gccWin32/../src/pversion.o: ../src/pversion.cxx
	$(CPP_COMPILER) $(Release_Preprocessor_Definitions) $(Release_Compiler_Flags) -c ../src/pversion.cxx $(Release_Include_Path) -o ../../../..//temp/ptypes/Release/gccWin32/../src/pversion.o
	$(CPP_COMPILER) $(Release_Preprocessor_Definitions) $(Release_Compiler_Flags) -MM ../src/pversion.cxx $(Release_Include_Path) > ../../../..//temp/ptypes/Release/gccWin32/../src/pversion.d

# Creates the intermediate and output folders for each configuration...
.PHONY: create_folders
create_folders:
	mkdir -p ../../../..//temp/ptypes/Debug/gccWin32/source
	mkdir -p ../../../..//temp/ptypes/Release/gccWin32/source

# Cleans intermediate and output files (objects, libraries, executables)...
.PHONY: clean
clean:
	rm -f ../../../..//temp/ptypes/Debug/gccWin32/*.o
	rm -f ../../../..//temp/ptypes/Debug/gccWin32/*.d
	rm -f ../../../..//temp/ptypes/Debug/gccWin32/*.a
	rm -f ../../../..//temp/ptypes/Debug/gccWin32/*.so
	rm -f ../../../..//temp/ptypes/Debug/gccWin32/*.dll
	rm -f ../../../..//temp/ptypes/Debug/gccWin32/*.exe
	rm -f ../../../..//temp/ptypes/Release/gccWin32/*.o
	rm -f ../../../..//temp/ptypes/Release/gccWin32/*.d
	rm -f ../../../..//temp/ptypes/Release/gccWin32/*.a
	rm -f ../../../..//temp/ptypes/Release/gccWin32/*.so
	rm -f ../../../..//temp/ptypes/Release/gccWin32/*.dll
	rm -f ../../../..//temp/ptypes/Release/gccWin32/*.exe

