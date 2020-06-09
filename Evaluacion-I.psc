Proceso Facturacion
	Definir nombre, contact, direccion, producto, continua como Caracter;
	Definir cantidad, nro_art, fila como Entero;
	Definir pre_unit, total como Real;
	// Arreglo para guardar los datos de la Factura..
	Dimension producto[9];
	Dimension cantidad[9];
	Dimension pre_unit[9];
	
	Escribir '********************************************************';
	Escribir '               PANADERÍA LA SORPRESA S.A.';
	Escribir '********************************************************';
	Escribir ' ';
	Escribir '               INGRESE DATOS DEL CLIENTE';
	Escribir '========================================================';
	Escribir 'Nombre: ';
	Leer nombre;
	Escribir 'Teléfono: ';
	Leer contact;
	Escribir 'Dirección: ';
	Leer direccion;
		Escribir ' ';
		Escribir '                  INGRESE PRODUCTOS';
		Escribir '========================================================';
		continua <- 's';
		nro_art <- 1;
		
		Repetir
			Escribir 'Producto Nro ',nro_art, ':';Leer producto(nro_art);
			Escribir 'Cantidad: '; Leer cantidad(nro_art);
			Escribir 'Precio Unitario $:';Leer pre_unit(nro_art);
			nro_art <- nro_art + 1;
			Escribir 'INGRESA OTRO PRODUCTO (s/n)?';Leer continua;
			Escribir ' ';
		Hasta Que continua = 'n';
		
		Escribir ' '; Escribir 'FACTURA Nro 0000-1';
		Escribir '========================================================';
		Escribir ' ';
		Escribir 'EMPRESA  : PANADERÍA LA SORPRESA S.A.  FECHA: 05/06/2020';
		Escribir 'CLIENTE  : ', nombre,'                                  ';
		Escribir 'DIRECCIÓN: ', direccion;                 
		Escribir '========================================================';
		Escribir 'CANTIDAD   DESCRIPCIÓN          PRE.UNIT       PRE.TOTAL';
		Escribir ' ';
		
		Para fila <- 1 Hasta nro_art-1 Con Paso 1 Hacer
			total <- cantidad(fila) * pre_unit(fila);
			Escribir cantidad(fila),'          ',producto(fila),'             $',pre_unit(fila),'         $',  total;
			total <- total + cantidad(fila) * pre_unit(fila);
		FinPara
		
		Escribir '========================================================';
		Escribir '                                      PRE.TOTAL  $',total;
		Escribir ' ';
FinProceso
