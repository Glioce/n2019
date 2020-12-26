///Funcionamiento de los botones por defecto

ini_open( "smll.ini" )

j_izq = j_button7;
j_der = j_button8;
j_slt = j_button6;
j_atq = j_button5;
j_psa = j_button1;

ini_write_real( "Joystick", "izquierda", j_izq );
ini_write_real( "Joystick", "derecha",   j_der );
ini_write_real( "Joystick", "salto",     j_slt );
ini_write_real( "Joystick", "ataque",    j_atq );
ini_write_real( "Joystick", "pausa",     j_psa );

ini_close();
