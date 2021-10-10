# n2019
Juego de Navidad 2019

Género/Clasificación: RPG  
Plataforma y hardware: Windows, Android. Se controla con teclado, joystick o pantalla táctil  
Audiencia: Jugadores casuales  
Fecha de publicación propuesta: 19 dic 2019  
¡Retraso terrible! No hay fecha estimada de publicación.

## Historia
No tiene historia concreta. Hay que resolver pequeños retos en un pueblo (o ciudad pequeña)
llamado "Valle Seco" o “Llano Esmeralda” que se prepara para celebrar la Navidad. (Nota: pensar en otros nombres para el pueblo)

El juego debe mostrar varios elementos tradicionales de la celebración de Navidad en México.
La mecánica principal del juego es romper piñatas.

El protagonista es un niño que llegó al pueblo hace poco y comienza a conocer a sus habitantes.
Opcional: 
El nombre del niño es proporcionado por el jugador, por defecto es "Aldo".
Otras características también podrían ser ajustadas por el jugador.

Algunos personajes del juego están basados en personas del mundo real.

## Flujo
*Cómo inicia el juego. Cómo mejora el jugador cuando el reto incrementa. Descripción del sistema:
experiencia, puntos, dinero, premios. Cómo se relaciona la historia con lo anterior.*

Antes de comenzar con la historia se pide al jugador que escriba el nombre del protagonista.
Lo anterior es opcional. Se requiere mucho tiempo para implementar el sistema de escritura, se usará un nombre fijo.

Al iniciar el juego, el prota (Aldo) aparece frente a su casa y dice que hoy le gustaría conocer
el pueblo. Si entra a su casa encontrará a sus padres ordenando varias cosas. Si habla con ellos,
después de varias frases dirán algo como "si no me vas a ayudar, no me interrumpas".

En la calle hay varias personas con las que se puede hablar. Un hombré le dirá a Aldo que hoy
inician las Posadas.

El pueblo se puede explorar libremente, hay pocas zonas bloqueadas (y algunas zonas ocultas).

Después de caminar un poco, Aldo se encontrará con Sara que está adornando un árbol de Navidad.
Sara pedirá ayuda y el jugador podría aceptar o no. Si acepta, Sara descubrirá que ha perdido
la estrella que adorna la punta del árbol, entonces le pedirá a Aldo que la ayude a encontrarla.

En el pueblo hay objetos perdidos, pertenecientes a diferentes personajes. Al encontrarlos
y entregarlos se obtendrían recompensas.

En un lugar se están armando piñatas. Una persona menciona que al terminar las Posadas se elige al
mejor rompedor de piñatas (del año). En seguida le pide a Aldo que pruebe con una de las piñatas
que está armando. En este momento inicial el entrenamiento de la mecánica principal del juego:
romper piñatas.

¿Cómo pasar por el entrenamiento de piñatas sin que parezca forzado?

En el entrenamiento, Aldo obtiene el primer instrumento para romper piñatas "Palo de Escoba".
Al explorar el pueblo y romper piñatas más resistentes se obtienen otros instrumentos.

En Noche Buena se realiza la posada más grande y se presenta la piñata más resistente.
Para romperla se necesitan los mejores instrumentos, los mejores amuletos y pasar varias rondas.
Si el jugador logra destruirla, se convierte en el mejor rompedor de piñatas del año.

## Controles
*Descripción detallada de los controles y las acciones de los personajes.*

### Exploración del pueblo
4 botones para desplazamiento: WASD o flechas  
1 botón para interactuar: X o J  
1 botón configurable: ---  
1 botón de pausa: Esc o ---  
1 botón para saltar: ---  

El desplazamiento también se puede realizar haciendo clic en el escenario.
Si se hace clic en una zona vacía, el prota se desplaza automáticamente hasta ese punto.

### Romper piñatas
Los botones de desplazamiento se usan para cambiar el rectángulo en el que se realizará
el ataque.
El botón de interacción selecciona el rectángulo.
Después los botones de desplazamieto permiten cambiar el ataque o movimiento.
El botón de interacción selecciona el ataque o movimiento.

## Gameplay
*¿Qué elementos enganchan al jugador? División de la secuencia de juego: niveles, rounds, mapas.
Minijuegos. Diferencias en algunas plataformas. Modos de juego que tendrá.*

El juego puede ser terminado en poco tiempo, tal vez 20 minutos.
El jugador se puede sentir atraído por la temática alegre y el estilo gráfico poco común.

El gameplay se divide en 2 partes: exploracion y romper piñatas.
Mientras se explora se conocen las ubicaciones de las Posadas, se pueden encontrar 
objetos perdidos y hablar con los habitantes del pueblo.
Se podrían marcar los días que pasan.

Romper piñatas requiere de una estrategia.
Aparecen 6 rectánglos en los que se mueve la piñata.
Se debe elegir un rectángulo para lanzar un golpe.
En el **entrenamiento**, Aldo no tiene los ojos vendados y puede ver la posición
de la piñata todo el tiempo.
Cuando tiene los ojos vendados, la posición de la piñata solo es visible cuando
se realiza un golpe exitoso.
Si la velocidad de desplazamiento de la piñata es baja o la velocidad de ataque es alta,
se puede ver hacia dónde se moverá (empieza a desplazarse mientras se hace invisible).
Varias piñatas se mueven en patrones para que sea más fácil predecir el movimiento.

En la parte inferior de la ventana aparece la lista de golpes y movimientos.
No habrá muchos. Aldo aprende movimientos en el transcurso del juego.
Los golpes fuertes tienen baja probabilidad de acertar o corto alcance.
Los golpes de largo alcance puede golpear la piñata aunque no se seleccione el rectánulo correcto
y tienen altas probabilidades de acertar aunque la piñata esté a gran altura.
Los golpes débiles tienen altas probabilidades de acertar y corto alcance.
Cuando se realizan varios golpes exitosos seguidos se puede realizar un movimiento especial.
[Proponer movimientos especiales].

