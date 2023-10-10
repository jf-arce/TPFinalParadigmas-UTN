"Filed out from Dolphin Smalltalk"!

Object subclass: #Expediente
	instanceVariableNames: 'numero titular fechaPresen estado tipoExp'
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
Expediente guid: (GUID fromString: '{c912b387-810a-43e9-909b-360531032fff}')!
Expediente comment: ''!
!Expediente categoriesForClass!Kernel-Objects! !
!Expediente methodsFor!

iniExpNum: num titular: unTitular fecha: unaFecha tipo: unTipo estado: unEstado
	numero := num.
	titular := unTitular.
	fechaPresen := unaFecha.
	tipoExp := unTipo.
	estado := unEstado!

verEstado

^estado!

verFechaPresen

^fechaPresen!

verNumero

^numero!

verTipoExp

^tipoExp!

verTitular
	^titular! !
!Expediente categoriesForMethods!
iniExpNum:titular:fecha:tipo:estado:!public! !
verEstado!public! !
verFechaPresen!public! !
verNumero!public! !
verTipoExp!public! !
verTitular!public! !
!

!Expediente class methodsFor!

crearExpNum:num titular:unTitular fecha:unaFecha tipo:unTipo estado:unEstado

^self new iniExpNum: num titular: unTitular fecha: unaFecha tipo: unTipo estado: unEstado! !
!Expediente class categoriesForMethods!
crearExpNum:titular:fecha:tipo:estado:!public! !
!

