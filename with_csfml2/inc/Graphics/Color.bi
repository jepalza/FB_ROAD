#ifndef FBSFML_COLOR_BI
#define FBSFML_COLOR_BI

#include "inc/Graphics/Export.bi"

' Utility class for manpulating RGBA colors
type sfColor
  as sfUint8 r,g,b,a
end type

extern sfBlack alias "sfBlack" as sfColor
extern sfWhite alias "sfWhite"  as sfColor
extern sfRed alias "sfRed"  as sfColor
extern sfGreen alias "sfGreen"  as sfColor
extern sfBlue alias "sfBlue"  as sfColor
extern sfYellow alias "sfYellow"  as sfColor
extern sfMagenta alias "sfMagenta"  as sfColor
extern sfCyan alias "sfCyan"  as sfColor
extern sfTransparent alias "sfTransparent"  as sfColor

extern "C"

declare function sfColor_fromRGB(byval r as sfUint8, byval g as sfUint8, byval b as sfUint8) as sfColor
declare function sfColor_fromRGBA(byval r as sfUint8, byval g as sfUint8, byval b as sfUint8, byval a as sfUint8) as sfColor
declare function sfColor_add(byval c1 as sfColor, byval c2 as sfColor) as sfColor
declare function sfColor_modulate(byval c1 as sfColor, byval c2 as sfColor) as sfColor

end extern

#endif ' FBSFML_COLOR_BI
