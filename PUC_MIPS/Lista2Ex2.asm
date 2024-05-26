# ======================================================================================
# Lista 2 - Exercício 2
# ======================================================================================
# Faça um código em assembly do MIPS que dado um número, armazenado em t0, 
# implementa o algoritmo de multiplicação por somas sucessivas. 
# O resultado da multiplicação deverá ser armazenado na posição inicial da memória de dados do MIPS.
# Para facilitar a implementação, considere que o número sempre será um número positivo.

addi $t0, $zero, 7	# Numero arbitrario (A)		
addi $t1, $zero, 5	# Numero arbitrario (B)		
addi $t2, $zero, 0	# Multiplicacao
addi $t3 $zero, 268500992	# t3 = 268500992 (endereco de inicio da memoria de dados)
loop:
	beq $t1, $zero, fim	# Se o numero decrementar ate o 0 pula pro fim
	add $t2, $t2, $t0	# Mul = Mul + A
	addi $t1, $t1, -1	# B = B - 1
	j loop

fim:
	sw $t2, ($t3)	# Armazena o resultado da multiplicacao na posicao inicial da memoria de dados do MIPS
