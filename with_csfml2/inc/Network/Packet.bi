#ifndef FBSFML_PACKET_BI
#define FBSFML_PACKET_BI

#include once "inc/Network/Export.bi"
#include once "inc/Network/Types.bi"

extern "C"

declare function sfPacket_create() as sfPacket ptr
declare function sfPacket_copy(byval packet as const sfPacket ptr) as sfPacket ptr
declare sub      sfPacket_destroy(byval packet as sfPacket ptr)
declare sub      sfPacket_append(byval packet as sfPacket ptr, byval data as const any ptr, byval sizeInBytes as uinteger)
declare sub      sfPacket_clear(byval packet as sfPacket ptr)
declare function sfPacket_getData(byval packet as const sfPacket ptr) as const any ptr
declare function sfPacket_getDataSize(byval packet as const sfPacket ptr) as integer
declare function sfPacket_endOfPacket(byval packet as const sfPacket ptr) as sfBool

' Functions to extract data from a packet
declare function sfPacket_readBool(byval packet as sfPacket ptr) as sfBool
declare function sfPacket_readInt8(byval packet as sfPacket ptr) as sfInt8   
declare function sfPacket_readUint8(byval packet as sfPacket ptr) as sfUint8
declare function sfPacket_readInt16(byval packet as sfPacket ptr) as sfInt16  
declare function sfPacket_readUint16(byval packet as sfPacket ptr) as sfUint16
declare function sfPacket_readInt32(byval packet as sfPacket ptr) as sfInt32
declare function sfPacket_readUint32(byval packet as sfPacket ptr) as sfUint32 
declare function sfPacket_readFloat(byval packet as sfPacket ptr) as single
declare function sfPacket_readDouble(byval packet as sfPacket ptr) as double 
declare sub      sfPacket_readString(byval packet as sfPacket ptr, byval as zstring ptr)
declare sub      sfPacket_readWideString(byval packet as sfPacket ptr, byval as any ptr)

' Functions to insert data into a packet
declare sub      sfPacket_writeBool(byval packet as sfPacket ptr, byval as sfBool)
declare sub      sfPacket_writeInt8(byval packet as sfPacket ptr, byval as sfInt8)
declare sub      sfPacket_writeUint8(byval packet as sfPacket ptr, byval as sfUint8)
declare sub      sfPacket_writeInt16(byval packet as sfPacket ptr, byval as sfInt16)
declare sub      sfPacket_writeUint16(byval packet as sfPacket ptr, byval as sfUint16)
declare sub      sfPacket_writeInt32(byval packet as sfPacket ptr, byval as sfInt32)
declare sub      sfPacket_writeUint32(byval packet as sfPacket ptr, byval as sfUint32)
declare sub      sfPacket_writeFloat(byval packet as sfPacket ptr, byval as single)
declare sub      sfPacket_writeDouble(byval packet as sfPacket ptr, byval as double)
declare sub      sfPacket_writeString(byval packet as sfPacket ptr, byval as const zstring ptr)
declare sub      sfPacket_writeWideString(byval packet as sfPacket ptr, byval as any ptr)

end extern

#endif ' SFML_PACKET_BI
