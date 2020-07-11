      org $2000
   
start ldx #0

loop  lda 53770   
      sta 40000,x
      inx
      cpx #160
      bne loop

      jmp start
   