#Nomes: Júlia Gachido Schmidt RA00319540
#	Leonardo Fajardo Grupioni RA00319703

#carrega valores especificos nos registradores:
li $t0, 5  #$t0 = 5

add $t5, $t5, $t0  #aramzena o $t0 em $t5 atraves da soma ($t5 = $t5 + $t0 = 0 + 5 = 5)

#inicia o loop, na qual ira acabar apenas com a condição que está dentro
loop:
 	beq $t0, 1, fora   #verifica se $t0 é igual a 1, vai para fora (sai)
 	subi $t0, $t0, 1   #subtrai 1 do valor armazenado em $t0
 	mul $t5, $t0, $t5  #multiplica o valor já subtraido com o $t5
 	j loop  #volta ao inicio do loop

#chamado para finalizar a execução
fora:
 	
 	
