#ifndef FBSFML_TOUCH_BI
#define FBSFML_TOUCH_BI

#include "Window/Types.bi"
#include "System/Vector2.bi"

extern "C"

declare function sfTouch_isDown(finger as ulong) as sfBool
' This function returns the current touch position
' relative to the given window, or desktop if NULL is passed.
declare function sfTouch_getPosition(finger as ulong, relativeTo as const sfWindow ptr) as sfVector2i

end extern

#endif ' FBSFML_TOUCH_BI
