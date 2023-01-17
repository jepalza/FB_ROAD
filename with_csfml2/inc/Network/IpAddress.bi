#ifndef FBSFML_IPADDRESS_BI
#define FBSFML_IPADDRESS_BI

#include once "inc/Network/Export.bi"
#include once "inc/System/Time.bi"

type sfIpAddress
  as ubyte address(154)
end type

extern "C"

declare function sfIpAddress_None as const sfIpAddress
declare function sfIpAddress_LocalHost as const sfIpAddress
declare function sfIpAddress_Broadcast as const sfIpAddress
declare function sfIpAddress_fromString(byval address as const zstring ptr) as sfIpAddress
declare function sfIpAddress_fromBytes(byval as sfUint8,byval as sfUint8, byval as sfUint8, byval as sfUint8) as sfIpAddress
declare function sfIpAddress_fromInteger(byval as sfUint32) as sfIpAddress
declare sub      sfIpAddress_toString(byval address as sfIpAddress, byval _string as zstring ptr)
declare function sfIpAddress_toInteger(byval address as sfIpAddress) as sfUint32
declare function sfIpAddress_getLocalAddress() as sfIpAddress
declare function sfIpAddress_getPublicAddress(byval timeout as sfTime) as sfIpAddress

end extern

#endif ' FBSFML_IPADDRESS_BI
