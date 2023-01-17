#ifndef FBSFML_FTP_BI
#define FBSFML_FTP_BI

#include once "inc/Network/Export.bi"
#include once "inc/Network/IpAddress.bi"
#include once "inc/Network/Types.bi"

' Enumeration of transfer modes

type sfFtpTransferMode as long
enum
  sfFtpBinary ' Binary mode (file is transfered as a sequence of bytes)
  sfFtpAscii  ' Text mode using ASCII encoding
  sfFtpEbcdic ' Text mode using EBCDIC encoding
end enum

' Status codes possibly returned by a FTP response
type sfFtpStatus as long
enum
    ' 1xx: the requested action is being initiated,
    ' expect another reply before proceeding with a new command
    sfFtpRestartMarkerReply          = 110 ' Restart marker reply
    sfFtpServiceReadySoon            = 120 ' Service ready in N minutes
    sfFtpDataConnectionAlreadyOpened = 125 ' Data connection already opened, transfer starting
    sfFtpOpeningDataConnection       = 150 ' File status ok, about to open data connection

    ' 2xx: the requested action has been successfully completed
    sfFtpOk                    = 200 ' Command ok
    sfFtpPointlessCommand      = 202 ' Command not implemented
    sfFtpSystemStatus          = 211 ' System status, or system help reply
    sfFtpDirectoryStatus       = 212 ' Directory status
    sfFtpFileStatus            = 213 ' File status
    sfFtpHelpMessage           = 214 ' Help message
    sfFtpSystemType            = 215 ' NAME system type, where NAME is an official system name from the list in the Assigned Numbers document
    sfFtpServiceReady          = 220 ' Service ready for new user
    sfFtpClosingConnection     = 221 ' Service closing control connection
    sfFtpDataConnectionOpened  = 225 ' Data connection open, no transfer in progress
    sfFtpClosingDataConnection = 226 ' Closing data connection, requested file action successful
    sfFtpEnteringPassiveMode   = 227 ' Entering passive mode
    sfFtpLoggedIn              = 230 ' User logged in, proceed. Logged out if appropriate
    sfFtpFileActionOk          = 250 ' Requested file action ok
    sfFtpDirectoryOk           = 257 ' PATHNAME created

    ' 3xx: the command has been accepted, but the requested action
    ' is dormant, pending receipt of further information
    sfFtpNeedPassword       = 331 ' User name ok, need password
    sfFtpNeedAccountToLogIn = 332 ' Need account for login
    sfFtpNeedInformation    = 350 ' Requested file action pending further information

    ' 4xx: the command was not accepted and the requested action did not take place,
    ' but the error condition is temporary and the action may be requested again
    sfFtpServiceUnavailable        = 421 ' Service not available, closing control connection
    sfFtpDataConnectionUnavailable = 425 ' Can't open data connection
    sfFtpTransferAborted           = 426 ' Connection closed, transfer aborted
    sfFtpFileActionAborted         = 450 ' Requested file action not taken
    sfFtpLocalError                = 451 ' Requested action aborted, local error in processing
    sfFtpInsufficientStorageSpace  = 452 ' Requested action not taken; insufficient storage space in system, file unavailable

    ' 5xx: the command was not accepted and
    '/ the requested action did not take place
    sfFtpCommandUnknown          = 500 ' Syntax error, command unrecognized
    sfFtpParametersUnknown       = 501 ' Syntax error in parameters or arguments
    sfFtpCommandNotImplemented   = 502 ' Command not implemented
    sfFtpBadCommandSequence      = 503 ' Bad sequence of commands
    sfFtpParameterNotImplemented = 504 ' Command not implemented for that parameter
    sfFtpNotLoggedIn             = 530 ' Not logged in
    sfFtpNeedAccountToStore      = 532 ' Need account for storing files
    sfFtpFileUnavailable         = 550 ' Requested action not taken, file unavailable
    sfFtpPageTypeUnknown         = 551 ' Requested action aborted, page type unknown
    sfFtpNotEnoughMemory         = 552 ' Requested file action aborted, exceeded storage allocation
    sfFtpFilenameNotAllowed      = 553 ' Requested action not taken, file name not allowed

    ' 10xx: SFML custom codes
    sfFtpInvalidResponse  = 1000 ' Response is not a valid FTP one
    sfFtpConnectionFailed = 1001 ' Connection with server failed
    sfFtpConnectionClosed = 1002 ' Connection with server closed
    sfFtpInvalidFile      = 1003 ' Invalid file to upload / download
end enum 

extern "C"

