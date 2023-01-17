#ifndef FBSFML_VIDEOMODE_BI
#define FBSFML_VIDEOMODE_BI

'#include "stddef.bi"

type sfVideoMode
  as ulong width        ' Video mode width, in pixels
  as ulong height       ' Video mode height, in pixels
  as ulong bitsPerPixel ' Video mode pixel depth, in bits per pixels
end type

extern "C"

declare function sfVideoMode_getDesktopMode() as sfVideoMode
declare function sfVideoMode_getFullscreenModes(byval Count as integer ptr) as const sfVideoMode ptr
declare function sfVideoMode_isValid(byref mode as sfVideoMode) as sfBool

end extern

#endif ' FBSFML_VIDEOMODE_BI
