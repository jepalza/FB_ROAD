#ifndef FBSFML_SOUNDBUFFER_BI
#define FBSFML_SOUNDBUFFER_BI

#include once "inc/Audio/Export.bi"
#include once "inc/Audio/Types.bi"
#include once "inc/System/InputStream.bi"
#include once "inc/System/Time.bi"

extern "C"

declare function sfSoundBuffer_createFromFile(byval filename as const zstring ptr) as sfSoundBuffer ptr 
declare function sfSoundBuffer_createFromMemory(byval data as const any ptr, byval sizeInBytes as uinteger) as sfSoundBuffer ptr
declare function sfSoundBuffer_createFromStream(byval stream as sfInputStream ptr) as sfSoundBuffer ptr
declare function sfSoundBuffer_createFromSamples(byval samples as const sfInt16 ptr, byval sampleCount as integer, byval channelCount as ulong, byval sampleRate as ulong) as sfSoundBuffer ptr
declare function sfSoundBuffer_copy(byval soundBuffer as const sfSoundBuffer ptr) as sfSoundBuffer ptr
declare sub      sfSoundBuffer_destroy(byval soundBuffer as sfSoundBuffer ptr)
declare function sfSoundBuffer_saveToFile(byval soundBuffer as const sfSoundBuffer ptr, byval filename as const zstring ptr) as sfBool
declare function sfSoundBuffer_getSamples(byval soundBuffer as const sfSoundBuffer ptr) as const sfInt16 ptr 
declare function sfSoundBuffer_getSampleCount(byval soundBuffer as const sfSoundBuffer ptr) as integer
declare function sfSoundBuffer_getSampleRate(byval soundBuffer as const sfSoundBuffer ptr) as ulong
declare function sfSoundBuffer_getChannelCount(byval soundBuffer as const sfSoundBuffer ptr) as ulong
declare function sfSoundBuffer_getDuration(byval soundBuffer as const sfSoundBuffer ptr) as sfTime 

end extern

#endif ' SFML_SOUNDBUFFER_BI
