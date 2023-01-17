#ifndef FBSFML_INPUTSTREAM_BI
#define FBSFML_INPUTSTREAM_BI

#include "inc/System/Export.bi"

type sfInputStreamReadFunc as function cdecl(byval data as any ptr, byval size as sfInt64, byval userData as any ptr) as sfInt64
type sfInputStreamSeekFunc as function cdecl(byval position as sfInt64, byval userData as any ptr) as sfInt64
type sfInputStreamTellFunc as function cdecl(byval userData as any ptr) as sfInt64
type sfInputStreamGetSizeFunc as function cdecl(byval userData as any ptr) as sfInt64

type sfInputStream
  as sfInputStreamReadFunc    read     ' Function to read data from the stream
  as sfInputStreamSeekFunc    seek     ' Function to set the current read position
  as sfInputStreamTellFunc    tell     ' Function to get the current read position
  as sfInputStreamGetSizeFunc getSize  ' Function to get the total number of bytes in the stream
  as any ptr                  userData ' User data that will be passed to the callbacks
end type


#endif ' FBSFML_INPUTSTREAM_BI
