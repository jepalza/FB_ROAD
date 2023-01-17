#ifndef SFML_RENDERTEXTURE_BI
#define SFML_RENDERTEXTURE_BI


' Headers
#include once "inc/Graphics/Export.bi"
#include once "inc/Graphics/Color.bi"
#include once "inc/Graphics/Rect.bi"
#include once "inc/Graphics/Types.bi"
#include once "inc/Graphics/PrimitiveType.bi"
#include once "inc/Graphics/RenderStates.bi"
#include once "inc/Graphics/Vertex.bi"
#include once "inc/System/Vector2.bi"

extern "c"

' Construct a new render texture
declare function sfRenderTexture_create(byval width as ulong, byval height as ulong, byval depthBuffer as sfBool) as sfRenderTexture ptr
' Destroy an existing render texture
declare sub      sfRenderTexture_destroy(byval renderTexture as sfRenderTexture ptr)
' Get the size of the rendering region of a render texture
declare function sfRenderTexture_getSize(byval renderTexture as const sfRenderTexture ptr) as sfVector2u
' Activate or deactivate a render texture as the current target for rendering
declare function sfRenderTexture_setActive(byval renderTexture as sfRenderTexture ptr, byval active as sfBool) as sfBool
' Update the contents of the target texture
declare sub      sfRenderTexture_display(byval renderTexture as sfRenderTexture ptr)
' Clear the rendertexture with the given color
declare sub      sfRenderTexture_clear(byval renderTexture as sfRenderTexture ptr, byval color as sfColor )
' Change the current active view of a render texture
declare sub      sfRenderTexture_setView(byval renderTexture as sfRenderTexture ptr, byval view as const sfView ptr )
' Get the current active view of a render texture
declare function sfRenderTexture_getView(byval renderTexture as const sfRenderTexture ptr) as const sfView ptr
' Get the default view of a render texture
declare function sfRenderTexture_getDefaultView(byval renderTexture as const sfRenderTexture ptr) as const sfView ptr
' Get the viewport of a view applied to this target
declare function sfRenderTexture_getViewport(byval renderTexture as const sfRenderTexture ptr, byval view as const sfView ptr) as sfIntRect
' Convert a point from texture coordinates to world coordinates
declare function sfRenderTexture_mapPixelToCoords(byval renderTexture as const sfRenderTexture ptr, byval point as sfVector2i, byval view as const sfView ptr) as sfVector2f
' Convert a point from world coordinates to texture coordinates
declare function sfRenderTexture_mapCoordsToPixel(byval renderTexture as const sfRenderTexture ptr, byval point as sfVector2f, byval view as const sfView ptr) as sfVector2i
' Draw a drawable object to the render-target
declare sub      sfRenderTexture_drawSprite(byval renderTexture as sfRenderTexture ptr, byval sprite as const sfSprite ptr, byval states as const sfRenderStates ptr)
declare sub      sfRenderTexture_drawText(byval renderTexture as sfRenderTexture ptr, byval text as const sfText ptr, byval states as const sfRenderStates ptr)
declare sub      sfRenderTexture_drawShape(byval renderTexture as sfRenderTexture ptr, byval shape as const sfShape ptr, byval states as const sfRenderStates ptr)
declare sub      sfRenderTexture_drawCircleShape(byval renderTexture as sfRenderTexture ptr, byval shape as const sfCircleShape ptr, byval states as const sfRenderStates ptr)
declare sub      sfRenderTexture_drawConvexShape(byval renderTexture as sfRenderTexture ptr, byval shape as const sfConvexShape ptr, byval states as const sfRenderStates ptr)
declare sub      sfRenderTexture_drawRectangleShape(byval renderTexture as sfRenderTexture ptr, byval shape as const sfRectangleShape ptr, byval states as const sfRenderStates ptr)
declare sub      sfRenderTexture_drawVertexArray(byval renderTexture as sfRenderTexture ptr, byval array as const sfVertexArray ptr, byval states as const sfRenderStates ptr)
' Draw primitives defined by an array of vertices to a render texture
declare sub      sfRenderTexture_drawPrimitives(byval renderTexture as sfRenderTexture ptr, _
                                                byval vertices as const sfVertex ptr, byval vertexCount as ulong, _
                                                byval type as sfPrimitiveType, byval states as const sfRenderStates ptr)
' Save the current OpenGL render states and matrices
declare sub      sfRenderTexture_pushGLStates(byval renderTexture as sfRenderTexture ptr)
' Restore the previously saved OpenGL render states and matrices
declare sub      sfRenderTexture_popGLStates(byval renderTexture as sfRenderTexture ptr)
' Reset the internal OpenGL states so that the target is ready for drawing
declare sub      sfRenderTexture_resetGLStates(byval renderTexture as sfRenderTexture ptr)
' Get the target texture of a render texture
declare function sfRenderTexture_getTexture(byval renderTexture as const sfRenderTexture ptr) as const sfTexture ptr
' Enable or disable the smooth filter on a render texture
declare sub      sfRenderTexture_setSmooth(byval renderTexture as sfRenderTexture ptr, byval smooth as sfBool)
' Tell whether the smooth filter is enabled or not for a render texture
declare function sfRenderTexture_isSmooth(byval renderTexture as const sfRenderTexture ptr) as sfBool
' Enable or disable texture repeating
declare sub      sfRenderTexture_setRepeated(byval renderTexture as sfRenderTexture ptr, byval repeated as sfBool)
' Tell whether the texture is repeated or not
declare function sfRenderTexture_isRepeated(byval renderTexture as const sfRenderTexture ptr) as sfBool

end extern

#endif ' SFML_RENDERTEXTURE_BI
