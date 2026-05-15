include 'emu8086.inc'
.model small
.stack 100h

 
main proc
    
    print 'First Number:'
    mov ah,1
    int 21h
    sub al,48
    mov cl,al
    
    printn
    print 'Sencond Number:'
    mov ah,1
    int 21h
    sub al,48
    mov ch,al 
    
    
    mov al,cl
    mul ch
    
    mov ah,0
    aam
    
    add ah,48
    add al,48
    
    mov bx,ax 
    
    printn
    print 'Result is:'
    mov ah,2  
    mov dl,bh
    int 21h
    
    mov ah,2
    mov dl,bl
    int 21h
    
    
    
    
   
      
      exit:
    
      mov ah, 4ch
      int 21h
            
      
main endp
end main