#ifndef FBSFML_GLYPH_BI
#define FBSFML_GLYPH_BI

#include "inc/Graphics/Rect.bi"

type sfGlyph
  as single      advance     ' Offset to move horizontically to the next character
  as sfFloatRect bounds      ' Bounding rectangle of the glyph, in coordinates relative to the baseline
  as sfIntRect   textureRect ' Texture coordinates of the glyph inside the font's image
end type

#endif ' FBSFML_GLYPH_BI
