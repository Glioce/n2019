///Funcionamiento de las teclas por defecto

ini_open( "smll.ini" )

t_izq = ord('D');
t_der = ord('F');
t_slt = ord('J');
t_atq = ord('K');
t_psa = vk_space;

ini_write_real( "Teclado", "izquierda", t_izq );
ini_write_real( "Teclado", "derecha",   t_der );
ini_write_real( "Teclado", "salto",     t_slt );
ini_write_real( "Teclado", "ataque",    t_atq );
ini_write_real( "Teclado", "pausa",     t_psa );

ini_close();
