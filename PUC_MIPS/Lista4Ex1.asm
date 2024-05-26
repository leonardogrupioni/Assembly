# ======================================================================================
# Lista 4 - Exercício 1
# ======================================================================================
# Faça um código em assembly do MIPS que dado um número, armazenado em t0, realiza uma chamada de procedimento
# que verifica se o numero eh par ou nao. Caso o numero seja par, apos o retorno da funcao deve ser armazenado 
# o valor 2 em t5. Caso contrario, deve ser armazenado o valor 3 em t5.

addi $t0, $zero, 8    # t0 = 8
add $a0, $zero, $t0   # a0 = t0 = 8
jal fpar              # JAL (jump and link) chama a funcao "fpar"
beq $v0, 0, par       # (v0 = 0)? Se sim, o numero eh par

impar: addi $t5, $zero, 3  # Se o numero for impar , armazena 3 em t5
       j fim               # Pula para o fim do codigo
       
par: addi $t5, $zero, 2    # Se o numero for par , armazena 2 em t5
     j fim                 # Pula para o fum do codigo

# ====================================== Bloco contendo a funcao ================================================
fpar:
    addi $sp,$sp,-4     # Volta o stack pointer para a posicao anterior
    sw $t0, 0($sp)      # Armazena o valor contido na posicao anterior do stack pointer
    
    rem $v0, $a0, 2     # Armazena o resto da divisao a0/2 e armazena a resposta no registrador de saida v0
    
    lw $t0, 0($sp)      # Carraga o valor armazenado anteriormente na nova posicao do stack pointer
    addi $sp,$sp,4      # Avanca o stack pointer uma posicao
    
    jr $ra              # Retorna da funcao
# ================================================================================================================

fim: