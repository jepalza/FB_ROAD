#ifndef FBSFML_SOUNDRECORDER_BI
#define FBSFML_SOUNDRECORDER_BI

#include once "inc/Audio/Export.bi"
#include once "inc/Audio/Types.bi"
#include once "inc/System/Time.bi"

type sfSoundRecorderStartCallback as function cdecl (byval userdata as any ptr) as sfBool
type sfSoundRecorderProcessCallback as function cdecl (byval as const sfInt16 ptr, byval as integer, byval userdata as any ptr) as sfBool
type sfSoundRecorderStopCallback as sub cdecl (byval userdata as any ptr)

extern "C"

declare function sfSoundRecorder_create(byval onStart as sfSoundRecorderStartCallback, byval onProcess as sfSoundRecorderProcessCallback, byval onStop as sfSoundRecorderStopCallback, byval userData as any ptr) as sfSoundRecorder ptr
declare sub      sfSoundRecorder_destroy(byval soundRecorder as sfSoundRecorder ptr)
declare function sfSoundRecorder_start(byval soundRecorder as sfSoundRecorder ptr, byval sampleRate as ulong) as sfBool
declare sub      sfSoundRecorder_stop(byval soundRecorder as sfSoundRecorder ptr)
declare function sfSoundRecorder_getSampleRate(byval soundRecorder as const sfSoundRecorder ptr) as ulong
declare function sfSoundRecorder_isAvailable() as sfBool
declare sub      sfSoundRecorder_setProcessingInterval(byval soundRecorder as sfSoundRecorder ptr, byval interval as sfTime)
declare function sfSoundRecorder_getAvailableDevices(byval count as uinteger ptr) as const zstring ptr ptr
declare function sfSoundRecorder_getDefaultDevice() as const zstring ptr 
declare function sfSoundRecorder_setDevice(byval soundRecorder as sfSoundRecorder ptr, byval name as const zstring ptr) as sfBool
declare function sfSoundRecorder_getDevice(byval soundRecorder as sfSoundRecorder ptr) as const zstring ptr 

end extern

#endif ' FBSFML_SOUNDRECORDER_BI
