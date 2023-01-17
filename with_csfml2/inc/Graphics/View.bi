#ifndef SFML_VIEW_BI
#define SFML_VIEW_BI


' Headers
#include once "inc/Graphics/Export.bi"
#include once "inc/Graphics/Rect.bi"
#include once "inc/Graphics/Types.bi"
#include once "inc/System/Vector2.bi"

extern "C"

' Create a default view
declare function sfView_create() as sfView ptr
' Construct a view from a rectangle
declare function sfView_createFromRect(byval rectangle as sfFloatRect) as sfView ptr
' Copy an existing view
declare function sfView_copy(byval view as const sfView ptr) as sfView ptr
' Destroy an existing view
declare sub      sfView_destroy(byval view as sfView ptr)
' Set the center of a view
declare sub      sfView_setCenter(byval view as sfView ptr, byval center as sfVector2f)
' Set the size of a view
declare sub      sfView_setSize(byval view as sfView ptr, byval size as sfVector2f)
' Set the orientation of a view
declare sub      sfView_setRotation(byval view as sfView ptr, byval  angle as single)
' Set the target viewport of a view
declare sub      sfView_setViewport(byval view as sfView ptr, byval viewport as sfFloatRect)
' Reset a view to the given rectangle
declare sub      sfView_reset(byval view as sfView ptr, byval rectangle as sfFloatRect)
' Get the center of a view
declare function sfView_getCenter(byval view as const sfView ptr) as sfVector2f
' Get the size of a view
declare function sfView_getSize(byval view as const sfView ptr) as sfVector2f
' Get the current orientation of a view
declare function sfView_getRotation(byval view as const sfView ptr) as single
' Get the target viewport rectangle of a view
declare function sfView_getViewport(byval view as const sfView ptr) as sfFloatRect
' Move a view relatively to its current position
declare sub      sfView_move(byval view as sfView ptr, byval offset as sfVector2f)
' Rotate a view relatively to its current orientation
declare sub      sfView_rotate(byval view as sfView ptr, byval angle as single)
' Resize a view rectangle relatively to its current size
declare sub      sfView_zoom(byval view as sfView ptr, byval factor as single)

end extern

#endif ' SFML_VIEW_BI
