movl 12         ; r0 = 12
add 1, 0        ; r1 = 12
movh 1
movl 1
add 3, 0

loop_cria:
    brzr 1, 3
    movh 0      ;r0 = 1
    movl 1      
    sub 1, 0    ; r1 - 1
    st 1, 2     ; M[r2] = r1
    movh 1      ; r0 = 20
    movl 4      
    add 1, 0    ; r1 + 20
    movh 0      ; r0 = 12
    movl 12
    add 2, 0    ; r2 + 12
    st 1, 2     ; M[r2] = r1
    movl 11     
    sub 2, 0    ; r2 - 11
    ji -12

