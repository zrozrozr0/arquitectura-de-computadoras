#Almacena la constante 40 en memoria, la recupera,
#le suma la constante 50
#se imprime en consola la suma

main:
	.text
	addi $s0,$0,40 #Valor a escribir en $a0
	sw $s0, 8($a1)
	lw $a3, 8($a1)
	addi $a0, $a3, 50
	addi $v0,$0,1 #Funcion 1, print integer
	syscall #Escribe en consola $a0

	addi $v0, $0, 10 #Function 10, exit
	syscall #Acaba el programa
#si se quiere agregar otra constante aumentar 4 a 8, a1 es el inicio del segmento de datos