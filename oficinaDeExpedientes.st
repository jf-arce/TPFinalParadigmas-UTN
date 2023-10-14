oficina := Oficina crearOficina: 'Oficina Bala'.

cliente:= Cliente crearClienteNum: 8 con: 43256891 con: 'Joaco'.
cliente2:= Cliente crearClienteNum: 10 con: 43251473 con: 'German'.
expPruebaCivil3:= Civil crearExpCivilNum:1 titular: 'Gomez' fecha: '4/10/2023' estado: 'activo' tipoExp: 1 tipoCaso: 'divorcio' inter: 'individuo' cliente: cliente.
oficina agregarExp: expPruebaCivil3.
expPruebaCivil:= Civil crearExpCivilNum:1 titular: 'Altamirano' fecha: '4/10/2023' estado: 'activo' tipoExp: 1 tipoCaso: 'divorcio' inter: 'individuo' cliente: cliente.
oficina agregarExp: expPruebaCivil.
expPruebaPenal:= Civil crearExpCivilNum: 2 titular: 'Altamirano' fecha: '12/8/2023' estado: 'activo' tipoExp: 1 tipoCaso: 'divorcio' inter: 'individuo' cliente: cliente.
oficina agregarExp:  expPruebaPenal.
expPruebaPenalCoppola:= Penal crearExpPenalNum: 4 titular: 'Sofia Coppola' fecha: '12/8/2023' estado: 'activo' tipoExp: 2 acusado: 'German' acusacion: 'Robo' pruebasPres: 'pruebas' test: 'nose' cliente: cliente2.
oficina agregarExp:  expPruebaPenalCoppola.
expPruebaPenalCoppola2:= Penal crearExpPenalNum: 4 titular: 'Sofia Coppola' fecha: '12/8/2023' estado: 'activo' tipoExp: 2 acusado: 'German' acusacion: 'Robo' pruebasPres: 'pruebas' test: 'nose' cliente: cliente2.
oficina agregarExp:  expPruebaPenalCoppola2.

"Registro de nuevo expediente en la coleccion"
funcionOpcion1:=[
	numCliente:= (Prompter prompt: 'Ingresar numero del cliente') asNumber.
	dniCuit:=(Prompter prompt: 'Ingresar dni o cuit del cliente') asNumber.
	nombreRazon:=Prompter prompt: 'Ingresar nombre o razon social'.
	cliente:= Cliente crearClienteNum: numCliente con: dniCuit con: nombreRazon.
	num:= (Prompter prompt: 'Ingresar numero de expediente') asNumber.
	titular:= Prompter prompt: 'Ingresar titular del expediente'.
	day:=(Prompter prompt: 'Ingresar dia') asNumber .
	month:=(Prompter prompt: 'Ingresar mes') asNumber .
	year:= (Prompter prompt: 'Ingresar 1 año') asNumber .
	date:= Date year: year month: month day: day .
	estado:= 'activo'.
	tipoExp := (Prompter prompt: 'Ingresar tipo de expediete: 1=Civil | 2=Penal') asNumber .
	(tipoExp==1) ifTrue: [
		tipoCaso:= Prompter prompt: 'Ingresar tipo de caso'.
		interviniente:= ChoicePrompter choices: #('Individuo' 'Empresa' 'Organizacion').
		civil := Civil crearExpCivilNum: num titular: titular fecha: date estado: estado tipoExp: tipoExp tipoCaso: tipoCaso inter: interviniente cliente: cliente.
		oficina agregarExp: civil.
	].
	(tipoExp==2) ifTrue: [
		acusado:=Prompter prompt: 'Ingresar acusado'.
		acusacion:= Prompter prompt: 'Ingresar acusacion'.
		pruebasPres:=Prompter prompt: 'Ingresar pruebas presentadas'.
		testimonios:=Prompter prompt: 'Ingresar testimonios'.
		penal:= Penal crearExpPenalNum: num titular: titular fecha: date estado: estado tipoExp: tipoExp acusado: acusado acusacion: acusacion pruebasPres: pruebasPres test: testimonios cliente: cliente.
		oficina agregarExp: penal.
	].
].

