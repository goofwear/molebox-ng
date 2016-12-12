
TOPDIR  =..
PROJECT = molebox
INCLUDE = $(INCLUDE);$(TOPDIR)\include
#STATIC  = YENO

!if "$(TARGET_CPU)" != "X86"
all:
build:
rebuild:
info:
clean:
!else

!include ..\xternal\Make.rules.mak

CCFLAGS = $(CCFLAGS) -D_MOLEBOX_BUILD_DLL
SRCDIR  = .
OBJECTS = \
    $(OBJDIR)\molebox.obj \
    $(OBJDIR)\molebox_RC.obj \

LIBRARIES=

!if "$(STATIC_LIB)"!="YES"
!else
!endif

!include ..\xternal\Make.dll.mak

!endif

