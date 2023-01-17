#ifndef FBSFML_FONT_BI
#define FBSFML_FONT_BI

#include "inc/Graphics/Export.bi"
#include "inc/Graphics/FontInfo.bi"
#include "inc/Graphics/Glyph.bi"
#include "inc/Graphics/Types.bi"
#include "inc/System/InputStream.bi"

extern "C"

declare function sfFont_createFromFile(byval filename as const zstring ptr) as sfFont ptr
declare function sfFont_createFromMemory(byval data as const any ptr, byval sizeInBytes as uinteger) as sfFont ptr
declare function sfFont_createFromStream(byval stream as sfInputStream ptr) as sfFont ptr
declare function sfFont_copy(byval font as const sfFont ptr) as sfFont ptr
declare sub      sfFont_destroy(byval font as sfFont ptr)
declare function sfFont_getGlyph(byval font as sfFont ptr, byval codePoint as sfUint32, byval characterSize as ulong, byval bold as sfBool) as sfGlyph
declare function sfFont_getKerning(byval font as sfFont ptr, byval first as sfUint32, byval second as sfUint32, byval characterSize as ulong) as single
declare function sfFont_getLineSpacing(byval font as sfFont ptr, byval characterSize as ulong) as single
declare function sfFont_getUnderlinePosition(byval font as sfFont ptr, byval characterSize as ulong) as single
declare function sfFont_getUnderlineThickness(byval font as sfFont ptr, byval characterSize as ulong) as single
declare function sfFont_getTexture(byval font as sfFont ptr, byval characterSize as ulong) as const sfTexture ptr  
declare function sfFont_getInfo(byval font as const sfFont ptr) as sfFontInfo

end extern

#endif ' FBSFML_FONT_BI
