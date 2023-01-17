#ifndef SFML_RENDERWINDOW_BI
#define SFML_RENDERWINDOW_BI

' Headers
#include once "inc/System/Vector2.bi"

#include once "inc/Graphics/Export.bi"
#include once "inc/Graphics/Color.bi"
#include once "inc/Graphics/Rect.bi"
#include once "inc/Graphics/Types.bi"
#include once "inc/Graphics/PrimitiveType.bi"
#include once "inc/Graphics/RenderStates.bi"
#include once "inc/Graphics/Vertex.bi"

#include once "inc/Window/Event.bi"
#include once "inc/Window/VideoMode.bi"
#include once "inc/Window/WindowHandle.bi"
#include once "inc/Window/Window.bi"

extern "C"

' Construct a new render window
declare function sfRenderWindow_create(byval mode as sfVideoMode, byval title as const zstring ptr, byval style as ulong, byval settings as const sfContextSettings ptr) as sfRenderWindow ptr
' Construct a new render window (byval with a UTF-32 title)
declare function sfRenderWindow_createUnicode(byval mode as sfVideoMode, byval title as const sfUint32, byval style as sfUint32, byval settings as const sfContextSettings ptr) as sfRenderWindow ptr
' Construct a render window from an existing control
declare function sfRenderWindow_createFromHandle(byval handle as sfWindowHandle, byval settings as const sfContextSettings ptr) as sfRenderWindow ptr
' Destroy an existing render window
declare sub      sfRenderWindow_destroy(byval renderWindow as sfRenderWindow ptr)
' Close a render window (byval but doesn't destroy the internal data)
declare sub      sfRenderWindow_close(byval renderWindow as sfRenderWindow ptr)
' Tell whether or not a render window is opened
declare function sfRenderWindow_isOpen(byval renderWindow as const sfRenderWindow ptr) as sfBool
' Get the creation settings of a render window
declare function sfRenderWindow_getSettings(byval renderWindow as const sfRenderWindow ptr) as sfContextSettings
' Get the event on top of event queue of a render window, byval if any, byval and pop it
declare function sfRenderWindow_pollEvent(byval renderWindow as sfRenderWindow ptr, byval event as sfEvent ptr) as sfBool
' Wait for an event and return it
declare function sfRenderWindow_waitEvent(byval renderWindow as sfRenderWindow ptr, byval event as sfEvent ptr) as sfBool
' Get the position of a render window
declare function sfRenderWindow_getPosition(byval renderWindow as const sfRenderWindow ptr) as sfVector2i
' Change the position of a render window on screen
declare sub      sfRenderWindow_setPosition(byval renderWindow as sfRenderWindow ptr, byval position as sfVector2i)
' Get the size of the rendering region of a render window
declare function sfRenderWindow_getSize(byval renderWindow as const sfRenderWindow ptr) as sfVector2u
' Change the size of the rendering region of a render window
declare sub      sfRenderWindow_setSize(byval renderWindow as sfRenderWindow ptr, byval size as sfVector2u)
' Change the title of a render window
declare sub      sfRenderWindow_setTitle(byval renderWindow as sfRenderWindow ptr, byval title as const zstring ptr)
' Change the title of a render window (byval with a UTF-32 string)
declare sub      sfRenderWindow_setUnicodeTitle(byval renderWindow as sfRenderWindow ptr, byval title as const sfUint32)
' Change a render window's icon
declare sub      sfRenderWindow_setIcon(byval renderWindow as sfRenderWindow ptr, byval w as ulong, byval h as ulong, byval pixels as const sfUint8 ptr)
' Show or hide a render window
declare sub      sfRenderWindow_setVisible(byval renderWindow as sfRenderWindow ptr, byval visible as sfBool)
' Show or hide the mouse cursor on a render window
declare sub      sfRenderWindow_setMouseCursorVisible(byval renderWindow as sfRenderWindow ptr, byval show as sfBool)
' Enable / disable vertical synchronization on a render window
declare sub      sfRenderWindow_setVerticalSyncEnabled(byval renderWindow as sfRenderWindow ptr, byval enabled as sfBool)
' Enable or disable automatic key-repeat for keydown events
declare sub      sfRenderWindow_setKeyRepeatEnabled(byval renderWindow as sfRenderWindow ptr, byval enabled as sfBool)
' Activate or deactivate a render window as the current target for rendering
declare function sfRenderWindow_setActive(byval renderWindow as sfRenderWindow ptr, byval active as sfBool) as sfBool
' Request the current render window to be made the active foreground window
declare sub      sfRenderWindow_requestFocus(byval renderWindow as sfRenderWindow ptr)
' Check whether the render window has the input focus
declare function sfRenderWindow_hasFocus(byval renderWindow as const sfRenderWindow ptr) as sfBool
' Display a render window on screen
declare sub      sfRenderWindow_display(byval renderWindow as sfRenderWindow ptr)
' Limit the framerate to a maximum fixed frequency for a render window
declare sub      sfRenderWindow_setFramerateLimit(byval renderWindow as sfRenderWindow ptr, byval limit as ulong)
' Change the joystick threshold, byval ie. the value below which no move event will be generated
declare sub      sfRenderWindow_setJoystickThreshold(byval renderWindow as sfRenderWindow ptr, byval threshold as single)
' Retrieve the OS-specific handle of a render window
declare function sfRenderWindow_getSystemHandle(byval renderWindow as const sfRenderWindow ptr) as sfWindowHandle
' Clear a render window with the given color
declare sub      sfRenderWindow_clear(byval renderWindow as sfRenderWindow ptr, byval color as sfColor)
' Change the current active view of a render window
declare sub      sfRenderWindow_setView(byval renderWindow as sfRenderWindow ptr, byval view as const sfView ptr)
' Get the current active view of a render window
declare function sfRenderWindow_getView(byval renderWindow as const sfRenderWindow ptr) as const sfView ptr
' Get the default view of a render window
declare function sfRenderWindow_getDefaultView(byval renderWindow as const sfRenderWindow ptr) as const sfView ptr
' Get the viewport of a view applied to this target
declare function sfRenderWindow_getViewport(byval renderWindow as const sfRenderWindow ptr, byval view as const sfView ptr) as sfIntRect
' Convert a point from window coordinates to world coordinates
declare function sfRenderWindow_mapPixelToCoords(byval renderWindow as const sfRenderWindow ptr, byval point as sfVector2i, byval view as const sfView ptr) as sfVector2f
' Convert a point from world coordinates to window coordinates
declare function sfRenderWindow_mapCoordsToPixel(byval renderWindow as const sfRenderWindow ptr, byval point as sfVector2f, byval view as const sfView ptr) as sfVector2i
' Draw a drawable object to the render-target
declare sub      sfRenderWindow_drawSprite(byval renderWindow as sfRenderWindow ptr, byval sprite as const sfSprite ptr, byval states as const sfRenderStates ptr)
declare sub      sfRenderWindow_drawText(byval renderWindow as sfRenderWindow ptr, byval text as const sfText ptr, byval states as const sfRenderStates ptr)
declare sub      sfRenderWindow_drawShape(byval renderWindow as sfRenderWindow ptr, byval shape as const sfShape ptr, byval states as const sfRenderStates ptr)
declare sub      sfRenderWindow_drawCircleShape(byval renderWindow as sfRenderWindow ptr, byval shape as const sfCircleShape ptr, byval states as const sfRenderStates ptr)
declare sub      sfRenderWindow_drawConvexShape(byval renderWindow as sfRenderWindow ptr, byval shape as const sfConvexShape ptr, byval states as const sfRenderStates ptr)
declare sub      sfRenderWindow_drawRectangleShape(byval renderWindow as sfRenderWindow ptr, byval shape as const sfRectangleShape ptr, byval states as const sfRenderStates ptr)
declare sub      sfRenderWindow_drawVertexArray(byval renderWindow as sfRenderWindow ptr, byval array as const sfVertexArray ptr, byval states as const sfRenderStates ptr)
' Draw primitives defined by an array of vertices to a render window
declare sub      sfRenderWindow_drawPrimitives(byval renderWindow as sfRenderWindow ptr, byval vertices as const sfVertex ptr, byval vertexCount as ulong, byval type as sfPrimitiveType, byval states as const sfRenderStates ptr)
' Save the current OpenGL render states and matrices
declare sub      sfRenderWindow_pushGLStates(byval renderWindow as sfRenderWindow ptr)
' Restore the previously saved OpenGL render states and matrices
declare sub      sfRenderWindow_popGLStates(byval renderWindow as sfRenderWindow ptr)
' Reset the internal OpenGL states so that the target is ready for drawing
declare sub      sfRenderWindow_resetGLStates(byval renderWindow as sfRenderWindow ptr)
' Copy the current contents of a render window to an image
declare function sfRenderWindow_capture(byval renderWindow as const sfRenderWindow ptr) as sfImage ptr
' Get the current position of the mouse relative to a render-window
declare function sfMouse_getPositionRenderWindow(byval relativeTo as const sfRenderWindow ptr) as sfVector2i
' Set the current position of the mouse relative to a render window
declare sub      sfMouse_setPositionRenderWindow(byval position as sfVector2i, byval relativeTo as const sfRenderWindow ptr)
' Get the current position of a touch in window coordinates
declare function sfTouch_getPositionRenderWindow(byval finger as ulong, byval relativeTo as const sfRenderWindow ptr) as sfVector2i

end extern

#endif ' SFML_RENDERWINDOW_BI
