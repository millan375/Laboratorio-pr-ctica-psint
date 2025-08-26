Algoritmo calculadora_interactiva_3_
	definir suma, resta, multiplicacion,division,resultado, agregar Como Real
	definir m , r Como entero 
	definir  opciones Como entero 
	Repetir
		escribir "------ menu opcion--------"
		escribir " 1. suma_______ (+) "
		escribir " 2. resta______ (-) "
		escribir " 3. multiplicacion (*) "
		escribir " 4. division___ (/) "
		
		escribir "------- seleccione una opcion------"
		leer opciones
		Si opciones>=1 y opciones<=4 Entonces
			escribir "ingrese el primer numero: "
			leer m 
			escribir " ingrese el segundo numero: "
			leer r
		Fin Si
		Segun opciones Hacer
			caso 1:
				resultado <- m + r
				escribir "resultado", resultado 
			caso 2:
				resultado <- m - r
				escribir " resultado " ,resultado
			caso 3:
				resultado<- m * r
				escribir " resultado ", resultado 
				Si r = 0 Entonces
					Escribir "error , no se puede dividir entre 0 "
				SiNo
					resultado<- m * r
					escribir " resultado ", resultado 
				Fin Si
				escribir " saliendo al menu"
			caso 4:
				resultado<- m / r
				escribir " resultado ", resultado
			De Otro Modo:
				Escribir " opcion no valida"
		Fin Segun
		Si opciones >= 1 Y opciones <= 100 Entonces
			Si resultado = Trunc(resultado) Entonces
				Si resultado % 2 = 0 Entonces
					Escribir "El resultado es PAR."
				SiNo
					Escribir "El resultado es IMPAR."
				FinSi
			SiNo
				Escribir "El resultado no es entero, no aplica par/impar."
			FinSi
		FinSi
		escribir "desea agragar otro calculo [1.Si/0.No]"            
		leer agregar
	Hasta Que agregar<>1
	Escribir " saliendo de la calculadora"
	
FinAlgoritmo
