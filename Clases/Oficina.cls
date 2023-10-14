"Filed out from Dolphin Smalltalk"!

Object subclass: #Oficina
	instanceVariableNames: 'nombre conjExp'
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
Oficina guid: (GUID fromString: '{0775af7a-52f1-4459-a1ae-615a06e823c2}')!
Oficina comment: ''!
!Oficina categoriesForClass!Kernel-Objects! !
!Oficina methodsFor!

agregarExp:unExp

conjExp add:unExp!

eliminarExp:unExp

conjExp remove: unExp.!

initOficina:unNom

nombre:=unNom.
conjExp:=OrderedCollection new.
!

modNombre:otroNombre

nombre:=otroNombre!

mostrarExp:colExp

colExp do: [:exp | 
	Transcript show: 'Nombre del cliente: ', exp verNombreRazonCliente ;cr.
	Transcript show: 'Numero del cliente: ', (exp verNumCliente) printString ;cr.
	Transcript show: 'Dni/Cuit del cliente: ', (exp verDniCuitCliente) printString ;cr.
	Transcript show: 'Numero de expediente: ', (exp verNumero) printString ;cr.
	Transcript show: 'Titular: ', exp  verTitular;cr.
	Transcript show: 'Fecha de presentacion: ',(exp verFechaPresen) printString ; cr.
	Transcript show: 'Estado: ',exp verEstado; cr.
	(exp verTipoExp == 1) ifTrue: [
		Transcript show: 'Tipo de caso: ', (exp verTipoCaso) printString;cr.
		Transcript show: 'Interviniente: ',exp verInterviniente;cr.
		Transcript show: '-------------------------------------';cr.
	]. 
	(exp verTipoExp == 2) ifTrue:[
		Transcript show: 'Acusado: ',exp verAcusado ; cr.
		Transcript show: 'Acusacion: ',exp verAcusacion ; cr.
		Transcript show: 'Pruebas presentadas: ',exp verPruebasPres ; cr.
		Transcript show: 'Testimonios: ',exp verTestimonios ; cr.
		Transcript show: '-------------------------------------';cr.
	].	
]!

verNombre

^nombre!

verTodosExp

^conjExp! !
!Oficina categoriesForMethods!
agregarExp:!public! !
eliminarExp:!public! !
initOficina:!public! !
modNombre:!public! !
mostrarExp:!public! !
verNombre!public! !
verTodosExp!public! !
!

!Oficina class methodsFor!

crearOficina:unNom

^self new initOficina: unNom.! !
!Oficina class categoriesForMethods!
crearOficina:!public! !
!

