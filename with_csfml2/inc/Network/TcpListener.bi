#ifndef FBSFML_TCPLISTENER_BI
#define FBSFML_TCPLISTENER_BI

#include once "inc/Network/Export.bi"
#include once "inc/Network/SocketStatus.bi"
#include once "inc/Network/Types.bi"

extern "C"

declare function sfTcpListener_create() as sfTcpListener ptr
declare sub      sfTcpListener_destroy(byval listener as sfTcpListener ptr)
declare sub      sfTcpListener_setBlocking(byval listener as sfTcpListener ptr, byval blocking as sfBool)
declare function sfTcpListener_isBlocking(byval listener as const sfTcpListener ptr) as sfBool 
declare function sfTcpListener_getLocalPort(byval listener as const sfTcpListener ptr) as ushort
declare function sfTcpListener_listen(byval listener as sfTcpListener ptr, byval port as ushort) as sfSocketStatus
declare function sfTcpListener_accept(byval listener as sfTcpListener ptr, byval connected as sfTcpSocket ptr ptr) as sfSocketStatus

end extern

#endif ' FBSFML_TCPLISTENER_BI
