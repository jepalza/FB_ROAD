#ifndef FBSFML_MOUSE_BI
#define FBSFML_MOUSE_BI

' Headers
#include "inc/Window/Types.bi"
#include "inc/System/Vector2.bi"

type sfMouseButton as long
enum
  sfMouseLeft,       ' The left mouse button
  sfMouseRight,      ' The right mouse button
  sfMouseMiddle,     ' The middle (wheel) mouse button
  sfMouseXButton1,   ' The first extra mouse button
  sfMouseXButton2,   ' The second extra mouse button
  sfMouseButtonCount ' Keep last -- the total number of mouse buttons
end enum

extern "C"

declare function sfMouse_isButtonPressed(byval button as sfMouseButton) as sfBool  
declare function sfMouse_getPosition(byval relativeTo as const sfWindow ptr) as sfVector2i
declare sub      sfMouse_setPosition(byval position as sfVector2i, byval relativeTo as const sfWindow ptr)

end extern 

#endif ' FBSFML_MOUSE_NI
