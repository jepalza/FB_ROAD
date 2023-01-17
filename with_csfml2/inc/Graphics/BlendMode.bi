#ifndef FBSFML_BLENDMODE_BI
#define FBSFML_BLENDMODE_BI

#include "inc/Graphics/Export.bi"

' Enumeration of the blending factors
type sfBlendFactor as long
enum 
  sfBlendFactorZero,             ' (0, 0, 0, 0)
  sfBlendFactorOne,              ' (1, 1, 1, 1)
  sfBlendFactorSrcColor,         ' (src.r, src.g, src.b, src.a)
  sfBlendFactorOneMinusSrcColor, ' (1, 1, 1, 1) - (src.r, src.g, src.b, src.a)
  sfBlendFactorDstColor,         ' (dst.r, dst.g, dst.b, dst.a)
  sfBlendFactorOneMinusDstColor, ' (1, 1, 1, 1) - (dst.r, dst.g, dst.b, dst.a)
  sfBlendFactorSrcAlpha,         ' (src.a, src.a, src.a, src.a)
  sfBlendFactorOneMinusSrcAlpha, ' (1, 1, 1, 1) - (src.a, src.a, src.a, src.a)
  sfBlendFactorDstAlpha,         ' (dst.a, dst.a, dst.a, dst.a)
  sfBlendFactorOneMinusDstAlpha  ' (1, 1, 1, 1) - (dst.a, dst.a, dst.a, dst.a)
end enum

'  Enumeration of the blending equations
type sfBlendEquation as long
enum
  sfBlendEquationAdd,     ' Pixel = Src * SrcFactor + Dst * DstFactor
  sfBlendEquationSubtract ' Pixel = Src * SrcFactor - Dst * DstFactor
end enum

' Blending mode for drawing
type sfBlendMode
  as sfBlendFactor colorSrcFactor  ' Source blending factor for the color channels
  as sfBlendFactor colorDstFactor  ' Destination blending factor for the color channels
  as sfBlendEquation colorEquation ' Blending equation for the color channels
  as sfBlendFactor alphaSrcFactor  ' Source blending factor for the alpha channel
  as sfBlendFactor alphaDstFactor  ' Destination blending factor for the alpha channel
  as sfBlendEquation alphaEquation ' Blending equation for the alpha channel
end type

Extern Import sfBlendAlpha    as const sfBlendMode ' Blend source and dest according to dest alpha
Extern Import sfBlendAdd      as const sfBlendMode ' Add source to dest
Extern Import sfBlendMultiply as const sfBlendMode ' Multiply source and dest
Extern Import sfBlendNone     as const sfBlendMode ' Overwrite dest with source

#endif ' FBSFML_BLENDMODE_BI
