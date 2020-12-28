///Dibujar n�mero, m�todo 1

var num, dig, xx, yy, i;
num = argument0; //n�mero que se va a dibujar
dig = argument1; //cantidad de d�gitos
xx  = argument2; //posici�n de la esquina
yy  = argument3; // superior derecha
//spt = argument4; //sprite a utilizar

for( i=0; i<dig; i+=1 )
{
    draw_sprite( argument4, num mod 10, xx, yy );
    num = num div 10;
    xx -= 20;
}
