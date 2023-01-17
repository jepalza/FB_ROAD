#ifndef FBSFML_SOCKETSTATUS_BI
#define FBSFML_SOCKETSTATUS_BI

' Define the status that can be returned by the socket functions
type sfSocketStatus as long
enum
 sfSocketDone,         ' The socket has sent / received the data
 sfSocketNotReady,     ' The socket is not ready to send / receive data yet
 sfSocketDisconnected, ' The TCP socket has been disconnected
 sfSocketError         ' An unexpected error happened
end enum


#endif ' FBSFML_SOCKETSTATUS_BI
