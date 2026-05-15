include 'emu8086.inc'
.model small
.stack 100h


main proc 
    
    print 'Enter Marks(2 Digit):'
    mov ah,1
    int 21h
    sub al,48
    mov cl,al
    
    
    mov ah,1
    int 21h
    sub al,48
    mov ch,al
    
    
    
    mov al,cl
    mov bl,10
    mul bl
    add al,ch
    mov bx,ax
    
    printn
    
    cmp bx,90
    jge IF1
    
    cmp bx,80
    jge IF2
    
    cmp bx,70
    jge IF3
    
    jmp ELSE_PART
    
    
    
    IF1:
    print 'A+'
    jmp exit
    
    IF2:
    print 'A'
    jmp exit
    
    IF3:
    print 'B'
    jmp exit
    
    ELSE_PART:
    print 'C'
      
      
      exit:
    
      mov ah, 4ch
      int 21h
            
      
main endp
end main