Algoritmo gestion_compras
	Definir opcion,producto_1,producto_2,producto_3,producto_4,registro,precio_1,precio_2,precio_3,precio_4,cantidad,cantidad_disponible,tarjeta,efectivo,transferencia Como real
	Definir usuario,salir,nombre Como Caracter
	definir iva,monto_total,descuento,precio_final,precio Como Real
	Escribir "buenos dias bienvenido a tiendas oxxo por favor ingrese el nombre del usuario";
	leer usuario
	iva<- 0.19
	precio_1<-0
	precio_2<-0
	precio_3<-0
	precio_4<-0
	Repetir
		Escribir "bienvenido usuario: " + usuario + " por favor seleccione una opcion"
		Escribir "1.  producto (a) "
		Escribir "2.  producto (b) "
		Escribir "3.  producto (c) "
		Escribir "4.  producto (d) "
		Escribir "5. salir"
		Leer opcion
		segun opcion hacer 

			caso 1:
				Escribir "por favor ingrese el nombre del producto"
				leer nombre
				Escribir "por favor ingrese la cantidad disponible del producto"
				leer producto_1
				Escribir "por favor ingrese la cantidad que desea comprar"
				leer cantidad
				si producto_1 < cantidad Entonces
					escribir "cantidad disponible excedida por favor verifique y vuelva a iniciar"
				sino 
					Escribir "por favor ingrese el precio de su producto"
					leer precio
					producto_1<- producto_1 - cantidad
					precio_1<- cantidad * precio
					Escribir "compra de:" + nombre + " realizada con exito su total es: $" + ConvertirATexto(precio_1) + " la cantidad de producto restante es: " + ConvertirATexto(producto_1)
				FinSi
			caso 2:
				Escribir "por favor ingrese el nombre del producto"
				Escribir nombre
				Escribir "por favor ingrese la cantidad disponible del ejercicio"
				leer producto_2
				Escribir "por favor ingrese la cantidad que desea comprar"
				leer cantidad
				si producto_2 < cantidad Entonces
					Escribir "cantidad disponible excedida por favor verifique y vuelva a iniciar"
				SiNo
					Escribir "por favor ingrese el precio del producto"
					leer precio
					precio_2<- cantidad * precio
					Escribir "compra de " + nombre + " realizada con exito su total es: $" + ConvertirATexto(precio_2) +  " la cantidad de producto restante es: " + ConvertirATexto(producto_2)
				FinSi
			caso 3:
				Escribir "por favor ingrese el nombre del producto"
				leer nombre
				Escribir "por favor ingrese la cantidad disponible del producto"
				leer producto_3
				Escribir "por favor ingrese la cantidad que desea comprar"
				leer cantidad
				si producto_3 < cantidad Entonces
					Escribir "cantidad disponible excedida por favor verifique y vuelva a iniciar"
				SiNo
					Escribir "por favor ingrese el precio del producto"
					leer precio
					precio_3<- cantidad * precio
					Escribir "compra de: " + nombre + " realizada con exito su total es: $" + ConvertirATexto(precio_3) +  " la cantidad de producto restante es: " + ConvertirATexto(producto_3)
				FinSi
			caso 4:
				Escribir "por favor ingrese el nombre del producto"
				leer nombre
				Escribir "por favor ingrese la cantidad disponible del producto"
				leer producto_4
				Escribir "por favor ingrese la cantidad que desea comprar"
				leer cantidad
				si producto_4 < cantidad Entonces
					Escribir "cantidad disponible excedida por favor verifique y vuelva a iniciar"
				SiNo
					Escribir "por favor escribir el precio del producto"
					leer precio
					precio_4<- cantidad * precio
					Escribir "compra de: " + nombre + " realizada con exito su total es: $" + ConvertirATexto(precio_4) +  " la cantidad de producto restante es: " + ConvertirATexto(producto_4)
				FinSi
		FinSegun
	Hasta Que opcion = 5
	monto_total<- precio_1 + precio_2 + precio_3 + precio_4 
	precio_final<- monto_total * iva
	precio_final<-precio_final + monto_total
	Escribir "iva aplicado con exito el precio de su compra sin iva es: $ " + ConvertirATexto(monto_total) + " y con el iva aplicado es: $" + ConvertirATexto(precio_final);
	Escribir "por favor ingrese el metodo de pago"
	Escribir "1. tarjeta"
	Escribir "2. transferencia"
	Escribir "3. efectivo"
	leer opcion
	segun opcion hacer 
		caso 1:
			descuento<- precio_final * 0.05
			tarjeta<- precio_final - descuento
			Escribir "el precio final de sus compras es: $" + ConvertirATexto(tarjeta)
		caso 2:
			Escribir "el precio final de su compra es: $" + ConvertirATexto(precio_final)
		caso 3:
			descuento<- precio_final * 0.10
			efectivo<- precio_final - descuento
			Escribir "el precio final de sus compras es: $" + ConvertirATexto(efectivo)
	FinSegun
FinAlgoritmo
