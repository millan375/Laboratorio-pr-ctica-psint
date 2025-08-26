Algoritmo calcualdora_geometrica
	Definir triangulo,esfera,rectangulo,cilindro,circulo,radio,cono,generatriz,altura,base Como Real;
	definir submenu_1,submenu_2,menu Como Entero;
	definir datos,volumen,area,texto_area,texto_volumen,terminar Como Caracter;
	datos<- " "
	esfera<-0
	triangulo<-0
	rectangulo<-0
	cilindro<-0
	circulo<-0
	cono<-0
	altura<-0
	base<-0
	radio<-0
	generatriz<-0
	Repetir
	 Escribir "bienvenido a la calculadora geometrica por favor selecciona la categoria [1 <- volumen ,areas<- 2, 3 <- terminar ]";
	 leer menu
		si menu = 2  Entonces
			Escribir "bienvenido al apartado de areas por favor seleccione la figura que desea usar: triangulo <- 1, rectangulo <- 2, circulo <- 3, salir <- 4";
			Leer submenu_1;
			Segun submenu_1 Hacer
				caso 1: 
					Escribir "por favor ingrese la base del triangulo"
					leer base
					Escribir "por favor ingrese la altura del triangulo"
					leer altura
					triangulo<- base * altura / 2;
					Escribir "el area de su triangulo es: " + ConvertirATexto(triangulo);
				Caso 2:
					Escribir "por favor ingrese la base del rectangulo"
					leer base
					Escribir "por favor ingrese la altura del triangulo"
					Escribir altura
					rectangulo<- base * altura
					Escribir "el area de su rectangulo es: " + ConvertirATexto(rectangulo);
				Caso 3:
					Escribir "por favor ingrese el radio de su circulo"
					leer radio;
					circulo<- radio * radio * 3.14;
					Escribir "el area de su circulo es: " + ConvertirATexto(circulo);
				Caso 4: 
					Escribir "volviendo al inicio..."
			FinSegun
		FinSi
		si menu <> 1 y menu <> 2 y menu <> 3 Entonces
			Escribir "error de seleccion volviendo a seleccionar"
		FinSi
		
			si menu = 1 Entonces
					Escribir "bienvenido al apartado de volumenes por favor ingrese la figura geometrica que desea utilizar: esfera <- 1, cilindro <- 2, cono <- 3, salir <- 4";
					leer submenu_2;
					segun submenu_2 Hacer
						caso 1:
							Escribir "por favor ingrese el radio de su esfera"
							leer radio
							esfera<- radio * radio * radio * 3.14;
							esfera<- esfera * 4 
							esfera<- esfera / 3
							Escribir "el area de su esfera es: " + ConvertirATexto(esfera);
						caso 2:
							Escribir "por favor ingrese la altura del cilindro"
							leer altura;
							Escribir "por favor ingrese el radio de la base"
							leer radio
							cilindro<- radio * radio * 3.14;
							cilindro<- cilindro * altura;
							Escribir "el area de su cilindro es: " + ConvertirATexto(cilindro);
						caso 3:
							Escribir "por favor ingrese el radio de la base de su cono"
							leer base
							Escribir "por favor ingrese la alturade su cono"
							leer altura
							Escribir "es un proceso un poco largo primero calcularemos la generatriz";
							generatriz<- base * base + altura * altura;
							generatriz<- raiz(cono);
							Escribir "el valor de la generatriz es: " + ConvertirATexto(generatriz) + "  ahora continuaremos con el area del cono";
							cono<- 3.14 * base * generatriz;
							Escribir "el area de su cono es: " + ConvertirATexto(cono);
						caso 4:
							Escribir "volviendo al inicio..."
							
						FinSegun
						
					FinSi
			
					
		
	Hasta Que menu = 3
	datos<- + "triangulo " + ConvertirATexto(triangulo) + " esfera " + ConvertirATexto(esfera) + " rectangulo " + ConvertirATexto(rectangulo) + " cilindro " + ConvertirATexto(cilindro) + " circulo " + ConvertirATexto(circulo) + " cono " + ConvertirATexto(cono);
	Escribir "finalizando proceso mostrando los resultados de cada figura geometrica seran mostrados en orden en caso de no haber usado esa figura geometrica el resultado sera 0: " + datos;
	
FinAlgoritmo
