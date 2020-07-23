      org $2000
   
      ldx #0

      lda #35   
loop  sta 40000,x
      inx
      bne loop     ; 256 times

halt  jmp halt
