#ifndef SFML_VERTEXARRAY_BI
#define SFML_VERTEXARRAY_BI

' Headers
#include once "inc/Graphics/Export.bi"
#include once "inc/Graphics/PrimitiveType.bi"
#include once "inc/Graphics/Rect.bi"
#include once "inc/Graphics/Types.bi"
#include once "inc/Graphics/Vertex.bi"

extern "C"

' Create a new vertex array
declare function sfVertexArray_create() as sfVertexArray ptr
' Copy an existing vertex array
declare function sfVertexArray_copy(byval array as const sfVertexArray ptr) as sfVertexArray ptr
' Destroy an existing vertex array
declare sub      sfVertexArray_destroy(byval array as sfVertexArray ptr)
' Return the vertex count of a vertex array
declare function sfVertexArray_getVertexCount(byval array as const sfVertexArray ptr) as ulong
' Get access to a vertex by its index
declare function sfVertexArray_getVertex(byval array as sfVertexArray ptr, byval index as ulong) as sfVertex ptr
' Clear a vertex array
declare sub      sfVertexArray_clear(byval array as sfVertexArray ptr)
' Resize the vertex array
declare sub      sfVertexArray_resize(byval array as sfVertexArray ptr, byval vertexCount as ulong)
' Add a vertex to a vertex array array
declare sub      sfVertexArray_append(byval array as sfVertexArray ptr, byval vertex as sfVertex)
' Set the type of primitives of a vertex array
declare sub      sfVertexArray_setPrimitiveType(byval array as sfVertexArray ptr, byval type as sfPrimitiveType)
' Get the type of primitives drawn by a vertex array
declare function sfVertexArray_getPrimitiveType(byval array as sfVertexArray ptr) as sfPrimitiveType
' Compute the bounding rectangle of a vertex array
declare function sfVertexArray_getBounds(byval array as sfVertexArray ptr) as sfFloatRect

end extern

#endif ' SFML_VERTEXARRAY_BI
