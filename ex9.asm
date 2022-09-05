# y = (9x + 7) / (2x + 8)

addi $t1, $zero, 25 # x = 25, quoc = 4, resto = 0; x = -4, quoc = 0, resto = 0
sll $t2, $t1, 3
add $t2, $t2, $t1
addi $t2, $t2, 7 # $t2 <- 9x + 7

sll $t3, $t1, 1
addi $t3, $t3, 8

div $t2, $t3

mflo $t2
mfhi $t3