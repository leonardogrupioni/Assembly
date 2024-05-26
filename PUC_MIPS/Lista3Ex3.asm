# ======================================================================================
# Lista 3 - Exercício 3
# ======================================================================================
# Faça um código em assembly do MIPS que dados dois números, A e B, digitados pelo usuário, calcula o resto da divisão de A por B.
# Este resto da divisão deverá ser armazenado em t5 (OBS: É possível obter esse valor a partir de algumas rotinas/funções
# do MIPS, mas isso não deverá ser feito aqui). Para facilitar a implementação, considere
# que os números sempre serão números positivos.

.data 
  in:   .asciiz "Digite um número: "
  
.text 

  # Apresentacao da mensagem (syscall codigo 4)		
  addi 	$v0, $zero, 4  			
  la 	$a0, in		
  syscall      	
  
  # Recebe input numero inteiro do usuario em v0 (syscall codigo 5)
  addi 	$v0, $zero, 5
  syscall 
  
  move $t0, $v0 		# t0 recebe o primeiro numero
  
  # Apresentacao da mensagem (syscall codigo 4)		
  addi 	$v0, $zero, 4  			
  la 	$a0, in		
  syscall      	
  
  # Recebe input numero inteiro do usuario em v0 (syscall codigo 5)
  addi 	$v0, $zero, 5
  syscall 
  
  move $t1, $v0 		# t1 recebe o segundo numero

loop:
	beqz $t0, fimzero	# Se o resto for zero, eh uma divisao exata, pula pra fimzero
	bltz $t0, fim		# Se o resto for menor que zero, nao eh uma divisao exata, pula pro fim
	add $t2, $t0, $zero	# t2 = t0 
	sub $t0, $t0, $t1	# t0 = t0 - t1
	j loop
	
fim:
	add $t5, $t2, $zero	# t5 recebe o resto da divisao armazenado em t2
	j f
fimzero:
	addi $t5, $zero, 0
f:
	
