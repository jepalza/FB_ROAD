#ifndef SFML_SPRITE_BI
#define SFML_SPRITE_BI

' Headers
#include once "inc/Graphics/Export.bi"
#include once "inc/Graphics/BlendMode.bi"
#include once "inc/Graphics/Color.bi"
#include once "inc/Graphics/Rect.bi"
#include once "inc/Graphics/Transform.bi"
#include once "inc/Graphics/Types.bi"
#include once "inc/System/Vector2.bi"

extern "c"

' Create a new sprite
declare function sfSprite_create() as sfSprite ptr
' Copy an existing sprite
declare function sfSprite_copy(byval sprite as const sfSprite ptr) as sfSprite ptr
' Destroy an existing sprite
declare sub      sfSprite_destroy(byval sprite as sfSprite ptr)
' Set the position of a sprite
declare sub      sfSprite_setPosition(byval sprite as sfSprite ptr, byval position as sfVector2f)
' Set the orientation of a sprite
declare sub      sfSprite_setRotation(byval sprite as sfSprite ptr, byval angle as single)
' Set the scale factors of a sprite
declare sub      sfSprite_setScale(byval sprite as sfSprite ptr, byval scale as sfVector2f)
' Set the local origin of a sprite
declare sub      sfSprite_setOrigin(byval sprite as sfSprite ptr, byval origin as sfVector2f)
' Get the position of a sprite
declare function sfSprite_getPosition(byval sprite as const sfSprite ptr) as sfVector2f
' Get the orientation of a sprite
declare function sfSprite_getRotation(byval sprite as const sfSprite ptr) as single
' Get the current scale of a sprite
declare function sfSprite_getScale(byval sprite as const sfSprite ptr) as sfVector2f 
' Get the local origin of a sprite
declare function sfSprite_getOrigin(byval sprite as const sfSprite ptr) as sfVector2f
' Move a sprite by a given offset
declare sub      sfSprite_move(byval sprite as sfSprite ptr, byval offset as sfVector2f)
' Rotate a sprite
declare sub      sfSprite_rotate(byval sprite as sfSprite ptr, byval angle as single)
' Scale a sprite
declare sub      sfSprite_scale(byval sprite as sfSprite ptr, byval factors as sfVector2f)
' Get the combined transform of a sprite
declare function sfSprite_getTransform(byval sprite as const sfSprite ptr) as sfTransform
' Get the inverse of the combined transform of a sprite
declare function sfSprite_getInverseTransform(byval sprite as const sfSprite ptr) as sfTransform
' Change the source texture of a sprite
declare sub      sfSprite_setTexture(byval sprite as sfSprite ptr, byval texture as const sfTexture ptr, byval resetRect as sfBool)
' Set the sub-rectangle of the texture that a sprite will display
declare sub      sfSprite_setTextureRect(byval sprite as sfSprite ptr, byval rectangle as sfIntRect)
' Set the global color of a sprite
declare sub      sfSprite_setColor(byval sprite as sfSprite ptr, byval color as sfColor)
' Get the source texture of a sprite
declare function sfSprite_getTexture(byval sprite as const sfSprite ptr) as const sfTexture ptr
' Get the sub-rectangle of the texture displayed by a sprite
declare function sfSprite_getTextureRect(byval sprite as const sfSprite ptr) as sfIntRect
' Get the global color of a sprite
declare function sfSprite_getColor(byval sprite as const sfSprite ptr) as sfColor
' Get the local bounding rectangle of a sprite
declare function sfSprite_getLocalBounds(byval sprite as const sfSprite ptr) as sfFloatRect
' Get the global bounding rectangle of a sprite
declare function sfSprite_getGlobalBounds(byval sprite as const sfSprite ptr) as sfFloatRect

end extern

#endif ' SFML_SPRITE_BI
