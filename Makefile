## -*- Makefile -*-
##
## User: denis_000
## Time: Sep 4, 2014 2:22:24 PM
## Makefile created by Oracle Solaris Studio.
##
## This file is generated automatically.
##


#### Compiler and tool definitions shared by all build targets #####
CC = gcc
BASICOPTS = -g
CFLAGS = $(BASICOPTS) -I./include -I./libstemmer -I./runtime -I./src_c


# Define the target directories.
TARGETDIR_main.exe=.


all: main.exe

## Target: main.exe
OBJS_main.exe = $(TARGETDIR_main.exe)/main.o 
USERLIBS_main.exe = $(SYSLIBS_main.exe) 
LDLIBS_main.exe = $(USERLIBS_main.exe)


# Link or archive
$(TARGETDIR_main.exe)/main.exe: $(OBJS_main.exe) libstemmer.o stem_UTF_8_portuguese.o stem_UTF_8_numeric.o utilities.o api.o
	$(LINK.c) $(CFLAGS) -o $@ $(OBJS_main.exe) libstemmer.o stem_UTF_8_portuguese.o stem_UTF_8_numeric.o utilities.o api.o $(LDLIBS_main.exe)

# Compile source files into .o files
$(OBJS_main.exe): $(TARGETDIR_main.exe) main.c
	$(COMPILE.c) $(CFLAGS) -o $@ main.c

libstemmer.o: libstemmer/libstemmer.c
	$(COMPILE.c) $(CFLAGS) -o $@ libstemmer/libstemmer.c
	
stem_UTF_8_portuguese.o: src_c/stem_UTF_8_portuguese.c
	$(COMPILE.c) $(CFLAGS) -o $@ src_c/stem_UTF_8_portuguese.c

stem_UTF_8_numeric.o: src_c/stem_UTF_8_numeric.c
	$(COMPILE.c) $(CFLAGS) -o $@ src_c/stem_UTF_8_numeric.c
	
utilities.o: runtime/utilities.c
	$(COMPILE.c) $(CFLAGS) -o $@ runtime/utilities.c
	
api.o: runtime/api.c
	$(COMPILE.c) $(CFLAGS) -o $@ runtime/api.c


#### Clean target deletes all generated files ####
clean:
	rm -f \
		$(TARGETDIR_main.exe)/main.exe \
		$(TARGETDIR_main.exe)/main.o
# Enable dependency checking
.KEEP_STATE:
.KEEP_STATE_FILE:.make.state.GNU-amd64-Windows