declare sub       sfFtpListingResponse_destroy(byval ftpListingResponse as sfFtpListingResponse ptr )
declare function  sfFtpListingResponse_isOk(byval ftpListingResponse as const sfFtpListingResponse ptr) as sfBool 
declare function  sfFtpListingResponse_getStatus(byval ftpListingResponse as const sfFtpListingResponse ptr) as sfFtpStatus 
declare function  sfFtpListingResponse_getMessage(byval ftpListingResponse as const sfFtpListingResponse ptr) as const zstring ptr
declare function  sfFtpListingResponse_getCount(byval ftpListingResponse as const sfFtpListingResponse ptr) as integer 
declare function  sfFtpListingResponse_getName(byval ftpListingResponse as const sfFtpListingResponse ptr, byval index as integer) as const zstring ptr
declare sub       sfFtpDirectoryResponse_destroy(byval ftpDirectoryResponse as sfFtpDirectoryResponse ptr)
declare function  sfFtpDirectoryResponse_isOk(byval ftpDirectoryResponse as const sfFtpDirectoryResponse ptr) as sfBool 
declare function  sfFtpDirectoryResponse_getStatus(byval ftpDirectoryResponse as const sfFtpDirectoryResponse ptr) as sfFtpStatus 
declare function  sfFtpDirectoryResponse_getMessage(byval ftpDirectoryResponse as const sfFtpDirectoryResponse ptr) as const zstring ptr
declare function  sfFtpDirectoryResponse_getDirectory(byval ftpDirectoryResponse as const sfFtpDirectoryResponse ptr) as const zstring ptr
declare sub       sfFtpResponse_destroy(byval ftpResponse as sfFtpResponse ptr)
declare function  sfFtpResponse_isOk(byval ftpResponse as const sfFtpResponse ptr) as sfBool 
declare function  sfFtpResponse_getStatus(byval ftpResponse as const sfFtpResponse ptr) as sfFtpStatus 
declare function  sfFtpResponse_getMessage(byval ftpResponse as const sfFtpResponse ptr) as const zstring ptr
declare function  sfFtp_create() as sfFtp ptr 
declare sub       sfFtp_destroy(byval ftp as sfFtp ptr)
declare function  sfFtp_connect(byval ftp as sfFtp ptr, byval server as sfIpAddress, byval port as ushort, byval timeout as sfTime) as sfFtpResponse ptr
declare function  sfFtp_loginAnonymous(byval ftp as sfFtp ptr) as sfFtpResponse ptr
declare function  sfFtp_login(byval ftp as sfFtp ptr, byval userName as const zstring ptr, byval passwprd as const zstring ptr) as sfFtpResponse ptr
declare function  sfFtp_disconnect(byval ftp as sfFtp ptr) as sfFtpResponse ptr
declare function  sfFtp_keepAlive(byval ftp as sfFtp ptr) as sfFtpResponse ptr
declare function  sfFtp_getWorkingDirectory(byval ftp as sfFtp ptr) as sfFtpDirectoryResponse ptr
declare function  sfFtp_getDirectoryListing(byval ftp as sfFtp ptr, byval  directory as const zstring ptr) as sfFtpListingResponse ptr
declare function  sfFtp_changeDirectory(byval ftp as sfFtp ptr, byval  directory as const zstring ptr) as sfFtpResponse ptr
declare function  sfFtp_parentDirectory(byval ftp as sfFtp ptr) as sfFtpResponse ptr
declare function  sfFtp_createDirectory(byval ftp as sfFtp ptr, byval  name as const zstring ptr) as sfFtpResponse ptr
declare function  sfFtp_deleteDirectory(byval ftp as sfFtp ptr, byval   name as const zstring ptr) as sfFtpResponse ptr
declare function  sfFtp_renameFile(byval ftp as sfFtp ptr, byval  file as const zstring ptr, byval  newName as const zstring ptr) as sfFtpResponse ptr
declare function  sfFtp_deleteFile(byval ftp as sfFtp ptr, byval  name as const zstring ptr) as sfFtpResponse ptr
declare function  sfFtp_download(byval ftp as sfFtp ptr, byval  distantFile as const zstring ptr, byval  destPath as const zstring ptr, byval  mode as sfFtpTransferMode) as sfFtpResponse ptr
declare function  sfFtp_upload(byval ftp as sfFtp ptr, byval  localFile as const zstring ptr, byval  destPath as const zstring ptr, byval  mode as sfFtpTransferMode) as sfFtpResponse ptr

end extern

#endif ' FBSFML_FTP_BI
