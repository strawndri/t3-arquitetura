    movl 12
    add 2, 0
    movl 9
    add 3, 0
    movl 1

cria_a:
    brzr 2, 3
    sub 2, 0 
    st 2, 2
    ji -2

    movl 12
    sub 3, 3
    add 3, 0
    add 2, 0
    movh 1 
    movl 4
    add 1, 0
    movh 0
    movl 1

cria_b:
    st 1, 2
    sub 3, 0
    add 2, 0
    add 1, 0
    movh 1
    movl 8
    brzr 3, 0
    movh 0
    movl 1
    ji -7

    sub 2, 2
    movh 0
    movl 11
    add 2, 0

loop_soma:
    ld 1, 2
    movh 0
    add 2, 0
    ld 3, 2
    add 2, 0
    add 3, 1
    st 3, 2
    movh 1
    movl 9
    sub 2, 0
    isZero 3, 1
    movl 12
    brzr 3, 0

    ji 0