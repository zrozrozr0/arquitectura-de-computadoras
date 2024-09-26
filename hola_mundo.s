#imprimir en consola

	.data
msg: 	.asciiz "Hello World \n\n"
asdf: .asciiz "Hola mundo"

	.text

main:	

la $a0, msg		#argument string Y Carga la dirección de memoria de una etiqueta.
li $v0, 4 	#syscall 4 (print_str) Imprime la cadena de caracterer en la salida estándar
syscall

la $a0, asdf 	#argument string
li $v0, 4 	#syscall 4 (print_str) Imprime la cadena de caracterer en la salida estándar

	syscall 	#escribe en consola $a0
  
  	jr $ra		#return to caller