"Modificar los detalles de un expediente existente"
funcionOpcion2:=[
	exp_num:= (Prompter prompt: 'Ingrese el numero del expediente a buscar: ') asNumber.
	collexp:= oficina verTodosExp.
	exp_rec:= collexp detect:[:expediente | expediente verNumero = exp_num] ifNone:[^nil].

	exp_rec ~= nil & (exp_rec verTipoExp == 1) ifTrue: [
		Transcript show: '--- Modificar Expediente Civil N° ', exp_num printString,' ---';cr;cr.
		Transcript show: 'Ingrese una opcion para modificar:';cr.
		Transcript show: '1 - Modificar Estado';cr.
		Transcript show: '2 - Modificar Fecha de presentacion';cr.
		Transcript show: '3 - Modificar Titular';cr.
		Transcript show: '4 - Modificar Numero';cr.
		Transcript show: '5 - Modificar Tipo de caso';cr.
		Transcript show: '6 - Modificar Interviniente';cr.
		Transcript show: '0 - No modificar nada';cr.
		opcion:= ChoicePrompter choices: #(1 2 3 4 5 6 7 0).

		(opcion == 5) ifTrue:[
			otroTipoCaso:=Prompter prompt: 'Ingresar nuevo tipo de caso'.
			exp_rec modTipoCaso: otroTipoCaso.
			MessageBox notify: 'Tipo de caso modificado'.
		].
		(opcion == 6) ifTrue:[
			otroInter:=Prompter prompt: 'Ingresar nuevo interviniente'.
			exp_rec modInterviniente: otroInter .
			MessageBox notify: 'Interviniente modificado'.
		].
	].
	exp_rec ~= nil & (exp_rec verTipoExp == 2) ifTrue: [
		Transcript show: '--- Modificar Expediente Penal N° ', exp_num printString,' ---';cr;cr.
		Transcript show: 'Ingrese una opcion para modificar:';cr.
		Transcript show: '1 - Modificar Estado';cr.
		Transcript show: '2 - Modificar Fecha de presentacion';cr.
		Transcript show: '3 - Modificar Titular';cr.
		Transcript show: '4 - Modificar Numero';cr.
		Transcript show: '5 - Modificar Acusado';cr.
		Transcript show: '6 - Modificar Acusacion';cr.
		Transcript show: '6 - Modificar Pruebas presentadas';cr.
		Transcript show: '6 - Modificar Testimonios';cr.
		Transcript show: '0 - No modificar nada';cr.
		opcion:= ChoicePrompter choices: #(1 2 3 4 5 6 7 0).

		(opcion == 5) ifTrue:[
			otroAcusado:=Prompter prompt: 'Ingresar nuevo acusado'.
			exp_rec modAcusado: otroAcusado.
			MessageBox notify: 'Acusado modificado'.
		].
		(opcion == 6) ifTrue:[
			otraAcusacion:=Prompter prompt: 'Ingresar nueva acusacion'.
			exp_rec modAcusacion: otraAcusacion .
			MessageBox notify: 'Acusacion modificada'.
		].
		(opcion == 7) ifTrue:[
			otrasPruebas:=Prompter prompt: 'Ingresar nuevas pruebas'.
			exp_rec modPruebasPres: otrasPruebas .
			MessageBox notify: 'Pruebas modificadas'.
		].
		(opcion == 8) ifTrue:[
			otrosTest:=Prompter prompt: 'Ingresar nuevos testimonios'.
			exp_rec modTestimonios: otrosTest .
			MessageBox notify: 'Testimonios modificados'.
		].
					
	].
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
	(opcion == 4) ifTrue:[
				otroNum:=Prompter prompt: 'Ingresar nuevo numero de expediente'.
				exp_rec modNumero: otroNum .
				MessageBox notify: 'Numero de expediente modificado'.
	].

	(opcion == 0) ifTrue: [
					MessageBox notify: 'No se modifico nada' .
	].
].

"Eliminar un expediente de la colección"
funcionOpcion3:=[
	exp_elim:=(Prompter prompt: 'Ingrese el numero de expediente a eliminar')asNumber.
	collexp:= oficina verTodosExp.
	exp_rec:= collexp detect:[:expediente | expediente verNumero = exp_elim] ifNone:[^nil].
	(exp_rec ~= nil) ifTrue: [
		oficina eliminarExp: exp_rec.
		MessageBox notify: 'Expediente eliminado'.
	] ifFalse:[
		MessageBox notify: 'No se encontró el expediente'.
	].
].

"Listar expedientes de un tipo especifico"
funcionOpcion4:=[
	exp_tipo:=(Prompter prompt: 'Ingrese tipo de expediente para generar su listado: 1- Civil, 2- Penal') asNumber.
	collExp:= oficina verTodosExp.
	(exp_tipo == 1) ifTrue: [
		colCivil:= collExp select: [:exp | exp verTipoExp = 1].
		Transcript show: '************ Expedientes Civiles ************';cr;cr.
		oficina mostrarExp: colCivil .
		MessageBox notify: 'Se mostraron todos los expedientes Civiles'.
	].
	(exp_tipo == 2) ifTrue: [
		colPenal:= collExp select: [:exp | exp verTipoExp = 2].
		Transcript show: '************ Expedientes Penales ************';cr;cr.
		oficina mostrarExp: colPenal.
		MessageBox notify: 'Se mostraron todos los expedientes Penales'.
	].
	exp_tipo ~= 1 & (exp_tipo ~= 2) ifTrue: [
		MessageBox errorMsg: 'El tipo de expediente no existe'.
	].	
].

