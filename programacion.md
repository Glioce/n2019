# Ideas de programación
En este documentos se explican varios sistemas del juego.

## Tamaño de rooms
El tamaño mínimo de cada room es 1280 x 720 px  
El tamaño de las celdas en que se divide el escenario es 64 x 64 px  
1280 / 64 = 20  
720 / 64 = 11.25  
Se buscará crear pocas rooms pequeñas, pero con varios detalles ocultos
para que no sean demasiado simples

## Conexión de rooms
Cada room puede tener una posición global. La posición de cada room se guarda en el objeto
jugador usando Creation Code.

Se usan objetos para indicar los caminos que conectan con otras rooms. Si se hace clic
sobre esos objetos el jugador avanza automáticamente hasta salir de la room actual.
La salida se puede hacer de dos formas:
1. Se crea una ruta normal y se marca la celda de salida. Al terminar la primera ruta
se inicia una segunda ruta que mueve al personaje fuera de la room.
2. Se crea una ruta con el punto final fuera de la room, pero la celca de salida
se marca una celda atrás.

Se elegirá el método 1.

Se deben crear variables globales que guarden la posición y dirección 
del jugador en los cambios de room.

Las coordenadas globales de las rooms se podría obtener de una estructura de datos
o indicarse en el objeto de salida.

La estructura de datos podría ser una tabla (array 2D) de esta forma:  
room_index | xizq | xder | yarr | yaba  
Los 4 valores de las derecha son coordenadas globales.

Este modo de organizar no se aplica cuando el jugador entra en una casa
o en otras zonas que se traslapan con el escenario exterior.
En lugar de guardar las coordenadas de la room en el mundo, se guardará
la posición relativa en el mundo.

Mejor indicar las coordenadas siguientes, la dirección y la room al tocar
el objeto de salida, aunque esto parezca un poco más difícil.
Las puertas funcionan muy parecido, pero en lugar de salir de la room, se debe
tocar un objeto puerta.

deltaX = room.x - roomSig.x
deltaY = room.y - roomSig.y

## Pathfinding
Nota: posible bug, si se hace clic justo en la orilla de la ventana, se podría generar
una ruta por fuera de la room, ¿cómo comprobarlo?

## Guardado
Es un juego muy corto y tal vez no requiere guardado.
Lo que se puede guardar es:

+ room
+ coordenadas dentro de la room
+ contador de dulces
+ bits (flags) de instrumentos obtenidos
+ bits (flags) de accesorios obtenidos
+ bits (flags) de movimientos apredidos
+ bits (flags) de amuletos obtenidos
+ bits (flags) de eventos vistos

## Registro de conversaciones
Lo más seguro es que esto no se implemente. 
En algún se menú se podría acceder a un registro de las 
últimas conversaciones, por si es necesario leer otra vez.
