main:
	.text
	addi $s0,$0,26 #valor a escribir en $s0
	addi $s1,$0,34 #valor a escribir en $s1
	sw $s0, 8($a1) #a1 es el inicio del segmento de datos, almacena un string y los ordena despues 8 bits 
	sw $s1, 12($a1) #almacena un string y los ordena despues de 12 bits
	lw $a3, 8($a1)	#Carga en memoria el string almacenada desde 8($a1) en adelante
	lw $t0, 12($a1)	#Carga en memoria el string almacenada desde 12($a1) en adelante
	add $a0, $a3, $t0
	addi $v0,$0,1 #Funcion 1, imprimir integer
	syscall #Esribe en consola $a0
	addi $v0, $0, 10 #Funcion para salir
	syscall #llamada para acabr