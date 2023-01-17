#ifndef FBSFML_IMAGE_BI
#define FBSFML_IMAGE_BI


#include "inc/Graphics/Export.bi"
#include "inc/Graphics/Color.bi"
#include "inc/Graphics/Rect.bi"
#include "inc/Graphics/Types.bi"
#include "inc/System/InputStream.bi"
#include "inc/System/Vector2.bi"

extern "C"

declare function sfImage_create(byval w as ulong, byval h as ulong) as sfImage ptr
declare function sfImage_createFromColor(byval w as ulong, byval h as ulong, byval color as sfColor) as sfImage ptr
declare function sfImage_createFromPixels(byval w as ulong, byval h as ulong, byval pixels as const sfUint8 ptr) as sfImage ptr
declare function sfImage_createFromFile(byval filename as const zstring ptr) as sfImage ptr
declare function sfImage_createFromMemory(byval data as const any ptr, byval size as uinteger) as sfImage ptr
declare function sfImage_createFromStream(byval stream as sfInputStream ptr) as sfImage ptr
declare function sfImage_copy(byval image as const sfImage ptr) as sfImage ptr
declare sub      sfImage_destroy(byval image as sfImage ptr)
declare function sfImage_saveToFile(byval image as const sfImage ptr, byval filename as const zstring ptr) as sfBool
declare function sfImage_getSize(byval image as const sfImage ptr) as sfVector2u 
declare sub      sfImage_createMaskFromColor(byval image as sfImage ptr, byval color as sfColor, byval alpha as sfUint8)
declare sub      sfImage_copyImage(byval image as sfImage ptr, byval source as const sfImage ptr, byval destX as ulong, byval destY as ulong, byval sourceRect as sfIntRect, byval applyAlpha as sfBool)
declare sub      sfImage_setPixel(byval image as sfImage ptr, byval x as ulong , byval y as ulong, byval color as sfColor)
declare function sfImage_getPixel(byval image as const sfImage ptr, byval x as ulong, byval y as ulong) as sfColor 
declare function sfImage_getPixelsPtr(byval image as const sfImage ptr) as const sfUint8 ptr 
declare sub      sfImage_flipHorizontally(byval image as sfImage ptr)
declare sub      sfImage_flipVertically(byval image as sfImage ptr)

end extern

#endif ' FBSFML_IMAGE_BI
