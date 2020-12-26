///draw_slice9_color( x,y, w,h, spr,subimg, a,b, c,d, color );
/*              0 1  2 3  4   5       6 7  8 9  10
Argumentos
x,y: posicion de la esquina superior izquierda
w,h: anchura y altura, hay un minimo definido con los ultimos argumentos
spr: sprite para cortar
a,b: coordenadas de los cortes verticales
c,d: coordenadas de los cortes horizontales
color: blend
*/

s = argument4; //sprite
i = argument5; //sub-imagen

a = argument6; //cortes
b = argument7;
c = argument8;
d = argument9;

k = argument10;

ws = sprite_get_width(s); //anchura de sprite
hs = sprite_get_height(s); //altura de sprite

xx = argument0; //posicion
yy = argument1;

w = max( argument2, a+ws-b ); //anchura total
h = max( argument3, c+hs-d ); //altura total

e = w - (ws - b);
f = h - (hs - d);

draw_sprite_part_ext( s,i, 0,0,    a,c,   xx,yy, 1,1, k,1 );
draw_sprite_part_ext( s,i, a,0,  b-a,c, xx+a,yy, (e-a)/(b-a),1, k,1 );
draw_sprite_part_ext( s,i, b,0, ws-b,c, xx+e,yy, 1,1, k,1 );

draw_sprite_part_ext( s,i, 0,c,    a,d-c,   xx,yy+c,           1,(f-c)/(d-c), k,1 );
draw_sprite_part_ext( s,i, a,c,  b-a,d-c, xx+a,yy+c, (e-a)/(b-a),(f-c)/(d-c), k,1 );
draw_sprite_part_ext( s,i, b,c, ws-b,d-c, xx+e,yy+c,           1,(f-c)/(d-c), k,1 );

draw_sprite_part_ext( s,i, 0,d,    a,hs-d,   xx,yy+f, 1,1, k,1 );
draw_sprite_part_ext( s,i, a,d,  b-a,hs-d, xx+a,yy+f, (e-a)/(b-a),1, k,1 );
draw_sprite_part_ext( s,i, b,d, ws-b,hs-d, xx+e,yy+f, 1,1, k,1 );
