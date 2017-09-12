.nolist
    #include    "ti83plus.inc"
    #define    PROG_START    $9D95
.list
.org    PROG_START - 2; mem location offset for compiler
.db    t2ByteTok, tAsmCmp
    ;Your program goes here.
    b_call(_ClrLCDFull); clear the lcd and registers
    ld    hl, 0
    ld    (PenCol), hl
    ld    hl, msg
    b_call(_PutS)            ; Display the text
    b_call(_NewLine)
    ret

msg:
    .db "Hello world!", 0; .db specifies data.

.end
