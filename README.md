# FB_ROAD
Freebasic Road 3D effect like "outrun" games

![Imagen fb_road](https://github.com/jepalza/FB_ROAD/blob/main/fb_road.jpg)

Usando el código de esta página, con mi propia adaptación:
https://github.com/salinda93/OutRunGameB

hay tres versiones, la básica más simple, no necesita nada especial.

la avanzada, requiere una librería externa para el uso de gráficos externos, gracias a:
https://www.freebasic.net/forum/viewtopic.php?t=24479 (Joshy "D.J.Peters")

y la tercera y más compleja, pero mas rápida y mas efectiva, empleando la librería CSFML2, gracias, una vez más a:
https://www.freebasic.net/forum/viewtopic.php?t=26678 (Joshy "D.J.Peters")


--------------------

Using this code, with my own interpretation:
https://github.com/salinda93/OutRunGameB

Did make several changes in order to simplify the code, and get one more simple code.
First example is only with freebasic code, no external libraries, only road, no sprites.

Second is with sprites using external libraries to get textures in PNG format and sprites routine scale:
https://www.freebasic.net/forum/viewtopic.php?t=24479 (thanks to Joshy "D.J.Peters")
This code has a bug when the textures are behind the hills. They should be trimmed in height, but it's just a demo.  

And the best result, using CSFML (again, thanks to Joshy "D.J.Peters" ;-) ):
https://www.freebasic.net/forum/viewtopic.php?t=26678

A curious detail: 
if you download the new version 2.5.1 of CSFML from:
https://www.sfml-dev.org/download/csfml/
And you take the "new" DLLs (version 2.5) the code works much faster than with the original DLLs version 2.2. ;-)

Use cursors for move, and CTRL for max speed. 'Q' and 'A' for up and down terrain hight.
