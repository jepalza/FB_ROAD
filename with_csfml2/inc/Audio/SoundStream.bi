#ifndef FBSFML_SOUNDSTREAM_BI
#define FBSFML_SOUNDSTREAM_BI

#include "Audio/Export.bi"
#include "Audio/SoundStatus.bi"
#include "Audio/Types.bi"
#include "System/Time.bi"
#include "System/Vector3.bi"

type sfSoundStreamChunk
  as sfInt16 ptr samples     ' Pointer to the audio samples
  as ulong       sampleCount ' Number of samples pointed by Samples
end type

type sfSoundStreamGetDataCallback as fgunction cdecl (chunk as sfSoundStreamChunk ptr, userdata as any ptr) as sfBool
type sfSoundStreamSeekCallback as sub cdecl ( as sfTime, userdata as any ptr)

extern "C"

declare function sfSoundStream_create(onGetData as sfSoundStreamGetDataCallback, onSeek as sfSoundStreamSeekCallback, channelCount as ulong, sampleRate as ulong, userData as any data) as sfSoundStream ptr
declare sub      sfSoundStream_destroy(soundStream as sfSoundStream ptr)
declare sub      sfSoundStream_play(soundStream as sfSoundStream ptr)
declare sub      sfSoundStream_pause(soundStream as sfSoundStream ptr)
declare sub      sfSoundStream_stop(soundStream as sfSoundStream ptr)
declare function sfSoundStream_getStatus(soundStream as const sfSoundStream ptr) as sfSoundStatus
declare function sfSoundStream_getChannelCount(soundStream as const sfSoundStream ptr) as ulong
declare function sfSoundStream_getSampleRate(soundStream as const sfSoundStream ptr) as ulong
declare sub      sfSoundStream_setPitch(soundStream as sfSoundStream ptr, pitch as single)
declare sub      sfSoundStream_setVolume(soundStream as sfSoundStream ptr, volume as single)
declare sub      sfSoundStream_setPosition(soundStream as sfSoundStream ptr, position as sfVector3f)
declare sub      sfSoundStream_setRelativeToListener(soundStream as sfSoundStream ptr, relative as sfBool)
declare sub      sfSoundStream_setMinDistance(soundStream as sfSoundStream ptr, distance as single)
declare sub      sfSoundStream_setAttenuation(soundStream as sfSoundStream ptr, attenuation as single)
declare sub      sfSoundStream_setPlayingOffset(soundStream as sfSoundStream ptr, timeOffset as sfTime)
declare sub      sfSoundStream_setLoop(soundStream as sfSoundStream ptr, loop as sfBool)
declare function sfSoundStream_getPitch(soundStream as const sfSoundStream ptr) as single
declare function sfSoundStream_getVolume(soundStream as const sfSoundStream ptr) as single
declare function sfSoundStream_getPosition(soundStream as const sfSoundStream ptr) as sfVector3f 
declare function sfSoundStream_isRelativeToListener(soundStream as const sfSoundStream ptr) as sfBool
declare function sfSoundStream_getMinDistance(soundStream as const sfSoundStream ptr) as single
declare function sfSoundStream_getAttenuation(soundStream as const sfSoundStream ptr) as single
declare function sfSoundStream_getLoop(soundStream as const sfSoundStream ptr) as sfBool
declare function sfSoundStream_getPlayingOffset(soundStream as const sfSoundStream ptr) as sfTime

end extern

#endif ' FBSFML_SOUNDSTREAM_BI
