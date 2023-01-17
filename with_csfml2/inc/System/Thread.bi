#ifndef FBSFML_THREAD_BI
#define FBSFML_THREAD_BI

#include "inc/System/Export.bi"
#include "inc/System/Types.bi"

type sfThreadProc as sub cdecl(byval userdata as any ptr)

extern "C"

declare function sfThread_create(byval fn as sfThreadProc, byval userData as any ptr=0) as sfThread ptr
declare sub      sfThread_destroy(byval thread as sfThread ptr)
declare sub      sfThread_launch(byval thread as sfThread ptr)
declare sub      sfThread_wait(byval thread as sfThread ptr)
declare sub      sfThread_terminate(byval thread as sfThread ptr)

end extern

#endif ' FBSFML_THREAD_BI
