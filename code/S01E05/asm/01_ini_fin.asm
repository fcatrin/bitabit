
ini    = 40000
fin    = 40960
ptr    = 202

         org $2000
start   
         lda #<ini
         sta ptr
         lda #>ini
         sta ptr+1
         
         ldy #0

loop     lda 53770  
         sta (ptr),y

         inc ptr
         bne nopage
         inc ptr+1
      
nopage   lda ptr
         cmp #<fin
         bne loop
         
         lda ptr+1
         cmp #>fin
         bne loop

end      jmp end
