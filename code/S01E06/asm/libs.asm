RANDOM = 53770

.proc wait_key
wait        lda 764
            cmp #255
            beq wait
            lda #255
            sta 764
            rts
.endp

.proc copy_bytes
            ldy #0
copy        lda (src), y
            sta (dst), y
            iny
            cpy size
            bne copy
            rts
.endp

.proc clear_line
            lda #0
            ldy #0
clear       sta (dst), y
            iny
            cpy #width
            bne clear
            rts
.endp


.proc fill_random
            ldy #0

fill        lda RANDOM
            sta (ptr),y
            inc ptr
            bne skip
            inc ptr+1
            
skip        dec len
            lda len
            ora len+1
            bne next
            rts
            
next        lda len
            cmp #$ff
            bne fill
            dec len+1
            jmp fill
.endp

