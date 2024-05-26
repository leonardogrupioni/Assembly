# ======================================================================================
# Lista 1 - Exercicio 4
# ======================================================================================
# Transforme o seguinte código descrito com linguagem C em assembly do MIPS:
#     x = 8;
#     y = 4;
#     i = 2;
#     while(i > 0){
#          y = y + 2;
#          i = i - 1;
#     }
#     z = x + y;
#
#     x deve ser armazenado em t0
#     y deve ser armazenado em t1
#     i deve ser armazenado em t2
#     z deve ser armazenado em t5



addi $t0, $zero, 8	# x	
addi $t1, $zero, 4	# y	
addi $t2, $zero, 2	# i

laco:				# Laco while
	beq $t2, 0, fimlaco	# x == y ? Se sim, pula para label "fimlaco"
	add $t1, $t1, 2		# t1 = t1 + 2 | y = y + 2
	sub $t2, $t2, 1		# t2 = t2 - 1 | i = i - 1
	j laco 			# Pula para label "laco"

fimlaco:
	add $t5, $t0, $t1
