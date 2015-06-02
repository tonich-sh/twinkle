FIND_PATH(SPEEX_INCLUDE_DIR speex/speex.h)
FIND_LIBRARY(SPEEX_LIBRARY NAMES speex)
FIND_LIBRARY(SPEEXDSP_LIBRARY NAMES speexdsp)

IF(SPEEX_INCLUDE_DIR AND SPEEX_LIBRARY AND SPEEXDSP_LIBRARY)
	SET(SPEEX_FOUND TRUE)
	SET(SPEEX_LIBRARIES ${SPEEX_LIBRARY} ${SPEEXDSP_LIBRARY})
ENDIF(SPEEX_INCLUDE_DIR AND SPEEX_LIBRARY AND SPEEXDSP_LIBRARY)

IF(SPEEX_FOUND)
	IF (NOT Speex_FIND_QUIETLY)
		MESSAGE(STATUS "Found speex includes:	${SPEEX_INCLUDE_DIR}/speex/speex.h")
		MESSAGE(STATUS "Found speex library:	${SPEEX_LIBRARIES}")
	ENDIF (NOT Speex_FIND_QUIETLY)
ELSE(SPEEX_FOUND)
	IF (Speex_FIND_REQUIRED)
		MESSAGE(FATAL_ERROR "Could NOT find speex development files")
	ENDIF (Speex_FIND_REQUIRED)
ENDIF(SPEEX_FOUND)