# ======================================================================================
# Lista 1 - Exercicio 3
# ======================================================================================
# Transforme o seguinte código descrito com linguagem C em assembly do MIPS:
#     if (x == y)
#          z = 2;
#     else
#          z = 3;
#
#     x deve ser armazenado em t0
#     y deve ser armazenado em t1
#     z deve ser armazenado em t5
#     Escolha valores arbitrários para x e y, e não se esqueça de testar ambos os casos


addi $t0, $zero, 3	# x	
addi $t1, $zero, 5	# y	

beq $t0, $t1, igual	# x == y ? Se sim, pula para label "igual"

naoigual:			
	addi $t5, $zero, 3	# t5 = z = 3
	j fim			# Pula para label "fim"

igual:				
	add $t5, $zero, 2	# t5 = z = 2
	j fim			# Pula para label "fim" (essa linha é opcional)
	
fim:				# Fim do programa
