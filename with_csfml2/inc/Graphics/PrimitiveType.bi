#ifndef FBSFML_PRIMITIVETYPE_BI
#define FBSFML_PRIMITIVETYPE_BI

#include "inc/Graphics/Export.bi"

' Types of primitives that a sf::VertexArray can render

type sfPrimitiveType as ulong
enum 
  sfPoints,         ' List of individual points
  sfLines,          ' List of individual lines
  sfLinesStrip,     ' List of connected lines, a point uses the previous point to form a line
  sfTriangles,      ' List of individual triangles
  sfTrianglesStrip, ' List of connected triangles, a point uses the two previous points to form a triangle
  sfTrianglesFan,   ' List of connected triangles, a point uses the common center and the previous point to form a triangle
  sfQuads           ' List of individual quads
end enum 

#endif ' FBSFML_PRIMITIVETYPE_BI
