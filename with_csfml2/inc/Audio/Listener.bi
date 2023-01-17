#ifndef FBSFML_LISTENER_BI
#define FBSFML_LISTENER_BI

#include once "inc/Audio/Export.bi"
#include once "inc/System/Vector3.bi"

extern "C"

declare sub      sfListener_setGlobalVolume(byval volume as single)
declare function sfListener_getGlobalVolume() as single
declare sub      sfListener_setPosition(byval position as sfVector3f)
declare function sfListener_getPosition() as sfVector3f
declare sub      sfListener_setDirection(byval direction as sfVector3f)
declare function sfListener_getDirection() as sfVector3f
declare sub      sfListener_setUpVector(byval upVector as sfVector3f)
declare function sfListener_getUpVector() as sfVector3f

end extern

#endif ' FBSFML_LISTENER_BI
