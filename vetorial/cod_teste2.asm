v.sub r1, r1
v.sub r2, r2
v.sub r3, r3
v.add r2, r0
v.add r3, r0

sub r1, r1
sub r2, r2
movl 3
add r2, r1

movh 0x1
movl 0x6
brzr r2, r1

v.st r3, r2
v.sub r1, r1
v.movl 4
v.add r2, r1
v.add r3, r1

sub r1, r1
movl 1
sub r2, r1

movh 0x0
movl 0x9
brzr r0, r1