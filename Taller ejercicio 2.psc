Algoritmo Sin_Titulo
	
	Definir numSensores, opcion Como Entero
	Definir temperaturas Como Real
	Dimension temperaturas[100] 
	Definir sumaTotal, temperaturaFahrenheit Como Real
	Definir sensoresBajos, sensoresAltos, sensoresNormales Como Entero
	Definir lecturasProcesadas Como Logico
	
	sumaTotal <- 0
	sensoresBajos <- 0
	sensoresAltos <- 0
	sensoresNormales <- 0
	lecturasProcesadas <- Falso
	numSensores <- 0
	
	Repetir
		Escribir "1. Configurar número de sensores"
		Escribir "2. Registrar lecturas de temperatura"
		Escribir "3. Mostrar resumen completo"
		Escribir "4. Ver sensores en condiciones críticas"
		Escribir "5. Ver conversión a Fahrenheit"
		Escribir "6. Reiniciar lecturas"
		Escribir "7. Salir del programa"
		Escribir "Seleccione una opción: " 
		Leer opcion
		
		Segun opcion Hacer
			Caso 1:
				ConfigurarSensores(numSensores)
			Caso 2:
				Si numSensores > 0 Entonces
					RegistrarLecturas(numSensores, temperaturas, sumaTotal, sensoresBajos, sensoresAltos, sensoresNormales)
					lecturasProcesadas <- Verdadero
				Sino
					Escribir "Error: Debe configurar primero el número de sensores."
				FinSi
				
			Caso 3:
				Si lecturasProcesadas Entonces
					MostrarResumenCompleto(numSensores, temperaturas, sumaTotal, sensoresBajos, sensoresAltos, sensoresNormales)
				Sino
					Escribir "Error: No hay lecturas registradas."
				FinSi
				
			Caso 4:
				Si lecturasProcesadas Entonces
					MostrarCondicionesCriticas(numSensores, temperaturas, sensoresBajos, sensoresAltos)
				Sino
					Escribir "Error: No hay lecturas registradas."
				FinSi
			Caso 5:
				Si lecturasProcesadas Entonces
					temperaturaFahrenheit <- ConvertirAFahrenheit(sumaTotal)
					Escribir "Suma total en Celsius: ", sumaTotal, "°C"
					Escribir "Suma total en Fahrenheit: ", temperaturaFahrenheit, "°F"
				Sino
					Escribir "Error: No hay lecturas registradas."
				FinSi
				
			Caso 6:
				ReiniciarLecturas(sumaTotal, sensoresBajos, sensoresAltos, sensoresNormales, lecturasProcesadas)
				
			Caso 7:
				Escribir "Gracias por usar el Sistema de Sensores Térmicos"
				Escribir "Sistema cerrado correctamente."
				
			De Otro Modo:
				Escribir "Error: Opción no válida. Seleccione un número del 1 al 7."
		FinSegun
		
		Si opcion <> 7 Entonces
			Escribir "Presione cualquier tecla para continuar..."
			Esperar Tecla
		FinSi
		
	Hasta Que opcion = 7
	
FinAlgoritmo

SubProceso ConfigurarSensores(numSensores Por Referencia)
    Repetir
        Escribir "Ingrese el número de sensores a monitorear (1-100): " 
        Leer numSensores
        
        Si numSensores < 1 O numSensores > 100 Entonces
            Escribir "Error: El número debe estar entre 1 y 100."
        FinSi
    Hasta Que numSensores >= 1 Y numSensores <= 100
    
    Escribir "Configuración exitosa: ", numSensores, " sensores listos para monitorear."
FinSubProceso

SubProceso RegistrarLecturas(numSensores, temperaturas Por Referencia, sumaTotal Por Referencia, sensoresBajos Por Referencia, sensoresAltos Por Referencia, sensoresNormales Por Referencia)
    Definir i Como Entero
    Definir temp Como Real
    Definir tempValida Como Logico
    
    sumaTotal <- 0
    sensoresBajos <- 0
    sensoresAltos <- 0
    sensoresNormales <- 0
    
    Escribir "Ingrese las temperaturas de cada sensor (0-100°C):"
    
    Para i <- 1 Hasta numSensores Hacer
        tempValida <- Falso
        
        Repetir
            Escribir "Sensor ", i, ": "
            Leer temp
            
            Si temp >= 0 Y temp <= 100 Entonces
                temperaturas[i] <- temp
                sumaTotal <- sumaTotal + temp
                tempValida <- Verdadero
                
                Si temp < 20 Entonces
                    sensoresBajos <- sensoresBajos + 1
                    Escribir "Temperatura BAJA - Condición crítica"
                SiNo
                    Si temp > 80 Entonces
                        sensoresAltos <- sensoresAltos + 1
                        Escribir "Temperatura ALTA - Condición crítica"
                    Sino
                        sensoresNormales <- sensoresNormales + 1
                        Escribir "Temperatura normal"
                    FinSi
                FinSi
            Sino
                Escribir "Error: La temperatura debe estar entre 0 y 100°C. Intente nuevamente."
            FinSi
        Hasta Que tempValida = Verdadero
    FinPara
    
    Escribir "Todas las lecturas han sido registradas exitosamente."
    Escribir "Suma total de temperaturas: ", sumaTotal, "°C"
