#ifndef FBSFML_SOUNDBUFFERRECORDER_BI
#define FBSFML_SOUNDBUFFERRECORDER_BI

#include once "inc/Audio/Export.bi"
#include once "inc/Audio/Types.bi"

extern "C"

declare function sfSoundBufferRecorder_create() as sfSoundBufferRecorder ptr
declare sub      sfSoundBufferRecorder_destroy(byval soundBufferRecorder as sfSoundBufferRecorder ptr)
declare sub      sfSoundBufferRecorder_start(byval soundBufferRecorder as sfSoundBufferRecorder ptr, byval sampleRate as ulong)
declare sub      sfSoundBufferRecorder_stop(byval soundBufferRecorder as sfSoundBufferRecorder ptr)
declare function sfSoundBufferRecorder_getSampleRate(byval soundBufferRecorder as const sfSoundBufferRecorder ptr) as ulong
declare function sfSoundBufferRecorder_getBuffer(byval soundBufferRecorder as const sfSoundBufferRecorder ptr) as const sfSoundBuffer ptr

end extern

#endif ' FBSFML_SOUNDBUFFERRECORDER_BI
