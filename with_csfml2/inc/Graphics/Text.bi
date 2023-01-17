#ifndef SFML_TEXT_BI
#define SFML_TEXT_BI

' Headers
#include once "inc/Graphics/Export.bi"
#include once "inc/Graphics/Color.bi"
#include once "inc/Graphics/Rect.bi"
#include once "inc/Graphics/Types.bi"
#include once "inc/Graphics/Transform.bi"
#include once "inc/System/Vector2.bi"

type sfTextStyle as long
enum
  sfTextRegular       = 0       ' Regular characters, no style
  sfTextBold          = 1 shl 0 ' Bold characters
  sfTextItalic        = 1 shl 1 ' Italic characters
  sfTextUnderlined    = 1 shl 2 ' Underlined characters
  sfTextStrikeThrough = 1 shl 3 ' Strike through characters
end enum

extern "C" 

' Create a new text
declare function sfText_create() as sfText ptr
' Copy an existing text
declare function sfText_copy(byval text as const sfText ptr) as sfText ptr
' Destroy an existing text
declare sub      sfText_destroy(byval text as sfText ptr)
' Set the position of a text
declare sub      sfText_setPosition(byval text as sfText ptr, byval position as sfVector2f)
' Set the orientation of a text
declare sub      sfText_setRotation(byval text as sfText ptr, byval  angle as single)
' Set the scale factors of a text
declare sub      sfText_setScale(byval text as sfText ptr, byval scale as sfVector2f)
' Set the local origin of a text
declare sub      sfText_setOrigin(byval text as sfText ptr, byval origin as sfVector2f)
' Get the position of a text
declare function sfText_getPosition(byval text as const sfText ptr) as sfVector2f
' Get the orientation of a text
declare function sfText_getRotation(byval text as const sfText ptr) as single
' Get the current scale of a text
declare function sfText_getScale(byval text as const sfText ptr) as sfVector2f
' Get the local origin of a text
declare function sfText_getOrigin(byval text as const sfText ptr) as sfVector2f
' Move a text by a given offset
declare sub      sfText_move(byval text as sfText ptr, byval offset as sfVector2f)
' Rotate a text
declare sub      sfText_rotate(byval text as sfText ptr, byval angle as single)
' Scale a text
declare sub      sfText_scale(byval text as sfText ptr, byval factors as sfVector2f)
' Get the combined transform of a text
declare function sfText_getTransform(byval text as const sfText ptr) as sfTransform 
' Get the inverse of the combined transform of a text
declare function sfText_getInverseTransform(byval text as const sfText ptr) as sfTransform 
' Set the string of a text (byval from an ANSI string)
declare sub      sfText_setString(byval text as sfText ptr, byval string_ as const zstring ptr)
' Set the string of a text (byval from a unicode string)
declare sub      sfText_setUnicodeString(byval text as sfText ptr, byval string_ as const ulong ptr)
' Set the font of a text
declare sub      sfText_setFont(byval text as sfText ptr, byval font as const sfFont ptr)
' Set the character size of a text
declare sub      sfText_setCharacterSize(byval text as sfText ptr, byval size as ulong)
' Set the style of a text
declare sub      sfText_setStyle(byval text as sfText ptr, byval style as ulong)
' Set the global color of a text
declare sub      sfText_setColor(byval text as sfText ptr, byval color as sfColor)
' Get the string of a text (byval returns an ANSI string)
declare function sfText_getString(byval text as const sfText ptr) as const zstring ptr 
' Get the string of a text (byval returns a unicode string)
declare function sfText_getUnicodeString(byval text as const sfText ptr) as ulong ptr
' Get the font used by a text
declare function sfText_getFont(byval text as const sfText ptr) as const sfFont ptr 
' Get the size of the characters of a text
declare function sfText_getCharacterSize(byval text as const sfText ptr) as ulong
' Get the style of a text
declare function sfText_getStyle(byval text as const sfText ptr) as ulong
' Get the global color of a text
declare function sfText_getColor(byval text as const sfText ptr) as sfColor
' Return the position of the \a index-th character in a text
declare function sfText_findCharacterPos(byval text as const sfText ptr, byval index as uinteger) as sfVector2f
' Get the local bounding rectangle of a text
declare function sfText_getLocalBounds(byval text as const sfText ptr) as sfFloatRect
' Get the global bounding rectangle of a text
declare function sfText_getGlobalBounds(byval text as const sfText ptr) as sfFloatRect

end extern

#endif ' SFML_TEXT_BI
