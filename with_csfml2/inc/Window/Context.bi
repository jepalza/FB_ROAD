#ifndef FBSFML_CONTEXT_BI
#define FBSFML_CONTEXT_BI

#include "inc/Window/Types.bi"

extern "C"

declare function sfContext_create() as sfContext ptr
declare sub      sfContext_destroy(byval ctx as sfContext ptr)
declare sub      sfContext_setActive(byval ctx as sfContext ptr, byval active as sfBool)

end extern

#endif ' FBSFML_CONTEXT_BI
