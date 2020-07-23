      org $2000
   
      lda #64
      sta 202
      lda #156
      sta 203 
      
      ldy #0
      lda #35  
       
loop  sta (202),y  ; a is stored where 202 points at
      iny
      bne loop 

      inc 203
      ldx 203
      cpx #160     ; page 160 = 40960  (40000 + 40*24) 
      bne loop

halt  jmp halt
