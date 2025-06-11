    movl 12     
    add 2, 0    ; r2 = 12
    movl 9
    add 3, 0    ; r3 = 9
    movl 1      ; r0 = 1

cria_a:
    brzr 2, 3   ; if 2 = 0: l13
    sub 2, 0    ; r2--
    st 2, 2     ; M[r2] = r2
    ji -2       ; l8

    movl 12 
    sub 3, 3
    add 3, 0    ; r3 = 12
    add 2, 0    ; r2 = 12
    movh 1 
    movl 4
    add 1, 0    ; r1 = 20
    movh 0
    movl 1      ; r0 = 1

cria_b:
    st 1, 2     ; M[r2] = r1
    sub 3, 0    ; r3--
    inc 2       ; r2++
    inc 1       ; r1++
    movh 1
    movl 8
    brzr 3, 0   ; if r3 = 0: l35
    movh 0
    movl 1      ; r0 = 1
    ji -7       ; l24

    sub 2, 2
    movh 0
    movl 11
    add 2, 0    ; r2 = 11

loop_soma:
    ld 1, 2     ; r1 = M[r2]
    movh 0
    add 2, 0    ; r2 += 11
    ld 3, 2     ; r3 = M[r2]
    add 2, 0    ; r2 += 11
    add 3, 1    ; r3 (A[*]) + r1 (B[*])
    st 3, 2     ; M[r2] = r3
    movh 1
    movl 9
    sub 2, 0    ; r2 -= 25
    not 3, 1    ; 1 if 3 = 0, else 0
    movl 12
    brzr 3, 0   ; if 3 = 0: l41

    ji 0        ; halt