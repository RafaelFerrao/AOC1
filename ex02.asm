ori $t1, $zero, 0xAAAAAAAA
srl $t2, $t1, 1
or $t3, $t1, $t2
and $t4, $t1, $t2
xor $t5, $t1, $t2

# $t1 = 10101010101010101010101010101010 - bit mais significativo em 1 indica um número negativo FFFFFFFF
# $t2 = 01010101010101010101010101010101 - bit mais significativo agora está em 0 (positivo) e 
#                                          os demais bits também foram deslocados, obtem-se outro número (55555555)

# $t3 = 11111111111111111111111111111111 - todos os bits em 1, indicando o -1
# $t4 = 00000000000000000000000000000000 - todos os bits em 0, indicando o número 0
# $t5 = 11111111111111111111111111111111 - todos os bits em 1, indicando o -1
