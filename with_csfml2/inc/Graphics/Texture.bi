#ifndef SFML_TEXTURE_BI
#define SFML_TEXTURE_BI

' Headers
#include once "inc/Graphics/Export.bi"
#include once "inc/Graphics/Rect.bi"
#include once "inc/Graphics/Types.bi"
#include once "inc/Window/Types.bi"
#include once "inc/System/InputStream.bi"
#include once "inc/System/Vector2.bi"

extern "C"

' Create a new texture
declare function sfTexture_create(byval width as ulong, byval height as ulong) as sfTexture ptr
' Create a new texture from a file
declare function sfTexture_createFromFile(byval filename as const zstring ptr, byval area as const sfIntRect ptr) as sfTexture ptr
' Create a new texture from a file in memory
declare function sfTexture_createFromMemory(byval data as const any ptr, byval sizeInBytes as uinteger, byval area as const sfIntRect ptr) as sfTexture ptr
' Create a new texture from a custom stream
declare function sfTexture_createFromStream(byval stream as sfInputStream ptr, byval area as const sfIntRect ptr) as sfTexture ptr
' Create a new texture from an image
declare function sfTexture_createFromImage(byval image as const sfImage ptr, byval area as const sfIntRect ptr) as sfTexture ptr
' Copy an existing texture
declare function sfTexture_copy(byval texture as const sfTexture ptr) as sfTexture ptr
' Destroy an existing texture
declare sub      sfTexture_destroy(byval texture as sfTexture ptr)
' Return the size of the texture
declare function sfTexture_getSize(byval texture as const sfTexture ptr) as sfVector2u
' Copy a texture's pixels to an image
declare function sfTexture_copyToImage(byval texture as const sfTexture ptr) as sfImage ptr 
' Update a texture from an array of pixels
declare sub      sfTexture_updateFromPixels(byval texture as sfTexture ptr, byval pixels as const ubyte ptr, byval width as ulong, byval height as ulong, byval x as ulong, byval y as ulong)
' Update a texture from an image
declare sub      sfTexture_updateFromImage(byval texture as sfTexture ptr, byval image as const sfImage ptr, byval x as ulong, byval y as ulong)
' Update a texture from the contents of a window
declare sub      sfTexture_updateFromWindow(byval texture as sfTexture ptr, byval window as const sfWindow ptr, byval x as ulong, byval y as ulong)
' Update a texture from the contents of a render-window
declare sub      sfTexture_updateFromRenderWindow(byval texture as sfTexture ptr, byval renderWindow as const sfRenderWindow ptr, byval x as ulong, byval y as ulong)
' Enable or disable the smooth filter on a texture
declare sub      sfTexture_setSmooth(byval texture as sfTexture ptr, byval smooth as sfBool)
' Tell whether the smooth filter is enabled or not for a texture
declare function sfTexture_isSmooth(byval texture as const sfTexture ptr) as sfBool
' Enable or disable repeating for a texture
declare sub      sfTexture_setRepeated(byval texture as sfTexture ptr, byval repeated as sfBool)
' Tell whether a texture is repeated or not
declare function sfTexture_isRepeated(byval texture as const sfTexture ptr) as sfBool
' Bind a texture for rendering
declare sub      sfTexture_bind(byval texture as const sfTexture ptr)
' Get the maximum texture size allowed
declare function sfTexture_getMaximumSize() as ulong

end extern

#endif ' SFML_TEXTURE_BI
