#ifndef FBSFML_TCPSOCKET_BI
#define FBSFML_TCPSOCKET_BI

#include once "inc/Network/Export.bi"
#include once "inc/Network/IpAddress.bi"
#include once "inc/Network/SocketStatus.bi"
#include once "inc/Network/Types.bi"
#include once "inc/System/Time.bi"

extern "C"

declare function sfTcpSocket_create() as sfTcpSocket ptr
declare sub      sfTcpSocket_destroy(byval socket as sfTcpSocket ptr)
declare sub      sfTcpSocket_setBlocking(byval socket as sfTcpSocket ptr, byval blocking as sfBool)
declare function sfTcpSocket_isBlocking(byval socket as const sfTcpSocket ptr) as sfBool
declare function sfTcpSocket_getLocalPort(byval socket as const sfTcpSocket ptr) as ushort
declare function sfTcpSocket_getRemoteAddress(byval socket as const sfTcpSocket ptr) as sfIpAddress 
declare function sfTcpSocket_getRemotePort(byval socket as const sfTcpSocket ptr) as ushort
declare function sfTcpSocket_connect(byval socket as sfTcpSocket ptr, byval host as sfIpAddress, byval port as ushort, byval timeout as sfTime) as sfSocketStatus 
declare sub      sfTcpSocket_disconnect(byval socket as sfTcpSocket ptr)
declare function sfTcpSocket_send(byval socket as sfTcpSocket ptr, byval data as const any ptr, byval size as uinteger) as sfSocketStatus 
declare function sfTcpSocket_receive(byval socket as sfTcpSocket ptr, byval data as any ptr, byval maxSize as uinteger, byval sizeReceived as uinteger ptr) as sfSocketStatus 
declare function sfTcpSocket_sendPacket(byval socket as sfTcpSocket ptr, byval packet as sfPacket ptr ) as sfSocketStatus 
declare function sfTcpSocket_receivePacket(byval socket as sfTcpSocket ptr, byval packet as sfPacket ptr) as sfSocketStatus 

end extern

#endif ' FBSFML_TCPSOCKET_BI
