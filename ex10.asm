# Faça um programa que calcule a área do triângulo equilátero abaixo e escreva o
# resultado em $t3.
# Armazene b em $t1 e h em $t2 utilizando as instruções addi $t1, $zero, b e
# addi $t2, $zero, h, substituindo b e h pelos valores desejados, e sempre que precisar
# de b e h, utilize os valores armazenados nos registradores $t1 e $t2.

addi $t1, $zero, 160
addi $t2, $zero, 120

mult $t1, $t2
mflo $t3
sra $t3, $t3, 1

