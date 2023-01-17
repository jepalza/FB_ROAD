#ifndef SFML_RECTANGLESHAPE_BI
#define SFML_RECTANGLESHAPE_BI

' Headers
#include once "inc/Graphics/Export.bi"
#include once "inc/Graphics/Color.bi"
#include once "inc/Graphics/Rect.bi"
#include once "inc/Graphics/Transform.bi"
#include once "inc/Graphics/Types.bi"
#include once "inc/System/Vector2.bi"

extern "C"

' Create a new rectangle shape
declare function sfRectangleShape_create() as sfRectangleShape ptr
' Copy an existing rectangle shape
declare function sfRectangleShape_copy(byval shape as const sfRectangleShape ptr) as sfRectangleShape ptr
' Destroy an existing rectangle shape
declare sub sfRectangleShape_destroy(byval shape as sfRectangleShape ptr)
' Set the position of a rectangle shape
declare sub sfRectangleShape_setPosition(byval shape as sfRectangleShape ptr, byval position as sfVector2f)
' Set the orientation of a rectangle shape
declare sub sfRectangleShape_setRotation(byval shape as sfRectangleShape ptr, byval angle as single)
' Set the scale factors of a rectangle shape
declare sub sfRectangleShape_setScale(byval shape as sfRectangleShape ptr, byval scale as sfVector2f)
' Set the local origin of a rectangle shape
declare sub sfRectangleShape_setOrigin(byval shape as sfRectangleShape ptr, byval origin as sfVector2f)
' Get the position of a rectangle shape
declare function sfRectangleShape_getPosition(byval shape as const sfRectangleShape ptr) as sfVector2f
' Get the orientation of a rectangle shape
declare function sfRectangleShape_getRotation(byval shape as const sfRectangleShape ptr) as single
' Get the current scale of a rectangle shape
declare function sfRectangleShape_getScale(byval shape as const sfRectangleShape ptr) as sfVector2f
' Get the local origin of a rectangle shape
declare function sfRectangleShape_getOrigin(byval shape as const sfRectangleShape ptr) as sfVector2f
' Move a rectangle shape by a given offset
declare sub sfRectangleShape_move(byval shape as sfRectangleShape ptr, byval offset as sfVector2f)
' Rotate a rectangle shape
declare sub sfRectangleShape_rotate(byval shape as sfRectangleShape ptr, byval angle as single)
' Scale a rectangle shape
declare sub sfRectangleShape_scale(byval shape as sfRectangleShape ptr, byval factors as sfVector2f)
' Get the combined transform of a rectangle shape
declare function sfRectangleShape_getTransform(byval shape as const sfRectangleShape ptr) as sfTransform
' Get the inverse of the combined transform of a rectangle shape
declare function sfRectangleShape_getInverseTransform(byval shape as const sfRectangleShape ptr) as sfTransform
' Change the source texture of a rectangle shape
declare sub sfRectangleShape_setTexture(byval shape as sfRectangleShape ptr, byval texture as const sfTexture ptr, byval resetRect as sfBool)
' Set the sub-rectangle of the texture that a rectangle shape will display
declare sub sfRectangleShape_setTextureRect(byval shape as sfRectangleShape ptr, byval rect as sfIntRect)
' Set the fill color of a rectangle shape
declare sub sfRectangleShape_setFillColor(byval shape as sfRectangleShape ptr, byval color as sfColor)
' Set the outline color of a rectangle shape
declare sub sfRectangleShape_setOutlineColor(byval shape as sfRectangleShape ptr, byval color as sfColor)
' Set the thickness of a rectangle shape's outline
declare sub sfRectangleShape_setOutlineThickness(byval shape as sfRectangleShape ptr, byval thickness as single)
' Get the source texture of a rectangle shape
declare function sfRectangleShape_getTexture(byval shape as const sfRectangleShape ptr) as const sfTexture ptr
' Get the sub-rectangle of the texture displayed by a rectangle shape
declare function sfRectangleShape_getTextureRect(byval shape as const sfRectangleShape ptr) as sfIntRect
' Get the fill color of a rectangle shape
declare function sfRectangleShape_getFillColor(byval shape as const sfRectangleShape ptr) as sfColor
' Get the outline color of a rectangle shape
declare function sfRectangleShape_getOutlineColor(byval shape as const sfRectangleShape ptr) as sfColor
' Get the outline thickness of a rectangle shape
declare function sfRectangleShape_getOutlineThickness(byval shape as const sfRectangleShape ptr) as single
' Get the total number of points of a rectangle shape
declare function sfRectangleShape_getPointCount(byval shape as const sfRectangleShape ptr) as ulong
' Get a point of a rectangle shape
declare function sfRectangleShape_getPoint(byval shape as const sfRectangleShape ptr, byval index as ulong) as sfVector2f
' Set the size of a rectangle shape
declare sub sfRectangleShape_setSize(byval shape as sfRectangleShape ptr, byval size as sfVector2f)
' Get the size of a rectangle shape
declare function sfRectangleShape_getSize(byval shape as const sfRectangleShape ptr) as sfVector2f
' Get the local bounding rectangle of a rectangle shape
declare function sfRectangleShape_getLocalBounds(byval shape as const sfRectangleShape ptr) as sfFloatRect
' Get the global bounding rectangle of a rectangle shape
declare function sfRectangleShape_getGlobalBounds(byval shape as const sfRectangleShape ptr) as sfFloatRect

end extern

#endif ' SFML_RECTANGLESHAPE_BI
