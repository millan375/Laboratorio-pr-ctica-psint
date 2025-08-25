Algoritmo impresora_funcionamiento
	definir usuario Como Caracter;
	definir paginas_restantes, cantidad_paginas,paginas_totales Como entero;
	Escribir "cual es la cantidad de paginas que contiene la impresora";
	leer paginas_totales
	Mientras paginas_totales > 0 Hacer
		Escribir "ingrese la cantidad de paginas que desea imprimir";
		leer cantidad_paginas;
		si cantidad_paginas <= paginas_totales Entonces
			paginas_restantes<- paginas_totales - cantidad_paginas;
			Escribir "impresion exitosa la cantidad de hojas restantes es: " + ConvertirATexto(paginas_restantes);
		sino 
			Escribir "cantidad de paginas exedida"
		FinSi
		si paginas_restantes = 0 Entonces
			Escribir "no quedan mas paginas para imprimir";
		FinSi
	FinMientras
	
FinAlgoritmo
