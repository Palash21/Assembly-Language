.model small
.stack 100h
.data

nm db "Name: AI Palash $"
roll db "Roll: 43 $"
batch db "Batch: E-99 $"

.code

main proc
    mov ax, @data
    mov ds, ax
    
    mov ah, 9
    lea dx, nm   
    int 21h
    
    mov ah, 2
    mov dl, 10
    int 21h
    mov dl, 13
    int 21h
       
    mov ah, 9
    lea dx, roll    
    int 21h
    
    mov ah, 2
    mov dl, 10
    int 21h
    mov dl, 13
    int 21h  
    
    mov ah, 9
    lea dx, batch
    int 21h
    
    exit:
    mov ah, 4ch
    int 21h
    
    main endp
end main


