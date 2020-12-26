///Dibujar n�mero, m�todo 2

var num, xx, yy, i;
num = argument0; //n�mero que se va a dibujar
xx  = argument1; //posici�n de la esquina
yy  = argument2; // superior derecha

do
{
    draw_sprite( spDigitosGris, num mod 10, xx, yy );
    num = num div 10;
    xx -= 20;
}
until( num = 0 )
