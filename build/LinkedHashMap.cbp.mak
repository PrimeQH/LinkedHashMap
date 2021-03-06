#------------------------------------------------------------------------------#
# This makefile was generated by 'cbp2make' tool rev.147                       #
#------------------------------------------------------------------------------#


WORKDIR = %cd%

CC = gcc.exe
CXX = g++.exe
AR = ar.exe
LD = g++.exe
WINDRES = windres.exe

INC = 
CFLAGS = -Wall
RESINC = 
LIBDIR = 
LIB = 
LDFLAGS = 

INC_DEBUG = $(INC)
CFLAGS_DEBUG = $(CFLAGS) -Wshadow -Winit-self -Wcast-align -Wundef -Wfloat-equal -Winline -Wunreachable-code -Wmissing-declarations -Wmissing-include-dirs -Wswitch-enum -Wswitch-default -pedantic -Wextra -Wall -std=c11 -g -I..\src -Wformat-extra-args -Wpointer-arith -Wsign-conversion -Wconversion -Wmissing-prototypes -Wstrict-prototypes -fsanitize=leak -fsanitize=enum -D__BUILD_HASHMAP=1
RESINC_DEBUG = $(RESINC)
RCFLAGS_DEBUG = $(RCFLAGS)
LIBDIR_DEBUG = $(LIBDIR)
LIB_DEBUG = $(LIB) 
LDFLAGS_DEBUG = $(LDFLAGS)
OBJDIR_DEBUG = obj\\Debug
DEP_DEBUG = 
OUT_DEBUG = bin\\Debug\\LinkedHashMap.exe

INC_RELEASE = $(INC)
CFLAGS_RELEASE = $(CFLAGS) -O2
RESINC_RELEASE = $(RESINC)
RCFLAGS_RELEASE = $(RCFLAGS)
LIBDIR_RELEASE = $(LIBDIR)
LIB_RELEASE = $(LIB) 
LDFLAGS_RELEASE = $(LDFLAGS) -s
OBJDIR_RELEASE = obj\\Release
DEP_RELEASE = 
OUT_RELEASE = bin\\Release\\LinkedHashMap.exe

OBJ_DEBUG = $(OBJDIR_DEBUG)\\__\\src\\hashmap-link-hash.o $(OBJDIR_DEBUG)\\__\\test\\main.o

OBJ_RELEASE = $(OBJDIR_RELEASE)\\__\\src\\hashmap-link-hash.o $(OBJDIR_RELEASE)\\__\\test\\main.o

all: debug release

clean: clean_debug clean_release

before_debug: 
	cmd /c if not exist bin\\Debug md bin\\Debug
	cmd /c if not exist $(OBJDIR_DEBUG)\\__\\src md $(OBJDIR_DEBUG)\\__\\src
	cmd /c if not exist $(OBJDIR_DEBUG)\\__\\test md $(OBJDIR_DEBUG)\\__\\test

after_debug: 

debug: before_debug out_debug after_debug

out_debug: before_debug $(OBJ_DEBUG) $(DEP_DEBUG)
	$(LD) $(LIBDIR_DEBUG) -o $(OUT_DEBUG) $(OBJ_DEBUG)  $(LDFLAGS_DEBUG) $(LIB_DEBUG)

$(OBJDIR_DEBUG)\\__\\src\\hashmap-link-hash.o: ..\\src\\hashmap-link-hash.c
	$(CC) $(CFLAGS_DEBUG) $(INC_DEBUG) -c ..\\src\\hashmap-link-hash.c -o $(OBJDIR_DEBUG)\\__\\src\\hashmap-link-hash.o

$(OBJDIR_DEBUG)\\__\\test\\main.o: ..\\test\\main.c
	$(CC) $(CFLAGS_DEBUG) $(INC_DEBUG) -c ..\\test\\main.c -o $(OBJDIR_DEBUG)\\__\\test\\main.o

clean_debug: 
	cmd /c del /f $(OBJ_DEBUG) $(OUT_DEBUG)
	cmd /c rd bin\\Debug
	cmd /c rd $(OBJDIR_DEBUG)\\__\\src
	cmd /c rd $(OBJDIR_DEBUG)\\__\\test

before_release: 
	cmd /c if not exist bin\\Release md bin\\Release
	cmd /c if not exist $(OBJDIR_RELEASE)\\__\\src md $(OBJDIR_RELEASE)\\__\\src
	cmd /c if not exist $(OBJDIR_RELEASE)\\__\\test md $(OBJDIR_RELEASE)\\__\\test

after_release: 

release: before_release out_release after_release

out_release: before_release $(OBJ_RELEASE) $(DEP_RELEASE)
	$(LD) $(LIBDIR_RELEASE) -o $(OUT_RELEASE) $(OBJ_RELEASE)  $(LDFLAGS_RELEASE) $(LIB_RELEASE)

$(OBJDIR_RELEASE)\\__\\src\\hashmap-link-hash.o: ..\\src\\hashmap-link-hash.c
	$(CC) $(CFLAGS_RELEASE) $(INC_RELEASE) -c ..\\src\\hashmap-link-hash.c -o $(OBJDIR_RELEASE)\\__\\src\\hashmap-link-hash.o

$(OBJDIR_RELEASE)\\__\\test\\main.o: ..\\test\\main.c
	$(CC) $(CFLAGS_RELEASE) $(INC_RELEASE) -c ..\\test\\main.c -o $(OBJDIR_RELEASE)\\__\\test\\main.o

clean_release: 
	cmd /c del /f $(OBJ_RELEASE) $(OUT_RELEASE)
	cmd /c rd bin\\Release
	cmd /c rd $(OBJDIR_RELEASE)\\__\\src
	cmd /c rd $(OBJDIR_RELEASE)\\__\\test

.PHONY: before_debug after_debug clean_debug before_release after_release clean_release

