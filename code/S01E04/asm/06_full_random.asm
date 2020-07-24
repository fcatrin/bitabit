
ini    = 40000
ptr    = 202
char_c = 35

      org $2000
start   
      lda #<ini
      sta ptr
      lda #>ini
      sta ptr+1

      ldy #0

loop  lda 53770  
       
      sta (ptr),y
      iny
      bne loop 

      inc ptr+1
      ldx ptr+1
      cpx #160
      bne loop

halt  jmp start
