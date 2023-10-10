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

	[opMenu ~= 0] whileTrue:[
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
			] ifFalse: [
				MessageBox notify: 'Tipo de expediente incorrecto'.
			].
		opMenu:=(Prompter prompt: '1 --> Ingresar otro expediente | 0 --> Volver al menu') asNumber.
	].
].

oficina inspect.