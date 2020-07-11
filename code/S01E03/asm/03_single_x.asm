      org $2000
   
      ldx #0
      lda #33
loop  sta 40000,x
      inx
      cpx #160
      bne loop
   
halt  jmp halt
