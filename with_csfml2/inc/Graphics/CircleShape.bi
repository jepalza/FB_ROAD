#ifndef FBSFML_CIRCLESHAPE_BI
#define FBSFML_CIRCLESHAPE_BI

#include "inc/Graphics/Export.bi"
#include "inc/Graphics/Color.bi"
#include "inc/Graphics/Rect.bi"
#include "inc/Graphics/Transform.bi"
#include "inc/Graphics/Types.bi"
#include "inc/System/Vector2.bi"

extern "C"

declare function sfCircleShape_create() as sfCircleShape ptr 
declare function sfCircleShape_copy(byval shape as const sfCircleShape ptr) as sfCircleShape ptr
declare sub      sfCircleShape_destroy(byval shape as sfCircleShape ptr)
declare sub      sfCircleShape_setPosition(byval shape as sfCircleShape ptr, byval position as sfVector2f )
declare sub      sfCircleShape_setRotation(byval shape as sfCircleShape ptr, byval angle as single)
declare sub      sfCircleShape_setScale(byval shape as sfCircleShape ptr, byval scale as sfVector2f)
declare sub      sfCircleShape_setOrigin(byval shape as sfCircleShape ptr, byval origin as sfVector2f)
declare function sfCircleShape_getPosition(byval shape as const sfCircleShape ptr) as sfVector2f
declare function sfCircleShape_getRotation(byval shape as const sfCircleShape ptr) as single
declare function sfCircleShape_getScale(byval shape as const sfCircleShape ptr) as sfVector2f
declare function sfCircleShape_getOrigin(byval shape as const sfCircleShape ptr) as sfVector2f
declare sub      sfCircleShape_move(byval shape as sfCircleShape ptr, byval offset as sfVector2f)
declare sub      sfCircleShape_rotate(byval shape as sfCircleShape ptr, byval angle as single)
declare sub      sfCircleShape_scale(byval shape as sfCircleShape ptr, byval factors as sfVector2f)
declare function sfCircleShape_getTransform(byval shape as const sfCircleShape ptr) as sfTransform 
declare function sfCircleShape_getInverseTransform(byval shape as const sfCircleShape ptr) as sfTransform 
declare sub      sfCircleShape_setTexture(byval shape as sfCircleShape ptr, byval texture as const sfTexture ptr, byval resetRect as sfBool)
declare sub      sfCircleShape_setTextureRect(byval shape as sfCircleShape ptr, byval rect as sfIntRect)
declare sub      sfCircleShape_setFillColor(byval shape as sfCircleShape ptr, byval color as sfColor)
declare sub      sfCircleShape_setOutlineColor(byval shape as sfCircleShape ptr, byval color as sfColor)
declare sub      sfCircleShape_setOutlineThickness(byval shape as sfCircleShape ptr, byval thickness as single)
declare function sfCircleShape_getTexture(byval shape as const sfCircleShape ptr) as const sfTexture ptr
declare function sfCircleShape_getTextureRect(byval shape as const sfCircleShape ptr) as sfIntRect
declare function sfCircleShape_getFillColor(byval shape as const sfCircleShape ptr) as sfColor
declare function sfCircleShape_getOutlineColor(byval shape as const sfCircleShape ptr) as sfColor
declare function sfCircleShape_getOutlineThickness(byval shape as const sfCircleShape ptr) as single
declare function sfCircleShape_getPointCount(byval shape as const sfCircleShape ptr) as ulong
declare function sfCircleShape_getPoint(byval shape as const sfCircleShape ptr, byval index as ulong) as sfVector2f
declare sub      sfCircleShape_setRadius(byval shape as sfCircleShape ptr, byval radiusa as single)
declare function sfCircleShape_getRadius(byval shape as const sfCircleShape ptr) as single
declare sub      sfCircleShape_setPointCount(byval shape as sfCircleShape ptr, byval count as ulong) 
declare function sfCircleShape_getLocalBounds(byval shape as const sfCircleShape ptr) as sfFloatRect
declare function sfCircleShape_getGlobalBounds(byval shape as const sfCircleShape ptr) as sfFloatRect

end extern

#endif ' FBSFML_CIRCLESHAPE_BI
