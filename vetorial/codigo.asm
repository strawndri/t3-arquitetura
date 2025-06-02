; -- zerando registradores --
v.sub r1, r1  
v.sub r2, r2  
v.sub r3, r3 

s.sub r1, r1  
s.sub r2, r2  
s.sub r3, r3  

v.add r2, r0
v.add r3, r0

v.movl 4 
s.movl 3
s.add r2, r1

loop_A:
    s.movl 7
    s.movh 1
    s.brzr r2, r1

    v.st r3, r2
    v.add r2, r1
    v.add r3, r1

    s.movl 1
    s.movh 0
    s.sub r2, r1

    s.movl 11
    s.movh 0
    s.brzr r0, r1

s.movl 3
s.movh 0
s.add r2, r1

v.movl 8
v.add r3, r1
v.movl 4

loop_B:
    s.movl 9
    s.movh 2
    s.brzr r2, r1

    v.st r3, r2
    v.add r2, r1
    v.add r3, r1

    s.movl 1
    s.movh 0
    s.sub r2, r1

    s.movl 13
    s.movh 1
    s.brzr r0, r1

s.movl 3
s.movh 0
s.add r2, r1

v.sub r3, r3

loop_R:
    s.movl 8
    s.movh 3
    s.brzr r2, r1

    v.st r3, r2
    v.add r2, r1

    s.movl 1
    s.movh 0
    s.sub r2, r1

    s.movl 13
    s.movh 2
    s.brzr r0, r1

s.movl 3
s.movh 0
s.add r2, r1

v.sub r2, r2
v.add r2, r0

loop_soma:
    s.movl 3
    s.movh 5
    s.brzr r2, r1

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

    v.movl 4
    v.add r2, r1

    s.movl 1
    s.movh 0
    s.sub r2, r1

    s.movl 14
    s.movh 3
    s.brzr r0, r1