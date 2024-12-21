.model small
.stack 100h
.data

inputMessage db "Please, enter any uppercase letter: $"
outputMessage db 10, 13, "The result of lowercase is $"

main proc
    mov ax, @data
    mov ds, ax
    
    mov ah, 9
    lea dx, inputMessage
    int 21h
    
    mov ah, 1
    int 21h
    mov bl, al
    
    add bl, 32
    
    mov ah, 9
    lea dx, outputMessage
    int 21h
    
    mov ah, 2
    mov dl, bl
    int 21h
    
    exit:
    mov ah, 4ch
    int 21h
    
    main endp
end main
