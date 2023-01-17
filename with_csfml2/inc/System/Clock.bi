#ifndef FBSFML_CLOCK_BI
#define FBSFML_CLOCK_BI

#include once "inc/System/Time.bi"
#include once "inc/System/Types.bi"

extern "C"

declare function sfClock_create() as sfClock ptr
declare function sfClock_copy(byval clock as const sfClock ptr) as sfClock ptr
declare sub      sfClock_destroy(byval clock as sfClock ptr)
declare function sfClock_getElapsedTime(byval clock as const sfClock ptr) as sfTime
declare function sfClock_restart(byval clock as sfClock ptr) as sfTime

end extern

#endif ' FBSFML_CLOCK_BI
