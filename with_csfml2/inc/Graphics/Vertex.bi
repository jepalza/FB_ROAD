#ifndef SFML_VERTEX_BI
#define SFML_VERTEX_BI


' Headers
#include once "inc/Graphics/Export.bi"
#include once "inc/Graphics/Color.bi"
#include once "inc/System/Vector2.bi"

' Define a point with color and texture coordinates

type sfVertex
  as sfVector2f position  ' Position of the vertex
  as sfColor    color     ' Color of the vertex
  as sfVector2f texCoords ' Coordinates of the texture's pixel to map to the vertex
end type

#endif ' SFML_VERTEX_BI
