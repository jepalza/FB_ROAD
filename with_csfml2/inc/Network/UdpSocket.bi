#ifndef FBSFML_UDPSOCKET_BI
#define FBSFML_UDPSOCKET_BI

#include once "inc/Network/Export.bi"
#include once "inc/Network/IpAddress.bi"
#include once "inc/Network/SocketStatus.bi"
#include once "inc/Network/Types.bi"

extern "C"

declare function sfUdpSocket_create() as sfUdpSocket ptr
declare sub      sfUdpSocket_destroy(byval socket as sfUdpSocket ptr)
declare sub      sfUdpSocket_setBlocking(byval socket as sfUdpSocket ptr, byval blocking as sfBool)
declare function sfUdpSocket_isBlocking(byval socket as const sfUdpSocket ptr) as sfBool
declare function sfUdpSocket_getLocalPort(byval socket as const sfUdpSocket ptr) as ushort
declare function sfUdpSocket_bind(byval socket as sfUdpSocket ptr, byval port as ushort) as sfSocketStatus
declare sub      sfUdpSocket_unbind(byval socket as sfUdpSocket ptr)
declare function sfUdpSocket_send(byval socket as sfUdpSocket ptr, byval data as const any ptr, byval size as uinteger, byval address as sfIpAddress, byval port as ushort) as sfSocketStatus 
declare function sfUdpSocket_receive(byval socket as sfUdpSocket ptr, byval data as any ptr, byval maxSize as uinteger, byval sizeReceived as uinteger ptr, byval address as sfIpAddress ptr, _
byval port as ushort ptr) as sfSocketStatus 
declare function sfUdpSocket_sendPacket(byval socket as sfUdpSocket ptr, byval packet as sfPacket ptr, byval address as sfIpAddress, byval port as ushort) as sfSocketStatus 
declare function sfUdpSocket_receivePacket(byval socket as sfUdpSocket ptr, byval packet as sfPacket ptr, byval address as sfIpAddress ptr, byval port as ushort ptr) as sfSocketStatus 
declare function sfUdpSocket_maxDatagramSize() as ulong

end extern

#endif ' FBSFML_UDPSOCKET_BI
