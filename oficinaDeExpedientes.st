oficina := Oficina crearOficina: 'Oficina Bala'.

op:=1.

[op ~= 0] whileTrue: [
    opMenu := (Prompter prompt:  '**** Menu ****
Elija una opcion:
1 --> Registrar Expediente
2 --> Modificar Expediente
3 --> Eliminar Expediente
4 --> Listar Expedientes 
5 --> Eliminar expedientes penales
0 --> Salir del menu') asNumber.

	(opMenu == 0) ifTrue: [
		op := 0.
	].

	"Registro de nuevo expediente en la coleccion"
	[opMenu == 1] whileTrue:[
		num:= (Prompter prompt: 'Ingresar numero de expediente') asNumber.
		titular:= Prompter prompt: 'Ingresar titulo de expediete'.
		day:=(Prompter prompt: 'Ingresar dia') asNumber .
		month:=(Prompter prompt: 'Ingresar mes') asNumber .
		year:= (Prompter prompt: 'Ingresar 1 año') asNumber .
		date:= Date year: year month: month day: day .
		estado:= 'activo'.
		tipoExp := (Prompter prompt: 'Ingresar tipo de expediete: 1=Civil | 2=Penal') asNumber .
			(tipoExp==1) ifTrue: [
				tipoCaso:= TipoDeCaso crearTipoCaso: (Prompter prompt: 'Ingresar tipo de caso').
				interviniente:=Prompter prompt: 'Ingresar Individuo, Empresa u Organizacion'.
				civil :=Civil crearExpCivilNum: num titular: titular fecha: date estado: estado tipoExp: tipoExp tipoCaso: tipoCaso inter: interviniente.
				oficina agregarExp: civil.
			].
			(tipoExp==2) ifTrue: [
				acusado:=Prompter prompt: 'Ingresar acusado'.
				acusacion:= Prompter prompt: 'Ingresar acusacion'.
				pruebasPres:=Prompter prompt: 'Ingresar pruebas presentadas'.
				testimonios:=Prompter prompt: 'Ingresar testimonios'.
				penal:= Penal crearExpPenalNum: num titular: titular fecha: date estado: estado tipoExp: tipoExp acusado: acusado acusacion: acusacion pruebasPres: pruebasPres test: testimonios.
				oficina agregarExp: penal.
			].
		opMenu:=(Prompter prompt: '1 --> Ingresar otro expediente | 0 --> Volver al menu') asNumber.
	].

	"Modificar los detalles de un expediente existente"
	
	[opMenu == 2] whileTrue:[
	
		exp_num:= (Prompter prompt: 'Ingrese el numero del expediente a buscar: ') asNumber.

		collexp:= oficina verTodosExp.

		exp_rec:= collexp detect:[:expediente | expediente verNumero = exp_num] ifNone:[^nil].

			(exp_rec ~= nil) ifTrue: [

				opcion:= (Prompter prompt: 'Opciones a modificar: ,1. Modificar Estado//2.Modificar Fecha de presentación//3.Modificar Titular//4.Modificar Número//0.No modificar nada') asNumber.

				(opcion == 1) ifTrue:[
							otroEstado:=Prompter prompt: 'Ingresar nuevo estado'.
							exp_rec modEstado: otroEstado.
							MessageBox notify: 'Estado modificado'.
				].
				(opcion == 2) ifTrue:[
							otroDia:=(Prompter prompt: 'Ingresar nuevo dia') asNumber .
							otroMes:= (Prompter prompt: 'Ingresar nuevo mes') asNumber .
							otroAnio:= (Prompter prompt: 'Ingresar nuevo anio') asNumber .
							exp_rec modFechadia: otroDia mes: otroMes anio: otroAnio.
							MessageBox notify: 'Fecha de presentacion modificada'.
				].
				(opcion == 3) ifTrue:[
							otroTit:=Prompter prompt: 'Ingresar nuevo titular'.
							exp_rec modTitular: otroTit .
							MessageBox notify: 'Titular modificado'.
				].
				(opcion == 1) ifTrue:[
							otroNum:=Prompter prompt: 'Ingresar nuevo numero de expediente'.
							exp_rec modNumero: otroNum .
							MessageBox notify: 'Numero de expediente modificado'.
				].
				(opcion == 0) ifTrue: [
								MessageBox notify: 'No se modifico nada' .
				].

			] ifFalse:[
				MessageBox notify: 'No se encontro el expediente'.
			].
		opMenu:=(Prompter prompt: '2 --> Modificar otro expediente | 0 --> Volver al menu') asNumber.
	].
].

oficina inspect.