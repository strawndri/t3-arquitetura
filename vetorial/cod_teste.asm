; -- Instruções escalares --
s.movh 0     ; zera r1
s.movl 0     ; zera r1

s.movh 2     ; r1 = 20
s.add r3 r1  ; r3 = 0 + 20 = 20
s.add r3 r3  ; r3 = 20 + 20 = 40
s.st r1 r3   ; M[r3] = r1 (guarda 20 na pos 40)
s.ld r2 r3   ; r2 = M[r3] (guarda 20 no r2)     

; -- instruções vetoriais --
v.movh 0
v.movl 0

v.movh 2
v.add r3 r1
v.add r3 r3

v.st r1 r3
v.ld r2 r3