#ifndef SFML_TRANSFORMABLE_BI
#define SFML_TRANSFORMABLE_BI

' Headers
#include once "inc/Graphics/Export.bi"
#include once "inc/Graphics/Types.bi"
#include once "inc/Graphics/Transform.bi"
#include once "inc/System/Vector2.bi"

extern "C"

' Create a new transformable
declare function sfTransformable_create() as sfTransformable ptr
' Copy an existing transformable
declare function sfTransformable_copy(byval transformable as const sfTransformable ptr) as sfTransformable ptr
' Destroy an existing transformable
declare sub      sfTransformable_destroy(byval transformable as sfTransformable ptr)
' Set the position of a transformable
declare sub      sfTransformable_setPosition(byval transformable as sfTransformable ptr, byval position as sfVector2f)
' Set the orientation of a transformable
declare sub      sfTransformable_setRotation(byval transformable as sfTransformable ptr, byval angle as single)
' Set the scale factors of a transformable
declare sub      sfTransformable_setScale(byval transformable as sfTransformable ptr, byval scale as sfVector2f)
' Set the local origin of a transformable
declare sub      sfTransformable_setOrigin(byval transformable as sfTransformable ptr, byval origin as sfVector2f)
' Get the position of a transformable
declare function sfTransformable_getPosition(byval transformable as const sfTransformable ptr) as sfVector2f
' Get the orientation of a transformable
declare function sfTransformable_getRotation(byval transformable as const sfTransformable ptr) as single
' Get the current scale of a transformable
declare function sfTransformable_getScale(byval transformable as const sfTransformable ptr) as sfVector2f
' Get the local origin of a transformable
declare function sfTransformable_getOrigin(byval transformable as const sfTransformable ptr) as sfVector2f
' Move a transformable by a given offset
declare sub      sfTransformable_move(byval transformable as sfTransformable ptr, byval offset as sfVector2f)
' Rotate a transformable
declare sub      sfTransformable_rotate(byval transformable as sfTransformable ptr, byval angle as single)
' Scale a transformable
declare sub      sfTransformable_scale(byval transformable as sfTransformable ptr, byval factors as sfVector2f)
' Get the combined transform of a transformable
declare function sfTransformable_getTransform(byval transformable as const sfTransformable ptr) as sfTransform
' Get the inverse of the combined transform of a transformable
declare function sfTransformable_getInverseTransform(byval transformable as const sfTransformable ptr) as sfTransform

end extern

#endif ' SFML_TRANSFORMABLE_BI
