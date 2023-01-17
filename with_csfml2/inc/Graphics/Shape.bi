#ifndef SFML_SHAPE_BI
#define SFML_SHAPE_BI

' Headers
#include once "inc/Graphics/Export.bi"
#include once "inc/Graphics/Color.bi"
#include once "inc/Graphics/Rect.bi"
#include once "inc/Graphics/Transform.bi"
#include once "inc/Graphics/Types.bi"
#include once "inc/System/Vector2.bi"

extern "C"

' Type of the callback used to get the number of points in a shape
type sfShapeGetPointCountCallback as function cdecl () as ulong
' Type of the callback used to get a point of a shape
type sfShapeGetPointCallback as function cdecl (byval index as ulong, byval userdata as any ptr) as sfVector2f

' Create a new shape
declare function sfShape_create(byval getPointCount as sfShapeGetPointCountCallback, byval getPoint as sfShapeGetPointCallback, byval userData as any ptr) as sfShape ptr
' Destroy an existing shape
declare sub      sfShape_destroy(byval shape as sfShape ptr)
' Set the position of a shape
declare sub      sfShape_setPosition(byval shape as sfShape ptr, byval position as sfVector2f)
' Set the orientation of a shape
declare sub      sfShape_setRotation(byval shape as sfShape ptr, byval angle as single)
' Set the scale factors of a shape
declare sub      sfShape_setScale(byval shape as sfShape ptr, byval scale as sfVector2f)
' Set the local origin of a shape
declare sub      sfShape_setOrigin(byval shape as sfShape ptr, byval origin as sfVector2f)
' Get the position of a shape
declare function sfShape_getPosition(byval shape as const sfShape ptr) as sfVector2f
' Get the orientation of a shape
declare function sfShape_getRotation(byval shape as const sfShape ptr) as single
' Get the current scale of a shape
declare function sfShape_getScale(byval shape as const sfShape ptr) as sfVector2f
' Get the local origin of a shape
declare function sfShape_getOrigin(byval shape as const sfShape ptr) as sfVector2f
' Move a shape by a given offset
declare sub      sfShape_move(byval shape as sfShape ptr, byval offset as sfVector2f)
' Rotate a shape
declare sub      sfShape_rotate(byval shape as sfShape ptr, byval angle as single)
' Scale a shape
declare sub      sfShape_scale(byval shape as sfShape ptr, byval factors as sfVector2f)
' Get the combined transform of a shape
declare function sfShape_getTransform(byval shape as const sfShape ptr) as sfTransform
' Get the inverse of the combined transform of a shape
declare function sfShape_getInverseTransform(byval shape as const sfShape ptr) as sfTransform
' Change the source texture of a shape
declare sub      sfShape_setTexture(byval shape as sfShape ptr, byval texture as const sfTexture ptr, byval resetRect as sfBool)
' Set the sub-rectangle of the texture that a shape will display
declare sub      sfShape_setTextureRect(byval shape as sfShape ptr, byval rect as sfIntRect)
' Set the fill color of a shape
declare sub      sfShape_setFillColor(byval shape as sfShape ptr, byval color as sfColor)
' Set the outline color of a shape
declare sub      sfShape_setOutlineColor(byval shape as sfShape ptr, byval color as sfColor)
' Set the thickness of a shape's outline
declare sub      sfShape_setOutlineThickness(byval shape as sfShape ptr, byval thickness as single)
' Get the source texture of a shape
declare function sfShape_getTexture(byval shape as const sfShape ptr) as const sfTexture ptr
' Get the sub-rectangle of the texture displayed by a shape
declare function sfShape_getTextureRect(byval shape as const sfShape ptr) as sfIntRect
' Get the fill color of a shape
declare function sfShape_getFillColor(byval shape as const sfShape ptr) as sfColor
' Get the outline color of a shape
declare function sfShape_getOutlineColor(byval shape as const sfShape ptr) as sfColor
' Get the outline thickness of a shape
declare function sfShape_getOutlineThickness(byval shape as const sfShape ptr) as single
' Get the total number of points of a shape
declare function sfShape_getPointCount(byval shape as const sfShape ptr) as ulong
' Get a point of a shape
declare function sfShape_getPoint(byval shape as const sfShape ptr, byval index as ulong) as sfVector2f
' Get the local bounding rectangle of a shape
declare function sfShape_getLocalBounds(byval shape as const sfShape ptr) as sfFloatRect
' Get the global bounding rectangle of a shape
declare function sfShape_getGlobalBounds(byval shape as const sfShape ptr) as sfFloatRect 
' Recompute the internal geometry of a shape
declare sub      sfShape_update(byval shape as sfShape ptr)

end extern

#endif ' SFML_SHAPE_BI
