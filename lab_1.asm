include 'emu8086.inc'
.model small
.stack 100h


main proc
       
       print 'Enter any int: '      ;5
       mov ah,1
       int 21h
       mov bl,al
       sub bl,
       
       
       printn                        
       print 'Enter another int: '  ;7     
       mov ah,1
       int 21h                   
       
       
       printn
       print 'Summation is: '
       add bl,al
       
       
       mov ah,2
       mov dl,bl
       int 21h
    
      mov ah, 4ch
      int 21h
            
      
main endp
end main