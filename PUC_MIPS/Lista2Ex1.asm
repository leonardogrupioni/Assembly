# ======================================================================================
# Lista 2 - Exerc�cio 1
# ======================================================================================
# Fa�a um c�digo em assembly do MIPS que dado um n�mero, armazenado em t0, 
# calcula o fatorial deste n�mero e o armazena em t5. 
# (Dica: voc� pode utilizar a instru��o de multiplica��o do MIPS (mul))

addi $t0, $zero, 5	# Numero arbitrario (num)		
addi $t1, $zero, 1	# Fatorial

bgt $t1, $t0, fim	# Se o numero for menor que 1 pula pro fim

loop:
	beqz $t0, fim		# Se o numero decrementar ate o 0 pula pro fim
	mul $t1, $t1, $t0	# fat = fat * num
	addi $t0, $t0, -1	# num = num - 1 
	j loop

fim:
	add $t5, $zero, $t1 # t5 recebe o fatorial
