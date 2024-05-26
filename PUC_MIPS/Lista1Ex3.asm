# ======================================================================================
# Lista 1 - Exercicio 3
# ======================================================================================
# Transforme o seguinte c�digo descrito com linguagem C em assembly do MIPS:
#     if (x == y)
#          z = 2;
#     else
#          z = 3;
#
#     x deve ser armazenado em t0
#     y deve ser armazenado em t1
#     z deve ser armazenado em t5
#     Escolha valores arbitr�rios para x e y, e n�o se esque�a de testar ambos os casos


addi $t0, $zero, 3	# x	
addi $t1, $zero, 5	# y	

beq $t0, $t1, igual	# x == y ? Se sim, pula para label "igual"

naoigual:			
	addi $t5, $zero, 3	# t5 = z = 3
	j fim			# Pula para label "fim"

igual:				
	add $t5, $zero, 2	# t5 = z = 2
	j fim			# Pula para label "fim" (essa linha � opcional)
	
fim:				# Fim do programa
