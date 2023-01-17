#ifndef FBSFML_RECT_BI
#define FBSFML_RECT_BI

#include once "inc/Graphics/Export.bi"

type sfFloatRect
  as single left
  as single top
  as single width
  as single height
end type

type sfIntRect
  as long left
  as long top
  as long width
  as long height
end type

extern "C"

declare function sfFloatRect_contains  (byval rect  as const sfFloatRect ptr, byval x as single, byval y as single) as sfBool
declare function sfIntRect_contains    (byval rect  as const sfFloatRect ptr, byval x as long, byval y as long) as sfBool
declare function sfFloatRect_intersects(byval rect1 as const sfFloatRect ptr, byval rect2 as const sfFloatRect ptr, byval intersection as sfFloatRect ptr) as sfBool
declare function sfIntRect_intersects  (byval rect1 as const sfIntRect ptr  , byval rect2 as const sfIntRect ptr, byval intersection as sfIntRect ptr) as sfBool

end extern

#endif ' FBSFML_RECT_BI
