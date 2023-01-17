#ifndef FBSFML_CONVEXSHAPE_BI
#define FBSFML_CONVEXSHAPE_BI

#include "inc/Graphics/Export.bi"
#include "inc/Graphics/Color.bi"
#include "inc/Graphics/Rect.bi"
#include "inc/Graphics/Transform.bi"
#include "inc/Graphics/Types.bi"
#include "inc/System/Vector2.bi"

extern "C"

declare function sfConvexShape_create() as sfConvexShape ptr
declare function sfConvexShape_copy(byval shape as const sfConvexShape ptr) as sfConvexShape ptr
declare sub      sfConvexShape_destroy(byval shape as sfConvexShape ptr)
declare sub      sfConvexShape_setPosition(byval shape as sfConvexShape ptr, byval position as sfVector2f)
declare sub      sfConvexShape_setRotation(byval shape as sfConvexShape ptr, byval angle as single)
declare sub      sfConvexShape_setScale(byval shape as sfConvexShape ptr, byval scale as sfVector2f)
declare sub      sfConvexShape_setOrigin(byval shape as sfConvexShape ptr, byval origin as sfVector2f)
declare function sfConvexShape_getPosition(byval shape as const sfConvexShape ptr) as sfVector2f
declare function sfConvexShape_getRotation(byval shape as const sfConvexShape ptr) as single
declare function sfConvexShape_getScale(byval shape as const sfConvexShape ptr) as sfVector2f
declare function sfConvexShape_getOrigin(byval shape as const sfConvexShape ptr) as sfVector2f
declare sub      sfConvexShape_move(byval shape as sfConvexShape ptr, byval offset as sfVector2f)
declare sub      sfConvexShape_rotate(byval shape as sfConvexShape ptr, byval angle as single)
declare sub      sfConvexShape_scale(byval shape as sfConvexShape ptr, byval factors as sfVector2f)
declare function sfConvexShape_getTransform(byval shape as const sfConvexShape ptr) as sfTransform
declare function sfConvexShape_getInverseTransform(byval shape as const sfConvexShape ptr) as sfTransform
declare sub      sfConvexShape_setTexture(byval shape as sfConvexShape ptr, byval texture as const sfTexture ptr, byval resetRect as sfBool)
declare sub      sfConvexShape_setTextureRect(byval shape as sfConvexShape ptr, byval rect as sfIntRect)
declare sub      sfConvexShape_setFillColor(byval shape as sfConvexShape ptr, byval color as sfColor)
declare sub      sfConvexShape_setOutlineColor(byval shape as sfConvexShape ptr, byval color as sfColor)
declare sub      sfConvexShape_setOutlineThickness(byval shape as sfConvexShape ptr, byval thickness as single)
declare function sfConvexShape_getTexture(byval shape as const sfConvexShape ptr) as const sfTexture ptr
declare function sfConvexShape_getTextureRect(byval shape as const sfConvexShape ptr) as sfIntRect
declare function sfConvexShape_getFillColor(byval shape as const sfConvexShape ptr) as sfColor
declare function sfConvexShape_getOutlineColor(byval shape as const sfConvexShape ptr) as sfColor
declare function sfConvexShape_getOutlineThickness(byval shape as const sfConvexShape ptr) as single
declare function sfConvexShape_getPointCount(byval shape as const sfConvexShape ptr) as ulong
declare function sfConvexShape_getPoint(byval shape as const sfConvexShape ptr, byval index as ulong) as sfVector2f
declare sub      sfConvexShape_setPointCount(byval shape as sfConvexShape ptr, byval count as ulong)
declare sub      sfConvexShape_setPoint(byval shape as sfConvexShape ptr, byval index as ulong, byval point as sfVector2f)
declare function sfConvexShape_getLocalBounds(byval shape as const sfConvexShape ptr) as sfFloatRect
declare function sfConvexShape_getGlobalBounds(byval shape as const sfConvexShape ptr) as sfFloatRect

end extern

#endif ' FBSFML_CONVEXSHAPE_BI
