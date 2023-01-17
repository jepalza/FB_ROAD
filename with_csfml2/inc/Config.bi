#ifndef CONFIG_BI
#define CONFIG_BI

' Define the FBSFML version
#define FBSFML_VERSION_MAJOR 2
#define FBSFML_VERSION_MINOR 2
#define FBSFML_VERSION_PATCH 0


' Identify the operating system
#if defined(__FB_WIN32__)
    #define FBFML_SYSTEM_WINDOWS
#elseif defined(__FB_LINUX__)
    #define FBFML_SYSTEM_LINUX
#else
    #error 666 : This operating system is not supported by FBSFML library
#endif



' Define a portable boolean type
type sfBool as long
const as sfBool sfFalse = 0
const as sfBool sfTrue  = 1


' Define portable fixed-size types

' 8 bits integer types
type sfInt8 as byte
type sfUint8 as ubyte

' 16 bits integer types
type sfInt16 as short
type sfUint16 as ushort

' 32 bits integer types
type sfInt32 as long
type sfUint32 as ulong

' 64 bits integer types
type sfInt64 as longint
type sfUint64 as ulongint

#endif ' CONFIG_BI
