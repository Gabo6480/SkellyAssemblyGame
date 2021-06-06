
.686p
.model flat, stdcall
.stack 4096

include Protos.inc
include Equs.inc
include Estructuras.inc


IDB_BITMAP5 equ 107
IDB_BITMAP6 equ 108
IDB_BITMAP7 equ 109
IDB_BITMAP8 equ 110
IDB_BITMAP9 equ 111

.data

hInstanc dword ?
hwnd dword ?
hOverBit dword ?
hBitmap1 dword ?
hSkellyBit dword ?
hItemsBit dword ?
hBitmap4 dword ?

hAuxDC dword ?
hMemDC dword ?
hMemBit dword ?
hOldBit dword ?

msgText db 'El ensamblador es lo maximo!', 0
msgCaption db 'Hola mundillo', 0
botones dword 1
ClassName db "Clase_Simple",0
AppName db "Echale ganas!! si se puede!!!, amazing!!",0
Texto  db "La clase de ensamblador esta superwow!!!, el profe confia en nosotros!!",0 
FontName db "script",0

;estos datos corresponden las coordenadas de las esquinas superiores izquierdas de cada uno de los sprites
sprites POINT  <13,11>, <77,11>, <141,11>, <205,11>,<269,11>, <333,11>, <397,11>, <461,11>, <525,11>
spritesL POINT <13,75>, <77,75>, <141,75>, <205,75>,<269,75>, <333,75>, <397,75>, <461,75>, <525,75>
spritesD POINT <13,139>, <77,139>, <141,139>, <205,139>,<269,139>, <333,139>, <397,139>, <461,139>, <525,139>
spritesR POINT <13,203>, <77,203>, <141,203>, <205,203>,<269,203>, <333,203>, <397,203>, <461,203>, <525,203>

spritesG POINT  <13,267>, <77,267>, <141,267>, <205,267>,<269,267>, <333,267>, <397,267>, <461,267>, <525,267>
spritesGL POINT <13,331>, <77,331>, <141,331>, <205,331>,<269,331>, <333,331>, <397,331>, <461,331>, <525,331>
spritesGD POINT <13,395>, <77,395>, <141,395>, <205,395>,<269,395>, <333,395>, <397,395>, <461,395>, <525,395>
spritesGR POINT <13,459>, <77,459>, <141,459>, <205,459>,<269,459>, <333,459>, <397,459>, <461,459>, <525,459>

spritesE POINT  <13,523>, <77,523>, <141,523>, <205,523>,<269,523>, <333,523>, <397,523>, <461,523>, <525,523>
spritesEL POINT <13,587>, <77,587>, <141,587>, <205,587>,<269,587>, <333,587>, <397,587>, <461,587>, <525,587>
spritesED POINT <13,651>, <77,651>, <141,651>, <205,651>,<269,651>, <333,651>, <397,651>, <461,651>, <525,651>
spritesER POINT <13,715>, <77,715>, <141,715>, <205,715>,<269,715>, <333,715>, <397,715>, <461,715>, <525,715>

;estos datos corresponden las coordenadas de las esquinas superiores izquierdas de cada uno de los sprites
Msprites POINT  <589,11>, <653,11>, <717,11>, <781,11>,<845,11>, <909,11>, <973,11>, <1037,11>, <1101,11>
MspritesL POINT <589,75>, <653,75>, <717,75>, <781,75>,<845,75>, <909,75>, <973,75>, <1037,75>, <1101,75>
MspritesD POINT <589,139>, <653,139>, <717,139>, <781,139>,<845,139>, <909,139>, <973,139>, <1037,139>, <1101,139>
MspritesR POINT <589,203>, <653,203>, <717,203>, <781,203>,<845,203>, <909,203>, <973,203>, <1037,203>, <1101,203>

MspritesG POINT  <589,267>, <653,267>, <717,267>, <781,267>,<845,267>, <909,267>, <973,267>, <1037,267>, <1101,267>
MspritesGL POINT <589,331>, <653,331>, <717,331>, <781,331>,<845,331>, <909,331>, <973,331>, <1037,331>, <1101,331>
MspritesGD POINT <589,395>, <653,395>, <717,395>, <781,395>,<845,395>, <909,395>, <973,395>, <1037,395>, <1101,395>
MspritesGR POINT <589,459>, <653,459>, <717,459>, <781,459>,<845,459>, <909,459>, <973,459>, <1037,459>, <1101,459>

