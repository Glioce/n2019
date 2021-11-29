/*************************************
Este es el controlador de batalla.
Sirve para inicializar variables del modo batalla.
Otras funciones no se han asignado.
**************************************/

/// Editor ====================================================================

// Recursos
// cargar sprite
spAldo = sprite_add(
    "https://raw.githubusercontent.com/Glioce/n2019/master/n2019_02.gmx/sprites/images/spAldoEspalda_0.png",
    1, false, false, 0, 0
);
//trace(sp);
sprite_index = spAldo;

spPina =sprite_add(
    "https://raw.githubusercontent.com/Glioce/n2019/master/n2019_02.gmx/sprites/images/spPinata_0.png",
    1, false, false, 259, 233
);

//newfont = font_add( 'Helvetica', 24, true, true, 32, 128);

// Objetos
obPinata = obj_1;

// Room
//fps = 30;
room_speed = 30;
room_width = 1280;
room_height = 720;
background_colour = c_black;
x = 240;
y = 240;
pina = instance_create(800, 200, obPinata);
device_mouse_dbclick_enable(false);
//pina.image_index = spPina;

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
estado = ESTADO_INTRO;
estadoInicia = true; // cuando es true se inicializan
                    // las variables de cada estado
estadoSig = ESTADO_INTRO; //Al final del step se asigna el estado siguiente
/**/ 

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
switch (estado)
{
    case ESTADO_INTRO: eIntroStep(); break;
    case ESTADO_SELATQ: eSelAtqStep(); break;
    
}
//estado = estadoSig;


#define draw

switch (estado)
{
    case ESTADO_INTRO: eIntroDraw(); break;
    case ESTADO_SELATQ: eSelAtqDraw(); break;
}

// Debug
// dibujar borde de room
draw_line(0, room_height, room_width, room_height);
draw_line(room_width, 0, room_width, room_height);
// mostrar fps
draw_text(15,0, fps);
draw_text(15,20, fps_real);


#define eIntroDraw
// Estado intro, evento draw

draw_sprite_ext(spAldo,0, x, y, 1,1,0, c_white, image_alpha);
draw_sprite_ext(spPina,0, pina.x, pina.y, 1,1,0, c_white, pina.image_alpha);

// Barra inferior
draw_set_colour(c_dkgray);
draw_rectangle(0, 576, 1280, 720, false);

draw_set_colour(c_white);
draw_set_halign(fa_center);
draw_text_transformed(640, 576, "Aldo se enfrenta a#Pinata de 7 puntas", 2, 2, 0);


#define eSelAtqDraw
/// Dibujar rejilla
// La room mide 1280 x 720
// La mitad es 640 y 360
// La barra inferior inicia en y576

draw_set_colour(c_white);
// lineas verticales en 640 +- 128
draw_line_width(640 - 128, 64, 640 - 128, 512, 2);
draw_line_width(640 + 128, 64, 640 + 128, 512, 2);
// linea horizontal
draw_line_width(224, 288, 1056, 288, 2);
// aros
/*
draw_sprite(spAro, 0, 384, 160);
draw_sprite(spAro, 0, 640, 160);
draw_sprite(spAro, 0, 896, 160);
draw_sprite(spAro, 0, 384, 416);
draw_sprite(spAro, 0, 640, 416);
draw_sprite(spAro, 0, 896, 416);
*/

// Barra inferior
draw_set_colour(c_dkgray);
draw_rectangle(0, 576, 1280, 720, false);

// dibujar 4 rectángulos
// probar valores [320 x 64]
draw_set_colour(c_white);
w = 320;
w2 = w/2;
h = 48;

draw_rectangle(640 - w, 576, 640, 576 + h, true);
draw_rectangle(640, 576, 640 + w, 576 + h, true);
draw_rectangle(640 - w, 576 + h, 640, 576 + h + h, true);
draw_rectangle(640, 576 + h, 640 + w, 576 + h + h, true);

draw_set_halign(fa_center);
draw_text_transformed(640 - w2, 576, "Golpe simple", 2, 2, 0);
draw_text_transformed(640 + w2, 576, "Abanico", 2, 2, 0);
draw_text_transformed(640 - w2, 576 + h, "Torbellino", 2, 2, 0);
draw_text_transformed(640 + w2, 576 + h, "Busqueda rapida", 2, 2, 0);


#define eIntroStep
/// Estado intro script
/* Animación de introducción

Aldo aparece por el lado izquierdo y la piñata por el lado derecho
Inician transparentes y se hacen visibles al mismo tiempo que se desplazan

(tal vez hay problemas con la transparencia de Aldo y la herramienta)

pueden ser 2 objetos vacíos con los sprites correspondientes
Aquí se puede usar una función de interpolación
indicar posición inicial, pos final y duración

(x,y) usados en el editor de room parecen buenas coordenadas finales para
los objetos. Para iniciar la anim. se pueden recorrer 200px a su lado
correspondiente.

Se usa interpolación lineal para el desplazamiento y la transparencia

El estado puede dividirse en 2 fases (sub-estados)
En la primera se completan las animacines
En la segunda se espera la presión de un boton para pasar al siguiente estado
Si se presiona un botón en la fase 1, pasa automáticamente a la etapa 2

*/


// Asignar variables iniciales
if (estadoInicia) {
    estadoInicia = false;
    fase = 1; //primera fase: animaciones
    
    To = 50; //duracion total de la animación
    t = 0; //momento actual
    
    x0Aldo = x - 200; //pos inicial de aldo
    x1Aldo = x; //pos final de aldo
    image_alpha = 0; //invisible
    
    x0Pina = pina.x + 200; //pos inicial de pinata
    x1Pina = pina.x; //pos final de pinata
    pina.image_alpha = 0; //invisible
}

// En la fase 1 se realizan animaciones
if (fase == 1)
{
    //calcular posicion y transparencia
    amount = t/To;
    image_alpha = amount;
    pina.image_alpha = amount;
    x = lerp(x0Aldo, x1Aldo, amount);
    pina.x = lerp(x0Pina, x1Pina, amount);
    
    t++; //incrementar tiempo
    
    if ((t > To) //si termina anim (tambien de texto)
    or keyboard_check_pressed(vk_anykey) //o se presiona una tecla
    or mouse_check_button_pressed(mb_left) //o se presiona un boton del mouse
    ) {
        // cambiar fase
        fase = 2;
        
        //asegurar valores finales
        x = x1Aldo;
        pina.x = x1Pina;
        image_alpha = 1;
        pina.image_alpha = 1;
    }
}
// En la fase 2 se espera una accion para cambiar de estado
else
{
    if keyboard_check_pressed(vk_anykey) //o se presiona una tecla
    or mouse_check_button_pressed(mb_left) //o se presiona un boton del mouse
    {
        // cambiar estado
        estado = ESTADO_SELATQ;
        estadoInicia = true;
    }
}


#define eSelAtqStep
// Estado seleccionar ataque script
/* 
Lista de ataques aparece en la parte inferior de la pantalla
¿Cuántos ataques se necesitan?

4 ataques parecen buena idea

Recordar que hay una barra de tiempo en la parte superior.
el jugador debe elegir rápido porque el tiempo es limitado

// La room mide 1280 x 720
// La mitad es 640 y 360
*/

// Asignar variables iniciales
if (estadoInicia) {
    estadoInicia = false;
}
//newfont = font_add( 'Arial', 24, true, true, 32, 128);
