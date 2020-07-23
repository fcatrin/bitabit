      org $2000
   
      ldx #0

      lda #35  
       
loop1 sta 40000,x  ; first half
      inx
      bne loop1

loop2 sta 40256,x  ; second half
      inx
      bne loop2

halt  jmp halt
