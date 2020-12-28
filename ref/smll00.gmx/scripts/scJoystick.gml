///Leer joystick

if( j1_existe )
{
    izq = izq or joystick_check( 1, j_izq );
    der = der or joystick_check( 1, j_der );
    slt = slt or joystick_check( 1, j_slt );
    atq = atq or joystick_check( 1, j_atq );
    psa = psa or joystick_check( 1, j_psa );
}
