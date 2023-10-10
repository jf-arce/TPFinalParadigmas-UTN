"Filed out from Dolphin Smalltalk"!

Expediente subclass: #Penal
	instanceVariableNames: 'acusado acusacion pruebasPres testimonios'
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
Penal guid: (GUID fromString: '{dda3a8fa-27bb-47e5-85c9-b656ac34ade2}')!
Penal comment: ''!
!Penal categoriesForClass!Kernel-Objects! !
!Penal methodsFor!

iniExpPenalNum: num titular: unTitular fecha: unaFecha estado: unEstado tipoExp: unTipoExp acusado: unAcusado acusacion: unaAcusacion pruebasPres: unaPrueba test: unTest

	numero := num.
	titular := unTitular .
	fechaPresen := unaFecha.
	estado := unEstado.
	tipoExp := unTipoExp.
	acusado := unAcusado.
	acusacion := unaAcusacion.
	pruebasPres := unaPrueba.
	testimonios := unTest!

verAcusacion

^acusacion.!

verAcusado
^acusado.!

verPruebasPres

^pruebasPres!

verTestimonios

^testimonios.! !
!Penal categoriesForMethods!
iniExpPenalNum:titular:fecha:estado:tipoExp:acusado:acusacion:pruebasPres:test:!public! !
verAcusacion!public! !
verAcusado!public! !
verPruebasPres!public! !
verTestimonios!public! !
!

!Penal class methodsFor!

crearExpPenalNum: num titular: unTitular fecha: unaFecha estado: unEstado tipoExp: unTipoExp acusado: unAcusado acusacion: unaAcusacion pruebasPres: unaPrueba test: unTest

^self new iniExpPenalNum: num titular: unTitular fecha: unaFecha estado: unEstado tipoExp: unTipoExp acusado: unAcusado acusacion: unaAcusacion pruebasPres: unaPrueba test: unTest! !
!Penal class categoriesForMethods!
crearExpPenalNum:titular:fecha:estado:tipoExp:acusado:acusacion:pruebasPres:test:!public! !
!

