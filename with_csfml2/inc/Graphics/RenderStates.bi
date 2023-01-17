#ifndef SFML_RENDERSTATES_BI
#define SFML_RENDERSTATES_BI

' Headers
#include once "inc/Graphics/Export.bi"
#include once "inc/Graphics/BlendMode.bi"
#include once "inc/Graphics/Transform.bi"
#include once "inc/Graphics/Types.bi"

' Define the states used for drawing to a RenderTarget
type sfRenderStates
  as sfBlendMode         blendMode ' Blending mode
  as sfTransform         transform ' Transform
  as const sfTexture ptr texture   ' Texture
  as const sfShader ptr  shader    ' Shader
end type

#endif ' SFML_RENDERSTATES_BI
