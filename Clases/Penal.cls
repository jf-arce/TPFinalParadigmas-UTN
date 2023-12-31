﻿"Filed out from Dolphin Smalltalk"!

Expediente subclass: #Penal
	instanceVariableNames: 'acusado acusacion pruebasPres testimonios'
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
Penal guid: (GUID fromString: '{dda3a8fa-27bb-47e5-85c9-b656ac34ade2}')!
Penal comment: ''!
!Penal categoriesForClass!Kernel-Objects! !
!Penal methodsFor!

iniExpPenalNum: num titular: unTitular fecha: unaFecha estado: unEstado tipoExp: unTipoExp acusado: unAcusado acusacion: unaAcusacion pruebasPres: unaPrueba test: unTest cliente:unCliente
	
	cliente:= unCliente.
	numero := num.
	titular := unTitular .
	fechaPresen := unaFecha.
	estado := unEstado.
	tipoExp := unTipoExp.
	acusado := unAcusado.
	acusacion := unaAcusacion.
	pruebasPres := unaPrueba.
	testimonios := unTest!

modAcusacion:otraAcusacion

acusacion:=otraAcusacion.!

modAcusado:otroAcusado

acusado:=otroAcusado.!

modPruebasPres:otrasPruebas

pruebasPres:=otrasPruebas.!

modTestimonios:otrosTest

testimonios:=otrosTest.!

verAcusacion

^acusacion.!

verAcusado
^acusado.!

verPruebasPres

^pruebasPres!

verTestimonios

^testimonios.! !
!Penal categoriesForMethods!
iniExpPenalNum:titular:fecha:estado:tipoExp:acusado:acusacion:pruebasPres:test:cliente:!public! !
modAcusacion:!public! !
modAcusado:!public! !
modPruebasPres:!public! !
modTestimonios:!public! !
verAcusacion!public! !
verAcusado!public! !
verPruebasPres!public! !
verTestimonios!public! !
!

!Penal class methodsFor!

crearExpPenalNum: num titular: unTitular fecha: unaFecha estado: unEstado tipoExp: unTipoExp acusado: unAcusado acusacion: unaAcusacion pruebasPres: unaPrueba test: unTest cliente:unCliente

^self new iniExpPenalNum: num titular: unTitular fecha: unaFecha estado: unEstado tipoExp: unTipoExp acusado: unAcusado acusacion: unaAcusacion pruebasPres: unaPrueba test: unTest cliente: unCliente! !
!Penal class categoriesForMethods!
crearExpPenalNum:titular:fecha:estado:tipoExp:acusado:acusacion:pruebasPres:test:cliente:!public! !
!

