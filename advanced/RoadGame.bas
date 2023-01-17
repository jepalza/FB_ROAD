#Include "fbgfx.bi"
#if __FB_LANG__ = "fb"
Using FB '  Scan code constants are stored in the FB namespace in lang FB
#endif

' carga JPG, PNG
#Inclib "FBImage-32-static"
extern "C"
	Declare function LoadRGBAFile(byval filename as const zstring ptr) as any Ptr
end Extern

#Include "multiput.bi"

Dim Shared As Integer w_ancho= 1024 
Dim Shared As Integer w_alto= 768 
Dim Shared As Integer roadW= 2500 
Dim Shared As Integer segL= 500  ' Road different between length
Dim Shared As Single  camD= 0.84  ' camera depth

ScreenRes w_ancho,w_alto,32,2
ScreenSet 1, 0


Dim Shared fill(4,1) As integer
Sub drawQuad(micolor As uinteger , x1 As Integer , y1 As Integer , w1 As Integer , x2 As Integer , y2 As Integer , w2 As Integer)

    Dim As Integer xa=x1-w1
    Dim As Integer xb=x2-w2
    Dim As Integer xc=x2+w2
    Dim As Integer xd=x1+w1
    
    If xa<0 Then xa=0
    If xa>w_ancho Then xa=w_ancho

    If xb<0 Then xb=0
    If xb>w_ancho Then xb=w_ancho
    
    If xc<0 Then xc=0
    If xc>w_ancho Then xc=w_ancho
    
    If xd<0 Then xd=0
    If xd>w_ancho Then xd=w_ancho
 
    If y1<0 Then y1=0
    If y1>w_alto Then y1=w_alto

    If y2<0 Then y2=0
    If y2>w_alto Then y2=w_alto    
    
    Line (xa,y1)-(xb,y2),micolor':ScreenCopy:sleep
    Line (xb,y2)-(xc,y2),micolor':ScreenCopy:Sleep
    Line (xc,y2)-(xd,y1),micolor':ScreenCopy:Sleep
    Line (xd,y1)-(xa,y1),micolor':ScreenCopy:Sleep

    Dim As Integer mx=(Abs(xa+xc) \2)
    Dim As Integer my=(Abs(y2+y1) \2)
    
    Paint (mx,my),micolor,micolor

End Sub



    
    

Type Linea 
    As Single x, y, z  ' 3d center of line
    As Single X2, Y2, W2  ' screen coord
    As Single curve, scale 
    As Single clip ' escala de sprites
    As single spriteX 
    As Any Ptr sprite
    Declare Sub project(camX As Integer , camY As Integer , camZ As Integer)
    Declare Sub drawSprite()
End Type 

Sub Linea.project(camX As Integer , camY As Integer , camZ As Integer)
     scale = camD / (z - camZ) 
     X2 = (1 + scale * (x - camX)) * w_ancho / 2 
     Y2 = (1 - scale * (y - camY)) * w_alto  / 2 
     W2 = scale * roadW * w_ancho / 2 
End Sub


Sub Linea.drawSprite()

    If sprite=0 Then Exit sub

    Dim As Integer w = *Cast(UShort Ptr ,sprite+8)  ' posiciones 7-8 tenemos el ancho de la imagen
    Dim As Integer h = *Cast(UShort Ptr ,sprite+12) ' y en las 11-12 el alto

    Dim As Single destX = X2 + scale * spriteX * w_ancho / 2 
    Dim As Single destY = Y2 + 4 
    Dim As Single destW = w * W2 / 366 
    Dim As Single destH = h * W2 / 366 

    destX += destW * spriteX  ' offsetX
    destY += destH * (-1)     ' offsetY

    Dim As Single clipH = destY + destH - clip 
    if (clipH < 0) Then clipH = 0 

    if (clipH >= destH) Then Exit Sub 
    
    ' "multiput" emplea el centro de la textura, asi que necesito 
    ' compensarlos llevandolo a la esquina inferior-izquierda
    destX = destX +(destW/2)
    destY = destY +(destH/2)  

    ' y aqui ponemos el grafico y aplicamos la escala en X e Y
    ' los dos parametros finales son "0"=giro 0 grados y "1"=transparencia en el color "0"
    multiput ,destX, destY, sprite,(destW / w),(destH / h), 0,1

