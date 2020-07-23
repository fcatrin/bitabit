      org $2000
   
      lda #64
      sta 202
      lda #156
      sta 203 
      
      ldy #0
      lda #35  
       
loop1 sta (202),y     ; first half
      iny
      bne loop1

      inc 203         ; skip 256 bytes
      
loop2 sta (202),y     ; second half
      iny
      bne loop2

halt  jmp halt
