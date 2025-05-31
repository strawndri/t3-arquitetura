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
    s.movl 8
    s.movh 1
    s.brzr r2, r1

    v.st r3, r2
    v.add r2, r1
    v.add r3, r1

    s.movl 1
    s.movh 0
    s.sub r2, r1

    s.movl 12
    s.movh 0
    s.brzr r0, r1

fim_loop: