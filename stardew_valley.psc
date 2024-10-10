Algoritmo stardew_valley
	Definir time, maxTime, opcionesLugares, opcionesAcciones, salida Como Entero
	Definir madera, hierro, piedra, semillas, fruta Como Entero
	Definir energia Como Real
	Definir inventario, espacio Como Entero
	Definir hacha, pico Como Logico
	espacio <- 10
	Dimension inventario[espacio]
	energia <- 1
	time <- 1
	maxTime <- 6
	madera <- 0
	hierro <- 0
	semillas <- 0
	fruta <- 0
	piedra <- 0
	hacha <- Falso
	pico <- Falso
	
	menu() //hay que diseñar el menu
	//se empieza el juego de dia, cada momento del dia dura 2 acciones [dia:1,2 tarde:3,4 y noche:5,6]. una vez que duerma se reinicia el time.
	//barra de energia empieza en 1 este uno siendo un 100% y va disminuyendo en porcentajes por acciones,
	//a cierto porcentaje se le pide al jugador que coma una fruta o descanse, el jugador puede seguir jugando.
	//una vez que se agota la energia(0%) se termina el juego.
	// si es de noche no se puede entrar a la mina o el bosque.
	
	
	Mientras energia <> 0 o salida <> 9 Hacer
		si time = maxTime Entonces
			Escribir "Es de noche y te agarro el cuco, has muerto"
			Escribir "Quieres continuar?[1].Si, [9].No"
			Leer salida
		FinSi
		Mientras salida <> 1 o salida <> 9 Hacer
			Escribir "ERROR, no existe opcion"
			Escribir "Quieres continuar?[1].Si, [9].No"
			Leer salida
		FinMientras
		Mientras time <= maxTime o opcionesLugares <> 9 Hacer
			Escribir "Estas en frente de tu casa." "Que quieres hacer?"
			Escribir "[1].Ir al bosque, [2].Ir a la mina, [3].Ir a la granja, [4].Entrar a la casa, [9].salir"
			Leer opcionesLugares
			Mientras opcionesLugares < 1 o opcionesLugares > 4 Hacer
				Escribir "No existe esa opcion"
				Escribir "[1].Ir al bosque, [2].Ir a la mina, [3].Ir a la granja, [4].Entrar a la casa"
				Leer opcionesLugares
			FinMientras
			Mientras time = 5 y opcionesLugares <= 2 Hacer
				Escribir "es de noche, no puedes acceder a este lugar"
				Escribir "[1].Ir al bosque, [2].Ir a la mina, [3].Ir a la granja, [4].Ir a la casa"
				Leer opcionesLugares
			FinMientras
			
			Segun opcionesLugares Hacer
				Caso 1: //ir al bosque (Madera y semillas)
					Escribir "Estas en el bosque, un perfecto lugar para recolectar madera y semillas para tu granja"
					Escribir "Desea: [1].Talar arbol, [2].Recolectar semillas, [3].Volver a la casa?"
					Leer opcionesAcciones
					Mientras opcionesAcciones < 1 o opcionesAcciones > 3 Hacer
						Escribir "No existe esa opcion"
						Escribir "[1].Talar arbol, [2].Recolectar semillas, [3].Volver a la casa"
						Leer opcionesAcciones
					FinMientras
					Segun opcionesAcciones Hacer
						Caso 1:
							madera <- madera + Aleatorio(25, 50)
							energia <- energia - 0.25
						Caso  2:
							semillas <- semillas + Aleatorio(5, 15)
							energia <- energia - 0.05
						Caso 3:
							energia <- energia - 0.01
					FinSegun
					time <- time + 1
				Caso 2: //ir a la mina (piedra y hierro)
					Escribir "Estas en la mina, un perfecto lugar para recolectar piedra y minar hierro"
					Escribir "[1].Recolectar piedras, [2].Minar hirro, [3].Volver a casa"
					Leer opcionesAcciones
					Mientras opcionesAcciones < 1 o opcionesAcciones > 3 Hacer
						Escribir "no existe esta accion"
						Escribir "[1].Recolectar piedras, [2].Minar hierro, [3].Volver a casa"
						Leer opcionesAcciones
					FinMientras
					Segun opcionesAcciones Hacer
						Caso 1:
							piedra <- piedra + Aleatorio(10, 25)
							energia <- energia - 0.10
						Caso 2:
							hierro <- hierro + Aleatorio(5, 10)
						Caso 3:
							energia <- energia - 0.1
					FinSegun
					time <- time + 1
				caso 3: //ir a la granja (sembrar/recolectar)
					Escribir "esta en la granja, aqui puedes recolectar y sembrar alimentos"
					Escribir "[1].recolectar alimento, [2].Sembrar semillas, [3].Regar huerta, [4].volver a la casa"
					Leer opcionesAcciones
					Mientras opcionesAcciones < 1 o opcionesAcciones > 4 Hacer
						Escribir "no existe esta accion"
						Escribir "[1].recolectar alimento, [2].Sembrar semillas, [3].Regar huerta, [4].volver a la casa"
						Leer opcionesAcciones
					FinMientras
					Segun opcionesAcciones Hacer
						Caso 1:
						Caso 2:
						Caso 3:
						Caso 4:
					FinSegun
					time <- time + 1
				Caso 4: //ir a la casa (dormir/guardar matteriales/crear cosas)
				Caso 9: //salir del juego
					salida <- 9
			FinSegun
		FinMientras
	FinMientras
	si energia = 0 Entonces
		Escribir "Te quedaste sin energia, has muerto"
	SiNo
		Escribir "FIN"
		si time = maxTime Entonces
			
		SiNo
			
		FinSi
	FinSi
FinAlgoritmo
Funcion menu
	Escribir "1"
	// hay que hacer el menu
	FinFuncion