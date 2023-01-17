#ifndef SFML_TRANSFORM_BI
#define SFML_TRANSFORM_BI


' Headers
#include once "inc/Graphics/Export.bi"
#include once "inc/Graphics/Rect.bi"
#include once "inc/Graphics/Types.bi"
#include once "inc/System/Vector2.bi"



' brief Encapsulate a 3x3 transform matrix
type sfTransform
  as single matrix(8)
end type

extern "c"

' Identity transform (does nothing)
declare function sfTransform_Identity as const sfTransform

' Create a new transform from a matrix
declare function sfTransform_fromMatrix(byval a00 as single, byval a01 as single, byval a02 as single, _
                                        byval a10 as single, byval a11 as single, byval a12 as single, _
                                        byval a20 as single, byval a21 as single, byval a22 as single) as sfTransform

' Return the 4x4 matrix of a transform
declare sub sfTransform_getMatrix(byval transform as const sfTransform ptr, byval matrix as single ptr) 
' Return the inverse of a transform
declare function sfTransform_getInverse(byval transform as const sfTransform ptr) as sfTransform
' Apply a transform to a 2D point
declare function sfTransform_transformPoint(byval transform as const sfTransform ptr, byval point_ as sfVector2f) as sfVector2f 
' Apply a transform to a rectangle
declare function sfTransform_transformRect(byval transform as const sfTransform ptr, byval rectangle as sfFloatRect) as sfFloatRect
' Combine two transforms
declare sub sfTransform_combine(byval transform as sfTransform ptr, byval other as const sfTransform ptr)
' Combine a transform with a translation
declare sub sfTransform_translate(byval transform as sfTransform ptr, byval x as single, byval y as single)
' Combine the current transform with a rotation
declare sub sfTransform_rotate(byval transform as sfTransform ptr, byval angle as single)
' Combine the current transform with a rotation
declare sub sfTransform_rotateWithCenter(byval transform as sfTransform ptr, byval angle as single, byval centerX as single, byval centerY as single)
' Combine the current transform with a scaling
declare sub sfTransform_scale(byval transform as sfTransform ptr, byval scaleX as single, byval scaleY as single)
' Combine the current transform with a scaling
declare sub sfTransform_scaleWithCenter(byval transform as sfTransform ptr,byval scaleX as single, byval scaleY as single, byval centerX as single, byval centerY as single)

end extern

#endif ' SFML_TRANSFORM_BI
