# ======================================================================================
# Lista 4 - Exercício 2
# ======================================================================================
# BubbleSort
# Legenda dos registradores:
# t0 - armazena o primeiro valor
# t1 - armazena o segundo  valor
# t2 - armazena o terceiro valor
# t3 - armazena o quarto   valor
# t4 - Recebe resultado de comparacoes
# t5 - Pivo para troca de valores

addi $t0, $zero, 5		# t0 = 5
addi $t1, $zero, 1		# t1 = 1
addi $t2, $zero, 9		# t2 = 9
addi $t3, $zero, 1		# t3 = 1

verifica: 			# Verificacao se o vetor esta ordenado
	sle $t4, $t0, $t1	# (t0 <= t1) ?
	beq $t4, 0, ordena1	# Se nao, deve-se ordenar o vetor
	sle $t4, $t1, $t2	# (t1 <= t2) ?
	beq $t4, 0, ordena2	# Se nao, deve-se ordenar o vetor
	sle $t4, $t2, $t3	# (t2 <= t3) ?
	beq $t4, 0, ordena3	# Se nao, deve-se ordenar o vetor
	j fim			# Pula para o fim do codigo

ordena1:			# Ordena registradores t0 e t1
	add $t5, $t1, $zero	# t5 = t1 (registrador pivo de troca)
	add $t1, $t0, $zero	# t1 = t0
	add $t0, $t5, $zero	# t0 = t5
	j verifica		# Pula para a verificacao do vetor

ordena2:			# Ordena registradores t0 e t1
	add $t5, $t2, $zero	# t5 = t2 (registrador pivo de troca)
	add $t2, $t1, $zero	# t2 = t1
	add $t1, $t5, $zero	# t1 = t5
	j verifica		# Pula para a verificacao do vetor

ordena3:			# Ordena registradores t0 e t1
	add $t5, $t3, $zero	# t5 = t3 (registrador pivo de troca)
	add $t3, $t2, $zero	# t3 = t2
	add $t2, $t5, $zero	# t2 = t5
	j verifica		# Pula para a verificacao do vetor
	
fim:				# Fim do codigo
