#ifndef FBSFML_TIME_BI
#define FBSFML_TIME_BI

#include once "inc/System/Export.bi"

type sfTime
  as sfInt64 microseconds
end type

extern "C"

declare function sfTime_Zero as sfTime
declare function sfTime_asSeconds(byval time as sfTime) as single
declare function sfTime_asMilliseconds(byval time as sfTime) as sfInt32
declare function sfTime_asMicroseconds(byval time as sfTime) as sfInt64
declare function sfSeconds(byval amount as single) as sfTime 
declare function sfMilliseconds(byval amount as sfInt32) as sfTime
declare function sfMicroseconds(byval amount as sfInt64) as sfTime

end extern

#endif ' FBSFML_TIME_BI
