# ======================================================================================
# Lista 2 - Exercício 3
# ======================================================================================
# Com base no código fornecido no Moodle, vocês deverão fazer um código que irá armazenar um valor em um
# endereço de memória específico da memória de dados do MIPS. 
# O valor armazenado deve ser o inteiro correspondente a soma dos dois últimos dígitos do seu RA. 
# O endereço de memória deve ser a próxima posição valida a partir do início,  onde o offset é a soma dos dígitos do seu RA.

# Exemplo de RA genérico: 7557734
# A soma de todos os digitos do RA eh 38. Logo, a posicao de memoria deve ter offset de 40 (38 não é múltiplo de 4)

addi $t0, $zero, 268500992	# t0 = 268500992 (endereco de inicio da memoria de dados)
addi $t1, $zero, 3      	# t1 = 3
addi $t2, $zero, 4      	# t1 = 4
add  $t3, $t1, $t2		# t3 = t1 + t2 = 3 + 4 = 7
sw $t3, 40($t0)			# Armazena o valor de t3 na endereco de memoria com offset 40 do primeiro endereco
