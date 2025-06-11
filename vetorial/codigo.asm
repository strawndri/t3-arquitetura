v.sub r1, r1       ; zera VR[1]
v.sub r2, r2       ; zera VR[2]
v.sub r3, r3       ; zera VR[3]

s.sub r1, r1       ; zera SR[1]
s.sub r2, r2       ; zera SR[2]
s.sub r3, r3       ; zera SR[3]

v.add r2, r0       ; VR[2] = VR[0] (0, 1, 2, ou 3)
v.add r3, r0       ; VR[3] = VR[0] (0, 1, 2, ou 3)

s.movl 3           ; SR[1] = 0000 0011 (3)
s.add r2, r1       ; SR[2] = 0000 0011 (3)

loop_A:
    v.st r3, r2    ; guarda VR[3] no endereço VR[2]
    v.inc r2, r2   ; incrementa VR[2] em 4 unidades
    v.inc r3, r3   ; incrementa VR[3] em 4 unidades

    s.movl 1       ; SR[1] = 0000 0001 (1)
    s.sub r2, r1   ; decrementa SR[2] em 1

    s.not r3, r2   ; SR[2] == 0 ? 1 : 0
    s.movl 10      ; SR[1] = 0000 1010 (10)
    s.brzr r3, r1  ; se r3 == 0, volta para inst. 10

s.movl 3           ; SR[1] = 0000 0011 (3)
s.add r2, r1       ; SR[2] = 0000 0011 (3)

v.movl 8           ; SR[1] = 0000 1000 (8)
v.add r3, r1       ; SR[3] = SR[3] + 8

loop_B:
    v.st r3, r2    ; guarda VR[3] no endereço VR[2]
    v.inc r2, r2   ; incrementa VR[2] em 4 unidades
    v.inc r3, r3   ; incrementa VR[3] em 4 unidades

    s.movl 1       ; SR[1] = xxxx 0001 (low é 1)
    s.movh 0       ; SR[1] = 0000 0001 (1)
    s.sub r2, r1   ; decrementa SR[2] em 1

    s.not r3, r2   ; SR[2] == 0 ? 1 : 0
    s.movl 6       ; SR[1] = 0000 0110 (6)
    s.movh 1       ; SR[1] = 0001 0110 (22)
    s.brzr r3, r1  ; se r3 == 0, volta para inst. 22

s.movl 3           ; SR[1] = 0001 0011 (19)
s.movh 0           ; SR[1] = 0000 0011 (3)
s.add r2, r1       ; SR[2] = 0000 0011 (3)

v.sub r2, r2       ; zera VR[2]
v.add r2, r0       ; VR[2] = VR[0] (0, 1, 2, ou 3)

loop_soma:
    v.ld r3, r2    ; guarda em VR[3] o valor no endereço VR[2]
    v.movl 12      ; VR[1] = 0000 1100 (12)
    v.add r2, r1   ; incrementa VR[2] em 12 unidades
    v.ld r1, r2    ; guarda em VR[1] o valor no endereço VR[2]

    v.add r3, r1   ; VR[3] = VR[3] + VR[1] (R = A + B)
    v.movl 12      ; VR[1] = xxxx 1100 (low é 12)
    v.movh 0       ; VR[1] = 0000 1100 (12)
    v.add r2, r1   ; incrementa VR[2] em 12 unidades
    v.st r3, r2    ; guarda VR[3] no endereço VR[2]

    v.sub r2, r1   ; decrementa VR[2] em 12 unidades
    v.sub r2, r1   ; decrementa VR[2] em 12 unidades

    v.inc r2, r2   ; incrementa VR[2] em 4 unidades

    s.movl 1       ; SR[1] = xxxx 0001 (low é 1)
    s.movh 0       ; SR[1] = 0000 0001 (1)
    s.sub r2, r1   ; decrementa SR[2] em 1

    s.not r3, r2   ; SR[2] == 0 ? 1 : 0
    s.movl 5       ; SR[1] = 0000 0101 (5)
    s.movh 2       ; SR[1] = 0010 0101 (37)
    s.brzr r3, r1  ; se r3 == 0, volta para inst. 37

s.movl 7           ; SR[1] = 0010 1111 (47)
s.movh 3           ; SR[1] = 0011 1111 (63)
s.brzr r0, r1      ; "break", retorna à inst. 63