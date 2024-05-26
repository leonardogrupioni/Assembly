# ======================================================================================
# Lista 3 - Exerc�cio 3
# ======================================================================================
# Fa�a um c�digo em assembly do MIPS que dados dois n�meros, A e B, digitados pelo usu�rio, calcula o resto da divis�o de A por B.
# Este resto da divis�o dever� ser armazenado em t5 (OBS: � poss�vel obter esse valor a partir de algumas rotinas/fun��es
# do MIPS, mas isso n�o dever� ser feito aqui). Para facilitar a implementa��o, considere
# que os n�meros sempre ser�o n�meros positivos.

.data 
  in:   .asciiz "Digite um n�mero: "
  
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
	
