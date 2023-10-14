"Filed out from Dolphin Smalltalk"!

Object subclass: #Cliente
	instanceVariableNames: 'numClient dniCuit nombreRazon'
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
Cliente guid: (GUID fromString: '{68a65684-fc35-4657-951d-e793eda0b6cb}')!
Cliente comment: ''!
!Cliente categoriesForClass!Kernel-Objects! !
!Cliente methodsFor!

iniClienteNum:unNum con:unDniCuit con:unNombreRazon

numClient:=unNum.
dniCuit:=unDniCuit.
nombreRazon:=unNombreRazon.!

modDniCuit:otroDniCuit
dniCuit :=otroDniCuit!

modNombreRazonCli:otroNomRazon
nombreRazon :=otroNomRazon!

modNumeroCli:otroNum

numClient :=otroNum!

verDniCuit

^dniCuit!

verNombreRazon 

^nombreRazon!

verNum

^numClient! !
!Cliente categoriesForMethods!
iniClienteNum:con:con:!public! !
modDniCuit:!public! !
modNombreRazonCli:!public! !
modNumeroCli:!public! !
verDniCuit!public! !
verNombreRazon!public! !
verNum!public! !
!

!Cliente class methodsFor!

crearClienteNum:unNum con:unDniCuit con:unNombreRazon

^self new iniClienteNum: unNum con: unDniCuit con: unNombreRazon! !
!Cliente class categoriesForMethods!
crearClienteNum:con:con:!public! !
!

