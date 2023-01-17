#ifndef FBSFML_SOUNDSTATUS_BI
#define FBSFML_SOUNDSTATUS_BI

#include once "inc/Audio/Export.bi"

' Enumeration of statuses for sounds and musics
type sfSoundStatus as long
enum
  sfStopped, ' Sound / music is not playing
  sfPaused,  ' Sound / music is paused
  sfPlaying  ' Sound / music is playing
end enum 

#endif ' FBSFML_SOUNDSTATUS_BI
