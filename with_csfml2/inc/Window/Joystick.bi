#ifndef FBSFML_JOYSTICK_BI
#define FBSFML_JOYSTICK_BI


' Headers
#include "inc/Window/JoystickIdentification.bi"

' Global joysticks capabilities
enum
  sfJoystickCount       = 8,  ' Maximum number of supported joysticks
  sfJoystickButtonCount = 32, ' Maximum number of supported buttons
  sfJoystickAxisCount   = 8   ' Maximum number of supported axes
end enum

' Axes supported by joysticks
type sfJoystickAxis as long
enum
  sfJoystickX,    ' The X axis
  sfJoystickY,    ' The Y axis
  sfJoystickZ,    ' The Z axis
  sfJoystickR,    ' The R axis
  sfJoystickU,    ' The U axis
  sfJoystickV,    ' The V axis
  sfJoystickPovX, ' The X axis of the point-of-view hat
  sfJoystickPovY  ' The Y axis of the point-of-view hat
end enum

extern "C"

declare function sfJoystick_isConnected(byval joystick as ulong) as sfBool  
declare function sfJoystick_getButtonCount(byval joystick as ulong) as ulong
declare function sfJoystick_hasAxis(byval joystick as ulong, byval axis as sfJoystickAxis) as sfBool
declare function sfJoystick_isButtonPressed(byval joystick as ulong, byval button as ulong) as sfBool
declare function sfJoystick_getAxisPosition(byval joystick as ulong, byval axis as sfJoystickAxis) as single
declare function sfJoystick_getIdentification(byval joystick as ulong) as sfJoystickIdentification 
declare sub      sfJoystick_update()

end extern

#endif ' `FBSFML_JOYSTICK_BI
