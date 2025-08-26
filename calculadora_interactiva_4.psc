Algoritmo calculadora_interactiva_4 
	definir opciones Como Entero
	definir cantidad, resultado,agregar Como Real
	Repetir
		escribir "------ menu opcion--------"
		escribir " 1. Convertir kilometros a millas "
		escribir " 2. convertir pulgadas a centimetros "
		escribir " 3. convertir libras a kilogramos "
		escribir " 4. convertir litros a galones "
		
		escribir "------- seleccione una opcion------"
		leer opciones
		Segun opciones Hacer
			caso 1:
				escribir" ingrese la cantidad en kilometros"
				leer cantidad 
				resultado<- cantidad * 0.621
				escribir cantidad," kilometros equivalen a ",resultado,"millas"
			caso 2:
				escribir " ingrese la cantidad en pulgadas "
				leer cantidad 
				resultado<- cantidad * 2.54
				escribir cantidad, "pulgadas equivalen a ", resultado,"centimetros "
			caso 3:
				escribir " ingrese la cantidad en libras "
				leer cantidad 
				resultado<- cantidad * 0.454
				escribir cantidad " libras equivalen a ",resultado," kilogramos"
			caso 4:
				escribir " ingrese la cantidad en litros "
				leer cantidad 
				resultado<- cantidad * 0.264 
				escribir cantidad " litros equivalen a ",resultado," galones"
				
			De Otro Modo:
				Escribir " opcion no valida"
		FinSegun
		
		escribir " desea realizar o agregar otra operacion[1.Si/0.No]" 
		leer agregar
	Hasta Que agregar<>1
	    escribir "saliendo del programa"
	  
	
			
			
		
FinAlgoritmo
