# ======================================================================================
# Lista 1 - Exercicio 1
# ======================================================================================
# Exemplo de RA genérico 7557734
# O exercico foi feito de 2 maneiras
# A primeira maneira utiliza o menor numero de registradores possiveis
# A segunda maneira mostra a possibilidade de reutilizacao dos registradores

# ---------------- 1a Maneira ----------------
addi $t1, $zero, 7		# t1 = 0  + 7
addi $t1, $t1, 5		# t1 = t1 + 5
addi $t1, $t1, 5		# t1 = t1 + 5
addi $t1, $t1, 7		# t1 = t1 + 7
addi $t1, $t1, 7		# t1 = t1 + 7
addi $t1, $t1, 3		# t1 = t1 + 3
addi $t1, $t1, 4		# t1 = t1 + 4
# --------------------------------------------

# ---------------- 2a Maneira ----------------
addi $t2, $zero, 7		# t2 = 0  + 7
addi $t3, $t2, 5		# t3 = t2 + 5
addi $t2, $t3, 5		# t2 = t3 + 5
addi $t3, $t2, 7		# t3 = t3 + 7
addi $t2, $t3, 7		# t2 = t3 + 7
addi $t3, $t2, 3		# t3 = t2 + 3
addi $t2, $t3, 4		# t2 = t3 + 4
# --------------------------------------------
