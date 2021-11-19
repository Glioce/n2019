/*************************************
Este es el controlador de batalla.
Sirve para inicializar variables del modo batalla.
Otras funciones no se han asignado.
**************************************/

/// Editor ====================================================================

// Recursos
// cargar sprite
sp = sprite_add(
    "https://raw.githubusercontent.com/Glioce/n2019/master/n2019_02.gmx/sprites/images/spAldoEspalda_0.png",
    1, false, false, 0, 0
);
//trace(sp);
//sprite_index = sp;

// Objetos
obPinata = obj_1;

// Room
room_width = 1280;
room_height = 720;
background_colour = c_black;
x = 300;
y = 300;
instance_create(800, 200, obPinata);

// Estados
ESTADO_INTRO   = 0; 
ESTADO_SELATQ  = 1;
ESTADO_SELZONA = 2;
ESTADO_ANIMATQ = 3;
ESTADO_GANA    = 4;
ESTADO_PIERDE  = 5;
ESTADO_DULCES  = 6;
ESTADO_JUEGO   = 10;




/// Create ====================================================================

draw_set_colour(c_white);

/// Inicializar globales

// jugador
// Variables para posicionar al jugador al cambiar de room
//global.roomSig = rmPoniente; //en esta room inicia el juego
global.dirSig = 270; //dirección a la que mira el personaje
global.xSig = 800; //pos x
global.ySig = 800; //pos y

global.posSigDefinida = false;

/// Estados
// Las contantes de estados están definidas como macros
// (Resources --&gt; Define macros) ESTADO_*
// INTRO: Animación de piñata y Aldo. Mensaje en parte inferior de pantalla.
// SELATQ: Seleccionar ataque.
// SELZONA: Seleccionar zona donde se realiza el ataque.
// ANIMATQ: Animación de ataque.
// JUEGO: NO se usa. Podría agrupar los 3 estados anteriores
// GANA: Animación de destrucción de la piñata
// PIERDE: Animación cuando no se destruye la piñata
// DULCES: Minijuego opcional. Presionar rápido un botón para ganar dulces.

// Comenzar con la animación de intro
//estado = ESTADO_INTRO;
/*
Aldo aparece por el lado izquierdo y la piñata por el lado derecho
pueden ser 2 objetos vacíos con los sprites correspondientes
Aquí se puede usar una función de interpolación
indicar posición inicial, pos final y duración

*/ 

// objeto dummy Aldo
x0Aldo = 100; //pos inicial de aldo
y0Aldo = 500;
x1Aldo = 200; //pos final de aldo
y1Aldo = 500;
tAldo = 60; //duración de aparición
//aldo = instance_create(x0Aldo, y0Aldo, obDummy); //instancia vacía
//aldo.sprite_index = spAldoEspalda; //asignar sprite
//aldo.image_alpha = 0; //inicia transparente/invisible

// objeto dummy piñata
x0Pina = 100; //pos inicial de aldo
y0Pina = 500;
x1Pina = 200; //pos final de aldo
y1Pina = 500;
tPina = 60; //duración de aparición
//pina = instance_create(x0Pina, y0Pina, obDummy); //instancia vacía
//pina.sprite_index = spPinata; //asignar sprite
//pina.image_alpha = 0; //inicia transparente/invisible

#define step
/// En el step

#define draw
/// Dibujar rejilla
// La room mide 1280 x 720
// La mitad es 640 y 360

draw_self();

draw_set_colour(c_white);
// lineas verticales en 640 +- 128
draw_line_width(640 - 128, 64, 640 - 128, 512, 2);
draw_line_width(640 + 128, 64, 640 + 128, 512, 2);
// linea horizontal
draw_line_width(224, 288, 1056, 288, 2);
// aros
draw_sprite(spAro, 0, 384, 160);
draw_sprite(spAro, 0, 640, 160);
draw_sprite(spAro, 0, 896, 160);
draw_sprite(spAro, 0, 384, 416);
draw_sprite(spAro, 0, 640, 416);
draw_sprite(spAro, 0, 896, 416);

draw_text(0, 0, "Prueba de batalla");
draw_sprite(sp, 0, x, y);
//draw_text(x, y+24, "Presiona cualquier tecla para continuar");

// dibujar borde de room
draw_line(0, room_height, room_width, room_height);
draw_line(room_width, 0, room_width, room_height);

// Draw de piñata
with(obPinata)
{
    draw_circle(x, y, 32, true);
}
