#ifndef FBSFML_MUTEX_BI
#define FBSFML_MUTEX_BI

#include once "inc/System/Export.bi"
#include once "inc/System/Types.bi"

extern "C"

declare function sfMutex_create() as sfMutex ptr
declare sub      sfMutex_destroy(byval mutex as sfMutex ptr)
declare sub      sfMutex_lock(byval mutex as sfMutex ptr)
declare sub      sfMutex_unlock(byval mutex as sfMutex ptr)

end extern

#endif ' FBSFML_MUTEX_BI
