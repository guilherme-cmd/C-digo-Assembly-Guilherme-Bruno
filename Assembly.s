.data
# Guardar na memória
mensagem: 	.asciiz "Digite um numero\n"
numero: 	.word 0
numero1: 	.word 0
resultado: 	.word 0

.text

# imprime mensagem
main:	li $v0, 4
		la $a0, mensagem
		syscall
	

# imprime mensagem
        li $v1, 4
		la $a0, mensagem
		syscall


 # lê inteiro
        li $v0, 5 
syscall

# grava numero na memória
sw $v0, numero

# lê inteiro
           li $v1, 5 
syscall

# grava numero na memória
sw $v1, numero1

# Realiza Multiplicação
mul $t0, $v0, $v1

# Grava resultado na memória 
sw $t0,resultado
	
# imprime resultado
li $v0, 1
move $a0, $t0
syscall

jr $ra