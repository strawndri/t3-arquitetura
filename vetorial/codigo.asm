; -- zerando registradores --
v.sub r1, r1  
v.sub r2, r2  
v.sub r3, r3 

s.sub r1, r1  
s.sub r2, r2  
s.sub r3, r3  

v.add r2, r0
v.add r3, r0

s.movl 3
s.add r2, r1

loop_A:
    v.st r3, r2
    v.inc r2, r2
    v.inc r3, r3

    s.movl 1
    s.sub r2, r1

    s.not r3, r2
    s.movl 11
    s.brzr r3, r1

s.movl 3
s.add r2, r1

v.movl 8
v.add r3, r1

loop_B:
    v.st r3, r2
    v.inc r2, r2
    v.inc r3, r3

    s.movl 1
    s.movh 0
    s.sub r2, r1

    s.not r3, r2
    s.movl 6
    s.movh 1
    s.brzr r3, r1

s.movl 3
s.movh 0
s.add r2, r1

v.sub r2, r2
v.add r2, r0

loop_soma:
    v.ld r3, r2
    v.movl 12
    v.add r2, r1
    v.ld r1, r2

    v.add r3, r1
    v.movl 12
    v.movh 0
    v.add r2, r1
    v.st r3, r2

    v.sub r2, r1
    v.sub r2, r1

    v.inc r2, r2

    s.movl 1
    s.movh 0
    s.sub r2, r1

    s.not r3, r2
    s.movl 5
    s.movh 2
    s.brzr r3, r1

s.movl 7
s.movh 3
s.brzr r0, r1