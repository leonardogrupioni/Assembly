# ======================================================================================
# Lista 3 - Exercício 1
# ======================================================================================
# Para este exercício criaremos um medidor imaginário de radiação.
#   Serão feitas três classificações:
#    Tipo 1: Caso o valor de radiação esteja entre 1 e 50 (1 e 50 inclusos)
#    Tipo 2: Caso o valor de radiação esteja entre 51 e 99 (51 e 99 inclusos)
#    Tipo 3: Caso o valor de radiação seja 100.
#   Considere que o usuário irá digitar um valor de radiação, sendo ele um número inteiro positivo
#   com valor no máximo 100.
#   Escreva um código em assembly do MIPS que implemente esse medidor. O programa deverá receber o
#   número inteiro do usuário, e com base no valor deste número, tomar diferentes decisões.
#   Se o número estiver na classificação "Tipo 1", deverá ser armazenado o número 1 em t5.
#   Se o número estiver na classificação "Tipo 2", deverá ser armazenado o número 2 em t5.
#   Se o número estiver na classificação "Tipo 3", deverá ser armazenado o número 3 em t5.

.data 
  message:	.asciiz "Digite o numero de radiacao:"

.text
		
  # Apresentacao da primeira mensagem (syscall codigo 4)		
  addi 	$v0, $zero, 4  			
  la 	$a0, message		
  syscall      			

  # Recebe input numero inteiro do usuario em v0 (syscall codigo 5)
  addi 	$v0, $zero, 5
  syscall 
  add $t0, $v0, $zero  # t0 = v0
  addi $t1, $zero, 51  # t1 = 51
  addi $t2, $zero, 100 # t2 = 100
  
  slt $t3, $t0, $t1    # (t0 < 51) ?
  beq $t3, 1, tipo1   # Se sim, pula para label tipo1

  slt $t3, $t0, $t2   # (t0 < 100) ?
  beq $t3, 1, tipo2   # Se sim, pula para label tipo2
 
  beq $t0, $t2, tipo3 # Caso else (t0 = 100), pula para tipo3
    
tipo1: addi $t5, $zero, 1
       j fim
tipo2: addi $t5, $zero, 2
       j fim
tipo3: addi $t5, $zero, 3
       j fim
fim:       
