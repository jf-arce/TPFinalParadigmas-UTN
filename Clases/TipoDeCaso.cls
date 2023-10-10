"Filed out from Dolphin Smalltalk"!

Object subclass: #TipoDeCaso
	instanceVariableNames: 'nombre'
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
TipoDeCaso guid: (GUID fromString: '{72af9019-c931-432e-b56e-55641dd329f1}')!
TipoDeCaso comment: ''!
!TipoDeCaso categoriesForClass!Kernel-Objects! !
!TipoDeCaso methodsFor!

initTipoCaso:unNombre

nombre :=unNombre.! !
!TipoDeCaso categoriesForMethods!
initTipoCaso:!public! !
!

!TipoDeCaso class methodsFor!

crearTipoCaso: unNombre
	^self new initTipoCaso: unNombre! !
!TipoDeCaso class categoriesForMethods!
crearTipoCaso:!public! !
!

