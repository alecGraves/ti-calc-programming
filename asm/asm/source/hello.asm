.nolist
#include "ti83plus.inc"
#define    ProgStart    $9D95
.list
.org    ProgStart - 2; address offset of where the program is loaded in to.
    .db    t2ByteTok, tAsmCmp; special instruction for asm programs in TI's
    b_call(_ClrLCDFull); clear the lcd and registers
    ld    hl, 0
    ld    (PenCol), hl
    ld    hl, msg
    b_call(_PutS)            ; Display the text
    b_call(_NewLine)
    ret

msg:
    ;this is a string that ends with a 0. 
    .db "Hello world!", 0; .db specifies data.
.end
;.end; second one because tasm ignores the last line of a file
;second one probably not needed because these tools use brass, a patched version.