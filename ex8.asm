# Faça um programa que calcule a seguinte equação:
# y = 3x^2 - 5x + 13
# Armazene x no registrador $t5 com a instrução addi $t5, $zero, x, substituindo x pelo
# valor desejado, e sempre que precisar o valor de x, utilize o valor armazenado no
# registrador $t5.
# Armazene o resultado y no registrador $t6.
# Faça teste com diferentes valores positivos e negativos de x.
# Faça um teste substituindo a primeira instrução addi por uma instrução ori
# equivalente e responda, nos comentários, qual o resultado quando são usados números
# positivos e números negativos.

addi $t5, $zero, -1 # $t5 <- x
# Ao substituir o addi por um ori, o código acusa um erro,
# pois as pseudo-instruções estão desabilitadas, logo não
# consigo nem forçar o erro a acontecer.
# Caso eu habilite elas, consigo ver no execute que o ori
# acaba invocando alguns comandos a mais, que fazem com que
# o comportamento do ori funcione para valores imediatos negativos.

# 3x^2
mult $t5, $t5 # x^2
mflo $t7 # $t7 <- x^2
sll $t8, $t7, 1 # x^2 * 2
add $t6, $t8, $t7 # x^2 * 2 + x^2 = x^2 * 3

# -5x
sll $t7, $t5, 2
add $t7, $t7, $t5
sub $t6, $t6, $t7

# +13

addi $t6, $t6, 13


 