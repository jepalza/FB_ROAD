#ifndef FBSFML_JOYSTICKIDENDIFICATIONBI_
#define FBSFML_JOYSTICKIDENDIFICATION_BI

' sfJoystickIdentification holds a joystick's identification
type sfJoystickIdentification
  as const zstring ptr name
  as ulong vendorId
  as ulong productId
end type 

#endif ' FBSFML_JOYSTICKIDENDIFICATION_BI
