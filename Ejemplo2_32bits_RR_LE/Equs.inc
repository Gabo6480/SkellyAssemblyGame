MB_OK                  equ 0h
MB_OKCANCEL            equ 1h
MB_ABORTRETRYIGNORE    equ 2h
MB_YESNOCANCEL         equ 3h
MB_YESNO               equ 4h
MB_RETRYCANCEL         equ 5h
SW_SHOWDEFAULT         equ 10
NULL                   equ 0
TRUE                   equ 1
FALSE                  equ 0
CS_HREDRAW			   equ 0002h
CS_VREDRAW             equ 0001h
COLOR_WINDOW           equ 0005h
IDI_APPLICATION        equ 32512
IDC_ARROW              equ 32512
CW_USEDEFAULT          equ 80000000h
WS_OVERLAPPED          equ 0h
WS_CAPTION             equ 0C00000h
WS_SYSMENU             equ 80000h
WS_THICKFRAME          equ 40000h
WS_MINIMIZEBOX         equ 20000h
WS_MAXIMIZEBOX         equ 10000h
WS_OVERLAPPEDWINDOW    equ WS_OVERLAPPED OR WS_CAPTION OR WS_SYSMENU OR WS_THICKFRAME OR WS_MINIMIZEBOX OR WS_MAXIMIZEBOX
WM_CREATE              equ 1h
WM_DESTROY             equ 2h
WM_PAINT			   equ 0fh
WM_TIMER               equ 113h
WM_KEYDOWN             equ 100h
WM_INITDIALOG          equ 0110h
WM_SHOWWINDOW          equ 0018h
WM_ERASEBKGND		   equ 0014h

OEM_CHARSET                          equ 255
OUT_DEFAULT_PRECIS                   equ 0
CLIP_DEFAULT_PRECIS                  equ 0
DEFAULT_QUALITY                      equ 0
DEFAULT_PITCH                        equ 0
FF_SCRIPT                            equ 64

SRCCOPY                              equ 0CC0020h
SRCAND                               equ 8800C6h
SRCPAINT                             equ 0EE0086h
BLACKNESS                            equ 042h

BI_RGB						equ		0h

DIB_RGB_COLORS				equ		0h

XINPUT_GAMEPAD_DPAD_UP			equ 0001h
XINPUT_GAMEPAD_DPAD_DOWN		equ	0002h
XINPUT_GAMEPAD_DPAD_LEFT		equ	0004h
XINPUT_GAMEPAD_DPAD_RIGHT		equ	0008h
XINPUT_GAMEPAD_START			equ	0010h
XINPUT_GAMEPAD_BACK				equ	0020h
XINPUT_GAMEPAD_LEFT_THUMB		equ	0040h
XINPUT_GAMEPAD_RIGHT_THUMB		equ	0080h
XINPUT_GAMEPAD_LEFT_SHOULDER	equ	0100h
XINPUT_GAMEPAD_RIGHT_SHOULDER	equ	0200h
XINPUT_GAMEPAD_A				equ 1000h
XINPUT_GAMEPAD_B				equ	2000h
XINPUT_GAMEPAD_X				equ	4000h
XINPUT_GAMEPAD_Y				equ	8000h