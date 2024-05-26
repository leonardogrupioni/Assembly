# ======================================================================================
# Lista 1 - Exercicio 2
# ======================================================================================
# Faça um código em assembly do MIPS que dados dois números, armazenados em t0 e t1, 
# calcula o maior destes números e o armazena em t5

addi $t0, $zero, 5		
addi $t1, $zero, 8		

slt $t2, $t0, $t1		# t2 = (t0 < t1 ?)
beq $t2, 1, segundoMaior	# t2 == 1? Se sim, pula para label "segundoMaior"

primeiroMaior:			
	add $t5, $t0, $zero	# t5 = t1
	j fim			# Pula para label "fim"
	
segundoMaior:
	add $t5, $t1, $zero	# t5 = t0
	j fim			# Pula para label "fim"
	
fim:				# Fim do programa
