include 'emu8086.inc'
.model small
.stack 100h
.code
main proc
    
    print 'first number: '
    mov ah,1
    int 21h
    
    printn
    print 'second number: '
    mov ah,1
    int 21h
    
    
    add al,bl
    mov ah,0  ;ah srtored 0 for clear register
    aaa
    
    
    add al,48
    add ah,48
    
    mov bx,ax  ;stroing value of ax to bx
    
    
    printn
    print 'Result is: '
    
    mov ah,2
    mov dl,bh
    int 21h
    
    mov ah,2
    mov dl,bl
    int 21h
    
    
    exit:
    mov ah,4ch
    int 21h
    int 21h
    main endp
end main