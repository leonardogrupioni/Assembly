# ======================================================================================
# Lista 2 - Exerc�cio 3
# ======================================================================================
# Com base no c�digo fornecido no Moodle, voc�s dever�o fazer um c�digo que ir� armazenar um valor em um
# endere�o de mem�ria espec�fico da mem�ria de dados do MIPS. 
# O valor armazenado deve ser o inteiro correspondente a soma dos dois �ltimos d�gitos do seu RA. 
# O endere�o de mem�ria deve ser a pr�xima posi��o valida a partir do in�cio,  onde o offset � a soma dos d�gitos do seu RA.

# Exemplo de RA gen�rico: 7557734
# A soma de todos os digitos do RA eh 38. Logo, a posicao de memoria deve ter offset de 40 (38 n�o � m�ltiplo de 4)

addi $t0, $zero, 268500992	# t0 = 268500992 (endereco de inicio da memoria de dados)
addi $t1, $zero, 3      	# t1 = 3
addi $t2, $zero, 4      	# t1 = 4
add  $t3, $t1, $t2		# t3 = t1 + t2 = 3 + 4 = 7
sw $t3, 40($t0)			# Armazena o valor de t3 na endereco de memoria com offset 40 do primeiro endereco
