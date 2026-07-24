Algoritmo archivo_de_clientes
	Definir opcion, totalClientes Como Entero
	Definir i, j Como Entero
	Definir idBuscar Como Entero
	Definir siguienteID Como Entero
	Definir encontrado Como Logico
	Definir id Como Entero
	Definir cliente Como Caracter
	Definir documento Como Caracter
	Definir telefono Como Caracter
	Definir correo Como Caracter
	Definir direccion Como Caracter
	Definir ciudad Como Caracter
	Definir estado Como Caracter
	Dimension id[100]
	Dimension cliente[100]
	Dimension documento[100]
	Dimension telefono[100]
	Dimension correo[100]
	Dimension direccion[100]
	Dimension ciudad[100]
	Dimension estado[100]
	totalClientes <- 0
	siguienteID <- 1
	//-------------------------------------//
	//--|menu_principal_archivo_clientes|--//
	//-------------------------------------//
	Repetir
		Escribir "menu principal archivo de clientes"
		Escribir "1) registrar cliente"
		Escribir "2) editar cliente"
		Escribir "3) eliminar cliente"
		Escribir "4) buscar cliente"
		Escribir "5) listar clientes"
		Escribir "6) ver detalles del cliente"
		Escribir "7) mostrar estadisticas"
		Escribir "8) salir"
		Escribir "seleccione una opcion:"
		Leer opcion
		Segun opcion Hacer
			//-----------------------//
			//--|registrar_cliente|--//
			//-----------------------//
			1:
				Escribir "registrar cliente"
				id[totalClientes+1] <- siguienteID
				siguienteID <- siguienteID + 1
				Escribir "id asignado: ", id[totalClientes+1]
				Escribir "ingrese el nombre del cliente:"
				Leer cliente[totalClientes+1]
				Escribir "ingrese el documento:"
				Leer documento[totalClientes+1]
				Escribir "ingrese el telefono:"
				Leer telefono[totalClientes+1]
				Escribir "ingrese el correo:"
				Leer correo[totalClientes+1]
				Escribir "ingrese la direccion:"
				Leer direccion[totalClientes+1]
				Escribir "ingrese la ciudad:"
				Leer ciudad[totalClientes+1]
				Escribir "ingrese el estado (activo/inactivo):"
				Leer estado[totalClientes+1]
				totalClientes <- totalClientes + 1
				Escribir "cliente registrado correctamente."
			//--------------------//
			//--|editar_cliente|--//
			//--------------------//
			2:
				Escribir "editar cliente"
				Si totalClientes = 0 Entonces
					Escribir "no hay clientes registrados."
				SiNo
					Escribir "datos registrados a editar"
					Para i <- 1 Hasta totalClientes Hacer
						Escribir id[i], " | ", cliente[i], " | ", documento[i], " | ", telefono[i], " | ", correo[i], " | ", direccion[i], " | ", ciudad[i], " | ", estado[i]
					FinPara
					Escribir "ingrese el id del cliente:"
					Leer idBuscar
					encontrado <- Falso
					Para i <- 1 Hasta totalClientes Hacer
						Si id[i] = idBuscar Entonces
							encontrado <- Verdadero
							Escribir "ingrese el nuevo nombre del cliente:"
							Leer cliente[i]
							Escribir "ingrese el nuevo documento:"
							Leer documento[i]
							Escribir "ingrese el nuevo telefono:"
							Leer telefono[i]
							Escribir "ingrese el nuevo correo:"
							Leer correo[i]
							Escribir "ingrese la nueva direccion:"
							Leer direccion[i]
							Escribir "ingrese la nueva ciudad:"
							Leer ciudad[i]
							Escribir "ingrese el nuevo estado:"
							Leer estado[i]
							Escribir "cliente editado correctamente."
						FinSi
					FinPara
					Si encontrado = Falso Entonces
						Escribir "no se encontró un cliente con ese id."
					FinSi
				FinSi
			//----------------------//
			//--|eliminar_cliente|--//
			//----------------------//
			3:
				Escribir "eliminar cliente"
				Si totalClientes = 0 Entonces
					Escribir "no hay clientes registrados."
				SiNo
					Escribir "datos registrados a eliminar"
					Para i <- 1 Hasta totalClientes Hacer
						Escribir id[i], " | ", cliente[i], " | ", documento[i], " | ", telefono[i], " | ", correo[i], " | ", direccion[i], " | ", ciudad[i], " | ", estado[i]
					FinPara
					Escribir "ingrese el id del cliente:"
					Leer idBuscar
					encontrado <- Falso
					Para i <- 1 Hasta totalClientes Hacer
						Si id[i] = idBuscar Entonces
							encontrado <- Verdadero
							Si i < totalClientes Entonces
								Para j <- i Hasta totalClientes - 1 Hacer
									id[j] <- id[j+1]
									cliente[j] <- cliente[j+1]
									documento[j] <- documento[j+1]
									telefono[j] <- telefono[j+1]
									correo[j] <- correo[j+1]
									direccion[j] <- direccion[j+1]
									ciudad[j] <- ciudad[j+1]
									estado[j] <- estado[j+1]
								FinPara
							FinSi
							totalClientes <- totalClientes - 1
							Escribir "cliente eliminado correctamente."
						FinSi
					FinPara
					Si encontrado = Falso Entonces
						Escribir "no se encontró un cliente con ese id."
					FinSi
				FinSi
			//--------------------//
			//--|buscar_cliente|--//
			//--------------------//
			4:
				Escribir "buscar cliente"
				Si totalClientes = 0 Entonces
					Escribir "no hay clientes registrados."
				SiNo
					Escribir "ingrese el id del cliente:"
					Leer idBuscar
					encontrado <- Falso
					Para i <- 1 Hasta totalClientes Hacer
						Si id[i] = idBuscar Entonces
							encontrado <- Verdadero
							Escribir "datos encontrados"
							Escribir id[i], " | ", cliente[i], " | ", documento[i], " | ", telefono[i], " | ", correo[i], " | ", direccion[i], " | ", ciudad[i], " | ", estado[i]
						FinSi
					FinPara
					Si encontrado = Falso Entonces
						Escribir "no se encontró un cliente con ese id."
					FinSi
				FinSi
			//---------------------//
			//--|listar_clientes|--//
			//---------------------//
			5:
				Escribir "listar clientes"
				Si totalClientes = 0 Entonces
					Escribir "no hay clientes registrados."
				SiNo
					Escribir "datos registrados"
					Para i <- 1 Hasta totalClientes Hacer
						Escribir id[i], " | ", cliente[i], " | ", documento[i], " | ", telefono[i], " | ", correo[i], " | ", direccion[i], " | ", ciudad[i], " | ", estado[i]
					FinPara
				FinSi
			//--------------------------//
			//--|ver_detalles_cliente|--//
			//--------------------------//
			6:
				Escribir "ver detalles del cliente"
				Si totalClientes = 0 Entonces
					Escribir "no hay clientes registrados."
				SiNo
					Escribir "ingrese el id del cliente:"
					Leer idBuscar
					encontrado <- Falso
					Para i <- 1 Hasta totalClientes Hacer
						Si id[i] = idBuscar Entonces
							encontrado <- Verdadero
							Escribir "detalles del cliente"
							Escribir "id: ", id[i]
							Escribir "cliente: ", cliente[i]
							Escribir "documento: ", documento[i]
							Escribir "telefono: ", telefono[i]
							Escribir "correo: ", correo[i]
							Escribir "direccion: ", direccion[i]
							Escribir "ciudad: ", ciudad[i]
							Escribir "estado: ", estado[i]
						FinSi
					FinPara
					Si encontrado = Falso Entonces
						Escribir "no se encontró un cliente con ese id."
					FinSi
				FinSi
			//--------------------------//
			//--|mostrar_estadisticas|--//
			//--------------------------//
			7:
				Escribir "mostrar estadisticas"
				Si totalClientes = 0 Entonces
					Escribir "no hay clientes registrados."
				SiNo
					totalActivos <- 0
					totalInactivos <- 0
					Para i <- 1 Hasta totalClientes Hacer
						Si estado[i] = "activo" Entonces
							totalActivos <- totalActivos + 1
						SiNo
							totalInactivos <- totalInactivos + 1
						FinSi
					FinPara
					Escribir "estadistica general"
					Escribir "total de clientes: ", totalClientes
					Escribir "clientes activos: ", totalActivos
					Escribir "clientes inactivos: ", totalInactivos
				FinSi
			//------------------------------//
			//--|salir_del_menu_principal|--//
			//------------------------------//
			8:
				Escribir "gracias por utilizar archivo de clientes."
			De Otro Modo:
				Escribir "opcion no valida."
		FinSegun
	Hasta Que opcion = 8
FinAlgoritmo