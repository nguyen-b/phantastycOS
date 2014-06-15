;********************************************* 
; Boot.asm 
; - A Simple Bootloader 
; 
; Operating Systems Development Tutorial 
;********************************************* 
bits 16 ; We are still in 16 bit Real Mode 
org 0x7c00 ; We are loaded by BIOS at 0x7C00 
start: jmp loader ; jump over OEM block 
;*************************************************; 
;*************************************************; 
; Bootloader Entry Point 
loader: 
times 510 - ($-$$) db 0 ; We have to be 512 bytes. Clear the rest of the bytes with 0 
dw 0xAA55 ; Boot Signiture 
cli ; just halt the system 
hlt