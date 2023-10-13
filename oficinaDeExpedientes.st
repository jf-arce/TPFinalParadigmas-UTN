oficina := Oficina crearOficina: 'Oficina Bala'.

op:=1.
expPruebaCivil:= Civil crearExpCivilNum:1 titular: 'Gomez' fecha: '4/10/2023' estado: 'activo' tipoExp: 1 tipoCaso: 'divorcio' inter: 'individuo'.
oficina agregarExp: expPruebaCivil.
expPruebaPenal:= Penal crearExpPenalNum: 2 titular: 'Altamirano' fecha: '12/8/2023' estado: 'activo' tipoExp: 2 acusado: 'German' acusacion: 'Robo' pruebasPres: 'pruebas' test: 'nose'.
oficina agregarExp:  expPruebaPenal.
expPruebaPenalCoppola:= Penal crearExpPenalNum: 4 titular: 'Sofia Coppola' fecha: '12/8/2023' estado: 'activo' tipoExp: 2 acusado: 'German' acusacion: 'Robo' pruebasPres: 'pruebas' test: 'nose'.
oficina agregarExp:  expPruebaPenalCoppola.
expPruebaPenalCoppola2:= Penal crearExpPenalNum: 4 titular: 'Sofia Coppola' fecha: '12/8/2023' estado: 'activo' tipoExp: 2 acusado: 'German' acusacion: 'Robo' pruebasPres: 'pruebas' test: 'nose'.
oficina agregarExp:  expPruebaPenalCoppola2.

"Define un diccionario que asocia nombres legibles con valores numéricos"
"opciones:=Dictionary new at:'1-Registrar Expediente' put: 1;
				at: '2-Modificar Expediente' put: 2;
				at: '3- Eliminar Expediente' put: 3;
				at: '4- Listar Expedientes' put: 4;
				at: '5- Eliminar expedientes penales de Sofia Coppola' put: 5;
				yourself.
opciones inspect.
op1:=opciones keyAtValue: 1."

[op ~= 0] whileTrue: [
	"menu:= OrderedCollection new.
	menu add: op1.
	menu add: 0."
	menu:= #(1 2 3 4 5 6 0).
	opMenu:=ChoicePrompter choices: menu.
	
	"opMenu := 
    opMenu := (ChoicePrompter choices: '**** Menu ****
Elija una opcion:
1 --> Registrar Expediente
2 --> Modificar Expediente
3 --> Eliminar Expediente
4 --> Listar Expedientes 
5 --> Eliminar expedientes penales
0 --> Salir del menu') asNumber."

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

			exp_rec ~= nil & (exp_rec verTipoExp == 1) ifTrue: [
				opcion:= (Prompter prompt: 'Opciones a modificar ExpCivil:,1. Modificar Estado//2.Modificar Fecha de presentación//3.Modificar Titular//4.Modificar Número//
5.Modificar tipo de caso 6.Modificar interviniente 0.No modificar nada') asNumber.
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
					opcion:= (Prompter prompt: 'Opciones a modificar ExpPenal: ,1. Modificar Estado//2.Modificar Fecha de presentación//3.Modificar Titular//4.Modificar Número//5.Acusado//6.Acusacion//7.PruebasPresentadas//8.Testimonios 0.No modificar nada') asNumber.
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
			
			
		opMenu:=(Prompter prompt: '2 --> Modificar otro expediente | 0 --> Volver al menu') asNumber.
	].

	"Eliminar un expediente de la colección"

	[opMenu==3] whileTrue: [
		exp_elim:=(Prompter prompt: 'Ingrese el numero de expediente a eliminar')asNumber.
		collexp:= oficina verTodosExp.
		exp_rec:= collexp detect:[:expediente | expediente verNumero = exp_elim] ifNone:[^nil].
		(exp_rec ~= nil) ifTrue: [
			oficina eliminarExp: exp_rec.
			MessageBox notify: 'Expediente eliminado'.
		] ifFalse:[
			MessageBox notify: 'No se encontró el expediente'.
		].
		opMenu:=(Prompter prompt: '3 --> Eliminar otro expediente| 0 --> Volver al menu')asNumber.
	].
	
	[opMenu == 5] whileTrue: [ 
		collExp:= oficina verTodosExp.
		exp:= collExp select: [:exp | exp verTipoExp = 2 & (exp verTitular = 'Sofia Coppola')].

		opcion:= MessageBox confirm: '¿Desea eliminar el los espedientes de Sofia Coppola?1.Si/2.No'.
		(opcion == true ) ifTrue: [
			exp do: [:expSofia | 
				oficina eliminarExp: expSofia.
			].
			MessageBox notify:'Los expedientes de Sofia Coppola fueron eliminados'.
		]
		ifFalse: [MessageBox notify: 'No contiene expedientes de esa abogada'].
		opMenu:=0.
	].
	[ opMenu == 6 ] whileTrue: [
		collExp:= oficina verTodosExp.
	
		expRecCliente:= collExp collect: [:exp | exp verTitular].
		titularesSinRepetir:=(expRecCliente asSet) asOrderedCollection .
		titularElegido:= ChoicePrompter choices: titularesSinRepetir.
	
		expTitular:=collExp select: [:exp | exp verTitular = titularElegido].
		"Falta imprimir los atributos de los expedientes encontrados del titular"
		
		opMenu:=(Prompter prompt: '6 --> Buscar otros expedientes | 0 --> Volver al menu')asNumber.
	].
].

oficina inspect.