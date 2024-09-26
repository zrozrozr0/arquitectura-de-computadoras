#imprimir en consola
main:
.text
	addi $t0,$0,25 #Valor a escribir en $a0
	addi $t1,$0,25 #Valor a escribir en $a0
	add $a0,$t1,$t0 #Valor a escribir en $a0
	addi $v0,$0,1 #Funcion 1, print integer
	syscall #Escribe en consola $a0

	addi $v0, $0, 10 #Function 10, exit
syscall #Aacaba el programa