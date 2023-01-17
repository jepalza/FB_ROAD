#ifndef FBSFML_WINDOW_BI
#define FBSFML_WINDOW_BI

#include once "inc/Window/Export.bi"
#include once "inc/Window/Event.bi"
#include once "inc/Window/VideoMode.bi"
#include once "inc/Window/WindowHandle.bi"
#include once "inc/Window/Types.bi"
#include once "inc/System/Vector2.bi"

type sfWindowStyle as long
enum
  sfNone         = 0 ' No border / title bar (this flag and all others are mutually exclusive)
  sfTitlebar     = 1 ' Title bar + fixed border
  sfResize       = 2 ' Titlebar + resizable border + maximize button
  sfClose        = 4 ' Titlebar + close button
  sfFullscreen   = 8 ' Fullscreen mode (this flag and all others are mutually exclusive)
  sfDefaultStyle = sfTitlebar or sfResize or sfClose ' Default window style
end enum



type sfContextSettings
  as ulong depthBits         ' Bits of the depth buffer
  as ulong stencilBits       ' Bits of the stencil buffer
  as ulong antialiasingLevel ' Level of antialiasing
  as ulong majorVersion      ' Major number of the context version to create
  as ulong minorVersion      ' Minor number of the context version to create
end type

extern "C"

declare function sfWindow_create(byval mode as sfVideoMode, byval title as const zstring ptr, byval style as sfUint32, byval settings as const sfContextSettings ptr ) as sfWindow ptr 
declare function sfWindow_createUnicode(byval mode as sfVideoMode, byval title as const sfUint32 ptr, byval style as sfUint32, byval settings as const sfContextSettings ptr) as sfWindow ptr
declare function sfWindow_createFromHandle(byval  handle as sfWindowHandle, byval settings as const sfContextSettings ptr) as sfWindow ptr
declare sub      sfWindow_destroy(byval win as sfWindow ptr)
declare sub      sfWindow_close(byval win as sfWindow ptr)
declare function sfWindow_isOpen(byval win as const sfWindow ptr) as sfBool
declare function sfWindow_getSettings(byval win as const sfWindow ptr) as sfContextSettings
declare function sfWindow_pollEvent(byval win as sfWindow ptr, byval event as sfEvent ptr) as sfBool
declare function sfWindow_waitEvent(byval win as sfWindow ptr, byval event as sfEvent ptr) as sfBool 
declare function sfWindow_getPosition(byval win as const sfWindow ptr) as sfVector2i 
declare sub      sfWindow_setPosition(byval win as sfWindow ptr, byval position as sfVector2i)
declare function sfWindow_getSize(byval win as const sfWindow ptr) as sfVector2u 
declare sub      sfWindow_setSize(byval win as sfWindow ptr, byval size as sfVector2u)
declare sub      sfWindow_setTitle(byval win as sfWindow ptr, byval title as const zstring ptr)
declare sub      sfWindow_setUnicodeTitle(byval win as sfWindow ptr, byval title as const sfUint32 ptr)
declare sub      sfWindow_setIcon(byval win as sfWindow ptr, byval width as ulong, byval height as ulong, byval pixels as const sfUint8 ptr)
declare sub      sfWindow_setVisible(byval win as sfWindow ptr, byval visible as sfBool)
declare sub      sfWindow_setMouseCursorVisible(byval win as sfWindow ptr, byval visible as sfBool)
declare sub      sfWindow_setVerticalSyncEnabled(byval win as sfWindow ptr, byval enabled as sfBool)
declare sub      sfWindow_setKeyRepeatEnabled(byval win as sfWindow ptr, byval enabled as sfBool)
declare function sfWindow_setActive(byval win as sfWindow ptr, byval active as sfBool) as sfBool
declare sub      sfWindow_requestFocus(byval win as sfWindow ptr)
declare function sfWindow_hasFocus(byval win as const sfWindow ptr) as sfBool 
declare sub      sfWindow_display(byval win as sfWindow ptr)
declare sub      sfWindow_setFramerateLimit(byval win as sfWindow ptr, byval limit as ulong)
declare sub      sfWindow_setJoystickThreshold(byval win as sfWindow ptr, byval threshold as single)
declare function sfWindow_getSystemHandle(byval win as const sfWindow ptr) as sfWindowHandle

end extern

#endif ' FBSFML_WINDOW_BI
