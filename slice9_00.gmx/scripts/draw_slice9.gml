///draw_slice9( x,y, w,h, spr,subimg, a,b, c,d );
/*              0 1  2 3  4   5       6 7  8 9
Argumentos
x,y: posicion de la esquina superior izquierda
w,h: anchura y altura, hay un minimo definido con los ultimos argumentos
spr: sprite para cortar
a,b: coordenadas de los cortes verticales
c,d: coordenadas de los cortes horizontales
*/

s = argument4; //sprite
i = argument5; //sub-imagen

a = argument6; //cortes
b = argument7;
c = argument8;
d = argument9;

ws = sprite_get_width(s); //anchura de sprite
hs = sprite_get_height(s); //altura de sprite

xx = argument0; //posicion
yy = argument1;

w = max( argument2, a+ws-b ); //anchura total
h = max( argument3, c+hs-d ); //altura total

e = w - (ws - b);
f = h - (hs - d);

draw_sprite_part(     s,i, 0,0,    a,c,   xx,yy );
draw_sprite_part_ext( s,i, a,0,  b-a,c, xx+a,yy, (e-a)/(b-a),1, c_white,1 );
draw_sprite_part(     s,i, b,0, ws-b,c, xx+e,yy );

draw_sprite_part_ext( s,i, 0,c,    a,d-c,   xx,yy+c,           1,(f-c)/(d-c), c_white,1 );
draw_sprite_part_ext( s,i, a,c,  b-a,d-c, xx+a,yy+c, (e-a)/(b-a),(f-c)/(d-c), c_white,1 );
draw_sprite_part_ext( s,i, b,c, ws-b,d-c, xx+e,yy+c,           1,(f-c)/(d-c), c_white,1 );

draw_sprite_part(     s,i, 0,d,    a,hs-d,   xx,yy+f );
draw_sprite_part_ext( s,i, a,d,  b-a,hs-d, xx+a,yy+f, (e-a)/(b-a),1, c_white,1 );
draw_sprite_part(     s,i, b,d, ws-b,hs-d, xx+e,yy+f );
