#Escreva a sequência 0x12345678 em $t1. A seguir, escreva um código
#que inverta a sequência, escrevendo 0x87654321 em $t2. Obviamente o
#código deve inverter os bits de $t1 e não simplesmente
#escrever 0x87654321 diretamente em $t2.

ori $t1, $zero, 0x12345678

sll $t3, $t1, 28
srl $t4, $t1, 4
sll $t4, $t4, 28
srl $t4, $t4, 4

srl $t5, $t1, 8
sll $t5, $t5, 28
srl $t5, $t5, 8

srl $t6, $t1, 12
sll $t6, $t6, 28
srl $t6, $t6, 12

srl $t7, $t1, 16
sll $t7, $t7, 28
srl $t7, $t7, 16

srl $t8, $t1, 20
sll $t8, $t8, 28
srl $t8, $t8, 20

or $t2, $t3, $t4
or $t2, $t2, $t5
or $t2, $t2, $t6
or $t2, $t2, $t7
or $t2, $t2, $t8

srl $t3, $t1, 24
sll $t3, $t3, 28
srl $t3, $t3, 24

srl $t4, $t1, 28
sll $t4, $t4, 28
srl $t4, $t4, 28

or $t2, $t2, $t3
or $t2, $t2, $t4