End Sub








    'Texture t(100) 
    Dim Shared As Any ptr objects(7) 
    for i As Integer= 1 To 7      
        objects(i)=LoadRGBAFile(".\images\" + Trim(Str(i)) + ".png") 
    Next

	 Dim myImage As Any Ptr 
	 myImage = LoadRGBAFile(".\images\bg1.png")


	 Dim As Integer num_lineas=1600
    Dim As Linea lineas(num_lineas)
        
    
    for i As integer = 0 To num_lineas-1    
    	
        Dim As linea temp
        temp.z = i * segL 

        if (i > 300) And (i < 700) Then temp.curve = 0.5 
        if (i > 1100)              Then temp.curve = -0.7 
        
        If (i < 300) And (i mod 20 = 0) Then temp.spriteX = -2.5: temp.sprite = objects(5)  
        If (i Mod 17 = 0)               Then temp.spriteX =  2.0: temp.sprite = objects(6)  
        If (i > 300) And (i mod 20 = 0) Then temp.spriteX = -0.7: temp.sprite = objects(4)  
        If (i > 800) And (i mod 20 = 0) Then temp.spriteX = -1.2: temp.sprite = objects(1)  
        if (i = 400)                    Then temp.spriteX = -1.2: temp.sprite = objects(7) 
         
        if (i > 750) Then temp.y = sin(i / 30.0) * 1500 

        lineas(i)=temp
        
    Next

    Dim As Single  playerX  = 0 
    Dim As Integer posicion = 0 
    Dim As Integer altura   = 1500 ' altura de vision, desde el suelo(0) al cielo(1500)
	 Dim As Integer bgpos    = 300  ' posicion inicial del fondo en relacion a las curvas
	 
	 Dim As UInteger grass
	 Dim As UInteger rumble
	 Dim As UInteger road
	 
	 Dim As Integer speed = 10
	 
	 Dim As Integer startPos 
    Dim As Integer camH 

    Dim As Integer maxy = w_alto 
    Dim As Single x = 0
    Dim As Single dx = 0 
    
    Dim As Linea Ptr Lin
    Dim As Linea Ptr Pin
    Dim As Linea Ptr Xin
        	 
    while (1)

        if (multikey(SC_RIGHT)) Then playerX += 0.1 ':Cls
        if (MultiKey(SC_LEFT))  Then playerX -= 0.1 ':Cls
        if (MultiKey(SC_UP))    Then speed = 200    ':cls
        if (MultiKey(SC_DOWN))  Then speed = -200   ':cls
        
        if (MultiKey(SC_CONTROL))   Then speed *= 3 
        
        if (MultiKey(SC_W)) Then altura += 100      ':Cls
        if (MultiKey(SC_S)) Then altura -= 100      ':cls
        
        if (MultiKey(SC_ESCAPE)) Then End

        posicion += speed 
        while (posicion >= num_lineas * segL) 
        	posicion -= num_lineas * segL
        Wend
     
        while (posicion < 0) 
        	posicion += num_lineas * segL
        Wend
     
        
        startPos = posicion \ segL 
        camH = lineas(startPos).y + altura 

		  bgpos=bgpos+(lineas(startPos).curve * 2)
        If (speed > 0) Then Put (-bgpos, 0), myImage,PSet 
        If (speed < 0) Then Put ( bgpos, 0), myImage,PSet 

        maxy = w_alto 
        x = 0
        dx = 0 

        ' /////Design Road////////
        for n As Integer = startPos To (startPos + 300)-1       
         
            lin = @lineas(n Mod num_lineas) 
            lin->project(playerX * roadW - x, camH, startPos * segL - IIf(n >= num_lineas , num_lineas * segL , 0)) 
            x  += dx 
            dx += lin->curve 

				' sprites
            lin->clip = maxy 
            
            ' recorte del fondo
            If (lin->Y2 >= maxy) Then continue For
            maxy = lin->Y2 

            grass  = IIf( (n \ 3) Mod 2 , RGB(20, 200, 20) , RGB(20, 154, 20) )
            rumble = IIf( (n \ 3) Mod 2 , RGB(255, 255, 255) , RGB(0, 0, 0) )
            road   = IIf( (n \ 3) Mod 2 , RGB(0, 0, 0) , RGB(100, 100, 100) )

            Pin = @lineas((n - 1) Mod num_lineas)  ' previous line

            drawQuad( grass , 0           , Fix(pin->Y2), w_ancho           , 0           , Fix(lin->Y2), w_ancho   ) 
            drawQuad( rumble, Fix(pin->X2), Fix(pin->Y2), Fix(pin->W2 * 1.2), Fix(lin->X2), Fix(lin->Y2), Fix(lin->W2 * 1.2)) 
            drawQuad( road  , Fix(pin->X2), Fix(pin->Y2), Fix(pin->W2)      , Fix(lin->X2), Fix(lin->Y2), Fix(lin->W2)      ) 
        
        Next


        ' //////draw objects////////
        For n As Integer = startPos + 300 To startPos step -1    
        	   lineas(n Mod num_lineas).drawSprite()
        Next

			ScreenCopy 1, 0

			speed = 0
			        
   Wend

