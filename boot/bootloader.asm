;this is the bootloader
;Inter assembly
;file bootloader
;author Hangsheng Wang
;email: tjuwhs@tju.edu.cn
jmp 0x07c0:0x5a+Start
Start:
	mov ax,cs
 	mov ds,ax
	mov es,ax
	mov [num+0x5a],dl

	mov ax,message+0x5a
	mov bp,ax
	mov cx,21
	mov ax,0x1301
	mov bx,0x000c
	mov dl,0
	int 0x10


Copy:   mov ax,0x1000
	mov es,ax
	mov bx,0x0000
	mov dl,[num+0x5a]
	mov dh,0
	mov cx,0x0002
	mov ah,2
	mov al,1
	int 0x13
	jmp 0x1000:0x0000
	
message: db "Welcome to the Winux!"
num:  db 0
