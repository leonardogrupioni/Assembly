#Nomes: Júlia Gachido Schmidt RA00319540
#	Leonardo Fajardo Grupioni RA00319703

#carrega valores especificos nos registradores:
li $t0, 15	#$t0 = 15
li $t1, 2	#$t1 = 2
li $t2, 1	#$t2 = 1

slt $t4, $t0, $t1  #verifica se $t0 < $t1, armazenando no $t4 0 ou 1
beq $t4, 0, igual  #verifica se $t4 é igual a 0, se for vai para o rotúlo igual

#colocando os valores carregados em outros registradores, atraves da soma
add $t5, $t5, $t0  #$t5 = $t5 + $t0 = 0 + 15 = 15
add $t6, $t6, $t1  #$t6 = $t6 + $t1 = 0 + 2 = 2
add $t7, $t7, $t1  #$t7 = $t7 + $t1 = 0 + 2 = 2
j loop

#vem direto para igual se $t4 = 0 
igual:
	#colocando os valores carregados em outros registradores, atraves da soma
	add $t5, $t5, $t1  #$t5 = $t5 + $t1 = 0 + 2 = 2
	add $t6, $t6, $t0  #$t6 = $t6 + $t0 = 0 + 15 = 15
	add $t7, $t7, $t0  #$t7 = $t7 + $t0 = 0 + 15 = 15
	j loop

#ao finalizar as somas, vai direto ao loop, na qual continurá as somas
loop:
	beq $t2, $t5, fora #verifica se $t2 = $t5, se for vai para fora
	addi $t2, $t2, 1  #soma o $t2 com um numero especifico, nesse caso o 1
	add $t6, $t6, $t7 #soma os registradores, fazendo a soma sucessiva
	j loop
	
fora:
 
