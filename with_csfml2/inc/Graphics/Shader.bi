#ifndef SFML_SHADER_BI
#define SFML_SHADER_BI

' Headers

#include once "inc/Graphics/Export.bi"
#include once "inc/Graphics/Color.bi"
#include once "inc/Graphics/Transform.bi"
#include once "inc/Graphics/Types.bi"
#include once "inc/System/InputStream.bi"
#include once "inc/System/Vector2.bi"
#include once "inc/System/Vector3.bi"

extern "C"

' Load both the vertex and fragment shaders from files
declare function sfShader_createFromFile(byval vertexShaderFilename as const zstring ptr, byval fragmentShaderFilename as const zstring ptr) as sfShader ptr
' Load both the vertex and fragment shaders from source codes in memory
declare function sfShader_createFromMemory(byval vertexShader as const zstring ptr, byval fragmentShader as const zstring ptr) as sfShader ptr
' Load both the vertex and fragment shaders from custom streams
declare function sfShader_createFromStream(byval vertexShaderStream as sfInputStream ptr, byval fragmentShaderStream as sfInputStream ptr) as sfShader ptr
' Destroy an existing shader
declare sub      sfShader_destroy(byval shader as sfShader ptr)
' Change a float parameter of a shader
declare sub      sfShader_setFloatParameter(byval shader as sfShader ptr, byval name as const zstring ptr, byval x as single)
' Change a 2-components vector parameter of a shader
declare sub      sfShader_setFloat2Parameter(byval shader as sfShader ptr, byval name as const zstring ptr, byval x as single, byval y as single)
' Change a 3-components vector parameter of a shader
declare sub      sfShader_setFloat3Parameter(byval shader as sfShader ptr, byval name as const zstring ptr, byval x as single, byval y as single, byval z as single)
' Change a 4-components vector parameter of a shader
declare sub      sfShader_setFloat4Parameter(byval shader as sfShader ptr, byval name as const zstring ptr, byval x as single, byval y as single, byval z as single, byval w as single)
' Change a 2-components vector parameter of a shader
declare sub      sfShader_setVector2Parameter(byval shader as sfShader ptr, byval name as const zstring ptr, byval vector as sfVector2f)
' Change a 3-components vector parameter of a shader
declare sub      sfShader_setVector3Parameter(byval shader as sfShader ptr, byval name as const zstring ptr, byval vector as sfVector3f)
' Change a color parameter of a shader
declare sub      sfShader_setColorParameter(byval shader as sfShader ptr, byval name as const zstring ptr, byval color as sfColor)
' Change a matrix parameter of a shader
declare sub      sfShader_setTransformParameter(byval shader as sfShader ptr, byval name as const zstring ptr, byval transform as sfTransform)
' Change a texture parameter of a shader
declare sub      sfShader_setTextureParameter(byval shader as sfShader ptr, byval name as const zstring ptr, byval texture as const sfTexture ptr)
' Change a texture parameter of a shader
declare sub      sfShader_setCurrentTextureParameter(byval shader as sfShader ptr, byval name as const zstring ptr)
' Bind a shader for rendering (byval activate it)
declare sub      sfShader_bind(byval shader as const sfShader ptr)
' Tell whether or not the system supports shaders
declare function sfShader_isAvailable() as sfBool

end extern

#endif ' SFML_SHADER_BI