MspritesE POINT  <589,523>, <653,523>, <717,523>, <781,523>,<845,523>, <909,523>, <973,523>, <1037,523>, <1101,523>
MspritesEL POINT <589,587>, <653,587>, <717,587>, <781,587>,<845,587>, <909,587>, <973,587>, <1037,587>, <1101,587>
MspritesED POINT <589,651>, <653,651>, <717,651>, <781,651>,<845,651>, <909,651>, <973,651>, <1037,651>, <1101,651>
MspritesER POINT <589,715>, <653,715>, <717,715>, <781,715>,<845,715>, <909,715>, <973,715>, <1037,715>, <1101,715>

SPancho	DWORD	38
SPlargo	DWORD	54
indice    dword 0
jndice    dword 0
posX	DWORD	0
posY	DWORD	0
CoordX DWORD 0
CoordY DWORD 0

Eindice    dword 0
Ejndice    dword 0
ECoordX DWORD 1565
ECoordY DWORD 700
EBoredom DWORD 0

;Coordenadas de los overlays
Skullsprites POINT <0,0>,<96,0>,<192,0>,<288,0>,<384,0>,<480,0>
SkullspritesM POINT <0,112>,<96,112>,<192,112>,<288,112>,<384,112>,<480,112>

;Estos son el ancho y el largo de los sprites de los items
	ISPancho	DWORD	27
	ISPlargo	DWORD	27
;Estos son la cantidad de items que queremos dibujar de cada uno
	Ispritequan DWORD 4
	item1quan DWORD 3
	item2quan DWORD 3
	item3quan DWORD 3
	item4quan DWORD 3
;Coordenadas de los items sprites
	itemsprites POINT  <0,0>,<27,0>,<54,0>,<81,0>
	Mitemsprites POINT  <0,27>,<27,27>,<54,27>,<81,27>
	;Posiciones de los items en los mapas
	item1coords POINT  <150,250>,<1290,1050>,<1080,430>
	item2coords POINT  <660,760>,<820,310>,<290,395>
	item3coords POINT  <360,1050>,<160,400>,<1740,560>
	item4coords POINT  <1240,775>,<1060,350>,<50,50>
	;Estas son las banderas de si ya fueron tomados o no, tiene que haber una por cada par de coordenadas de cada objeto
	
	item1bool BYTE 0ffh,0ffh,0ffh
	item2bool BYTE 0ffh,0ffh,0ffh
	item3bool BYTE 0ffh,0ffh,0ffh
	item4bool BYTE 0ffh,0ffh,0ffh

	item1life DWORD 1,1,1
	item2life DWORD 5,5,5
	item3life DWORD 2,2,2
	item4life DWORD 69,69,69
	;danger byte 0

MapStrtX DWORD -150
MapStrtY DWORD -250
MapWidth DWORD 1896
MapLenght DWORD 1138
WndCntrX DWORD 0
WndCntrY DWORD 0


esiAUX DWORD 0

entrada XINPUT_STATE <>

start  byte    0
moving  byte    0
Emoving  byte    0
life	dword	0
CountDown dword	112
everyother  byte    0
everyother2  byte    0
dead	dword	0  ;0 es vivo, 36 es muerto

.code
main proc	
	
	invoke GetModuleHandleA, NULL             
    mov hInstanc,eax                      
	invoke WinMain, hInstanc,NULL,NULL, SW_SHOWDEFAULT
	call ExitProcess@4
main endp

WinMain proc hInst:dword,hPrevInst:dword,CmdLine:dword,CmdShow:DWORD
	LOCAL wc:WNDCLASSEX
	LOCAL msge:MSG 

	mov   wc.cbSize,SIZEOF WNDCLASSEX                    
    mov   wc.style, CS_HREDRAW or CS_VREDRAW 
    mov   wc.lpfnWndProc, OFFSET WndProc 
    mov   wc.cbClsExtra,NULL 
    mov   wc.cbWndExtra,NULL 
    push  hInstanc 
    pop   wc.hInstance 
    mov   wc.hbrBackground,NULL 
    mov   wc.lpszMenuName,NULL 
    mov   wc.lpszClassName,OFFSET ClassName 
    invoke LoadIconA,NULL,IDI_APPLICATION 
    mov   wc.hIcon,eax 
    mov   wc.hIconSm,eax 
    invoke LoadCursorA,NULL,IDC_ARROW 
    mov   wc.hCursor,eax 

	invoke RegisterClassExA, addr wc                       
    invoke CreateWindowExA,NULL, 
                ADDR ClassName,
                ADDR AppName, 
                WS_OVERLAPPEDWINDOW, 
                100,
                0,
                800, 
                500, 
                NULL, 
                NULL, 
                hInst, 
                NULL 
    mov   hwnd,eax 
    invoke ShowWindow, hwnd,CmdShow                
    invoke UpdateWindow, hwnd  
	
	;estoy creando el timer, asociado a la ventana por el handler hwnd
	;el primer 200 es el identificador o "nombre" del timer, el segundo 40
	;es la duracion en milisegundos del timer, NULL es que no hay TIMEPROC
	                   
	invoke SetTimer, hwnd, 200, 40, NULL

    .WHILE TRUE                                   
                invoke GetMessageA, ADDR msge,NULL,0,0 
                .BREAK .IF (!eax) 
                invoke TranslateMessage, ADDR msge 
                invoke DispatchMessageA, ADDR msge 
   .ENDW 
    mov     eax,msge.wParam 
	ret 
