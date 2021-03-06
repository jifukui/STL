
SRCROOT := ../..
COMPILER_NAME := bcc
OBJ_EXT := obj

STLPORT_DIR := ../../..
include Makefile.inc
include ${SRCROOT}/Makefiles/top.mak

INCLUDES += -I${STLPORT_INCLUDE_DIR}

dbg-shared:	DEFS += -D_STLP_DEBUG_UNINITIALIZED 
stldbg-shared:	DEFS += -D_STLP_DEBUG_UNINITIALIZED 
dbg-static:	DEFS += -D_STLP_DEBUG_UNINITIALIZED 
stldbg-static:	DEFS += -D_STLP_DEBUG_UNINITIALIZED 

ifdef STLP_BUILD_BOOST_PATH
INCLUDES += -I${STLP_BUILD_BOOST_PATH}
endif

LDSEARCH = -L${STLPORT_LIB_DIR}

