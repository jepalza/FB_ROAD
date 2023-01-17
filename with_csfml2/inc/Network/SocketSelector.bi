#ifndef FBSFML_SOCKETSELECTOR_BI
#define FBSFML_SOCKETSELECTOR_BI

#include once "inc/Network/Export.bi"
#include once "inc/Network/Types.bi"
#include once "inc/System/Time.bi"

extern "C" 

declare function sfSocketSelector_create() as sfSocketSelector ptr
declare function sfSocketSelector_copy(byval selector as const sfSocketSelector ptr) as sfSocketSelector ptr
declare sub      sfSocketSelector_destroy(byval selector as sfSocketSelector ptr)
declare sub      sfSocketSelector_addTcpListener(byval selector as sfSocketSelector ptr, byval socket as sfTcpListener ptr)
declare sub      sfSocketSelector_addTcpSocket(byval selector as sfSocketSelector ptr, byval socket as sfTcpSocket ptr)
declare sub      sfSocketSelector_addUdpSocket(byval selector as sfSocketSelector ptr, byval socket as sfUdpSocket ptr)
declare sub      sfSocketSelector_removeTcpListener(byval selector as sfSocketSelector ptr, byval socket as sfTcpListener ptr)
declare sub      sfSocketSelector_removeTcpSocket(byval selector as sfSocketSelector ptr, byval socket as sfTcpSocket ptr)
declare sub      sfSocketSelector_removeUdpSocket(byval selector as sfSocketSelector ptr, byval socket as sfUdpSocket ptr)
declare sub      sfSocketSelector_clear(byval selector as sfSocketSelector ptr)
declare function sfSocketSelector_wait(byval selector as sfSocketSelector ptr, byval timeout as sfTime) as sfBool
declare function sfSocketSelector_isTcpListenerReady(byval selector as const sfSocketSelector ptr, byval socket as sfTcpListener ptr ) as sfBool
declare function sfSocketSelector_isTcpSocketReady(byval selector as const sfSocketSelector ptr, byval socket as sfTcpSocket ptr ) as sfBool
declare function sfSocketSelector_isUdpSocketReady(byval selector as const sfSocketSelector ptr, byval socket as sfUdpSocket ptr) as sfBool

end extern

#endif ' FBSFML_SOCKETSELECTOR_BI