Pueden existir diferentes niveles de entrenamiento. ¿Cómo se paga por el entrenamiento?

**Temporizador**
En la parte superior de la ventana aparece una barra de tiempo o energía. Al lanzar un golpe se reduce
una longitud predeterminada (podría depender de la velocidad de ataque).
Mientras se elije el siguiente movimiento, la barra de tiempo se reduce lentamente
obligando al jugador a elegir rápido.

**Recolectar dulces**
Cuando se rompe la piñata caen dulces y el jugador debe presionar varias veces un botón
lo más rápido que pueda para recolectar la mayor cantidad de dulces.
La cantidad de dulces recolectados podría servir para determinar el rango del jugador
al terminar el juego.
En el pueblo, hay otros lugares donde también se pueden recolectar dulces.

## Mundo
*Lugares, ambientes, humores, evocaciones, y su relación con la historia.
Cómo se conectan los lugares, para esto es bueno usar diagramas.*

El mundo del juego es un pueblo pequeño basado en pueblos de la vida real.
Hay dos barrios que se pueden explorar: uno al este y el otro al oeste.
En el centro del pueblo hay un parque y una iglesia.
Al norte hay un bosque de árboles secos y pinos. En lo profundo del bosque hay una cabaña, que según la leyenda, pertenece a una bruja.
En el sur hay una presa.

## Gráficos y música
*Descripción de los menús. Tipos de música y efectos de sonido. Colores, humor y acuerdos de diseño.*

Los gráficos del juego son fotografías y dibujos feos que han sido procesados por una
red neuronal para que parezcan dibujados con acuarela y otros tipos de pintura.

**Nueva elección de gráficos** Los gráficos serán dibujados a mano, escaneados y vectorizados.
Coloreados con patrones vectorizados y de fotografías o colores planos.  

Hay gran diversidad de colores, pero con tendencia al gris y al marron para que parezca que
el clima es frío y seco, la época es de melancolía y las luces de navidad resaltan.  

Evitar HUD.  
¿Cómo rellenar el esapacio en las escenas de romper piñatas?  

Al iniciar el ejecutable aparece la pantalla de título (en una esquina aparece el logo de CGM
adornado con luces de navidad) y un menú con 3 opciones:
+ Jugar
+ Créditos
+ Cerrar

Al elegir "Jugar" aparece una pantalla de selección con 3 ranuras de juego.
Elige una para continuar.
En "Créditos" aparece una lista con información de los recursos utilizados en el juego.
Al elegir "Cerrar" se cierra la aplicación.

La música debe recordar a los juegos clásicos de los 90s. Se han descargado varias
canciones compuestas en BeepBox.

## Mecánicas y objetos
*Situaciones y modos de proceder para ganar en el juego. Descripción de los
objetos que se pueden obtener y crear en el juego, y cómo se pueden usar a
favor o en contra del jugador y los enemigos. Powerups permanentes y temporales.*

El jugador avanza en el juego cuando rompe piñatas (ya se ha repetido muchas veces).

Se pueden coleccionar instrumentos para romper piñatas, adornos para los instrumentos 
(que mejoran sus atributos), amuletos, que ayudan en varias situaciones y se pueden recolectar
golosinas (que es como la puntuación global).

### Instrumentos
1. Palo de Escoba - Bajo poder de ataque y corto alcance. Se podría romper después de varios usos.
2. Tabla Astillada - Alto poder de ataque, corto alcance y baja velocidad.
3. Rama Retorcida - Bajo poder de ataque, largo alcance y alta velocidad.
3. Bat de Madera - Alto poder de ataque, corto alcance y alta velocidad.
4. Bat de Aluminio
5. Tubo

### Atributos
+ Poder de ataque
+ Alcance
+ Velocidad
+ Efectividad (probabilidad de acertar golpes)

### Adornos
+ Listones - Incrementan poder de ataque
+ Penacho - Incrementa velocidad
+ Estampas - Incrementan la efectividad

### Amuletos
[Proponer amuletos]

### Movimientos
+ Golpe simple
+ Abanico
+ Torbellino
+ Búsqueda rápida

## Personajes
*Apariencia, comportamiento, habilidades, ataques, fortalezas, debilidades.*

Hay varias personas con las que se puede hablar.
+ Sara - Está adornando un árbol de Navidad y pide ayuda para encontrar objetos perdidos.
+ Bruja del bosque - En realidad no es una bruja, pero podría ser peligrosa.
+ Vendedor de piñatas - Ayuda en el entrenamiento de Aldo.

## Bonus
*Escenas, incentivos, juegos parecidos, competencia, cualquier cosa que no hayamos puesto en las secciones anteriores.*

Está basado en los juegos de Pokémon.
Referencias para diseñar a los personajes: Pokémon, Padrinos Mágicos.

### Investigación
https://es.wikipedia.org/wiki/Rebozo
https://aiartists.org/ai-generated-art-tools
https://deepart.io/#
https://www.gob.mx/siap/es/articulos/la-pinata-simbolo-de-la-cultura-mexicana?idiom=es

### IA para modificar imágenes
Fácil de usar, con muchos estilos
http://goart.fotor.com
Mejores resultados obtenidos hasta ahora

Magic Cube     | Sponge | Defoliation
---------------|--------|-------------
Dadaism        | Cubism | Surrealism
Ukiyoe         | Sketch 2 | Artist’s sketch
Abstractionism | Structuralism | Joy
Pop Art        | Color Fantasy | x

### Lugares para obtener música y efectos de sonido
https://freesound.org/people/GameAudio/packs/13940/  