WinMain endp

WndProc proc hWnd2:dword, uMsg:dword, wParam:dword, lParam:dword

	LOCAL hdc:dword
    LOCAL ps:PAINTSTRUCT 
    LOCAL hfont:dword
	LOCAL WndRect:RECT 
	LOCAL estado:DWORD

	.IF uMsg==WM_DESTROY   
	    invoke KillTimer, hwnd, 200  
		invoke DeleteObject,hOverBit
		invoke DeleteObject,hBitmap1
		invoke DeleteObject,hSkellyBit
		invoke DeleteObject,hItemsBit
		invoke DeleteObject,hBitmap4
        invoke PostQuitMessage,NULL 
	.ELSEIF uMsg==WM_ERASEBKGND
		mov eax,TRUE
		ret
	.ELSEIF uMsg==WM_CREATE 
		invoke LoadBitmapA,hInstanc,IDB_BITMAP8
		mov hBitmap1,eax  
		invoke LoadBitmapA,hInstanc,IDB_BITMAP6
		mov hSkellyBit,eax  
		invoke LoadBitmapA,hInstanc,IDB_BITMAP7
		mov hItemsBit,eax 
		invoke LoadBitmapA,hInstanc,IDB_BITMAP9
		mov hBitmap4,eax 
		invoke LoadBitmapA,hInstanc,IDB_BITMAP5
		mov hOverBit,eax 
	.ELSEIF uMsg==WM_SHOWWINDOW
		xor ebx,ebx
		invoke GetWindowRect,hWnd,addr WndRect

		mov ebx,800
		;sub ebx,WndRect.left
		shr ebx,1
		mov WndCntrX, ebx

		mov ebx,500
		;sub ebx,WndRect.top
		shr ebx,1
		mov WndCntrY, ebx

		.IF Start < 1
			mov posX, 280
			mov posY, 280
		.ENDIF
		

	.ELSEIF uMsg==WM_PAINT
	;el begin paint siempre va cuando se imprime lo que sea en pantalla
        invoke BeginPaint,hWnd, ADDR ps 
        mov hdc,eax 
	

		invoke CreateCompatibleDC,hdc 
		mov    hAuxDC, eax
		invoke CreateCompatibleDC,hdc 
			mov    hMemDC, eax 
			invoke CreateCompatibleBitmap,hdc,800,500
			mov    hMemBit, eax
			invoke SelectObject,hMemDC,hMemBit 
			mov hOldBit,eax


		.IF Start < 1
			;cargamos el fondo
			invoke SelectObject,hAuxDC,hBitmap4 
			invoke BitBlt,hMemDC,0,0,800,500,hAuxDC,0,0,SRCCOPY 

			invoke SelectObject,hAuxDC,hOverBit 
			invoke BitBlt,hMemDC,0,0,800,500,hAuxDC,1600,500,SRCAND 
			invoke BitBlt,hMemDC,0,0,800,500,hAuxDC,1600,0,SRCPAINT 

			;con esto animamos al monito
			mov esi, indice
			add esi, jndice
			
			;Con esto se dibuja el monito
			invoke SelectObject,hAuxDC,hSkellyBit 				
			invoke BitBlt,hMemDC,posX,posY,SPancho,SPlargo,hAuxDC,Msprites[esi*8].x,Msprites[esi*8].y,SRCAND 
 				
			invoke BitBlt,hMemDC,posX,posY,SPancho,SPlargo,hAuxDC,sprites[esi*8].x,sprites[esi*8].y,SRCPAINT 	

		.ELSEIF CountDown > 0	;GameOver
			

			;Cargamos el fondo totalmente negro en el DC para las hitbox
			invoke BitBlt,hMemDC,0,0,800,500,hAuxDC,0,0,BLACKNESS 

			invoke SelectObject,hAuxDC,hBitmap1
				;Cargamos la vista del enemigo
			;Calculamos el "offset" de las coordenadas del enemigo a las coordenadas pos
			mov eax,ECoordX	
			add eax, MapStrtX	;Primero cambiamos las coordenadas de "Coordenadas Mapa" a "Coordenadas Pantalla"
			sub eax, posX

			mov ebx,ECoordY
			add ebx, MapStrtY
			sub ebx, posY

			;Ahora que ya sabemos el "offset" entonces calculamos la posicion del mapa al respecto del enemigo
			mov esi,MapStrtX
			sub esi, eax
			mov edi,MapStrtY
			sub edi,ebx
			;aqui la mascara de colisiones en el DC para las hitbox  		
			invoke BitBlt,hMemDC,esi,edi,MapWidth,MapLenght,hAuxDC,0,MapLenght,SRCCOPY 

			;Usamos la mascara de colisiones para el enemigo
			mov eax,SPancho
			shr eax,1
			add eax,ECoordX
			add eax, esi
			mov ebx, SPlargo
			sub ebx, 5
			add ebx, ECoordY
			add ebx, edi
			invoke GetPixel,hMemDC,eax,ebx
			xor ebx,ebx
			.IF eax > 0h
			.ELSE
				.IF Ejndice < 9				 ;arr
					add ECoordY,10
					mov Ejndice,18
				.ELSEIF Ejndice < 18		;izq
					add ECoordX,10
					mov Ejndice,27
				.ELSEIF Ejndice < 27		;aba
					sub ECoordY,10
					mov Ejndice,0
				.ELSE						;der
					sub ECoordX,10
					mov Ejndice,9
				.ENDIF
			.ENDIF

		
			;Cargamos el fondo totalmente negro en el DC para las hitbox
			invoke BitBlt,hMemDC,0,0,800,500,hAuxDC,0,0,BLACKNESS 
			;aqui la mascara de colisiones en el DC para las hitbox
			;invoke SelectObject,hAuxDC,hBitmap1  		
			invoke BitBlt,hMemDC,MapStrtX,MapStrtY,MapWidth,MapLenght,hAuxDC,0,MapLenght,SRCCOPY 

			;Usamos la mascara de colisiones para el personaje
			mov eax,SPancho
			shr eax,1
			add eax,posX
			mov ebx, SPlargo
			sub ebx, 5
			add ebx, posY
			invoke GetPixel,hMemDC,eax,ebx
			xor ebx,ebx
			.IF eax > 0h
			.ELSE
				.IF jndice < 9			;arr = 0
					add posY,10
				.ELSEIF jndice < 18		;izq = 9
					add posX,10
				.ELSEIF jndice < 27		;aba = 18
					sub posY,10
				.ELSE					;der = 27
					sub posX,10
				.ENDIF
			.ENDIF
			
			;cargamos el fondo
			invoke SelectObject,hAuxDC,hBitmap4 
			invoke BitBlt,hMemDC,0,0,800,500,hAuxDC,0,0,SRCCOPY 
	
	
			;aqui cargamos el piso
			invoke SelectObject,hAuxDC,hBitmap1  		
			invoke BitBlt,hMemDC,MapStrtX,MapStrtY,MapWidth,MapLenght,hAuxDC,0,0,SRCCOPY 
	
			;Manejamos los items
			invoke SelectObject,hAuxDC,hItemsBit 
			mov edi,Ispritequan					;Copiamos a edi la cantidad de items diferentes
			xor esi,esi
			.WHILE esi<edi
				push edi						;Copiamos la cantidad de items diferentes en el stack
				mov edi,item1quan[esi*4]		;Remplazamos por la cantidad de sprites del item correspondiente a este ciclo
				push esi						;Copiamos el indice basado en la cantidad de items diferentes en el stack
				xor esi,esi						;lo exorcizamos para usarlo como inice basado en la cantidad de sprites del item correspondiente a este ciclo
	
				.WHILE esi<edi					;Esto se tiene que repetir una vez por cada sprite 
					pop eax						;Tomamos el indice basado en la cantidad de items diferentes del stack
					mov esiAUX,eax				;Copiamos el indice basado en la cantidad de items diferentes en nuestro auxiliar para evitar perder el dato al modificarlo
	
					.IF eax > 0					;Checamos si el indice basado en la cantidad de items diferentes del stack no es el primero
						mov ebx,eax				;Si es así lo copiamos en ebx
						xor eax,eax
						.WHILE ebx > 0					;Lo repetimos por cada uno de los 
							dec ebx						;Y lo disminuimos en 1
							add eax,item1quan[ebx*4]	;sumamos a eax la cantidad de coordenadas del item anterior
						.ENDW
					.ENDIF
					.IF item1bool[eax+esi] > 0			;Checamos si el objeto no ha sido tomado ya
						shl eax, 3				;Lo movemos 3 bits a la izquierda para "multiplicarlo" por 8 (Porque las coordenadas contienen dos DWORD)
						push edi					;Copiamos la cantidad de items del arreglo de coordenadas actual en el stack
	
						mov edi,item1coords[eax+esi*8].x
						mov ebx,item1coords[eax+esi*8].y
						add edi,MapStrtX
						add ebx,MapStrtY
						.IF edi > 0
						.IF edi < 800
						.IF	ebx > 0
						.IF ebx < 500
							mov edi,item1coords[eax+esi*8].x
							mov ebx,item1coords[eax+esi*8].y
	
							push eax
	
							mov eax,CoordX				;Checamos por la proximidad del personaje al objeto que estamos intentando dibujar
							sub eax,edi
							mov edx,CoordY
							sub edx,ebx
							.IF eax < 20
								.IF edx < 20
									mov edx, 000000ffh
								.ELSEIF edx > -20
									mov edx, 000000ffh
								.ELSE
									xor edx,edx
								.ENDIF
							.ELSEIF eax > -20
								.IF edx < 20
									mov edx, 000000ffh
								.ELSEIF edx > -20
									mov edx, 000000ffh
								.ELSE
									xor edx,edx
								.ENDIF
							.ELSE
								xor edx,edx
							.ENDIF
	
							pop eax	
							shr eax,3							;"dividimos" eax entre 8
							and dl,item1bool[eax+esi]
							
							.IF edx > 0							;Checamos si el personaje se encuentra cerca de el objeto que estamos por dibujar 
								add eax,esi
								mov ecx,item1life[eax*4]
								.IF life < 5	;Checamos si el personaje aún no está muerto
									.IF ecx > 10	;Cualquier "item" con valor de vida mayor a 10 hace daño
										add life, 1      
										.IF jndice < 9   ;arr      ;Se mueve al personaje para atrás
											add posY,10
										.ELSEIF jndice < 18		;izq
											add posX,10
										.ELSEIF jndice < 27		;aba
											sub posY,10
										.ELSE	;der
											sub posX,10
										.ENDIF

						
											add edi,MapStrtX
											add ebx,MapStrtY
											push esi					;Copiamos el indice actual al stack
											mov	esi,esiAUX	
						
											invoke BitBlt,hMemDC,edi,ebx,ISPancho,ISPlargo,hAuxDC,Mitemsprites[esi*8].x,Mitemsprites[esi*8].y,SRCAND 
 						
											invoke BitBlt,hMemDC,edi,ebx,ISPancho,ISPlargo,hAuxDC,itemsprites[esi*8].x,itemsprites[esi*8].y,SRCPAINT
									
											pop esi					;Recuperamos el indice actual
										

									.ELSEIF life > 0	;Checamos si la vida no está al maximo
										sub life,ecx
										.IF life > 5
											mov life, 0
										.ENDIF
										mov item1bool[eax], 00		;Si es así, entonces "tomamos" el objeto
									.ELSE		;Si está al maximo entonces redibujamos el objeto que se está intentando tomar
										add edi,MapStrtX
										add ebx,MapStrtY
										push esi					;Copiamos el indice actual al stack
										mov	esi,esiAUX	
					
										invoke BitBlt,hMemDC,edi,ebx,ISPancho,ISPlargo,hAuxDC,Mitemsprites[esi*8].x,Mitemsprites[esi*8].y,SRCAND 
 					
										invoke BitBlt,hMemDC,edi,ebx,ISPancho,ISPlargo,hAuxDC,itemsprites[esi*8].x,itemsprites[esi*8].y,SRCPAINT
										pop esi					;Recuperamos el indice actual
									.ENDIF
								.ELSE		;Si lo está, entonces solo podemos recoger las calaveras 
									.IF (ecx == 5)
										mov item1bool[eax], 00		;Si es así, entonces "tomamos" el objeto
										mov life, 0
									.ELSE
										add edi,MapStrtX
										add ebx,MapStrtY
										push esi					;Copiamos el indice actual al stack
										mov	esi,esiAUX	
					
										invoke BitBlt,hMemDC,edi,ebx,ISPancho,ISPlargo,hAuxDC,Mitemsprites[esi*8].x,Mitemsprites[esi*8].y,SRCAND 
 					
										invoke BitBlt,hMemDC,edi,ebx,ISPancho,ISPlargo,hAuxDC,itemsprites[esi*8].x,itemsprites[esi*8].y,SRCPAINT
										pop esi					;Recuperamos el indice actual
									.ENDIF
								.ENDIF
							.ELSE
								add edi,MapStrtX
								add ebx,MapStrtY
								push esi					;Copiamos el indice actual al stack
								mov	esi,esiAUX	
						
								invoke BitBlt,hMemDC,edi,ebx,ISPancho,ISPlargo,hAuxDC,Mitemsprites[esi*8].x,Mitemsprites[esi*8].y,SRCAND 
 						
								invoke BitBlt,hMemDC,edi,ebx,ISPancho,ISPlargo,hAuxDC,itemsprites[esi*8].x,itemsprites[esi*8].y,SRCPAINT
									
								pop esi					;Recuperamos el indice actual
							.ENDIF
						.ENDIF
						.ENDIF
						.ENDIF
						.ENDIF
						pop edi					;Recuperamos la cantidad de items del arreglo de coordenadas actual del stack
					.ENDIF
					mov eax,esiAUX			;Copiamos el valor del indice basado en la cantidad de items diferentes desde nuestro auxiliar
					push eax				;Lo mandamos al stack
					inc esi					;Incrementamos el contador que se basa en la cantidad de sprites del item correspondiente a este ciclo
				.ENDW
				pop esi						;Recuperamos el indice basado en la cantidad de items diferentes del stack
				pop edi						;Recuperamos la cantidad de items diferentes del stack
				inc esi						;Incrementamos el indice basado en la cantidad de items diferentes del stack
			.ENDW

			;Calculamos la posicion del enemigo basados en la posicion del mapa
			mov esi, Eindice
			add esi, Ejndice

			mov ebx, ECoordX
			add ebx, MapStrtX
			mov edi, ECoordY
			add edi, MapStrtY
			;Dibujamos el enemigo
			invoke SelectObject,hAuxDC,hSkellyBit 		
			
			invoke BitBlt,hMemDC,ebx,edi,SPancho,SPlargo,hAuxDC,MspritesE[esi*8].x,MspritesE[esi*8].y,SRCAND 
			invoke BitBlt,hMemDC,ebx,edi,SPancho,SPlargo,hAuxDC,spritesE[esi*8].x,spritesE[esi*8].y,SRCPAINT 	


			;con esto animamos al monito
			mov esi, indice
			add esi, jndice
			add esi, dead
			
			;Con esto se dibuja el monito y se puede saber si es fantasma o no
			;invoke SelectObject,hAuxDC,hSkellyBit 				
			invoke BitBlt,hMemDC,posX,posY,SPancho,SPlargo,hAuxDC,Msprites[esi*8].x,Msprites[esi*8].y,SRCAND 
 				
			invoke BitBlt,hMemDC,posX,posY,SPancho,SPlargo,hAuxDC,sprites[esi*8].x,sprites[esi*8].y,SRCPAINT 	

			

			;Dibujamos el contador de vida
			mov esi,life
			invoke SelectObject,hAuxDC,hOverBit  
			mov ebx, 112
			sub ebx, CountDown
			mov edx,SkullspritesM[esi*8].y
			add edx,ebx
			invoke BitBlt,hMemDC,0,ebx,96,CountDown,hAuxDC,SkullspritesM[esi*8].x,edx,SRCAND 
			mov edx,Skullsprites[esi*8].y
			add edx,ebx
			invoke BitBlt,hMemDC,0,ebx,96,CountDown,hAuxDC,Skullsprites[esi*8].x,edx,SRCPAINT 

			

		.ELSE ;Se pinta la pantalla de game over
			invoke SelectObject,hAuxDC,hOverBit 
			invoke BitBlt,hMemDC,0,0,800,500,hAuxDC,800,500,SRCAND 
			invoke BitBlt,hMemDC,0,0,800,500,hAuxDC,800,0,SRCPAINT 

		.ENDIF

		;lo dibujamos en pantalla
			invoke BitBlt,hdc,0,0,800,500,hMemDC,0,0,SRCCOPY 

			invoke SelectObject,hMemDC,hOldBit
			invoke DeleteObject, hMemDC
			invoke DeleteDC,hMemDC  
		
		invoke DeleteDC,hAuxDC
		

	;el end paint cierra el proceso de dibujado 
        invoke EndPaint,hWnd, ADDR ps  
		invoke ReleaseDC,hWnd,hdc

		

	;Se agrega el WM_TIMER a todo el proceso, aqui se atiende el movimiento del indice de
	;los sprites  
	.ELSEIF  uMsg==WM_TIMER
		
		mov Emoving, 0ffh

		.IF life < 5
			;Checamos por la proximidad del enemigo con el personaje
			mov eax,SPancho
			shr eax,1
			add eax,ECoordX
			mov ebx, SPlargo
			sub ebx, 5
			add ebx, ECoordY

			mov esi, SPancho
			shr esi, 1
			add esi, CoordX
			mov edi, SPlargo
			sub edi, 5
			add edi, CoordY

			sub eax,esi
			sub ebx,edi

				;Esto es para que siga al jugador

			.IF eax < 200
				.IF ebx < 200
					.IF ebx > 10
						mov Ejndice,0
					.ELSEIF eax > 10
						mov Ejndice,9
					.ENDIF
					mov EBoredom,0
				.ELSEIF ebx > -200
					.IF ebx < -10
						mov Ejndice,18
					.ELSEIF eax > 10
						mov Ejndice,9
					.ENDIF
					mov EBoredom,0
				.ENDIF
			.ELSEIF eax > -200
				.IF ebx < 200
					.IF ebx > 10
						mov Ejndice,0
					.ELSEIF eax < -10
						mov Ejndice,27
					.ENDIF
					mov EBoredom,0
				.ELSEIF ebx > -200
					.IF ebx < -10
						mov Ejndice,18
					.ELSEIF eax < -10
						mov Ejndice,27
					.ENDIF
					mov EBoredom,0
				.ENDIF
			.ENDIF

			;Esto es para saber si tocó al jugador
			xor edx,edx
			.IF eax < 20
				.IF ebx < 20
					mov edx,0ffh
				.ELSEIF ebx > -20
					mov edx,0ffh
				.ENDIF
			.ELSEIF eax > -20
				.IF ebx < 20
					mov edx,0ffh
				.ELSEIF ebx > -20
					mov edx,0ffh
				.ENDIF
			.ENDIF

			.IF edx > 0
				.IF Ejndice < 9				;arr = 0
					sub posY,10
					add ECoordY,10
				.ELSEIF Ejndice < 18		;izq = 9
					sub posX,10
					add ECoordX,10
				.ELSEIF Ejndice < 27		;aba = 18
					add posY,10
					sub ECoordY,10
				.ELSE						;der = 27
					add posX,10
					sub ECoordX,10
				.ENDIF
				add life,1
				.IF life > 5
					mov life,5
				.ENDIF
				mov Emoving, 0h
			.ENDIF
		.ENDIF

		invoke XInputGetState, 0, addr entrada
		mov estado, eax
		mov bl, entrada.Gamepad.bLeftTrigger
		mov ax, entrada.Gamepad.wButtons
		;test ax, XINPUT_GAMEPAD_B

			.IF (ax == XINPUT_GAMEPAD_DPAD_LEFT) ;A = izq
				mov jndice, 9
				mov moving, 0ffh
			.ELSEIF (ax == XINPUT_GAMEPAD_DPAD_RIGHT) ;D = der
				mov jndice, 27
				mov moving, 0ffh
			.ELSEIF (ax == XINPUT_GAMEPAD_DPAD_DOWN) ;S = aba
				mov jndice, 18	  ;Arriba y abajo están invertidos devido a la manera como se manejan los sprites con coordenadas                    
				mov moving, 0ffh
			.ELSEIF (ax == XINPUT_GAMEPAD_DPAD_UP) ;W = arr
				mov jndice, 0
				mov moving, 0ffh
			.ELSEIF (ax == XINPUT_GAMEPAD_BACK)
				invoke DestroyWindow,hWnd
			.ENDIF

			;con esto provocamos que el personaje entre en estado "en movimiento"
			.IF moving > 0 
				.IF start > 0
				.IF jndice < 9   ;arr
					sub posY,5
				.ELSEIF jndice < 18		;izq
					sub posX,5
				.ELSEIF jndice < 27		;aba
					add posY,5
				.ELSE	;der
					add posX,5
				.ENDIF
				.ELSE

				.IF jndice < 9   ;arr
					sub posY, 80
				.ELSEIF jndice < 18		;izq

				.ELSEIF jndice < 27		;aba
					add posY, 80
				.ELSE	;der
					add posX, 80
				.ENDIF

				.ENDIF
	
				inc indice
				.IF indice > 8
					mov indice, 1
				.ENDIF
				mov moving, 0h  ;que limpie la bandera de movimiento
			.ELSE
				mov indice, 0
			.ENDIF

		.IF Start < 1
			.IF posY < 280
				mov posY,360
			.ELSEIF posY > 360
				mov posY,280
			.ENDIF

			.IF posX > 280
				.IF posY < 360
					mov Start,0ffh

					mov eax,WndCntrX
					mov ebx,SPancho
					shr ebx,1
					sub eax, ebx
					mov posX,eax
		
					mov eax, WndCntrY
					mov ebx,SPlargo
					shr ebx,1
					sub eax,ebx
					mov posY,eax

					xor ebx,ebx
					sub ebx, MapStrtX
					add ebx,WndCntrX
					mov CoordX,ebx

					xor ebx,ebx
					sub ebx, MapStrtY
					add ebx,posY
					add ebx, SPlargo
					sub ebx,5
					mov CoordY,ebx

				.ELSE
					invoke DestroyWindow,hWnd
				.ENDIF
			.ENDIF

			inc indice
			.IF indice > 8
				mov indice, 1
			.ENDIF
		.ELSE

			.IF EBoredom > 200
				.IF Ejndice < 9				;arr = 0
					mov Ejndice,9
				.ELSEIF Ejndice < 18		;izq = 9
					mov Ejndice,18
				.ELSEIF Ejndice < 27		;aba = 18
					mov Ejndice,27
				.ELSE						;der = 27
					mov Ejndice,0
				.ENDIF
				mov EBoredom,0
			.ENDIF

			;con esto provocamos que el enemigo entre en estado "en movimiento"
			.IF Emoving > 0 
				.IF Ejndice < 9   ;arr
					sub ECoordY,2
				.ELSEIF Ejndice < 18		;izq
					sub ECoordX,2
				.ELSEIF Ejndice < 27		;aba
					add ECoordY,2
				.ELSE	;der
					add ECoordX,2
				.ENDIF
				inc EBoredom
				inc Eindice
				.IF Eindice > 8
					mov Eindice, 1
				.ENDIF
				mov Emoving, 0h  ;que limpie la bandera de movimiento
			.ELSE
				mov Eindice, 0
			.ENDIF
		
			mov ebx,WndCntrX
			.IF posX > ebx
				mov ebx,posX
				sub ebx,WndCntrX
				;shr ebx,2
				add CoordX,ebx
				sub posX,ebx
				sub MapStrtX, ebx
			.ELSEIF posX < ebx
				sub ebx,posX
				;shr ebx,2
				sub CoordX,ebx
				add posX,ebx
				add MapStrtX, ebx
			.ENDIF
	
			mov ebx,WndCntrY
			.IF posY > ebx
				mov ebx,posY
				sub ebx,WndCntrY
				;shr ebx,2
				add CoordY,ebx
				sub posY,ebx
				sub MapStrtY, ebx
			.ELSEIF posY < ebx
				sub ebx,posY
				;shr ebx,2
				sub CoordY,ebx
				add posY,ebx
				add MapStrtY, ebx
			.ENDIF
	
			.IF life > 4
				mov dead,36
				.IF CountDown > 0
					.IF everyother2 > 0
						.IF everyother > 0
							dec CountDown
							mov everyother, 00h
							mov everyother2, 00h
						.ELSE
							mov everyother, 0ffh
							mov everyother2, 00h
						.ENDIF
					.ELSE
						mov everyother2,0ffh
					.ENDIF
				.ENDIF
			.ELSE
				mov dead,0
				mov CountDown,112
			.ENDIF
		.ENDIF

		invoke InvalidateRect, hWnd, NULL, FALSE ;Redibujamos


	.ELSEIF  uMsg==WM_KEYDOWN
		mov ebx, wParam
			.IF (bx == 41h) ;A = izq
				mov jndice, 9
				mov moving, 0ffh
			.ELSEIF (bx == 44h) ;D = der
				mov jndice, 27
				mov moving, 0ffh
			.ELSEIF (bx == 53h) ;S = aba
				mov jndice, 18	  ;Arriba y abajo están invertidos devido a la manera como se manejan los sprites con coordenadas                    
				mov moving, 0ffh
			.ELSEIF (bx == 57h) ;W = arr
				mov jndice, 0
				mov moving, 0ffh
			.ELSEIF (bx == 1Bh) ;Escape
				invoke DestroyWindow,hWnd
			.ENDIF

			.IF CountDown < 1
				invoke DestroyWindow,hWnd
			.ENDIF
    .ELSE 
        invoke DefWindowProcA,hWnd2,uMsg,wParam,lParam      
        ret 
    .ENDIF 
    xor ebx,ebx 
	ret 
WndProc endp

end main