FinSubProceso

SubProceso MostrarResumenCompleto(numSensores, temperaturas, sumaTotal, sensoresBajos, sensoresAltos, sensoresNormales)
    Definir i Como Entero
    Definir temperaturaFahrenheit, promedio Como Real
    
    temperaturaFahrenheit <- ConvertirAFahrenheit(sumaTotal)
    promedio <- sumaTotal / numSensores
    
    Escribir "Número total de sensores: ", numSensores
    Escribir ""

    Escribir "LECTURAS INDIVIDUALES"
    Para i <- 1 Hasta numSensores Hacer
        Escribir "Sensor ", i, ": ", temperaturas[i], "°C", ObtenerEstadoTemperatura(temperaturas[i])
    FinPara
    
    Escribir "ESTADÍSTICAS GENERALES"
    Escribir "Suma total: ", sumaTotal, "°C"
    Escribir "Temperatura promedio: ", promedio, "°C"
    Escribir "Suma en Fahrenheit: ", temperaturaFahrenheit, "°F"
    
    Escribir "CLASIFICACIÓN POR CONDICIONES"
    Escribir "Sensores normales ( esta entre 20-80°C): ", sensoresNormales
    Escribir "Sensores con temp. baja (menor de 20°C): ", sensoresBajos
    Escribir "Sensores con temp. alta (mayor de 80°C): ", sensoresAltos
    
    Si sensoresBajos > 0 O sensoresAltos > 0 Entonces
        Escribir "ATENCIÓN: ", (sensoresBajos + sensoresAltos), " sensores en condiciones críticas"
    Sino
        Escribir "Todos los sensores están en condiciones normales"
    FinSi
FinSubProceso

SubProceso MostrarCondicionesCriticas(numSensores, temperaturas, sensoresBajos, sensoresAltos)
    Definir i Como Entero
    
    Escribir "SENSORES EN CONDICIONES CRÍTICAS"
    
    Si sensoresBajos = 0 Y sensoresAltos = 0 Entonces
        Escribir "No hay sensores en condiciones críticas."
        Escribir "Todos los sensores están en el rango normal (20-80°C)."
    Sino
        Si sensoresBajos > 0 Entonces
            Escribir "TEMPERATURAS BAJAS (menor 20°C): ", sensoresBajos, " sensores"
            Para i <- 1 Hasta numSensores Hacer
                Si temperaturas[i] < 20 Entonces
                    Escribir "Sensor ", i, ": ", temperaturas[i], "°C"
                FinSi
            FinPara
        FinSi
        
        Si sensoresAltos > 0 Entonces
            Escribir "TEMPERATURAS ALTAS (mayor 80°C): ", sensoresAltos, " sensores"
            Para i <- 1 Hasta numSensores Hacer
                Si temperaturas[i] > 80 Entonces
                    Escribir "Sensor ", i, ": ", temperaturas[i], "°C"
                FinSi
            FinPara
        FinSi
        
        Escribir "Total de sensores críticos: ", (sensoresBajos + sensoresAltos)
    FinSi
FinSubProceso

SubProceso ReiniciarLecturas(sumaTotal Por Referencia, sensoresBajos Por Referencia, sensoresAltos Por Referencia, sensoresNormales Por Referencia, lecturasProcesadas Por Referencia)
    Definir confirmacion Como Caracter
    
    Escribir "REINICIAR LECTURAS"
    Escribir "¿Está seguro de que desea reiniciar todas las lecturas? (1.SI/0.NO): "
    Leer confirmacion
    
    Si confirmacion = "1" O confirmacion = "0" Entonces
        sumaTotal <- 0
        sensoresBajos <- 0
        sensoresAltos <- 0
        sensoresNormales <- 0
        lecturasProcesadas <- Falso
        Escribir "Todas las lecturas han sido reiniciadas."
    Sino
        Escribir "Operación cancelada."
    FinSi
FinSubProceso

Funcion resultado <- ConvertirAFahrenheit(celsius)
    Definir resultado Como Real
    resultado <- (celsius * 9/5) + 32
FinFuncion

Funcion estado <- ObtenerEstadoTemperatura(temp)
    Definir estado Como Caracter
    Si temp < 20 Entonces
        estado <- " (BAJA)"
    SiNo
        Si temp > 80 Entonces
            estado <- " (ALTA)"
        Sino
            estado <- " (Normal)"
        FinSi
    FinSi
FinFuncion

