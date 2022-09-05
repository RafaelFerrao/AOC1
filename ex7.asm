# Escreva um programa que calcule o valor de
# 4x - 2y + 3z (armazene os valores de x, y e z em $t1, $t2 e $t3,
# respectivamente) e coloque o resultado em $t7. Faça testes com alguns
# valores diferentes de x, y e z. Utilize apenas instruções já vistas na
# disciplina.

addi $t1, $zero, -2
addi $t2, $zero, 3
addi $t3, $zero, -1

sll $t4, $t1, 2
sll $t5, $t2, 1
sll $t6, $t3, 1
add $t6, $t6, $t3

sub $t7, $t4, $t5
add $t7, $t7, $t6


