# Desarrollo Dirigido por Pruebas 

## _Test-Driven Development_ - TDD 

El propósito del desarrollo dirigido por pruebas es lograr un código limpio que funcione. 

Es una metodología en la que se escribe una prueba y se verifica que falla. 

A continuación, se implementa la cantidad mínima de código necesaria para que la prueba funcione satisfactoriamente y a continuación se refactoriza el código escrito. 

El sistema que se ha de programar tiene que ser lo suficientemente flexible como para permitir ser probado automáticamente. 

Cada prueba tiene que lo suficientemente pequeña de forma que permita determinar unívocamente si el código probado pasa o no la verificación que esta le impone.

Los pasos a seguir son:

1. Escribir una prueba.
2. Verificar que la prueba falla.
3. Escribir la mínima cantidad de código que haga que la prueba funcione. 
4. Verificar que la prueba funciona, así como todo el conjunto de pruebas existente previamente.
5. Eliminar el código duplicado (refactorización). Se hace un pequeño cambio cada vez y se verifican todas las pruebas hasta que funcionen.

Ruby cuenta con la gema RSpec  (_gem install rspec_)

RSpec prorciona las siguientes funcionalidades:

- Una forma de reunir pruebas relacionadas mediante un contexto.
- Una forma de describir una prueba.
- Una forma de definir espectativas.
- Múltiples formas de concordancia con expresiones.
