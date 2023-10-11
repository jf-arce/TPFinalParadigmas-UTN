"Filed out from Dolphin Smalltalk"!

Expediente subclass: #Civil
	instanceVariableNames: 'tipoCaso inter'
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
Civil guid: (GUID fromString: '{7b26e65b-28cd-48ef-99ba-00cbeb7fbe0a}')!
Civil comment: ''!
!Civil categoriesForClass!Kernel-Objects! !
!Civil methodsFor!

iniExpCivilNum: num titular: unTitular fecha: unaFecha estado: unEstado tipoExp: unTipoExp tipoCaso: unCaso inter: unInterviniente
	numero := num.
	titular := unTitular.
	fechaPresen := unaFecha.
	estado := unEstado.
	tipoExp := unTipoExp.
	tipoCaso := unCaso.
	inter := unInterviniente!

modInterviniente:otroInter

inter:=otroInter.!

modTipoCaso:otroTipoCaso

tipoCaso:=otroTipoCaso.!

verInterviniente

^inter.!

verTipoCaso

^tipoCaso.! !
!Civil categoriesForMethods!
iniExpCivilNum:titular:fecha:estado:tipoExp:tipoCaso:inter:!public! !
modInterviniente:!public! !
modTipoCaso:!public! !
verInterviniente!public! !
verTipoCaso!public! !
!

!Civil class methodsFor!

crearExpCivilNum: num titular: unTitular fecha: unaFecha estado: unEstado tipoExp: unTipoExp tipoCaso: unCaso inter: unInterviniente

^self new iniExpCivilNum: num titular: unTitular fecha: unaFecha estado: unEstado tipoExp: unTipoExp tipoCaso: unCaso inter: unInterviniente
! !
!Civil class categoriesForMethods!
crearExpCivilNum:titular:fecha:estado:tipoExp:tipoCaso:inter:!public! !
!

