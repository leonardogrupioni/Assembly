# ======================================================================================
# Lista 3 - Exercício 2
# ======================================================================================
# Um número “a” é considerado um quadrado perfeito quando é possível obter este
# número a partir do quadrado de um outro número (?2 = ?). Faça um código em
# assembly do MIPS que dado um número, armazenado em t0, verifica se o número é um
# quadrado perfeito. Caso ele seja, deverá ser apresentada na tela a mensagem “Quadrado Perfeito”
# , caso contrário, deverá ser apresentada na tela a mensagem “Não é Quadrado Perfeito”.
# (Dica: elevar um número ao quadrado é a mesma coisa que multiplica-lo por ele mesmo).

.data 
  in:   .asciiz "Digite um número: "
  qp:	.asciiz "Quadrado Perfeito"
  nqp:  .asciiz "Nao é Quadrado Perfeito"

.text
  
  # Apresentacao da primeira mensagem (syscall codigo 4)		
  addi 	$v0, $zero, 4  			
  la 	$a0, in		
  syscall      			

  # Recebe input numero inteiro do usuario em v0 (syscall codigo 5)
  addi 	$v0, $zero, 5
  syscall 
  
  move $t0, $v0	# t0 recebe o numero digitado
  			
addi $t1, $zero, 0	# Fator comeca com 0
mul $t2, $t1, $t1 	# t2 = Fator * Fator

loop:
	beq $t2, $t0, quadradoPerfeito	# Se os numeros forem iguais, eh um quadrado perfeito
	bgt $t2, $t0, nao		# Se o quadrado do fator for maior que o numero, entao ele nao eh um quadrado perfeito
	addi $t1, $t1, 1		# Fator = Fator + 1
	mul $t2, $t1, $t1 		# t2 = Fator * Fator
	j loop
	
quadradoPerfeito:
  	# Apresentacao da mensagem (syscall codigo 4)		
  	addi 	$v0, $zero, 4  			
  	la 	$a0, qp		
  	syscall      	
  	j fim
nao:
  	# Apresentacao da mensagem (syscall codigo 4)		
  	addi 	$v0, $zero, 4  			
  	la 	$a0, nqp		
  	syscall 
fim: