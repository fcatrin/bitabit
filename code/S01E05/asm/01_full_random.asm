
ini    = 40000
chars  = 960
ptr    = 202
len    = 204

         org $2000
start   
         lda #<ini
         sta ptr
         lda #>ini
         sta ptr+1
         
         lda #<chars
         sta len
         lda #>chars
         sta len+1

         ldy #0

loop     lda 53770  
         sta (ptr),y

         inc ptr
         bne nopage
         inc ptr+1
      
nopage   dec len
         lda len
         ora len+1
         beq end
      
         lda len
         cmp #$FF
         bne loop
         dec len+1
         jmp loop

end      jmp start
