#ifndef FBSFML_HTTP_BI
#define FBSFML_HTTP_BI

#include once "inc/Network/Export.bi"
#include once "inc/Network/Types.bi"
#include once "inc/System/Time.bi"


' Enumerate the available HTTP methods for a request
type sfHttpMethod as long
enum
  sfHttpGet    ' Request in get mode, standard method to retrieve a page
  sfHttpPost   ' Request in post mode, usually to send data to a page
  sfHttpHead   ' Request a page's header only
  sfHttpPut    ' Request in put mode, useful for a REST API
  sfHttpDelete ' Request in delete mode, useful for a REST API 
end enum

' Enumerate all the valid status codes for a response
type sfHttpStatus as long
enum
    ' 2xx: success
    sfHttpOk             = 200, ' Most common code returned when operation was successful
    sfHttpCreated        = 201, ' The resource has successfully been created
    sfHttpAccepted       = 202, ' The request has been accepted, but will be processed later by the server
    sfHttpNoContent      = 204, ' Sent when the server didn't send any data in return
    sfHttpResetContent   = 205, ' The server informs the client that it should clear the view (form) that caused the request to be sent
    sfHttpPartialContent = 206, ' The server has sent a part of the resource, as a response to a partial GET request

    ' 3xx: redirection
    sfHttpMultipleChoices  = 300, ' The requested page can be accessed from several locations
    sfHttpMovedPermanently = 301, ' The requested page has permanently moved to a new location
    sfHttpMovedTemporarily = 302, ' The requested page has temporarily moved to a new location
    sfHttpNotModified      = 304, ' For conditional requests, means the requested page hasn't changed and doesn't need to be refreshed

    ' 4xx: client error
    sfHttpBadRequest          = 400, ' The server couldn't understand the request (syntax error)
    sfHttpUnauthorized        = 401, ' The requested page needs an authentication to be accessed
    sfHttpForbidden           = 403, ' The requested page cannot be accessed at all, even with authentication
    sfHttpNotFound            = 404, ' The requested page doesn't exist
    sfHttpRangeNotSatisfiable = 407, ' The server can't satisfy the partial GET request (with a "Range" header field)

    ' 5xx: server error
    sfHttpInternalServerError = 500, ' The server encountered an unexpected error
    sfHttpNotImplemented      = 501, ' The server doesn't implement a requested feature
    sfHttpBadGateway          = 502, ' The gateway server has received an error from the source server
    sfHttpServiceNotAvailable = 503, ' The server is temporarily unavailable (overloaded, in maintenance, ...)
    sfHttpGatewayTimeout      = 504, ' The gateway server couldn't receive a response from the source server
    sfHttpVersionNotSupported = 505, ' The server doesn't support the requested HTTP version

    ' 10xx: SFML custom codes
    sfHttpInvalidResponse  = 1000, ' Response is not a valid HTTP one
    sfHttpConnectionFailed = 1001  ' Connection with server failed
end enum

extern "C"

declare function sfHttpRequest_create() as sfHttpRequest ptr
declare sub      sfHttpRequest_destroy(byval httpRequest as sfHttpRequest ptr)
declare sub      sfHttpRequest_setField(byval httpRequest as sfHttpRequest ptr, byval field as const zstring ptr, byval value as const zstring ptr)
declare sub      sfHttpRequest_setMethod(byval httpRequest as sfHttpRequest ptr, byval method as sfHttpMethod)
declare sub      sfHttpRequest_setUri(byval httpRequest as sfHttpRequest ptr, byval uri as const zstring ptr)
declare sub      sfHttpRequest_setHttpVersion(byval httpRequest as sfHttpRequest ptr, byval major as ulong, byval minor as ulong)
declare sub      sfHttpRequest_setBody(byval httpRequest as sfHttpRequest ptr, byval body as const zstring ptr)
declare sub      sfHttpResponse_destroy(byval httpResponse as sfHttpResponse ptr)
declare function sfHttpResponse_getField(byval httpResponse as const sfHttpResponse ptr, byval field as const zstring ptr) as const zstring ptr
declare function sfHttpResponse_getStatus(byval httpResponse as const sfHttpResponse ptr) as sfHttpStatus 
declare function sfHttpResponse_getMajorVersion(byval httpResponse as const sfHttpResponse ptr) as ulong
declare function sfHttpResponse_getMinorVersion(byval httpResponse as const sfHttpResponse ptr) as ulong
declare function sfHttpResponse_getBody(byval httpResponse as const sfHttpResponse ptr) as const zstring ptr
declare function sfHttp_create() as sfHttp ptr
declare sub      sfHttp_destroy(byval http as sfHttp ptr)
declare sub      sfHttp_setHost(byval http as sfHttp ptr, byval host as zstring ptr, byval port as ushort)
declare function sfHttp_sendRequest(byval http as sfHttp ptr , byval request as const sfHttpRequest ptr, byval timeout as sfTime) as sfHttpResponse ptr

end extern

#endif ' FBSFML_HTTP_BI
