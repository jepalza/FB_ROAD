#ifndef FBSFML_SOUND_BI
#define FBSFML_SOUND_BI

#include once "inc/Audio/Export.bi"
#include once "inc/Audio/SoundStatus.bi"
#include once "inc/Audio/Types.bi"
#include once "inc/System/Time.bi"
#include once "inc/System/Vector3.bi"

extern "C"

declare function sfSound_create() as sfSound ptr
declare function sfSound_copy(byval sound as const sfSound ptr) as sfSound ptr
declare sub      sfSound_destroy(byval sound as sfSound ptr)
declare sub      sfSound_play(byval sound as sfSound ptr)
declare sub      sfSound_pause(byval sound as sfSound ptr)
declare sub      sfSound_stop(byval sound as sfSound ptr)
declare sub      sfSound_setBuffer(byval sound as sfSound ptr, byval buffer as const sfSoundBuffer ptr)
declare function sfSound_getBuffer(byval sound as const sfSound ptr) as const sfSoundBuffer ptr
declare sub      sfSound_setLoop(byval sound as sfSound ptr, byval loop as sfBool)
declare function sfSound_getLoop(byval sound as const sfSound ptr) as sfBool
declare function sfSound_getStatus(byval sound as const sfSound ptr) as sfSoundStatus
declare sub      sfSound_setPitch(byval sound as sfSound ptr, byval pitch as single)
declare sub      sfSound_setVolume(byval sound as sfSound ptr, byval volume as single)
declare sub      sfSound_setPosition(byval sound as sfSound ptr, byval position as sfVector3f)
declare sub      sfSound_setRelativeToListener(byval sound as sfSound ptr, byval relative as sfBool)
declare sub      sfSound_setMinDistance(byval sound as sfSound ptr, byval distance as single)
declare sub      sfSound_setAttenuation(byval sound as sfSound ptr, byval attenuation as single)
declare sub      sfSound_setPlayingOffset(byval sound as sfSound ptr, byval timeOffset as sfTime)
declare function sfSound_getPitch(byval sound as const sfSound ptr) as single
declare function sfSound_getVolume(byval sound as const sfSound ptr) as single
declare function sfSound_getPosition(byval sound as const sfSound ptr) as sfVector3f
declare function sfSound_isRelativeToListener(byval sound as const sfSound ptr) as sfBool 
declare function sfSound_getMinDistance(byval sound as const sfSound ptr) as single
declare function sfSound_getAttenuation(byval sound as const sfSound ptr) as single
declare function sfSound_getPlayingOffset(byval sound as const sfSound ptr) as sfTime 

end extern

#endif ' FBSFML_SOUND_BI
