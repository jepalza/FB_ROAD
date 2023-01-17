#ifndef CSFML_BI
#define CSFML_BI

#include once "inc/Config.bi"
#include once "inc/OpenGL.bi"
#include once "inc/System.bi"
#include once "inc/Window.bi"
#include once "inc/Graphics.bi"
#include once "inc/Audio.bi"
#include once "inc/Network.bi"

#ifdef __FB_WIN32__
 #ifndef __FB_64BIT__
  #libpath "lib/win32"
 #else 
  #libpath "lib/win64"
 #endif  

 #inclib "csfml-system-2"
 #inclib "csfml-window-2"
 #inclib "csfml-graphics-2"
 #inclib "csfml-network-2"
 #inclib "openal32"
 #inclib "libsndfile-1"
 #inclib "csfml-audio-2"
 
#else
  ' linux
 #inclib "csfml-system"
 #inclib "csfml-window"
 #inclib "csfml-graphics"
 #inclib "csfml-network"
 #inclib "csfml-audio"
#endif

#endif ' CSFML_BI