"Eliminar expedientes del titular Sofia Coppola"
funcionOpcion5:=[
	collExp:= oficina verTodosExp.
	exp:= collExp select: [:exp | exp verTipoExp = 2 & (exp verTitular = 'Sofia Coppola')].
	(exp isEmpty)ifTrue: [
		MessageBox notify: 'No hay ningun expediente de Sofia Coppola'
	] ifFalse:[
		opcion:= MessageBox confirm: '¿Desea eliminar el los espedientes de Sofia Coppola?'.
		(opcion == true ) ifTrue: [
			exp do: [:expSofia | oficina eliminarExp: expSofia].
			MessageBox notify:'Los expedientes de Sofia Coppola fueron eliminados'.
		] ifFalse: [MessageBox notify: 'No se borró ningun expediente'].
	].
].

"Listar expedientes por numero de cliente especifico"
funcionOpcion6:=[
	numCliente:=(Prompter prompt: 'Ingresar numero de cliente') asNumber.
	collExp:= oficina verTodosExp.
	expRecCliente:= collExp select: [:exp | exp verNumCliente = numCliente ].

	Transcript show: '************ Expedientes del cliente numero: ' ,numCliente printString , ' ************';cr;cr.
	oficina mostrarExp: expRecCliente.
	
	MessageBox notify: 'Se mostraron todos los expedientes del titular ', titularElegido .
].

"Listar expedientes de tipo civil indicando quien es el abogado encargado"
funcionOpcion7:=[
	collExp:= oficina verTodosExp.
        colCivil:= collExp select:[:exp | exp verTipoExp = 1].
	(colCivil isEmpty) ifTrue: [
		MessageBox notify: 'No existen expedientes de tipo Civil'.
	] ifFalse: [
		Transcript show: '***** Expedientes Civiles ******';cr;cr.
		colAbogados:= colCivil collect: [:exp | exp verTitular ].
		abogadosOrdenados:= (colAbogados asSet) asSortedCollection.
		
		abogadosOrdenados do: [:abogado | 
			colExpAbogado:=colCivil select: [: exp | exp verTitular = abogado].
			Transcript show: '************ Expedientes del abogado: ',abogado, ' ************';cr;cr.
			oficina mostrarExp: colExpAbogado.
		].
		MessageBox notify: 'Se mostraron todos los expedientes Civiles'.
	].
].

"OPCION ERRONEA"
errorOpcion:=[MessageBox errorMsg: 'Por favor, ingrese una opcion valida'].

"Creacion del menu"
funcionMenu:=[
	Transcript showShell;clear;cr. 
	Transcript show:'EMPRESA: ', (oficina verNombre)printString;cr;cr.
	Transcript show:'MENU DE OPCIONES';cr.
	Transcript show:'1 - Registrar un nuevo expediente';cr.
	Transcript show:'2 - Modificar detalles de un expediente';cr.
	Transcript show:'3 - Eliminar un expediente';cr.
	Transcript show:'4 - Listado de expedientes segun su tipo';cr.
	Transcript show:'5 - Eliminar expedientes penales del titular Sofia Coppola';cr.
	Transcript show:'6 - Listar expedientes de un titular especifico';cr.
	Transcript show:'7 - Listar expedientes de tipo civil';cr.
	Transcript show:'0 - Salir del programa';cr
].

op:=true.
"*********************** MENU **************************"
[op == true ] whileTrue: [
	funcionMenu value.
	opMenu:=ChoicePrompter choices: #(1 2 3 4 5 6 7 0).
	Transcript clear.

	"Registro de nuevo expediente en la coleccion"
	(opMenu == 1) ifTrue:[ funcionOpcion1 value ].

	"Modificar los detalles de un expediente existente"
	(opMenu == 2) ifTrue:[ funcionOpcion2 value ].

	"Eliminar un expediente de la colección"
	(opMenu == 3) ifTrue:[ funcionOpcion3 value ].

	"Listar expedientes de un tipo especifico"
	(opMenu == 4) ifTrue:[ funcionOpcion4 value ].
	
	"Eliminar expedientes del titular Sofia Coppola"
	(opMenu == 5) ifTrue:[ funcionOpcion5 value ].
	
	"Listar expedientes de un titular especifico"
	(opMenu == 6) ifTrue:[ funcionOpcion6 value ].

	"Listar expedientes de tipo civil indicando quien es el abogado encargado"
	(opMenu == 7) ifTrue:[ funcionOpcion7 value ].

	"SALIR DEL MENU"
	(opMenu == 0) ifTrue: [op:=false.].

	"Opcion de errores"
	"(opMenu < 1) ifTrue: [errorOpcion value]."
	(opMenu > 7) ifTrue: [errorOpcion value].
].