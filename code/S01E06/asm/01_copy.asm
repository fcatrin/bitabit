
width  = 40

screen = 40000
block1 = 40000 + 10*width
block2 = 40000 + 16*width
lines  = 3*width
chars  = 960

ptr    = 202
len    = 208

src    = 204
dst    = 206
size   = 210

            org $2000
start 
            jsr wait_key
            
            lda #<screen
            sta ptr
            lda #>screen
            sta ptr+1
            
            lda #<chars
            sta len
            lda #>chars
            sta len+1

            jsr fill_random
            jsr wait_key
            
            lda #<screen
            sta src
            sta dst
            lda #>screen
            sta dst+1
            sta src+1

            jsr clear_line
            jsr wait_key

            lda lines
            sta size

            lda #<block1
            sta dst
            lda #>block1
            sta dst+1

            jsr copy_bytes
            jsr wait_key
            
            lda #<block2
            sta dst
            lda #>block2
            sta dst+1
            jsr copy_bytes
            
halt        jmp halt
            
            icl "libs.asm"
      
