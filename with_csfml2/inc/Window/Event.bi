#ifndef FBSFML_EVENT_BI
#define FBSFML_EVENT_BI

' Headers
#include "inc/Window/Export.bi"
#include "inc/Window/Joystick.bi"
#include "inc/Window/Keyboard.bi"
#include "inc/Window/Mouse.bi"
#include "inc/Window/Sensor.bi"


' Definition of all the event types
type sfEventType as long
enum
    sfEvtClosed,                 ' The window requested to be closed (no data)
    sfEvtResized,                ' The window was resized (data in event.size)
    sfEvtLostFocus,              ' The window lost the focus (no data)
    sfEvtGainedFocus,            ' The window gained the focus (no data)
    sfEvtTextEntered,            ' A character was entered (data in event.text)
    sfEvtKeyPressed,             ' A key was pressed (data in event.key)
    sfEvtKeyReleased,            ' A key was released (data in event.key)
    sfEvtMouseWheelMoved,        ' The mouse wheel was scrolled (data in event.mouseWheel)
    sfEvtMouseButtonPressed,     ' A mouse button was pressed (data in event.mouseButton)
    sfEvtMouseButtonReleased,    ' A mouse button was released (data in event.mouseButton)
    sfEvtMouseMoved,             ' The mouse cursor moved (data in event.mouseMove)
    sfEvtMouseEntered,           ' The mouse cursor entered the area of the window (no data)
    sfEvtMouseLeft,              ' The mouse cursor left the area of the window (no data)
    sfEvtJoystickButtonPressed,  ' A joystick button was pressed (data in event.joystickButton)
    sfEvtJoystickButtonReleased, ' A joystick button was released (data in event.joystickButton)
    sfEvtJoystickMoved,          ' The joystick moved along an axis (data in event.joystickMove)
    sfEvtJoystickConnected,      ' A joystick was connected (data in event.joystickConnect)
    sfEvtJoystickDisconnected,   ' A joystick was disconnected (data in event.joystickConnect)
    sfEvtTouchBegan,             ' A touch event began (data in event.touch)
    sfEvtTouchMoved,             ' A touch moved (data in event.touch)
    sfEvtTouchEnded,             ' A touch event ended (data in event.touch)
    sfEvtSensorChanged,          ' A sensor value changed (data in event.sensor)

    sfEvtCount                  ' Keep last -- the total number of event types
end enum

type sfKeyEvent
  as sfEventType type
  as sfKeyCode   code
  as sfBool      alt
  as sfBool      control
  as sfBool      shift
  as sfBool      system
end type

type sfTextEvent
  as sfEventType type
  as sfUint32    unicode
end type

type sfMouseMoveEvent
  as sfEventType type
  as long        x
  as long        y
end type 

type sfMouseButtonEvent
  as sfEventType   type
  as sfMouseButton button
  as long          x
  as long          y
end type

type sfMouseWheelEvent
  as sfEventType type
  as long        delta
  as long        x
  as long        y
end type

type sfJoystickMoveEvent
  as sfEventType    type
  as ulong          joystickId
  as sfJoystickAxis axis
  as single         position
end type

type sfJoystickButtonEvent
  as sfEventType  type
  as ulong joystickId
  as ulong button
end type 

type sfJoystickConnectEvent
  as sfEventType  type
  as ulong joystickId
end type

type sfSizeEvent
  as sfEventType  type
  as ulong width
  as ulong height
end type

type sfTouchEvent
  as sfEventType  type
  as ulong finger
  as long  x
  as long  y
end type

type sfSensorEvent
  as sfEventType  type
  as sfSensorType sensorType
  as single x
  as single y
  as single z
end type 

'  sfEvent defines a system event and its parameters
union sfEvent
  as sfEventType            type            ' Type of the event
  as sfSizeEvent            size            ' Size event parameters
  as sfKeyEvent             key             ' Key event parameters
  as sfTextEvent            text            ' Text event parameters
  as sfMouseMoveEvent       mouseMove       ' Mouse move event parameters
  as sfMouseButtonEvent     mouseButton     ' Mouse button event parameters
  as sfMouseWheelEvent      mouseWheel      ' Mouse wheel event parameters
  as sfJoystickMoveEvent    joystickMove    ' Joystick move event parameters
  as sfJoystickButtonEvent  joystickButton  ' Joystick button event parameters
  as sfJoystickConnectEvent joystickConnect ' Joystick (dis)connect event parameters
  as sfTouchEvent           touch           ' Touch events parameters
  as sfSensorEvent          sensor          ' Sensor event parameters
end union

#endif ' FBSFML_EVENT_BI
