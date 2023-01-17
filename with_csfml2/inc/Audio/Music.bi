#ifndef FBSFML_MUSIC_BI
#define FBSFML_MUSIC_BI

#include once "inc/Audio/Export.bi"
#include once "inc/Audio/SoundStatus.bi"
#include once "inc/Audio/Types.bi"
#include once "inc/System/InputStream.bi"
#include once "inc/System/Time.bi"
#include once "inc/System/Vector3.bi"

extern "C"

declare function sfMusic_createFromFile(byval filename as const zstring ptr) as sfMusic ptr
declare function sfMusic_createFromMemory(byval data as const any ptr, byval sizeInBytes as integer) as sfMusic ptr
declare function sfMusic_createFromStream(byval stream as sfInputStream ptr) as sfMusic ptr
declare sub      sfMusic_destroy(byval music as sfMusic ptr)
declare sub      sfMusic_setLoop(byval music as sfMusic ptr, byval loop as sfBool)
declare function sfMusic_getLoop(byval music as const sfMusic ptr) as sfBool
declare function sfMusic_getDuration(byval music as const sfMusic ptr) as sfTime 
declare sub      sfMusic_play(byval music as sfMusic ptr)
declare sub      sfMusic_pause(byval music as sfMusic ptr)
declare sub      sfMusic_stop(byval music as sfMusic ptr)
declare function sfMusic_getChannelCount(byval music as const sfMusic ptr) as ulong
declare function sfMusic_getSampleRate(byval music as const sfMusic ptr) as ulong
declare function sfMusic_getStatus(byval music as const sfMusic ptr) as sfSoundStatus
declare function sfMusic_getPlayingOffset(byval music as const sfMusic ptr) as sfTime 
declare sub      sfMusic_setPitch(byval music as sfMusic ptr, byval pitch as single)
declare sub      sfMusic_setVolume(byval music as sfMusic ptr, byval volume as single)
declare sub      sfMusic_setPosition(byval music as sfMusic ptr, byval position as sfVector3f)
declare sub      sfMusic_setRelativeToListener(byval music as sfMusic ptr, byval relative as sfBool)
declare sub      sfMusic_setMinDistance(byval music as sfMusic ptr, byval distance as single)
declare sub      sfMusic_setAttenuation(byval music as sfMusic ptr, byval attenuation as single)
declare sub      sfMusic_setPlayingOffset(byval music as sfMusic ptr, byval timeOffset as sfTime)
declare function sfMusic_getPitch(byval music as const sfMusic ptr) as single
declare function sfMusic_getVolume(byval music as const sfMusic ptr) as single
declare function sfMusic_getPosition(byval music as const sfMusic ptr) as sfVector3f 
declare function sfMusic_isRelativeToListener(byval music as const sfMusic ptr) as sfBool
declare function sfMusic_getMinDistance(byval music as const sfMusic ptr) as single
declare function sfMusic_getAttenuation(byval music as const sfMusic ptr) as single

end extern

#endif ' FBSFML_MUSIC_BI
