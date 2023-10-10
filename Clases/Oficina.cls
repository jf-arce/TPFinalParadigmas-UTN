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

initOficina:unNom

nombre:=unNom.
conjExp:=OrderedCollection new.
!

modNombre:otroNombre

nombre:=otroNombre!

verNombre

^nombre!

verTodosExp

^conjExp! !
!Oficina categoriesForMethods!
agregarExp:!public! !
initOficina:!public! !
modNombre:!public! !
verNombre!public! !
verTodosExp!public! !
!

!Oficina class methodsFor!

crearOficina:unNom

^self new initOficina: unNom.! !
!Oficina class categoriesForMethods!
crearOficina:!public! !
!

