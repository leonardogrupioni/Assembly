#Nomes: Júlia Gachido Schmidt RA00319540
#	Leonardo Fajardo Grupioni RA00319703

#carrega valores especificos nos registradores:
li $t1, 4   #$t1 = 4 (penultimo digito do RA)
li $t2, 0   #$t2 = 0 (ultimo digito do RA)
li $t6, 4   #$t6 = 4
add $t1, $t1, $t2 #soma os ultimos numeros do RA

div $t1, $t6    #divide a soma por 4, para saber o quociente e se há resto
mflo $t3	#armazena o quociente da divisão no $t3
mfhi $t4	#armazena o resto da divisão no $t4

beq $t4, 0, direto    #verifica se o resto é 0, se for vai para o rotúlo direto
addi $t3, $t3, 1      #soma ao quociente o valor 1 ($t3 = $t3 + 1)
mul $t5, $t3, $t6     #multiplica o quociente com 4, na qual irá ser add ao endereço
j fim

#vem para o direto se $t4 = 0
direto:
	mul $t5, $t3, $t6  #multiplica o quociente com 4, na qual irá ser add ao endereço
	j fim

#eh chamado no fim de cada execução para acabar o programa
fim:    
	addi $t0, $t5, 268500992  #soma o endereço com o valor obtido da mult
	sw $t1, ($t0) #armazena a soma dos ultimos numeros do RA no endereço de memória
