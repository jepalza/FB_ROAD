#Include "fbgfx.bi"
#if __FB_LANG__ = "fb"
Using FB '  Scan code constants are stored in the FB namespace in lang FB
#EndIf

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
    
    Line (xa,y1)-(xb,y2),micolor
    Line (xb,y2)-(xc,y2),micolor
    Line (xc,y2)-(xd,y1),micolor
    Line (xd,y1)-(xa,y1),micolor
    
    Dim As Integer mx=(Abs(xa+xc) \2)
    Dim As Integer my=(Abs(y2+y1) \2)
    
    Paint (mx,my),micolor,micolor

End Sub



    
    

Type Linea 
    As Single x, y, z  ' 3d center of line
    As Single X2, Y2, W2  ' screen coord
    As Single curve, scale 
    Declare Sub project(camX As Integer , camY As Integer , camZ As Integer)
End Type 

Sub Linea.project(camX As Integer , camY As Integer , camZ As Integer)
     scale = camD / (z - camZ) 
     X2 = (1 + scale * (x - camX)) * w_ancho / 2 
     Y2 = (1 - scale * (y - camY)) * w_alto  / 2 
     W2 = scale * roadW * w_ancho / 2 
End Sub







	 Dim As Integer num_lineas=1600
    Dim As Linea lineas(num_lineas)
        
        
    
    ' matrix road create
    for i As integer = 0 To num_lineas-1    
    	
        Dim As linea temp
        temp.z = i * segL 

        if (i > 300) And (i < 700) Then temp.curve = 0.5 
        if (i > 1100)              Then temp.curve = -0.7 
         
        if (i > 750) Then temp.y = sin(i / 30.0) * 1500 

        lineas(i)=temp
        
    Next



    Dim As Single  playerX  = 0 
    Dim As Integer posicion = 0 
    Dim As Integer altura   = 1500 ' altura de vision, desde el suelo(0) al cielo(1500)
	 
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
        
        if (MultiKey(SC_CONTROL)) Then speed *= 3 
        
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
        
        Dim As Integer fondo=400
        Line(0,0)-(w_ancho,fondo), rgb(15, 100, 205),bf
        Color ,RGB(15, 100, 205)
        
        maxy = w_alto 
        x = 0
        dx = 0 

        ' /////Design Road////////
        for n As Integer = startPos To (startPos + 300)-1       
         
            lin = @lineas(n Mod num_lineas) 
            lin->project(playerX * roadW - x, camH, startPos * segL - IIf(n >= num_lineas , num_lineas * segL , 0)) 
            x  += dx 
            dx += lin->curve 
            
            ' recorte del fondo
            If (lin->Y2 >= maxy) Then continue For
            maxy = lin->Y2 

            grass  = IIf( (n \ 3) Mod 2 , RGB(20, 200, 20) , RGB(20, 154, 20) )
            rumble = IIf( (n \ 3) Mod 2 , RGB(255, 255, 255) , RGB(0, 0, 0) )
            road   = IIf( (n \ 3) Mod 2 , RGB(0, 0, 0) , RGB(100, 100, 100) )

            Pin = @lineas((n - 1) Mod num_lineas)  ' previous line

            drawQuad(grass , 0           , Fix(pin->Y2), w_ancho           , 0           , Fix(lin->Y2), w_ancho   ) 
            drawQuad(rumble, Fix(pin->X2), Fix(pin->Y2), Fix(pin->W2 * 1.2), Fix(lin->X2), Fix(lin->Y2), Fix(lin->W2 * 1.2)) 
            drawQuad(road  , Fix(pin->X2), Fix(pin->Y2), Fix(pin->W2)      , Fix(lin->X2), Fix(lin->Y2), Fix(lin->W2)      ) 
        
        Next

			ScreenCopy 1, 0

			speed = 0
			        
   Wend

