﻿# TPFinalParadigmas-UTN
El trabajo se desarrollará en lenguaje Smalltalk.

Consigna: Para cada uno de los ejercicios de la práctica se deberá:
a) Diagrama de clases y Especificación de clases.
b) Resolver la aplicación presentando un MENU y usando las clases anteriores y los métodos
select, collect, detect y reject.
c) Todos los incisos deben estar en funcionamiento como requisito MINIMO para la
aprobación.

# Enunciado:
En una oficina un abogado debe clasificar una colección de expedientes. Cada
expediente cuenta con un número, titular, fecha de presentación y el estado del
mismo(activo/finalizado/suspendido), donde el abogado trabaja con 2 tipos de
expedientes:
  Expediente Penal: que tiene como dato: acusado, acusación, pruebas presentadas y
  testimonios.
  Expediente Civil: que tiene como dato: tipoDeCaso(divorcio, reclamación, etc.) e
  Interviniente( individuo, empresa, organización).
Cada expediente esta vinculado a un cliente único del mismo se conoce: número de cliente,
DNI o CUIT y nombre o Razón social, el cliente puede tener mas de un expediente.

Se deberá desarrollar una aplicación, utilizando las clases que crea necesarias, que
resuelva las funcionalidades que se muestra en el siguiente menú:
a) Registrar un nuevo expediente en la colección. Se debe especificar si se trata de un
Expediente Penal o Civil, y proporcionar los datos adicionales según el tipo de expediente.
b) Modificar los detalles de un expediente existente.
c) Eliminar un expediente de la colección utilizando su número de expediente como
identificador. Esto permite gestionar la lista de expedientes y eliminar aquellos que ya no
son relevantes.
d) Generar un listado de expedientes según su tipo (Penal o Civil), para facilitar la
organización y búsqueda de expedientes por categoría.
e) Eliminar todos los expedientes de tipo Penal generados por el titular: "Sofía Coppola".
Esto permite realizar una limpieza de expedientes específicos de un abogado.
f) Listar los expedientes de un cliente dado, se deberá buscar por numero de cliente. Se
deberá informar todos los datos de cada expediente.
g) Generar un listado de expedientes de tipo Civil indicando quién es el abogado encargado
de cada uno.
