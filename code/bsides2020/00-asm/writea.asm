	org $600

	ldx #0
	lda #33
write:  sta 40000,x
        inx
        cpx #40
        bne write


halt:   jmp halt

