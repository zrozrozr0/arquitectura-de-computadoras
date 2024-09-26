#imprimir en consola

main:
 .text
   addi $s0, $0, 33 	#valor a escribir en $s0
   addi $s1, $0, 36	#valor a escribir en $s1
   sw $s0, 8($a1)	# $a1 reg de inicio de segmento de datos
   sw $s1, 12($a1)	# sw cargar dato en memoria
   lw $a3, 8($a1)	# lw cargar dato en registro
   lw $t0, 12($a1)
   add $a0, $a3, $t0	#operacion

   addi $v0,$0,1 	#funcion 1, print integer
   syscall 		#escribe en consola $a0
   addi $v0, $0, 10 	#funtion 10, exit
   syscall     	    	#acaba el programa